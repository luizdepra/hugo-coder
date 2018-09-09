.PHONY: demo clear

demo:
	mkdir -p demo/themes/hugo-coder
	rsync -av exampleSite/* demo
	rsync -av --exclude='demo' --exclude='exampleSite' --exclude='.git' . demo/themes/hugo-coder
	cd demo && hugo serve -D

clean:
	rm -rf demo
