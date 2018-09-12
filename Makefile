.PHONY: demo clean

demo:
	mkdir -p demo/themes/hugo-coder
	rsync -av exampleSite/ demo
	rsync -av --exclude='demo' --exclude='exampleSite' --exclude='.git' . demo/themes/hugo-coder
	cd demo && ./hugow serve -D

clean:
	rm -rf demo
