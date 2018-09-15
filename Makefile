.PHONY: release demo clean

demo:
	mkdir -p demo/themes/hugo-coder
	rsync -av exampleSite/ demo
	rsync -av --exclude='demo' --exclude='exampleSite' --exclude='.git' . demo/themes/hugo-coder
	cd demo && ./hugow serve -D

release:
	mkdir -p demo/themes/hugo-coder
	rsync -av exampleSite/ demo
	rsync -av --exclude='demo' --exclude='exampleSite' --exclude='.git' . demo/themes/hugo-coder
	cd ./demo && ./hugow
	rm -rf ./resources && cp -r ./demo/resources ./resources

clean:
	rm -rf demo
