# Copyright (C) 2026 The TWRP Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base.mk)

# Inherit some common Twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from OP64E1 device
$(call inherit-product, device/OnePlus/OP64E1/device.mk)

PRODUCT_DEVICE := OP64E1
PRODUCT_NAME := twrp_OP64E1
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := OP64E1
PRODUCT_MANUFACTURER := OnePlus
BUILD_FINGERPRINT := oplus/ossi/ossi:17/CP2A.260605.016/cuoxianxu-compile:eng/release-keys