# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

-include vendor/lge/thunderc/BoardConfigVendor.mk
-include device/lge/common/BoardConfigCommon.mk

# Kernel
#TARGET_KERNEL_SOURCE := kernel/lge/thunderc
#TARGET_KERNEL_CONFIG := chaos_defconfig
TARGET_PREBUILT_KERNEL := device/lge/MS690/kernels/BobZ/zImage
TARGET_SPECIFIC_HEADER_PATH := device/lge/MS690/include
BOARD_KERNEL_CMDLINE := mem=471M console=ttyMSM2,115200n8 androidboot.hardware=thunderc
BOARD_KERNEL_BASE := 0x12200000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0bd00000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0c900000
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_CUSTOM_USB_CONTROLLER := ../../vendor/lge/thunderc/proprietary/MS690/UsbController.cpp
BOARD_EGL_CFG := vendor/lge/thunderc/proprietary/MS690/system/lib/egl/egl.cfg
