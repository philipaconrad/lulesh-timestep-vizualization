.PHONY: clean movie

all: lulesh.session movie

visit:
	./get-visit.sh

lulesh.session:
	visit -s gen-session.py

movie: lulesh.session
	visit -movie -sessionfile lulesh.session

clean:
	rm -rf lulesh.session movie-* visitlog.py movie.log
