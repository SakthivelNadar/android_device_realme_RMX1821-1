#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#


# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)

# Get non-open-source specific aspects
$(call inherit-product-if-exists, vendor/realme/RMX1821/RMX1821-vendor.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

# Overlay from mtk-telephony-ext
#include vendor/mediatek/hardware/telephony-ext/overlay.mk

# A/B
AB_OTA_UPDATER := false

# Audio
PRODUCT_PACKAGES += \
    audio.a2dp.default \
    libaacwrapper

# Camera
PRODUCT_PACKAGES += \
    Snap

# Init cripts
PRODUCT_PACKAGES += \
    init.mt6771.rc \
    fstab.mt6771

# Keylayouts
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/idc/mtk-kpd.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/mtk-kpd.idc \
    $(LOCAL_PATH)/idc/mtk-pad.idc:$(TARGET_COPY_OUT_SYSTEM)/usr/idc/mtk-pad.idc \
    $(LOCAL_PATH)/keylayout/ACCDET.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/ACCDET.kl \
    $(LOCAL_PATH)/keylayout/mtk-kpd.kl:$(TARGET_COPY_OUT_SYSTEM)/usr/keylayout/mtk-kpd.kl

# Media
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/media_codecs_mediatek_video.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/media_codecs_mediatek_video.xml

# NFC
PRODUCT_PACKAGES += \
    android.hardware.nfc@1.0:64 \
    android.hardware.nfc@1.1:64 \
    android.hardware.nfc@1.2:64 \
    android.hardware.secure_element@1.0:64 \
    android.hardware.secure_element@1.1:64 \
    com.android.nfc_extras \
    Tag

# Overlay
PRODUCT_PACKAGES += \
    overlay


# Telephony
PRODUCT_PACKAGES += \
    telephony-ext \
    mtk-telephony-ext

PRODUCT_BOOT_JARS += \
    telephony-ext

