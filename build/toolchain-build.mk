#
# Copyright (C) 2009 OpenWrt.org
#
# This is free software, licensed under the GNU General Public License v2.
# See /LICENSE for more information.
#

override CONFIG_AUTOREBUILD=

REAL_STAGING_DIR_HOST:=$(STAGING_DIR_HOST)
STAGING_DIR_HOST:=$(TOOLCHAIN_DIR)
COMPILE_DIR_HOST:=$(COMPILE_DIR_TOOLCHAIN)

include $(BUILD_DIR)/host-build.mk

HOST_STAMP_PREPARED=$(HOST_BUILD_DIR)/.prepared

define FixupLibdir
	if [ -d $(1)/lib64 -a \! -L $(1)/lib64 ]; then \
		mkdir -p $(1)/lib; \
		mv $(1)/lib64/* $(1)/lib/; \
		rm -rf $(1)/lib64; \
	fi
	ln -sf lib $(1)/lib64
endef
