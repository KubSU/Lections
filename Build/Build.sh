find ../ -type f -name '*.lyx' |
while read filename; do
	echo "Generating tex: ${filename}";
	lyx -e pdflatex "${filename}";
done

find ../ -type f -name '*.tex' |
while read filename; do
	echo "Compiling pdf: ${filename}";
	pdflatex "${filename}" > /dev/null;
done

find ../ \( -name '*.tex' -o -name '*.out' -o -name '*.log' -o -name '*.aux' -o -name '*.toc' \) |
while read fname; do
	echo "Deletting: ${fname}";
	rm "${fname}";
done
