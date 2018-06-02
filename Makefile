# LESS params
LESS_DIR = ./static/less
LESS_RTL_DIR = ./static/less/rtl
LESS_TMP_FILE = tmp.less

# CSS params
CSS_DIR = ./static/css
CSS_FILE = style.min.css
CSS_RTL_FILE = style-rtl.min.css
CSS_TMP_FILE = tmp.css

.PHONY: clean demo build

build: clean
	for f in "`find $(LESS_DIR) -maxdepth 1 -type f`"; do cat $$f >> $(LESS_DIR)/$(LESS_TMP_FILE); done
	for f in "`find $(LESS_RTL_DIR) -maxdepth 1 -type f`"; do cat $$f >> $(LESS_RTL_DIR)/$(LESS_TMP_FILE); done

	# LTR
	lessc $(LESS_DIR)/$(LESS_TMP_FILE) > $(CSS_DIR)/$(CSS_TMP_FILE)
	uglifycss $(CSS_DIR)/$(CSS_TMP_FILE) > $(CSS_DIR)/$(CSS_FILE)
	rm -f $(CSS_DIR)/$(CSS_TMP_FILE)
	rm -f $(LESS_DIR)/$(LESS_TMP_FILE)

	# RTL
	lessc $(LESS_RTL_DIR)/$(LESS_TMP_FILE) > $(CSS_DIR)/$(CSS_TMP_FILE)
	uglifycss $(CSS_DIR)/$(CSS_TMP_FILE) > $(CSS_DIR)/$(CSS_RTL_FILE)
	rm -f $(CSS_DIR)/$(CSS_TMP_FILE)
	rm -f $(LESS_RTL_DIR)/$(LESS_TMP_FILE)

demo: build
	mkdir -p demo/themes/coder
	rsync -av exampleSite/* demo
	rsync -av --exclude='demo' --exclude='exampleSite' --exclude='.git' . demo/themes/coder
	cd demo && hugo serve -D

clean:
	rm -f $(CSS_DIR)/*.css
	rm -f $(LESS_DIR)/$(LESS_TMP_FILE)
	rm -f $(LESS_RTL_DIR)/$(LESS_TMP_FILE)
	rm -rf demo
