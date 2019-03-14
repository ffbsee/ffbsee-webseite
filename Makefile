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
	if ! hash pip 2>/dev/null; then echo "Try to install python-pip"; if hash apt 2>/dev/null; then sudo apt update; sudo apt install python-pip -y; elif hash pacman 2>/dev/null; then sudo pacman -Sy python-pip --noconfirm; elif hash dnf 2>/dev/null; then sudo dnf install -y python-pip; else echo -e "Please install python-pip"; fi; fi
	pip install lektor --user
	if ! hash gem 2>/dev/null; then echo "Try to install rubygems"; if hash apt 2>/dev/null; then sudo apt update; sudo apt install rubygems -y; elif hash pacman 2>/dev/null; then sudo pacman -Sy rubygems --noconfirm; elif hash dnf 2>/dev/null; then sudo dnf install -y rubygems; else echo -e "Please install rubygems"; fi; fi
	gem install sass
	if hash apt 2>/dev/null; then sudo apt update; sudo apt install imagemagick -y; elif hash pacman 2>/dev/null; then sudo pacman -Sy imagemagick --noconfirm; elif hash dnf 2>/dev/null; then sudo dnf install -y imagemagick; else echo -e "Please install Imagemagick"; fi

build: sass
	lektor clean --yes
	lektor build

server:
	lektor server $(LEKTOR_SERVER_FLAGS)

