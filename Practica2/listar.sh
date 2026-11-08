#!/bin/bash

for elemento in *; do
	peso=$(du -hs "$elemento" | cut -f1)
	nombre="${elemento%.*}"
	echo "$peso - $nombre"
done
