# Wird automatisch von gdb.sh geladen (gdb -x .gdbinit).
#
# Verbindet zum QEMU-GDB-Stub (von debug.sh auf Port 1234 gestartet),
# setzt einen Breakpoint auf main und macht "run" als Alias fuer
# "continue" nutzbar (ein Remote-Target kann den Prozess nicht neu
# starten, aber "continue" laeuft bis zum naechsten Breakpoint).

target remote :1234
break main

define run
    continue
end
document run
Alias fuer "continue" (Remote-Target unterstuetzt kein echtes "run").
end

echo \n>>> Verbunden auf :1234, Breakpoint auf main gesetzt.\n>>> Befehle: run (=continue bis Breakpoint), c, disas, next, step, info registers, ...\n\n
