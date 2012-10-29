JADE = $(shell find pages/*.jade)
HTML = $(JADE:.jade=.html)
STYL = $(shell find stylus/*.styl)
CSS = $(STYL:.styl=.css)

all: $(HTML) $(CSS)

%.html: %.jade
		jade -P < $< --path $< > $@

%.css: %.styl
		stylus < $< > $@

clean:
		rm -f $(HTML) $(CSS)

.PHONY: clean
