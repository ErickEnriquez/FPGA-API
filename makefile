mfile: parser.cpp
	g++ parser.cpp -o parser

clean:
	rm parser
	clear

test_delete:
	touch test.txt
	