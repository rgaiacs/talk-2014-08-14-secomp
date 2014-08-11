HTMLFILE = index.html
CSSFILE = style.css
EPUBFILE = secomp.epub

$(EPUBFILE): $(HTMLFILE) $(CSSFILE)
	pandoc -f html -t epub \
	     --epub-stylesheet=$(CSSFILE) \
	     -o $(EPUBFILE) $(HTMLFILE)

beautify:
	html-beautify -r $(HTMLFILE)
	css-beautify -r $(CSSFILE)
