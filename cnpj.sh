#!/bin/bash

# usage: chmod +x cnpj.sh | ./cnpj.sh 34075739000184

if [ -z "$1" ]; then
  echo "Uso: $0 <CNPJ>"
  exit 1
fi

CNPJ="$1"

URL="https://receitaws.com.br/v1/cnpj/${CNPJ}"

# Faz a requisição e filtra pelo CNPJ
echo "Procurando por: $CNPJ..."
response=$(curl -s -k "$URL")

echo "$response"

