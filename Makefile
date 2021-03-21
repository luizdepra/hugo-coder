HUGO_BIN=hugo

.PHONY: prepare release build demo clean

build: prepare
	$(HUGO_BIN) --source demo

demo: prepare
	$(HUGO_BIN) server --buildDrafts --source demo

release: build
	rm -rf ./resources && cp -r ./demo/resources ./resources

prepare: clean
	mkdir -p demo
	rsync -av exampleSite/ demo

clean:
	rm -rf demo
