HUGO_BIN=hugo

.PHONY: build demo release

build:
	$(HUGO_BIN) --themesDir=../.. --source=exampleSite

demo:
	$(HUGO_BIN) server -D --themesDir=../.. --source=exampleSite

release: build
	rm -rf ./resources && cp -r ./exampleSite/resources ./resources
