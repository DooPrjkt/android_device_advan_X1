#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from device makefile.
$(call inherit-product, device/advan/X1/device.mk)

# Inherit some common LineageOS stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Flag
TARGET_INCLUDE_AXFX := false
TARGET_INCLUDES_LOS_PREBUILTS := false
AXION_CAMERA_REAR_INFO := 64,12
AXION_CAMERA_FRONT_INFO := 8
AXION_MAINTAINER := Doo
AXION_PROCESSOR := Mediatek_Helio_G100

PRODUCT_NAME := lineage_X1
PRODUCT_DEVICE := X1
PRODUCT_MANUFACTURER := ADVAN
PRODUCT_BRAND := ADVAN
PRODUCT_MODEL := 6781

PRODUCT_GMS_CLIENTID_BASE := android-advandigital

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="ADVAN_X1-user 14 UP1A.231005.007 1751475349 release-keys" \
    BuildFingerprint=ADVAN/ADVAN_X1/ADVAN_X1:14/UP1A.231005.007/1751475349:user/release-keys \
    DeviceName=6781 \
    DeviceProduct=ADVAN_X1 \
    SystemDevice=ADVAN_X1 \
    SystemName=ADVAN_X1
