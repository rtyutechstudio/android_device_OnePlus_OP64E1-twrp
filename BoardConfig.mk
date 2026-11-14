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

DEVICE_PATH := device/OnePlus/OP64E1

# For building with minimal manifest
ALLOW_MISSING_DEPENDENCIES := true
BUILD_BROKEN_DUP_RULES := true
BUILD_BROKEN_ELF_PREBUILT_PRODUCT_COPY_FILES := true
BUILD_BROKEN_NINJA_USES_ENV_VARS    += RTIC_MPGEN
BUILD_BROKEN_PLUGIN_VALIDATION      := soong-libaosprecovery_defaults soong-libguitwrp_defaults soong-libminuitwrp_defaults soong-vold_defaults

# A/B
AB_OTA_UPDATER := true
TARGET_OTA_ASSERT_DEVICE := OP64E1,PYB110
TARGET_NO_RECOVERY := false
AB_OTA_PARTITIONS += \
    system \
    vendor \
    product \
    boot \
    vbmeta_vendor \
    vbmeta_system

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic
TARGET_CPU_VARIANT_RUNTIME := cortex-a75

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-2a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic
TARGET_2ND_CPU_VARIANT_RUNTIME := cortex-a75

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := SM8975
TARGET_NO_BOOTLOADER := true
TARGET_USES_UEFI := true

# Platform
BOARD_USES_MTK_HARDWARE := true
TARGET_BOARD_PLATFORM := SM8975
PLATFORM_SECURITY_PATCH := 2099-12-31
PLATFORM_VERSION := 99.87.36
PLATFORM_VERSION_LAST_STABLE := $(PLATFORM_VERSION)


# Vendor Security Path
VENDOR_SECURITY_PATCH := $(PLATFORM_SECURITY_PATCH)

# Kernel
BOARD_BOOT_HEADER_VERSION := 4
BOARD_KERNEL_PAGESIZE := 4096
TARGET_NO_KERNEL := true
BOARD_EXCLUDE_KERNEL_FROM_RECOVERY_IMAGE := true
BOARD_RAMDISK_USE_LZ4 := true



# Filesystem
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_USERIMAGES_USE_EROFS := true
BOARD_SYSTEMIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_PRODUCTIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_ODMIMAGE_FILE_SYSTEM_TYPE := erofs
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := erofs

# Partitions
BOARD_FLASH_BLOCK_SIZE := 262144 #(kernel_pagesize * 64)
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 100993296

# Dynamic Partition
BOARD_SUPER_PARTITION_SIZE := 8589934592
BOARD_SUPER_PARTITION_GROUPS := main_a
BOARD_MAIN_A_SIZE := 8587837440
BOARD_MAIN_A_LIST := \
        system \
        vendor \
        product

# Workaround for error copying vendor and product files to recovery ramdisk
TARGET_COPY_OUT_VENDOR := vendor
TARGET_COPY_OUT_PRODUCT := product
TARGET_COPY_OUT_ODM := odm

# Metadata
BOARD_USES_METADATA_PARTITION := true
BOARD_ROOT_EXTRA_FOLDERS += metadata

# System as root
BOARD_SUPPRESS_SECURE_ERASE := true

# AVB
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 0
BOARD_AVB_VBMETA_SYSTEM := system
BOARD_AVB_BOOT_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_BOOT_ALGORITHM := SHA256_RSA2048
BOARD_AVB_BOOT_ROLLBACK_INDEX := 0
BOARD_AVB_BOOT_ROLLBACK_INDEX_LOCATION := 0

# TWRP specific build flags
TW_THEME := portrait_hdpi
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TW_EXTRA_LANGUAGES := true
TW_DEFAULT_LANGUAGE := zh_CN
TW_INPUT_BLACKLIST := "hbtp_vm"

TW_USE_TOOLBOX := true
TW_INCLUDE_REPACKTOOLS := true
TW_INCLUDE_RESETPROP := true
TW_INCLUDE_LIBRESETPROP := true
TW_BRIGHTNESS_PATH := "/sys/class/backlight/panel0-backlight/brightness"
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone21/temp
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

#TW_SCREEN_BLANK_ON_BOOT := true
TW_DEVICE_VERSION := OnePlus 16 - Cuoxianxu
TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_HAS_MTP := true
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_TWRPAPP := true
TW_INCLUDE_FB2PNG := true
TARGET_USES_MKE2FS := true

TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery/root/system/etc/recovery.fstab
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 2047

# FastbootD
TW_INCLUDE_FASTBOOTD := true

# Fuse
TW_INCLUDE_NTFS_3G    := true
TW_INCLUDE_FUSE_EXFAT := true
TW_INCLUDE_FUSE_NTFS  := true

# Props
TARGET_SYSTEM_PROP := $(DEVICE_PATH)/system.prop

# Crypto
TW_INCLUDE_CRYPTO := false
TW_INCLUDE_CRYPTO_FBE := false
TW_INCLUDE_FBE_METADATA_DECRYPT := false
TW_PREPARE_DATA_MEDIA_EARLY := false

# StatusBar
TW_STATUS_ICONS_ALIGN := center
TW_CUSTOM_CLOCK_POS := 610


# AIDL
TW_SUPPORT_INPUT_AIDL_HAPTICS := true

# Fix fastboot reboot
TW_NO_FASTBOOT_BOOT := true
