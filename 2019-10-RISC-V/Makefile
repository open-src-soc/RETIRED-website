
WHOLE=whole.yaml

# For now...
all: ${WHOLE}

# Concatenate everything in the right order --YAML hates forward
# references-- into the WHOLE file that will actually be processed.
${WHOLE}: organisations.yaml persons.yaml papers.yaml event.yaml
	cat organisations.yaml >  ${WHOLE}
	echo                   >> ${WHOLE}
	cat persons.yaml       >> ${WHOLE}
	echo                   >> ${WHOLE}
	cat papers.yaml        >> ${WHOLE}
	echo                   >> ${WHOLE}
	cat event.yaml         >> ${WHOLE}

clean clear:
	rm -f ${WHOLE} *~ 

clobber: clean
