# Copyright (C) 2018 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Property overrides
-include $(LOCAL_PATH)/system_prop.mk

# Inherit common device configuration
$(call inherit-product, device/samsung/universal9810-common/universal9810-common.mk)

# Inherit device vendor
$(call inherit-product-if-exists, vendor/samsung/starlte/starlte-vendor.mk)
