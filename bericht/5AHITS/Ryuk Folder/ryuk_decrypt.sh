#!/bin/bash

# Ryuk Decryption - Blue Team (macOS Version)

RSA_PRIVATE="$1"
ENCRYPTED_FILE="$2"

if [ $# -ne 2 ]; then
    echo "Usage: $0 <rsa_victim_private.pem> <encrypted_file>"
    exit 1
fi

echo "[*] Extrahiere AES-Key aus Datei..."

# Dateigröße bekommen
FILE_SIZE=$(stat -f%z "$ENCRYPTED_FILE")
DATA_SIZE=$((FILE_SIZE - 256))

# Extrahiere die letzten 256 Bytes
dd if="$ENCRYPTED_FILE" of=aes_key.enc bs=1 skip=$DATA_SIZE 2>/dev/null

echo "[*] Entschlüssele AES-Key mit RSA..."

# Entschlüssele den AES-Key
openssl rsautl -decrypt -inkey "$RSA_PRIVATE" -in aes_key.enc -out aes_key.txt 2>/dev/null

# AES-Key direkt lesen (ist bereits Hex-String!)
AES_KEY=$(cat aes_key.txt)

echo "[*] AES-Key: $AES_KEY"

echo "[*] Entferne letzte 256 Bytes und entschlüssele..."

# Kopiere nur die Datei-Daten (ohne letzte 256 Bytes)
dd if="$ENCRYPTED_FILE" of="$ENCRYPTED_FILE.data" bs=1 count=$DATA_SIZE 2>/dev/null

# Entschlüssele
openssl aes-256-cbc -d -in "$ENCRYPTED_FILE.data" -K "$AES_KEY" -iv '0' -out "${ENCRYPTED_FILE%.enc}" 2>/dev/null

if [ $? -eq 0 ]; then
    echo "[+] Erfolgreich entschlüsselt: ${ENCRYPTED_FILE%.enc}"
    rm aes_key.enc aes_key.txt "$ENCRYPTED_FILE.data"
else
    echo "[!] Entschlüsselung fehlgeschlagen"
    rm aes_key.enc aes_key.txt "$ENCRYPTED_FILE.data"
    exit 1
fi