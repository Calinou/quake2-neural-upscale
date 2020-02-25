# The files to include in each PKZ file.
PKZ_MISC_FILES = \
	CHANGELOG.md \
	README.md

.PHONY: all test
all: models textures

.PHONY: clean
clean:
	rm -rf dist/

# Create a models PKZ file. 7-zip must be installed and available in the `PATH`.
.PHONY: models
models:
ifndef VERSION
$(error VERSION is not set (use `make VERSION=x.y.z`))
endif

	mkdir -p dist/
	7z a -mx9 dist/quake2-neural-upscale-models-$(VERSION).zip \
		env \
		models \
		pics \
		$(PKZ_MISC_FILES)
	mv -f dist/quake2-neural-upscale-models-$(VERSION).zip dist/quake2-neural-upscale-models-$(VERSION).pkz

# Create a textures PKZ file. 7-zip must be installed and available in the `PATH`.
.PHONY: textures
textures:
ifndef VERSION
$(error VERSION is not set (use `make VERSION=x.y.z`))
endif

	mkdir -p dist/
	7z a -mx9 dist/quake2-neural-upscale-textures-$(VERSION).zip \
		textures \
		$(PKZ_MISC_FILES)
	mv -f dist/quake2-neural-upscale-textures-$(VERSION).zip dist/quake2-neural-upscale-textures-$(VERSION).pkz
