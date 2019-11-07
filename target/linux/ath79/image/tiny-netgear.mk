include ./common-netgear.mk

define Device/netgear_wnr612-v2_common
  $(Device/netgear_generic)
  SOC := ar7240
  DEVICE_MODEL := WNR612
  UIMAGE_MAGIC := 0x32303631
  NETGEAR_BOARD_ID := REALWNR612V2
  NETGEAR_HW_ID :=
endef

define Device/netgear_wnr612-v2
  $(Device/netgear_wnr612-v2_common)
  DEVICE_VARIANT := v2
  DEVICE_DTS := ar7240_netgear_wnr612-v2
  IMAGE_SIZE := 3712k
  SUPPORTED_DEVICES += wnr612-v2
endef
TARGET_DEVICES += netgear_wnr612-v2

define Device/netgear_wnr612-v2-8m
  $(Device/netgear_wnr612-v2_common)
  DEVICE_VARIANT := v2 8M
  DEVICE_DTS := ar7240_netgear_wnr612-v2-8m
  IMAGE_SIZE := 7808k
endef
TARGET_DEVICES += netgear_wnr612-v2-8m

define Device/netgear_wnr612-v2-16m
  $(Device/netgear_wnr612-v2_common)
  DEVICE_VARIANT := v2 16M
  DEVICE_DTS := ar7240_netgear_wnr612-v2-16m
  IMAGE_SIZE := 16000k
endef
TARGET_DEVICES += netgear_wnr612-v2-16m

define Device/on_n150r
  $(Device/netgear_generic)
  SOC := ar7240
  DEVICE_VENDOR := On Networks
  DEVICE_MODEL := N150R
  UIMAGE_MAGIC := 0x32303631
  NETGEAR_BOARD_ID := N150R
  IMAGE_SIZE := 3712k
  SUPPORTED_DEVICES += n150r
  DEFAULT := n
endef
TARGET_DEVICES += on_n150r

define Device/netgear_wnr1000-v2
  $(Device/netgear_generic)
  SOC := ar7240
  DEVICE_MODEL := WNR1000
  DEVICE_VARIANT := v2
  UIMAGE_MAGIC := 0x31303031
  NETGEAR_BOARD_ID := WNR1000V2
  NETGEAR_HW_ID := 29763331+4+32
  IMAGE_SIZE := 3712k
  SUPPORTED_DEVICES += wnr1000-v2
  DEFAULT := n
endef
TARGET_DEVICES += netgear_wnr1000-v2

define Device/netgear_wnr2000-v3_common
  $(Device/netgear_generic)
  SOC := ar7241
  DEVICE_MODEL := WNR2000
  UIMAGE_MAGIC := 0x32303033
  NETGEAR_BOARD_ID := WNR2000V3
endef

define Device/netgear_wnr2000-v3
  $(Device/netgear_wnr2000-v3_common)
  DEVICE_VARIANT := v3
  NETGEAR_HW_ID := 29763551+04+32
  IMAGE_SIZE := 3712k
  IMAGES += factory-NA.img
  IMAGE/factory-NA.img := $$(IMAGE/default) | netgear-dni NA | \
	check-size
  SUPPORTED_DEVICES += wnr2000-v3
endef
TARGET_DEVICES += netgear_wnr2000-v3

define Device/netgear_wnr2000-v3-8m
  $(Device/netgear_wnr2000-v3_common)
  DEVICE_VARIANT := v3 8M
  NETGEAR_HW_ID := 29763551+08+32
  IMAGE_SIZE := 7808k
endef
TARGET_DEVICES += netgear_wnr2000-v3-8m

define Device/netgear_wnr2000-v3-16m
  $(Device/netgear_wnr2000-v3_common)
  DEVICE_VARIANT := v3 16M
  NETGEAR_HW_ID := 29763551+16+32
  IMAGE_SIZE := 16000k
endef
TARGET_DEVICES += netgear_wnr2000-v3-16m
