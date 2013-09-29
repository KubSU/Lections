#!/bin/sh

@echo off
find ../ -type f -name '*.lyx' |
while read filename; do
	echo "Generating tex: ${filename}";
	lyx -e pdf2 "${filename}";
done

find ../ \( -name '*.tex' -o -name '*.out' -o -name '*.log' -o -name '*.aux' -o -name '*.toc' \) |
while read fname; do
	echo "Deletting: ${fname}";
	rm "${fname}";
done
