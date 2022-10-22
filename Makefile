build: clean
	ejs ejs/pages/index.ejs -f ejs/data/common.json -o index.html
	ejs ejs/pages/piano.ejs -f ejs/data/common.json -o piano.html
	ejs ejs/pages/ballroom.ejs -f ejs/data/common.json -o ballroom.html
	ejs ejs/pages/drawing.ejs -f ejs/data/common.json -o drawing.html
	ejs ejs/pages/contact.ejs -f ejs/data/common.json -o contact.html
	tidy -config .tidyrc -o index.html index.html
	tidy -config .tidyrc -o piano.html piano.html
	tidy -config .tidyrc -o ballroom.html ballroom.html
	tidy -config .tidyrc -o drawing.html drawing.html
	tidy -config .tidyrc -o contact.html contact.html

piano:
	rm piano.html
	ejs ejs/pages/piano.ejs -f ejs/data/common.json -o piano.html
	tidy -config .tidyrc -o piano.html piano.html

ballroom:
	rm ballroom.html
	ejs ejs/pages/ballroom.ejs -f ejs/data/common.json -o ballroom.html
	tidy -config .tidyrc -o ballroom.html ballroom.html

drawing:
	rm drawing.html
	ejs ejs/pages/drawing.ejs -f ejs/data/common.json -o drawing.html
	tidy -config .tidyrc -o drawing.html drawing.html

clean:
	rm -f index.html piano.html ballroom.html drawing.html contact.html
