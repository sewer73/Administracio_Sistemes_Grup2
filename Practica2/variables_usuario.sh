#!/bin/bash

env | while IFS= read -r linea; do
	nombre=$(echo "$linea" | cut -d= -f1)
	valor=$(echo "$linea" | cut -d= -f2-)
	if echo "$nombre" | grep -qi "user"; then
		echo "$nombre: $valor"
	fi
done
