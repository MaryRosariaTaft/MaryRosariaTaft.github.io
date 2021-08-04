build: clean
	ejs ejs/pages/index.ejs -o index.html
	-tidy -config .tidyrc -o index.html index.html
	ejs ejs/pages/piano.ejs -o piano.html
	-tidy -config .tidyrc -o piano.html piano.html

clean:
	rm -f index.html piano.html

test: clean-test
	ejs ejs/pages/test-page.ejs -f ejs/data/test-data.json -o test.html
	-tidy -config .tidyrc -o test.html test.html

clean-test:
	rm -f test.html

clean-all: clean clean-test
