#!/bin/bash

# Simple AES-256 encryption tool
# Usage: ./encrypt.sh <input-file> <output-file>


if [ $# -lt 2 ]; then
	echo "Usage: $0 <input-file> <output-file>"
	exit 1
fi 

INPUT=$1
OUTPUT=$2

openssl enc -aes-256-cbc -salt -in "$INPUT" -out "OUTPUT"

echo "File encrypted succefully: $OUTPUT"
