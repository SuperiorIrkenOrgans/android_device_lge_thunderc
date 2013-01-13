# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

-include vendor/lge/thunderc/BoardConfigVendor.mk
-include device/lge/common/BoardConfigCommon.mk

# Kernel
#TARGET_KERNEL_SOURCE := kernel/lge/thunderc
#TARGET_KERNEL_CONFIG := chaos_defconfig
TARGET_PREBUILT_KERNEL := device/lge/VM670/kernels/BobZ/zImage
TARGET_SPECIFIC_HEADER_PATH := device/lge/common/include
BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=thunderc
BOARD_KERNEL_BASE := 0x12200000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00700000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00700000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0a480000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0b2e0000
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_CUSTOM_USB_CONTROLLER := ../../vendor/lge/thunderc/proprietary/VM670/UsbController.cpp
BOARD_EGL_CFG := vendor/lge/thunderc/proprietary/VM670/system/lib/egl/egl.cfg

TARGET_OTA_ASSERT_DEVICE := thunderc,VM670,thunderc_VM670,LG-VM670
