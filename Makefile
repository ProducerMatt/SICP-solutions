##
# SICP notes
#
# @file
# @version 0.1
# -l ~/.emacs.d/lisp/doom-start.el
#
# FIXME: source block pygmentize not working

lcmd=xelatex -shell-escape
ecmd=--batch --eval "(require 'ox-latex)(chdir ${@D})" -f org-latex-export-to-latex --kill
ORG := $(shell find . -type f -name '*.org')

default: $(ORG:.org=.pdf)
%.tex: %.org
	emacs $< ${ecmd}
%.pdf: %.tex
	${lcmd} -output-directory ${@D} -interaction nonstopmode $<;
	while grep 'Rerun to get ' $*.log ; do ${lcmd} -output-directory ${@D} -interaction batchmode $< ; done; \
.PHONY: clean debug
clean:
	find -O3 . -type f 					\
				   \( -name '*.aux'		\
				   -o -name '*.toc'		\
				   -o -name '*.log'		\
				   -o -name '*.out' \)	\
		-delete
debug:
	@echo ${ORG}
# end
