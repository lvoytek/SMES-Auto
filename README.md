# SMES-Auto
Secure Middleware for Embedded Systems Auto Entertainment Center for [NXP I.MX 8 boards](https://www.toradex.com/computer-on-modules/apalis-arm-family/nxp-imx-8?gclid=Cj0KCQiAtqL-BRC0ARIsAF4K3WEkRHQzwlGkT92Ql1ndu3BpCU0Ys18Lm2J1QGvWVhmb-NUwM7mJPiQaAoXwEALw_wcB)

## Prerequisites
In order to build this image and application, the following libraries are required:
* [aasdk](https://github.com/f1xpl/aasdk)
* [boost-libs](https://www.boost.org/)
* [chrpath](https://directory.fsf.org/wiki/Chrpath)
* [cmake](https://cmake.org/)
* [cpio](https://www.gnu.org/software/cpio/)
* [diffstat](https://invisible-island.net/diffstat/)
* [git](https://git-scm.com/)
* [libusb](https://libusb.info/)
* [make](https://www.gnu.org/software/make/)
* net-tools or [inetutils](https://www.gnu.org/software/inetutils/) (for hostname)
* [protobuf](https://developers.google.com/protocol-buffers)
* [qt5 connectivity](https://www.qt.io/)
* [rpcsvc-proto](https://github.com/thkukuk/rpcsvc-proto) (for rpcgen)
* [rtaudio](https://github.com/thestk/rtaudio)
* [wget](https://www.gnu.org/software/wget/)

## Installing
To install the repository, run the following:
```shell
git clone https://github.com/lvoytek/SMES-Auto.git
git submodule update --init --recursive
```