.PHONY: clean build serve 

clean:
	rm -rf public

build:
	git submodule update --init --recursive
	hugo build

serve:
	git submodule update --init --recursive
	hugo server --buildDrafts
