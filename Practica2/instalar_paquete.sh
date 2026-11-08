#!/bin/bash


archivo="/usr/bin/expect"

paquete_completo=$(dnf provides "$archivo" 2>/dev/null | grep -m1 "^expect" | cut -d- -f1)

paquete=$(echo "$paquete_completo" | sed 's/-[0-9].*//')

echo "El archivo $archivo pertenece al paquete: $paquete"

sudo dnf install -y "$paquete"
