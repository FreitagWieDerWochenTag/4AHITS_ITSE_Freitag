#!/bin/bash
# In einem ZWEITEN Terminal ausfuehren, waehrend "./setup.sh" in Terminal 1
# laeuft (dort steht QEMU-GDB-Stub auf Port 1234 bereit):
#
#   bash gdb.sh
#
# Oeffnet gdb-multiarch im Container, verbindet automatisch zum Stub,
# setzt Breakpoint auf main. Direkt einsatzbereit fuer: run (=continue), c,
# disas, next, step, ...
set -e

docker exec -it pwn gdb-multiarch -q -x .gdbinit /code/pwcheck
