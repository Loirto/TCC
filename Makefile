all: tcc.tex
	pdflatex tcc
	makeindex -s tcc.ist -t tcc.glg -o tcc.gls tcc.glo
	bibtex tcc
	pdflatex tcc

view: tcc.pdf
	evince tcc.pdf &

clean:
	rm -f *.b* *.g* *.lo* *.i*  *~ 
	rm -f *.acn *.pdf *.dvi *.aux *.out *.toc
	rm -f config/*.aux capitulos/*.aux

