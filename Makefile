all: tcc.tex
	latex tcc
	bibtex tcc
	pdflatex tcc

view: tcc.pdf
	evince tcc.pdf &

clean:
	rm -f *.bib *.log *.dvi *.aux *.out *.loa *.lof *.toc *.lot *~ config/*.aux capitulos/*.aux

