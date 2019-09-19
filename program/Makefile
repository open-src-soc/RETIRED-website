all: program.pdf

program.pdf: program.org
	pandoc -f org -t latex -o $@ $<
