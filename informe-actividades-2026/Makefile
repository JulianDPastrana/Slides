LATEXMK = latexmk -pdf -interaction=nonstopmode -halt-on-error

.PHONY: all clean view

all:
	$(LATEXMK) main.tex

clean:
	latexmk -C

view:
	$(LATEXMK) main.tex && xdg-open main.pdf
