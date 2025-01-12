include $(TOPDIR)/rules.mk

PKG_NAME:=x550-nbase-t
PKG_RELEASE:=$(COMMITCOUNT)

include $(INCLUDE_DIR)/package.mk

define Package/x550-nbase-t
  TITLE:=Explicitly advertise 2.5G/5G link modes for Intel x550
  DEPENDS:=+kmod-ixgbe +kmod-ixgbevf +ethtool +pciutils
endef

define Package/x550-nbase-t/description
  Explicitly advertise 2.5G/5G link modes for Intel x550.
endef

define Build/Compile
endef

define Package/x550-nbase-t/install
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/x550-nbase-t.init $(1)/etc/init.d/x550-nbase-t
endef

$(eval $(call BuildPackage,x550-nbase-t))
