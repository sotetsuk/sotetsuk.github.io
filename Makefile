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
	mv public/* ./
	git add .
	git rm --cached themes/typo
	git commit -m "deploy new files"

