all: program.pdf

%.tex: %.org
	@echo "[emacs] $< -> $@"
	emacs -l emacs.init --batch $< --eval "(org-latex-export-to-latex)"

%.pdf: %.tex
	@echo "[latexmk] $< -> $@"
	latexmk -pdf -pdflatex="pdflatex" $(LATEXMKOPTS) program.tex


view:
	@rm -f program.pdf
	make LATEXMKOPTS=-pvc program.pdf
.PHONY: view
