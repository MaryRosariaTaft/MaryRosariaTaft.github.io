test: clean
	ejs ./ejs/pages/test.ejs -f ./ejs/data/test.json -o ./test.html

clean:
	rm -f ./test.html
