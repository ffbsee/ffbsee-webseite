LEKTOR_SERVER_FLAGS=-h 127.0.0.1

all: build

sass:
	sass -t compressed ./assets/sass/main.scss ./assets/css/main.min.css
	rm ./assets/css/main.min.css.map
	lektor clean --yes
	lektor build

sass-uncompressed:
	sass ./assets/sass/main.scss ./assets/css/main.css
	rm ./assets/css/main.css.map
	lektor clean --yes
	lektor build

install:
	pip install lektor

build: sass
	lektor build

server:
	lektor server $(LEKTOR_SERVER_FLAGS)

