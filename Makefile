# Temp build directory
TMP_DIR = /tmp
TMP_CSS_FILE = tmp.css

# LESS params
LESS_DIR = ./resources/less
LESS_LTR_FILE = style.less
LESS_RTL_FILE = style-rtl.less
LESS_HIGHLIGHT_FILE = code-highlight.less

# CSS params
CSS_DIR = ./static/css
CSS_LTR_FILE = style.min.css
CSS_RTL_FILE = style-rtl.min.css

.PHONY: clean demo prepare prepare-ltr prepare-rtl

clean:
	rm -rf demo

define build_less
	lessc $(LESS_DIR)/$(1) > $(TMP_DIR)/$(TMP_CSS_FILE)
	uglifycss $(TMP_DIR)/$(TMP_CSS_FILE) > $(CSS_DIR)/$(2)
	rm -f $(TMP_DIR)/$(TMP_CSS_FILE)
endef

prepare: prepare-ltr prepare-rtl

prepare-ltr:
	$(call build_less,$(LESS_LTR_FILE),$(CSS_LTR_FILE))

prepare-rtl:
	$(call build_less,$(LESS_RTL_FILE),$(CSS_RTL_FILE))

demo: prepare
	mkdir -p demo/themes/coder
	rsync -av exampleSite/* demo
	rsync -av --exclude='demo' --exclude='exampleSite' --exclude='.git' . demo/themes/coder
	cd demo && hugo serve -D
