#
# Copyright (C) 2021 The ArrowOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from sm8250-common
$(call inherit-product, device/xiaomi/sm8250-common/kona.mk)

# Call the MiuiCamera setup
$(call inherit-product-if-exists, vendor/xiaomi/apollo-miuicamera/products/miuicamera.mk)

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# Remove Packages for Dolby Support
PRODUCT_PACKAGES += \
    RemovePackagesDolby

# Audio configs
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/audio/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# Camera
PRODUCT_PACKAGES += \
    libMegviiFacepp-0.5.2 \
    libmegface

# Notchbar killer
PRODUCT_PACKAGES += \
    NotchBarKiller

# Camera Extensions
PRODUCT_SYSTEM_PROPERTIES += \
    ro.camerax.extensions.enabled=true

# Camera Extensions permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/permissions/camerax-vendor-extensions.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/camerax-vendor-extensions.xml

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-arrow

# Shims
PRODUCT_PACKAGES += \
    lib-watermarkshim

# QDCM
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(LOCAL_PATH)/qdcm/,$(TARGET_COPY_OUT_VENDOR)/etc)

# Shipping API level
PRODUCT_SHIPPING_API_LEVEL := 29

# Shims
PRODUCT_PACKAGES += \
    lib-watermarkshim

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# Inherit from vendor blobs
$(call inherit-product, vendor/xiaomi/apollo/apollo-vendor.mk)
