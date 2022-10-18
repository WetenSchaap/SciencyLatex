FILENAME=example

full:
	latexmk $(FILENAME) \
	--lualatex \
	--logfilewarnings \
	--quiet

debug:
	latexmk $(FILENAME) \
	--lualatex \
	-g

clean:
	latexmk $(FILENAME) \
	-c

final:
	latexmk $(FILENAME) \
	--lualatex \
	--logfilewarnings \
	--quiet \
	--Werror \
	-g

mancompile:
	lualatex $(FILENAME).tex

manbiber:
	biber $(FILENAME) \
	--isbn-normalise \

manfull:
	lualatex $(FILENAME).tex --interaction=batchmode
	biber $(FILENAME) -q --isbn-normalise
	lualatex $(FILENAME).tex --interaction=batchmode
	lualatex $(FILENAME).tex --interaction=batchmode