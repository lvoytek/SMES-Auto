

.PHONY:download-meta
download-meta:meta/poky/meta-freescale meta/poky/meta-smes

meta/poky/meta-freescale:meta/poky/bitbake
	git clone https://github.com/Freescale/meta-freescale meta/poky/meta-freescale

meta/poky/meta-smes:meta/poky/bitbake
	git clone https://github.com/mitchdz/meta-smes meta/poky/meta-smes

meta/poky/bitbake:
	git submodule update --init --recursive

.PHONY:clean
clean:
	rm -rf meta/poky/meta-freescale
	rm -rf meta/poky/meta-smes