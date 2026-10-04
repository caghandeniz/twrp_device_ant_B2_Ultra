#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from B2_Ultra device
$(call inherit-product, device/ant/B2_Ultra/device.mk)

PRODUCT_DEVICE := B2_Ultra
PRODUCT_NAME := twrp_B2_Ultra
PRODUCT_BRAND := IIIF150
PRODUCT_MODEL := B2 Ultra
PRODUCT_MANUFACTURER := ant

PRODUCT_GMS_CLIENTID_BASE := android-ant

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="B2_Ultra_eea-user 12 SP1A.210812.016 1772513660 release-keys"

BUILD_FINGERPRINT := IIIF150/B2_Ultra_eea/B2_Ultra:12/SP1A.210812.016/1772513660:user/release-keys
