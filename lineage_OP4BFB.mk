#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from OPPO device.
$(call inherit-product, device/oppo/OP4BFB/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := OP4BFB
PRODUCT_NAME := omni_OP4BFB
PRODUCT_BRAND := OPPO
PRODUCT_MODEL := CPH2083
PRODUCT_MANUFACTURER := OPPO

PRODUCT_GMS_CLIENTID_BASE := android-oppo
