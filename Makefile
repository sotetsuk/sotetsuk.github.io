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
	rm -rf theme/typo .gitmodules
	git pull origin public
	git rm -rf .
	mv public/* ./
	git add .
	git commit -m "deploy new files"

