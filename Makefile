# LESS params
LESS_DIR = ./resources/less
LESS_FILE = style.less
LESS_RTL_FILE = style-rtl.less
LESS_HIGHLIGHT_FILE = code-highlight.less
LESS_TMP_FILE = tmp.less

# CSS params
CSS_DIR = ./static/css
CSS_FILE = style.min.css
CSS_RTL_FILE = style-rtl.min.css
CSS_TMP_FILE = tmp.css

define build_less
	lessc $(LESS_DIR)/$(1) > $(CSS_DIR)/$(CSS_TMP_FILE)
	uglifycss $(CSS_DIR)/$(CSS_TMP_FILE) > $(CSS_DIR)/$(2)
	rm -f $(CSS_DIR)/$(CSS_TMP_FILE)
endef

.PHONY: clean demo build build-ltr build-rtl

build: clean build-ltr build-rtl

build-ltr:
	cat $(LESS_DIR)/$(LESS_FILE) $(LESS_DIR)/$(LESS_HIGHLIGHT_FILE) > $(LESS_DIR)/$(LESS_TMP_FILE)
	$(call build_less,$(LESS_TMP_FILE),$(CSS_FILE))
	rm -f $(LESS_DIR)/$(LESS_TMP_FILE)

build-rtl:
	$(call build_less,$(LESS_RTL_FILE),$(CSS_RTL_FILE))

demo: build
	mkdir -p demo/themes/coder
	rsync -av exampleSite/* demo
	rsync -av --exclude='demo' --exclude='exampleSite' --exclude='.git' . demo/themes/coder
	cd demo && hugo serve -D

clean:
	rm -f $(CSS_DIR)/$(CSS_FILE).css
	rm -f $(CSS_DIR)/$(CSS_RTL_FILE).css
	rm -rf demo
