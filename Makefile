#
# Copyright (C) 2014 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=rtl8852be-bt-firmware
PKG_VERSION:=1.0
PKG_RELEASE:=1

include $(INCLUDE_DIR)/package.mk

define Package/rtl8852be-bt-firmware
  SECTION:=firmware
  CATEGORY:=Firmware
  TITLE:=Realtek RTL8852BE Bluetooth firmware
endef

define Package/rtl8852be-bt-firmware/description
  Firmware files for RTL8852BE Bluetooth
endef

define Build/Compile

endef

define Package/rtl8852be-bt-firmware/install
	$(INSTALL_DIR) $(1)/lib/firmware/rtl_bt
	$(INSTALL_DATA) ./files/rtl_bt/rtl8852bu_fw.bin $(1)/lib/firmware/rtl_bt
	$(INSTALL_DATA) ./files/rtl_bt/rtl8852bu_config.bin $(1)/lib/firmware/rtl_bt
endef

$(eval $(call BuildPackage,rtl8852be-bt-firmware))
