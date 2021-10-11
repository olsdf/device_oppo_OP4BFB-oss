#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),OP4BFB)
  subdir_makefiles=$(call first-makefiles-under,$(LOCAL_PATH))
  $(foreach mk,$(subdir_makefiles),$(info including $(mk) ...)$(eval include $(mk)))

  GATEKEEPER_SYMLINK += $(TARGET_OUT_VENDOR)/lib/hw/gatekeeper.default.so
  GATEKEEPER_SYMLINK += $(TARGET_OUT_VENDOR)/lib64/hw/gatekeeper.default.so

$(GATEKEEPER_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@mkdir -p $(dir $@)
	$(hide) ln -sf libSoftGatekeeper.so $@

  GATEKEEPER_DEVICE_SYMLINK += $(TARGET_OUT_VENDOR)/lib/hw/gatekeeper.mt6765.so
  GATEKEEPER_DEVICE_SYMLINK += $(TARGET_OUT_VENDOR)/lib/hw/gatekeeper.oppo6765_19451.so
  GATEKEEPER_DEVICE_SYMLINK += $(TARGET_OUT_VENDOR)/lib64/hw/gatekeeper.mt6765.so
  GATEKEEPER_DEVICE_SYMLINK += $(TARGET_OUT_VENDOR)/lib64/hw/gatekeeper.oppo6765_19451.so

$(GATEKEEPER_DEVICE_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@mkdir -p $(dir $@)
	$(hide) ln -sf libMcGatekeeper.so $@

ALL_DEFAULT_INSTALLED_MODULES += $(GATEKEEPER_DEVICE_SYMLINK)

  KEYSTORE_SYMLINK += $(TARGET_OUT_VENDOR)/lib/hw/keystore.mt6765.so
  KEYSTORE_SYMLINK += $(TARGET_OUT_VENDOR)/lib/hw/keystore.oppo6765_19451.so
  KEYSTORE_SYMLINK += $(TARGET_OUT_VENDOR)/lib64/hw/keystore.mt6765.so
  KEYSTORE_SYMLINK += $(TARGET_OUT_VENDOR)/lib64/hw/keystore.oppo6765_19451.so

$(KEYSTORE_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@mkdir -p $(dir $@)
	$(hide) ln -sf libMcTeeKeymaster.so $@

ALL_DEFAULT_INSTALLED_MODULES += $(KEYSTORE_SYMLINK)

  KMSETKEY_SYMLINK += $(TARGET_OUT_VENDOR)/lib/hw/kmsetkey.default.so
  KMSETKEY_SYMLINK += $(TARGET_OUT_VENDOR)/lib64/hw/kmsetkey.default.so

$(KMSETKEY_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@mkdir -p $(dir $@)
	$(hide) ln -sf kmsetkey.trustonic.so $@

ALL_DEFAULT_INSTALLED_MODULES += $(KMSETKEY_SYMLINK)
endif
