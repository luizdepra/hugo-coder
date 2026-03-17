HUGO_BIN=hugo

.PHONY: build demo release lint format setup

build:
	$(HUGO_BIN) --themesDir=../.. --source=exampleSite

demo:
	$(HUGO_BIN) server -D --themesDir=../.. --source=exampleSite --bind 0.0.0.0

release: build
	rm -rf ./resources && cp -r ./exampleSite/resources ./resources

setup:
	npm install
	prek install

lint:
	npm run lint

format:
	npm run format
