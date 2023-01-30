include $(TOPDIR)/rules.mk

PKG_NAME:=x550-nbase-t
PKG_RELEASE:=$(COMMITCOUNT)

include $(INCLUDE_DIR)/package.mk

define Package/x550-nbase-t
  SECTION:=net
  CATEGORY:=Network
  TITLE:=Intel x550 advertise 2.5 Gbps or 5 Gbps
  DEPENDS:=+kmod-ixgbe +ethtool +pciutils
endef

define Package/x550-nbase-t/description
  Intel x550 advertise 2.5 Gbps or 5 Gbps.
endef

define Package/x550-nbase-t/install
	$(INSTALL_DIR) $(1)/etc/init.d
	$(INSTALL_BIN) ./files/x550-nbase-t.init $(1)/etc/init.d/x550-nbase-t
endef

$(eval $(call BuildPackage,x550-nbase-t))
