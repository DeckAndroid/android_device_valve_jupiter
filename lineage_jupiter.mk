# Copyright (C) 2014 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# for bootanimation, the deck's screen is rotated by 90deg
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 1280

$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

PRODUCT_NAME := lineage_jupiter
PRODUCT_DEVICE := jupiter
PRODUCT_BRAND := Valve
PRODUCT_MODEL := Steam Deck
PRODUCT_PLATFORM := aerith
PRODUCT_COPY_FILES += device/valve/jupiter/fstab.hardware:$(TARGET_COPY_OUT_RAMDISK)/fstab.hardware
PRODUCT_COPY_FILES += device/valve/jupiter/first_stage.sh:$(TARGET_COPY_OUT_RAMDISK)/first_stage.sh
PRODUCT_COPY_FILES += device/valve/jupiter/busybox:$(TARGET_COPY_OUT_RAMDISK)/busybox
# default is nosdcard, S/W button enabled in resource
DEVICE_PACKAGE_OVERLAYS := device/generic/x86/overlay
PRODUCT_CHARACTERISTICS := nosdcard
PRODUCT_PACKAGES += selinux_policy_system
