main.pdf: main.tex day1.tex day2.tex speakers_clean.tex
	latexmk -pdf $<

day1.tex: ../pages/program-tuesday-table.org
	pandoc -o $@ $<

day2.tex: ../pages/program-wednesday-table.org
	pandoc -o $@ $<

speakers.tex: ../pages/2nd-meetings-speakers.org
	pandoc -o $@ --wrap=none $<

speakers_clean.tex: speakers.tex
	python3 extract-speakers.py $< > $@

.PHONY: clean
clean:
	latexmk -C .
