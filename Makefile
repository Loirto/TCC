all: tcc.tex
	pdflatex tcc
	bibtex tcc
	pdflatex tcc

view: tcc.pdf
	evince tcc.pdf &

clean:
	rm -f *.bib *.log *.dvi *.aux *.out *.loa *.lof *.toc *.lot *.bbl *.blg *~ config/*.aux capitulos/*.aux

