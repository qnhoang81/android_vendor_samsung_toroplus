# Copyright (C) 2010 The Android Open Source Project
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

LOCAL_STEM := toroplus/device-partial.mk

PRODUCT_COPY_FILES := \
    vendor/samsung/toroplus/proprietary/ducati-m3.bin:system/vendor/firmware/ducati-m3.bin \
    vendor/samsung/toroplus/proprietary/sirfgps.conf:system/vendor/etc/sirfgps.conf \
    vendor/samsung/toroplus/proprietary/gps.omap4.so:system/vendor/lib/hw/gps.omap4.so
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.developerid=qnhoang81 \
    ro.goo.board=$(TARGET_PRODUCT) \
    ro.goo.rom=$(TARGET_PRODUCT) \
    ro.goo.version=4

$(call inherit-product-if-exists, vendor/broadcom/$(LOCAL_STEM))
$(call inherit-product-if-exists, vendor/csr/$(LOCAL_STEM))
$(call inherit-product-if-exists, vendor/imgtec/$(LOCAL_STEM))
$(call inherit-product-if-exists, vendor/invensense/$(LOCAL_STEM))
$(call inherit-product-if-exists, vendor/nxp/$(LOCAL_STEM))
$(call inherit-product-if-exists, vendor/samsung/$(LOCAL_STEM))
$(call inherit-product-if-exists, vendor/ti/$(LOCAL_STEM))
$(call inherit-product-if-exists, vendor/widevine/$(LOCAL_STEM))
