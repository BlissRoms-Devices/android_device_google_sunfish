# Copyright (C) 2020 BlissRoms Project
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
# This file is the build configuration for an aosp Android
# build for marlin hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps). Except for a few implementation
# details, it only fundamentally contains two inherit-product
# lines, aosp and du, hence its name.
#

# Include bliss common configuration
include vendor/bliss/config/common_full_phone.mk

# Inherit from those products. Most specific first.
$(call inherit-product, device/google/sunfish/aosp_sunfish.mk)
-include device/google/sunfish/device-bliss.mk

PRODUCT_NAME := bliss_sunfish
PRODUCT_DEVICE := sunfish
PRODUCT_BRAND := google
PRODUCT_MODEL := Pixel 4a
PRODUCT_MANUFACTURER := Google

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME="sunfish" \
    PRIVATE_BUILD_DESC="sunfish-user 11 RP1A.201105.002 6869500 release-keys"

BUILD_FINGERPRINT := "google/sunfish/sunfish:11/RP1A.201105.002/6869500:user/release-keys"

PRODUCT_PROPERTY_OVERRIDES += \
    ro.build.fingerprint=google/sunfish/sunfish:11/RP1A.201105.002/6869500:user/release-keys

$(call inherit-product-if-exists, vendor/google/sunfish/sunfish-vendor.mk)
