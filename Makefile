.PHONY: demo clear

demo:
	mkdir -p demo/themes/coder
	rsync -av exampleSite/* demo
	rsync -av --exclude='demo' --exclude='exampleSite' --exclude='.git' . demo/themes/coder
	cd demo && hugo serve -D

clean:
	rm -rf demo
