stem = substring-search-index

default: all

all: $(stem).dvi $(stem).ps

$(stem).dvi: $(stem).tex
	latex $<

$(stem).ps: $(stem).dvi
	dvips $<

clean:
	-rm $(stem).dvi $(stem).ps *.aux *.log
