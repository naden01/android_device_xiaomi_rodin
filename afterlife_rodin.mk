#
# Copyright (C) 2025 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common afterlife stuff.
$(call inherit-product, vendor/afterlife/config/common_full_phone.mk)

# AfterLife flags
AFTERLIFE_MAINTAINER := Nazephyrus

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# FOD
TARGET_UDFPS_ANIMATIONS := true

# Offline Charging
USE_PIXEL_CHARGING := true

# disable/enable blur support, default is false
TARGET_SUPPORTS_BLUR := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Gapps
AFTERLIFE_GAPPS := true

# Inherit from rodin device
$(call inherit-product, device/xiaomi/rodin/device.mk)

PRODUCT_DEVICE := rodin
PRODUCT_NAME := lineage_rodin
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 2412DPC0AG
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_SYSTEM_NAME := rodin_global
PRODUCT_SYSTEM_DEVICE := rodin

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="missi-user 15 AP3A.240905.015.A2 OS2.0.204.0.VOJMIXM release-keys" \
    BuildFingerprint=POCO/rodin_global/rodin:15/AP3A.240905.015.A2/OS2.0.204.0.VOJMIXM:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)

