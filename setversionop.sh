#!/bin/bash

if [[ $# -ne 1 ]]; then
  echo "Uso: $0 [-M | -m | -p]"
  exit 1
fi

case "$1" in
  "-M" | "-m" | "-p")
    sed -i "s/.$/${1/-/}/" VERSION
    ;;
  *)
    echo "Parâmetro inválido: $1"
    exit 1
    ;;
esac