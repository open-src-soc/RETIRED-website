.PHONY: all
all: main.pdf main_day3.pdf

main.pdf: main.tex day1.tex day2.tex speakers_clean.tex
	latexmk -pdf $<


day1.tex: ../pages/program-tuesday-table.org
	pandoc -o $@ --wrap=none $<

day2.tex: ../pages/program-wednesday-table.org
	pandoc -o $@ --wrap=none $<

day3.tex: ../pages/program-thursday-table.org
	pandoc -o $@ --wrap=none $<

speakers.tex: ../pages/2nd-meetings-speakers.org
	pandoc -o $@ --wrap=none $<

main_day3.pdf: main_day3.tex day3.tex speakers_day3_clean.tex
	latexmk -pdf $<

speakers_clean.tex: speakers.tex extract-speakers.py
	python3 extract-speakers.py $< > $@

speakers_day3.tex: ../pages/gdr-scienday-speakers.org
	pandoc -o $@ --wrap=none $<

speakers_day3_clean.tex: speakers_day3.tex extract-speakers.py
	python3 extract-speakers.py $< > $@

.PHONY: clean
clean:
	latexmk -C
	-rm -f *.nav *.snm
	-rm -f day1.tex day2.tex day3.tex speakers.tex speakers_day3.tex
	-rm -f speakers_clean.tex speakers_day3_clean.tex
