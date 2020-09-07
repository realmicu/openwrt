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

# WNRMOD2K

wnrmod2k name originates from my first modded router, Netgear WNR2000v3, which
has been equipped with replaceable SPI NOR flash (4M, 8M and 16M). Since then
this OpenWrt fork grew to include whole family of Atheros-based WNR models as
well as selected double-band WNDR boards.

Please visit my U-boot fork https://github.com/realmicu/uboot-wnrmod2k that
provides working bootloader for flash-modded WNR routers and is a prerequisite
to use wnrmod2k OpenWrt branch.

Subtargets are not changed even when flash size is increased to keep kernel
configuration identical.

Extra modifications:
* Compact U-boot (WNDR3700 only) - by default this router has 5 eraseblocks
  (320k) for bootloader binary and 2 eraseblocks (128k) for environment; this
  can safely be resized down to 4 eraseblocks and 1 eraseblock respectively,
  making layout compatible with single-band routers and freeing 128k of flash
  space for OpenWrt

Supported modded targets and models with config options are listed below.
Entries marked with [U] require modified U-boot.

* WNR2000v3 8M flash [U]
  * CONFIG_TARGET_ath79_tiny_DEVICE_netgear_wnr2000-v3-8m

* WNR2000v3 16M flash [U]
  * CONFIG_TARGET_ath79_tiny_DEVICE_netgear_wnr2000-v3-16m

* WNR612v2 8M flash [U]
  * CONFIG_TARGET_ath79_tiny_DEVICE_netgear_wnr612-v2-8m

* WNR612v2 16M flash [U]
  * CONFIG_TARGET_ath79_tiny_DEVICE_netgear_wnr612-v2-16m

* WNR1000v2 8M flash [U]
  * CONFIG_TARGET_ath79_tiny_DEVICE_netgear_wnr1000-v2-8m

* WNR1000v2 16M flash [U]
  * CONFIG_TARGET_ath79_tiny_DEVICE_netgear_wnr1000-v2-16m

* TODO: ath79 port for WNDR3700 8M and 16M flash, compact u-boot option
