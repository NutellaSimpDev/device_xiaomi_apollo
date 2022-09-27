#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/xiaomi/apollo

# Inherit from sm8250-common
include device/xiaomi/sm8250-common/BoardConfigCommon.mk

BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true

BUILD_BROKEN_DUP_RULES := true

# Display
TARGET_SCREEN_DENSITY := 440

# Audio
TARGET_PROVIDES_AUDIO_EXTNS := true
AUDIO_FEATURE_ENABLED_DS2_DOLBY_DAP := true

# HIDL
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE += $(DEVICE_PATH)/configs/hidl/device_framework_compatibility_matrix.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/configs/hidl/manifest.xml

# Init
TARGET_INIT_VENDOR_LIB := //$(DEVICE_PATH):init_xiaomi_apollo
TARGET_RECOVERY_DEVICE_MODULES := init_xiaomi_apollo

# Kernel
TARGET_KERNEL_CONFIG := apollo_defconfig

# OTA assert
TARGET_OTA_ASSERT_DEVICE := apollo,apollon,apollopro

# Properties
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# Inherit from the proprietary version
include vendor/xiaomi/apollo/BoardConfigVendor.mk
