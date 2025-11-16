!/bin/bash

# Simple  AES-256 decryption tool
# Usage: ./decrypt.sh <encrypted-file> <output-file>


if [ $# -lt 2 ]; then
        echo "Usage: $0 <encrypted-file> <output-file>"
        exit 1
fi

INPUT=$1
OUTPUT=$2

openssl enc -aes-256-cbc -d -in "$INPUT" -out "OUTPUT"

echo "File decrypted succefully: $OUTPUT"

