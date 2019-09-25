TARGET := ../program-booklet.pdf

all: $(TARGET)

$(TARGET): ../program.pdf
	pdfbook --suffix booklet ../program.pdf

DEPS := $(wildcard ../pages/*.org)

%.tex: %.org $(DEPS)
	@echo "[emacs] $< -> $@"
	cd .. && emacs -l booklet/emacs.init --batch booklet/$< --eval "(org-latex-export-to-latex)"

../%.pdf: %.tex
	@echo "[latexmk] $< -> $@"
	cd .. && latexmk -pdf -pdflatex="pdflatex" $(LATEXMKOPTS) booklet/$<
	ls ..

view:
	@rm -f program.pdf
	make LATEXMKOPTS=-pvc program.pdf
.PHONY: view

clean:
	rm -f \
		../program.aux \
		../program.fdb_latexmk \
		../program.fls \
		../program.log \
		../program.out \
		../program.pdf \
	rm -f $(TARGET)
.PHONY: clean
