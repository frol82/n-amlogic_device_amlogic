#
# Copyright (C) 2013 The Android Open-Source Project
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

ifneq ($(BOARD_USES_RECOVERY_AS_BOOT), true)
PRODUCT_COPY_FILES += \
    device/amlogic/p281/product/init.amlogic.rc:root/init.amlogic.rc \
    device/amlogic/p281/init.amlogic.usb.rc:root/init.amlogic.usb.rc \
    device/amlogic/p281/product/ueventd.amlogic.rc:root/ueventd.amlogic.rc \
    device/amlogic/p281/init.amlogic.board.rc:root/init.amlogic.board.rc
else
PRODUCT_COPY_FILES += \
    device/amlogic/p281/product/init.amlogic.rc:recovery/root/init.amlogic.rc \
    device/amlogic/p281/init.amlogic.usb.rc:recovery/root/init.amlogic.usb.rc \
    device/amlogic/p281/product/ueventd.amlogic.rc:recovery/root/ueventd.amlogic.rc \
    device/amlogic/p281/init.amlogic.board.rc:recovery/root/init.amlogic.board.rc
endif

PRODUCT_COPY_FILES += \
    device/amlogic/p281/files/media_profiles.xml:system/etc/media_profiles.xml \
    device/amlogic/p281/files/audio_policy.conf:system/etc/audio_policy.conf \
    device/amlogic/p281/files/media_codecs.xml:system/etc/media_codecs.xml \
    device/amlogic/p281/files/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
    device/amlogic/p281/files/mixer_paths.xml:system/etc/mixer_paths.xml \
    device/amlogic/p281/files/mesondisplay.cfg:system/etc/mesondisplay.cfg \
    frameworks/native/data/etc/android.hardware.hdmi.cec.xml:system/etc/permissions/android.hardware.hdmi.cec.xml

# remote IME config file
PRODUCT_COPY_FILES += \
    device/amlogic/p281/files/remote.cfg:system/etc/remote.cfg \
    device/amlogic/p281/files/Vendor_0001_Product_0001.kl:/system/usr/keylayout/Vendor_0001_Product_0001.kl \
    device/amlogic/p281/files/Generic.kl:/system/usr/keylayout/Generic.kl
PRODUCT_AAPT_CONFIG := xlarge hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_CHARACTERISTICS := mbx,nosdcard

DEVICE_PACKAGE_OVERLAYS := \
    device/amlogic/p281/overlay

PRODUCT_TAGS += dalvik.gc.type-precise

$(shell python $(LOCAL_PATH)/auto_generator.py preinstall)
-include device/amlogic/p281/preinstall/preinstall.mk
PRODUCT_COPY_FILES += \
     device/amlogic/p281/preinstall/preinstall.sh:system/bin/preinstall.sh


# setup dalvik vm configs.
$(call inherit-product, frameworks/native/build/tablet-10in-xhdpi-2048-dalvik-heap.mk)

# set default USB configuration
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp
