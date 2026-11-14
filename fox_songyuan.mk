#
# Copyright (C) 2026 The Android Open Source Project
# Copyright (C) 2026 OrangeFox Recovery Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common OrangeFox stuff.
$(call inherit-product, vendor/recovery/config/common.mk)

# Inherit from songyuan device
$(call inherit-product, device/xiaomi/songyuan/device.mk)

PRODUCT_DEVICE := songyuan
PRODUCT_NAME := fox_songyuan
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Poco F9 Ultra
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="fox_songyuan-eng 16 BP2A.250605.031.A2 eng.root test-keys"

BUILD_FINGERPRINT := Redmi/songyuan/songyuan:16/BP2A.250605.031.A3/OS3.0.306.0.WGNCNXM:user/release-keys
