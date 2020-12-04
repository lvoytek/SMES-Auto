# SMES-Auto
Secure Middleware for Embedded Systems Auto Entertainment Center for [NXP I.MX 8 boards](https://www.toradex.com/computer-on-modules/apalis-arm-family/nxp-imx-8?gclid=Cj0KCQiAtqL-BRC0ARIsAF4K3WEkRHQzwlGkT92Ql1ndu3BpCU0Ys18Lm2J1QGvWVhmb-NUwM7mJPiQaAoXwEALw_wcB)

## Prerequisites
In order to build this image and application, the following libraries are required:
* chrpath
* cmake
* cpio
* diffstat
* git
* make
* net-tools or inetutils (for hostname)
* rpcsvc-proto (for rpcgen)
* wget

## Installing
To install the repository, run the following:
```shell
git clone https://github.com/lvoytek/SMES-Auto.git
git submodule update --init --recursive
```