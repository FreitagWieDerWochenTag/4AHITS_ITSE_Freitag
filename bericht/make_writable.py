#!/usr/bin/env python3
# Patcht die Programm-Header von ./pwcheck: jedes ausfuehrbare LOAD-Segment
# (z.B. .text, R-E) bekommt zusaetzlich das Write-Flag (PF_W). Dadurch sind
# diese Seiten zur Laufzeit beschreibbar und "set {unsigned char}ADDR = 0x90"
# funktioniert direkt in gdb (auch ueber den QEMU-GDB-Stub).
import struct
import sys

path = "pwcheck"

with open(path, "rb") as f:
    data = bytearray(f.read())

e_phoff = struct.unpack_from("<Q", data, 0x20)[0]
e_phentsize = struct.unpack_from("<H", data, 0x36)[0]
e_phnum = struct.unpack_from("<H", data, 0x38)[0]

PT_LOAD = 1
PF_X = 1
PF_W = 2

changed = False
for i in range(e_phnum):
    off = e_phoff + i * e_phentsize
    p_type, p_flags = struct.unpack_from("<II", data, off)
    if p_type == PT_LOAD and (p_flags & PF_X) and not (p_flags & PF_W):
        struct.pack_into("<I", data, off + 4, p_flags | PF_W)
        changed = True
        print(f"  Segment {i}: Flags {p_flags:#x} -> {(p_flags | PF_W):#x} (jetzt RWX)")

if changed:
    with open(path, "wb") as f:
        f.write(data)
    print(">>> pwcheck: ausfuehrbare Segmente sind jetzt beschreibbar.")
else:
    print(">>> pwcheck: nichts zu patchen (bereits beschreibbar oder kein passendes Segment).")
