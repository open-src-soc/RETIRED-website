all: program.pdf

program.pdf: program.org metadata.yaml
	pandoc --from org --to latex --metadata-file metadata.yaml -o $@ $<
