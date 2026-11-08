#!/bin/bash

echo -n "Numero: "
read -r numero

if [[ "$numero" -gt 8 ]]; then
	echo "$numero es mas que 8"
else
	echo "$numero no es mas que 8"
fi
