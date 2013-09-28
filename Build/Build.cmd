cd .\..\Term 3\
rm -f *.pdf
rm -f *.lyx~
rm -f *.log
rm -f *.tex
rm -f *.aux
rm -f *.out
LyX.exe -e pdflatex "C++.lyx"
pdflatex "C++.tex"
LyX.exe -e pdflatex "Assambler.lyx"
pdflatex "Assambler.tex"
LyX.exe -e pdflatex "DifferentialEquations.lyx"
pdflatex "DifferentialEquations.tex"
LyX.exe -e pdflatex "Ekonomiks.lyx"
pdflatex "Ekonomiks.tex"
LyX.exe -e pdflatex "Matan2.lyx"
pdflatex "Matan2.tex"
LyX.exe -e pdflatex "Physics.lyx"
pdflatex "Physics.tex"
rm -f *.log
rm -f *.tex
rm -f *.aux
rm -f *.out
rm -f *.toc
