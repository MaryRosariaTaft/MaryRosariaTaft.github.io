build: clean
	ejs ejs/pages/index.ejs -o index.html
	ejs ejs/pages/piano.ejs -o piano.html
	ejs ejs/pages/ballroom.ejs -o ballroom.html
	ejs ejs/pages/drawing.ejs -o drawing.html
	ejs ejs/pages/contact.ejs -o contact.html
	tidy -config .tidyrc -o index.html index.html
	tidy -config .tidyrc -o piano.html piano.html
	tidy -config .tidyrc -o ballroom.html ballroom.html
	tidy -config .tidyrc -o drawing.html drawing.html
	tidy -config .tidyrc -o contact.html contact.html

clean:
	rm -f index.html piano.html ballroom.html drawing.html contact.html

test: clean-test
	ejs ejs/pages/test-page.ejs -f ejs/data/test-data.json -o test.html
	-tidy -config .tidyrc -o test.html test.html

clean-test:
	rm -f test.html

clean-all: clean clean-test
