LEKTOR_SERVER_FLAGS=-h 127.0.0.1

all: build

sass:
	sassc ./assets/sass/main.scss ./assets/css/main.css
	rm ./assets/css/main.min.css
	python3 ./deployment/cssminify.py -o ./assets/css/main.min.css ./assets/css/main.css

install:
	pip install lektor

build: sass
	lektor build

server:
	lektor server $(LEKTOR_SERVER_FLAGS)

