# Copyright (c) 2020 Lena Voytek, Mitchell Dzurick
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.

.PHONY:build-meta
build-meta:meta/smes-build

meta/smes-build:meta/poky/meta-freescale meta/poky/meta-smes
	mkdir -p meta/smes-build
	pushd meta/smes-build; \
		sed -i 's/poky/smes/g' ../poky/.templateconf; \
		. ../poky/oe-init-build-env .; \
		bitbake core-image-smes


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
	rm -rf meta/smes-build