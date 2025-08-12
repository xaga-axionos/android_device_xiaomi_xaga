#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from xaga device
$(call inherit-product, device/xiaomi/xaga/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/yaap/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2460
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# ROM Flags
TARGET_DISABLE_EPPE := true
WITH_GMS := true
TARGET_INCLUDE_VIPERFX := true
TARGET_BOARD_PLATFORM := mt6895
TARGET_BUILD_GAPPS := true

PRODUCT_BRAND := Redmi
PRODUCT_DEVICE := xaga
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 22041216C
PRODUCT_NAME := yaap_xaga
PRODUCT_SYSTEM_NAME := xaga

PRODUCT_CHARACTERISTICS := nosdcard
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildFingerprint=Redmi/xaga/xaga:12/SP1A.210812.016/OS2.0.7.0.ULOCNXM:user/release-keys \
    DeviceProduct=xaga