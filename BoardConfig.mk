# Copyright (C) 2018 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

DEVICE_PATH := device/samsung/starlte

# Assert
TARGET_OTA_ASSERT_DEVICE := starltexx,starlteks,starlte

# Kernel
TARGET_KERNEL_CONFIG := exynos9810-starlte_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Inherit common board flags
include device/samsung/star-common/BoardConfigCommon.mk
