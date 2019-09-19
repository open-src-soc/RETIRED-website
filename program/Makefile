all: program.pdf

program.pdf: program.org
	pandoc --from org --to latex --metadata-file metadata.yaml -o $@ $<
