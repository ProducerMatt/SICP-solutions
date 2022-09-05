##
# SICP notes
#
# @file
# @version 0.1

lcmd=xelatex -shell-escape
TEX := $(wildcard *.tex)
default: $(TEX:.tex=.pdf)
%.pdf: %.tex
	${lcmd} -interaction nonstopmode $<
	while grep 'Rerun to get ' $*.log ; do ${lcmd} -interaction batchmode $< ; done
.PHONY: clean
clean:
	rm -v *.aux *.toc *.log *.out

# end
