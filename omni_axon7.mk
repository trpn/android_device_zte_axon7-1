#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2018 The LineageOS Project
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
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Get the prebuilt list of APNs
$(call inherit-product, vendor/omni/config/gsm.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# must be before including omni part
TARGET_BOOTANIMATION_SIZE := 1080p

DEVICE_PACKAGE_OVERLAYS += device/zte/axon7/overlay/common
DEVICE_PACKAGE_OVERLAYS += device/zte/axon7/overlay/device
DEVICE_PACKAGE_OVERLAYS += vendor/omni/overlay/CarrierConfig

# Inherit some common Omni stuff.
$(call inherit-product, vendor/lineage/config/common.mk)

# Inherit from ailsa_ii device
$(call inherit-product, device/zte/axon7/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := omni_axon7
PRODUCT_DEVICE := axon7
PRODUCT_BRAND := ZTE
PRODUCT_MODEL := ZTE A2017U
PRODUCT_MANUFACTURER := ZTE

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="ailsa_ii" \
    PRODUCT_NAME="P996A01_O" \
    PRIVATE_BUILD_DESC="P996A01_O-user 8.0.0 OPR1.170623.032 28 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "ZTE/P996A01_O/ailsa_ii:8.0.0/OPR1.170623.032/20180815.171922:user/release-keys"

