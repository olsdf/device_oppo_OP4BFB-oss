#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := device/oppo/OP4BFB

# Kernel
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)-kernel/Image.gz-dtb:kernel

# Inherit the proprietary files
$(call inherit-product, vendor/oppo/OP4BFB/OP4BFB-vendor.mk)