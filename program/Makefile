all: ../program.pdf

%.tex: %.org
	@echo "[emacs] $< -> $@"
	cd .. && emacs -l program/emacs.init --batch program/$< --eval "(org-latex-export-to-latex)"

../%.pdf: %.tex
	@echo "[latexmk] $< -> $@"
	cd .. && latexmk -pdf -pdflatex="pdflatex" $(LATEXMKOPTS) program/$<


view:
	@rm -f program.pdf
	make LATEXMKOPTS=-pvc program.pdf
.PHONY: view
