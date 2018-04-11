#
# Hacky make file to assist building thesis project
#
###################################################################################

all:
	pdflatex 2018-McInnis.tex
	bibtex 2018-McInnis.aux 
	pdflatex 2018-McInnis.tex
	make clean

clean:
	rm -f *.aux \
		*.bbl \
		*.blg \
		*.ist \
		*.lof \
		*.log \
		*.lot \
		*.out \
		*.toc \
		*.xdy \
		*.glo
