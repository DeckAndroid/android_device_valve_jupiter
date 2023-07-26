# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_x86.mk)

PRODUCT_NAME := aosp_jupiter
PRODUCT_DEVICE := jupiter
PRODUCT_BRAND := ValveCorporation
PRODUCT_MODEL := Steam Deck
PRODUCT_MANUFACTURER := Valve
PRODUCT_RESTRICT_VENDOR_FILES := true

PRODUCT_COPY_FILES += device/valve/jupiter/fstab.aerith.mmc:$(TARGET_COPY_OUT_RAMDISK)/fstab.aerith
PRODUCT_COPY_FILES += device/valve/jupiter/fstab.aerith.mmc:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.aerith

$(call inherit-product, device/valve/jupiter/device-jupiter.mk)

PRODUCT_PACKAGES += \
	Launcher3QuickStep
