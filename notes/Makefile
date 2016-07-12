#Make and Makefiles:
#A Quick Introduction
#Ross Ihaka

## $* = filename without extension
## $@ = the output file
## $< = the input file

.SUFFIXES: .tex .pdf .Rnw .R

MAIN = lecture
INCLUDES = chapter1 chapter2 chapter3 appendix1
INCLUDES = chapter4 chapter5
TEX = $(INCLUDES:=.tex) 
RFILES = $(INCLUDES:=.R)
RNWFILES = $(INCLUDES:=.Rnw)



$(MAIN).pdf:  $(MAIN).Rnw *.Rnw


view: $(MAIN).pdf
	evince $(MAIN).pdf &

# .Rnw.R:
# 	R CMD Stangle $<

.Rnw.tex:
	Rscript -e "knitr::knit('lecture.Rnw') "

.tex.pdf:
#	pdflatex $*.tex
	rubber --pdf -vv $*.tex

clean:
	rm -fv $(MAIN).pdf $(TEX) $(RFILES) $(MAIN).tex
	rm -fv *.aux *.dvi *.log *.toc *.bak *~ *.blg *.bbl *.lot *.lof
	rm -fv  *.nav *.snm *.out *.pyc \#*\# _region_* _tmp.* *.vrb
	rm -fv Rplots.pdf *.RData d.csv.gz mygraph.*

cleaner:
	make clean
	rm -fvr auto/ cache/ figure/ graphics/figure*.pdf graphics/figure*.png

