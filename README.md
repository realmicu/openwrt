![OpenWrt logo](include/logo.png)

OpenWrt Project is a Linux operating system targeting embedded devices. Instead
of trying to create a single, static firmware, OpenWrt provides a fully
writable filesystem with package management. This frees you from the
application selection and configuration provided by the vendor and allows you
to customize the device through the use of packages to suit any application.
For developers, OpenWrt is the framework to build an application without having
to build a complete firmware around it; for users this means the ability for
full customization, to use the device in ways never envisioned.

Sunshine!

## Development

To build your own firmware you need a GNU/Linux, BSD or MacOSX system (case
sensitive filesystem required). Cygwin is unsupported because of the lack of a
case sensitive file system.

### Requirements

You need the following tools to compile OpenWrt, the package names vary between
distributions. A complete list with distribution specific packages is found in
the [Build System Setup](https://openwrt.org/docs/guide-developer/build-system/install-buildsystem)
documentation.

```
binutils bzip2 diff find flex gawk gcc-6+ getopt grep install libc-dev libz-dev
make4.1+ perl python3.6+ rsync subversion unzip which
```

### Quickstart

1. Run `./scripts/feeds update -a` to obtain all the latest package definitions
   defined in feeds.conf / feeds.conf.default

2. Run `./scripts/feeds install -a` to install symlinks for all obtained
   packages into package/feeds/

3. Run `make menuconfig` to select your preferred configuration for the
   toolchain, target system & firmware packages.

4. Run `make` to build your firmware. This will download all sources, build the
   cross-compile toolchain and then cross-compile the GNU/Linux kernel & all chosen
   applications for your target system.

### Related Repositories

The main repository uses multiple sub-repositories to manage packages of
different categories. All packages are installed via the OpenWrt package
manager called `opkg`. If you're looking to develop the web interface or port
packages to OpenWrt, please find the fitting repository below.

* [LuCI Web Interface](https://github.com/openwrt/luci): Modern and modular
  interface to control the device via a web browser.

* [OpenWrt Packages](https://github.com/openwrt/packages): Community repository
  of ported packages.

* [OpenWrt Routing](https://github.com/openwrt-routing/packages): Packages
  specifically focused on (mesh) routing.

## Support Information

For a list of supported devices see the [OpenWrt Hardware Database](https://openwrt.org/supported_devices)

### Documentation

* [Quick Start Guide](https://openwrt.org/docs/guide-quick-start/start)
* [User Guide](https://openwrt.org/docs/guide-user/start)
* [Developer Documentation](https://openwrt.org/docs/guide-developer/start)
* [Technical Reference](https://openwrt.org/docs/techref/start)

### Support Community

* [Forum](https://forum.openwrt.org): For usage, projects, discussions and hardware advise.
* [Support Chat](https://webchat.freenode.net/#openwrt): Channel `#openwrt` on freenode.net.

### Developer Community

* [Bug Reports](https://bugs.openwrt.org): Report bugs in OpenWrt
* [Dev Mailing List](https://lists.openwrt.org/mailman/listinfo/openwrt-devel): Send patches
* [Dev Chat](https://webchat.freenode.net/#openwrt-devel): Channel `#openwrt-devel` on freenode.net.

## License

OpenWrt is licensed under GPL-2.0

 -----------------------------------------------------

                           _ ___ _
 _ _ _ ___ ___ _____ ___ _| |_  | |_
| | | |   |  _|     | . | . |  _| '_|
|_____|_|_|_| |_|_|_|___|___|___|_,_|


wnrmod2k name originates from my first modded router, Netgear WNR2000v3, which
has been equipped with replaceable SPI NOR flash (4M, 8M and 16M). Since then
this OpenWrt fork grew to include whole family of Atheros-based WNR models as
well as selected double-band WNDR boards.

Please visit my U-boot fork https://github.com/realmicu/uboot-wnrmod2k that
provides working bootloader for flash-modded WNR routers and is a prerequisite
to use wnrmod2k OpenWrt branch.

Supported modded targets and models with config options are listed below.
Entries marked with [U] require modified U-boot.

* WNR2000v3 8M flash [U]
  CONFIG_TARGET_ar71xx_tiny_DEVICE_WNR2000V3_8M

* WNR2000v3 16M flash [U]
  CONFIG_TARGET_ar71xx_tiny_DEVICE_WNR2000V3_16M

* WNR612v2 8M flash [U]
  CONFIG_TARGET_ar71xx_tiny_DEVICE_REALWNR612V2_8M

* WNR612v2 16M flash [U]
  CONFIG_TARGET_ar71xx_tiny_DEVICE_REALWNR612V2_16M

* WNR1000v2 8M flash [U]
  CONFIG_TARGET_ar71xx_tiny_DEVICE_REALWNR1000V2_8M

* WNR1000v2 16M flash [U]
  CONFIG_TARGET_ar71xx_tiny_DEVICE_REALWNR1000V2_16M

* WNR2200 16M flash [U]
  CONFIG_TARGET_ar71xx_generic_DEVICE_WNR2200_16M

* WNDR3700 8M flash, compact u-boot [U]
  CONFIG_TARGET_ar71xx_generic_DEVICE_wndr3700-8m-cu

* WNDR3700 16M flash [U]
  CONFIG_TARGET_ar71xx_generic_DEVICE_wndr3700-16m

* WNDR3700 16M flash, compact u-boot [U]
  CONFIG_TARGET_ar71xx_generic_DEVICE_wndr3700-16m-cu

* WNDR4300 all flash
  CONFIG_TARGET_ath79_nand_DEVICE_netgear_wndr4300_all

Remaining ath79 versions coming soon...
