all: program.pdf

%.tex: %.org
	@echo "[emacs] $< -> $@"
	emacs -l emacs.init --batch $< --eval "(org-latex-export-to-latex)"

%.pdf: %.tex
	@echo "[latexmk] $< -> $@"
	latexmk -pdf -pdflatex="pdflatex" program.tex
