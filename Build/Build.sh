#!/bin/sh

@echo off
find ../ -type f -name '*.lyx' |
while read filename; do
	echo "Generating pdf: ${filename}";
	lyx -e pdf2 "${filename}";
done

find ../ -name '*.pdf' |
while read fname; do
	echo "Moving: ${fname}";
	mv "${fname}" ./;
done
