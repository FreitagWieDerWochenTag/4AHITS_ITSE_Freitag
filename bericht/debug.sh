#!/bin/bash
set -e

chmod +x pwcheck

patchelf --set-interpreter /usr/lib/x86_64-linux-gnu/ld-linux-x86-64.so.2 \
         --set-rpath /usr/lib/x86_64-linux-gnu pwcheck

# Ausfuehrbare Segmente (z.B. .text) zusaetzlich beschreibbar machen, damit
# "set {unsigned char}ADDR = ..." in gdb direkt funktioniert.
python3 make_writable.py

qemu-x86_64 -g 1234 ./pwcheck &
QEMU_PID=$!

sleep 1

gdb-multiarch -q -x .gdbinit /code/pwcheck

kill "$QEMU_PID" 2>/dev/null || true
