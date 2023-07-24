#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common droidx stuff.
$(call inherit-product, vendor/droidx/config/common_full_phone.mk)

# Inherit from rova device
$(call inherit-product, device/xiaomi/rova/device.mk)

# Flags
DROIDX_BUILD_TYPE := OFFICIAL
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_CALL_RECORDING := true
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.droidx.maintainer= @maxx459

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := rova
PRODUCT_NAME := droidx_rova
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 4A / 5A
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

# Boot animation
TARGET_BOOT_ANIMATION_RES := 720

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-lineage

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi