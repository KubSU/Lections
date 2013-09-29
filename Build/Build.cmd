cd .\..\Term 3\
rm -f *.pdf
rm -f *.lyx~
LyX.exe -e pdf2 "C++.lyx"
LyX.exe -e pdf2 "Assambler.lyx"
LyX.exe -e pdf2 "DifferentialEquations.lyx"
LyX.exe -e pdf2 "Ekonomiks.lyx"
LyX.exe -e pdf2 "Matan2.lyx"
LyX.exe -e pdf2 "Physics.lyx"
