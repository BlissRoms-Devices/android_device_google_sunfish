#
# Copyright (C) 2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit some common bliss stuff.
$(call inherit-product, vendor/bliss/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/sunfish/aosp_sunfish.mk)

-include device/google/sunfish/device-lineage.mk

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

## Device identifier. This must come after all inclusions
PRODUCT_BRAND := google
PRODUCT_DEVICE := sunfish
PRODUCT_MODEL := Pixel 4a
PRODUCT_NAME := bliss_sunfish
TARGET_MANUFACTURER := Google

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 2340

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=sunfish \
    PRIVATE_BUILD_DESC="sunfish-user 11 RQ2A.210405.005 7181113 release-keys" \

BUILD_FINGERPRINT := google/sunfish/sunfish:11/RQ2A.210405.005/7181113:user/release-keys

$(call inherit-product-if-exists, vendor/google/sunfish/sunfish-vendor.mk)
