.PHONY: clean build serve 

clean:
	rm -rf public

build:
	git submodule update --init --recursive
	hugo build

serve:
	git submodule update --init --recursive
	hugo server --buildDrafts

deploy:
	git checkout public
	git pull origin public
	git rm -rf .
	git commit -m "remove old files"
	cp -r public/* ./
	git add .
	git commit -m "deploy new files"

