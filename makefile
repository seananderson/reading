all: refs.bib topics.md

refs.bib: _topics.md /Users/seananderson/Dropbox/tex/ref3.bib
	extract_bib $< > $@

topics.md: _topics.md refs.bib /Users/seananderson/Dropbox/tex/jshort.bib
	pandoc --atx-headers -S --bibliography=/Users/seananderson/Dropbox/tex/jshort.bib --bibliography=refs.bib -t markdown_github $< -o $@
