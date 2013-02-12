all: tcc.tex
	pdflatex tcc
	makeindex -s tcc.ist -t tcc.glg -o tcc.gls tcc.glo
	bibtex tcc
	pdflatex tcc

view: tcc.pdf
	evince tcc.pdf &

clean:
	rm -f *.bib *.log *.dvi *.aux *.out *.loa *.lof *.toc *.lot *.bbl *.blg *~ config/*.aux capitulos/*.aux

