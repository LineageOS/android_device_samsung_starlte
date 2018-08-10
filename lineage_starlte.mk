# Copyright (C) 2018 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

$(call inherit-product, device/samsung/starlte/full_starlte.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_starlte
