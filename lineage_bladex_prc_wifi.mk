#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
# $(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

$(call inherit-product, device/google/atv/products/atv_base.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_tv.mk)

# Inherit from bladex_prc_wifi device
$(call inherit-product, device/lenovo/bladex_prc_wifi/device.mk)

PRODUCT_DEVICE := bladex_prc_wifi
PRODUCT_NAME := lineage_bladex_prc_wifi
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Yoga Pad Pro 13
PRODUCT_MANUFACTURER := Lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="LenovoYT-K606F_PRC-user 12 SKQ1.220213.001 14.0.494_230409 release-keys"

BUILD_FINGERPRINT := Lenovo/LenovoYT-K606F_PRC/K606F:12/SKQ1.220213.001/14.0.494_230409:user/release-keys
