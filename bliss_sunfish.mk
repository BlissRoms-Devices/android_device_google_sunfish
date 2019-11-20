#
# Copyright (C) 2020-2021 BlissRoms Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common BlissRoms stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/sunfish/aosp_sunfish.mk)

include device/google/sunfish/device-bliss.mk

# Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4a
PRODUCT_NAME := bliss_sunfish

# Boot animation
TARGET_SCREEN_HEIGHT := 2340
TARGET_SCREEN_WIDTH := 1080

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=sunfish \
    PRIVATE_BUILD_DESC="sunfish-user 12 SQ1A.211205.008 7888514 release-keys"

BUILD_FINGERPRINT := google/sunfish/sunfish:12/SQ1A.211205.008/7888514:user/release-keys
