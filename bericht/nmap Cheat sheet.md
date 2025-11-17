# Nmap Cheat Sheet

## Host Discovery
- `nmap -sn <ip>` - Ping-Scan (Host Discovery), ermittelt erreichbare Hosts ohne Port-Scan
- `nmap -Pn <ip>` - Überspringt Host Discovery, scannt direkt die Ports
- `nmap -PR <ip>` - ARP-Scan im lokalen Netzwerk

## Port Scanning
- `nmap -p- <ip>` - Scannt alle 65535 Ports
- `nmap -p 1-1000 <ip>` - Scannt Portbereich 1-1000
- `nmap -p 22,80,443 <ip>` - Scannt spezifische Ports
- `nmap --top-ports <anzahl> <ip>` - Scannt die N häufigsten Ports

## Scan Methoden
- `nmap -sS <ip>` - TCP SYN Scan (Standard, benötigt Root)
- `nmap -sT <ip>` - TCP Connect Scan (kein Root benötigt)
- `nmap -sU <ip>` - UDP Scan
- `nmap -sV <ip>` - Service/Version Detection
- `nmap -O <ip>` - OS Erkennung

## Timing & Performance
- `nmap -T0 <ip>` - Paranoid (sehr langsam)
- `nmap -T1 <ip>` - Sneaky
- `nmap -T2 <ip>` - Polite
- `nmap -T3 <ip>` - Normal (Standard)
- `nmap -T4 <ip>` - Aggressive
- `nmap -T5 <ip>` - Insane (sehr schnell)
- `nmap --min-rate <pakete> <ip>` - Mindestrate an Paketen pro Sekunde
- `nmap --max-retries <anzahl> <ip>` - Maximale Wiederholungsversuche

## Output Options
- `nmap -oN <datei> <ip>` - Normale Ausgabe in Datei
- `nmap -oX <datei> <ip>` - XML Ausgabe
- `nmap -oG <datei> <ip>` - Grep-freundliche Ausgabe
- `nmap -oA <basename> <ip>` - Alle Formate (Normal, XML, Grep)
- `nmap -v <ip>` - Verbose Ausgabe
- `nmap --reason <ip>` - Zeigt Grund für Port-Status

## Script Scanning
- `nmap -sC <ip>` - Führt Standard-Scripts aus
- `nmap --script <script> <ip>` - Führt spezifische Scripts aus
- `nmap --script-args <args> <ip>` - Übergibt Argumente an Scripts

## Firewall/IDS Evasion
- `nmap -f <ip>` - Fragmentiert Pakete
- `nmap -D <decoy1,decoy2> <ip>` - Decoy Scanning
- `nmap --source-port <port> <ip>` - Verwendet bestimmten Quellport
- `nmap --data-length <length> <ip>` - Fügt zufällige Daten hinzu

## Aggressive Scans
- `nmap -A <ip>` - Aggressiver Scan (OS, Version, Script, Traceroute)
- `nmap -sS -sV -sC -O <ip>` - Kombination mehrerer Scan-Typen