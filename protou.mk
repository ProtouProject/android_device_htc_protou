# Copyright (C) 2011 The Android Open Source Project
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

# proprietary side of the device
# Inherit from those products. Most specific first

$(call inherit-product-if-exists, vendor/htc/protou/protou-vendor-blobs.mk)

# Video decoding
PRODUCT_PACKAGES += \
    libstagefrighthw \
    libmm-omxcore \
    libOmxCore \
    libOmxVidEnc 
    
# Graphics 
PRODUCT_PACKAGES += \
    copybit.msm7x27a \
    gralloc.msm7x27a \
    hwcomposer.msm7x27a \
    libtilerenderer \
    libQcomUI
    
# Audio
PRODUCT_PACKAGES += \
    libacoustic \
    audio.primary.msm7x27a \
    audio_policy.msm7x27a \
    audio.a2dp.default \
    libaudioutils

# Other
PRODUCT_PACKAGES += \
    dexpreopt \
    lights.msm7x27a \
    sensors.msm7x27a \
    gps.default 
    
# Misc
PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

## Hardware properties 
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/base/data/etc/platform.xml:system/etc/permissions/platform.xml \
    frameworks/base/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml
    
# Set usb type
ADDITIONAL_DEFAULT_PROPERTIES += \
    persist.sys.usb.config=mass_storage \
    persist.service.adb.enable=1

# Publish that we support the live wallpaper feature.
PRODUCT_COPY_FILES += \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml 

PRODUCT_PACKAGES += \
    LiveWallpapersPicker \
    librs_jni

# Calibration
PRODUCT_COPY_FILES += \
    device/htc/protou/prebuilt/etc/calibration:system/etc/calibration

# Keylayout, keychars and idc
PRODUCT_COPY_FILES += \
    device/htc/protou/prebuilt/usr/keylayout/qwerty.kl:system/usr/keylayout/qwerty.kl \
    device/htc/protou/prebuilt/usr/keylayout/protou-keypad.kl:system/usr/keylayout/protou-keypad.kl \
    device/htc/protou/prebuilt/usr/keylayout/projector-Keypad.kl:system/usr/keylayout/projector-Keypad.kl \
    device/htc/protou/prebuilt/usr/keylayout/himax-touchscreen.kl:system/usr/keylayout/himax-touchscreen.kl \
    device/htc/protou/prebuilt/usr/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/protou/prebuilt/usr/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/protou/prebuilt/usr/keychars/Virtual.kcm:system/usr/keychars/Virtual.kcm \
    device/htc/protou/prebuilt/usr/keychars/qwerty.kcm:system/usr/keychars/qwerty.kcm \
    device/htc/protou/prebuilt/usr/keychars/qwerty2.kcm:system/usr/keychars/qwerty2.kcm \
    device/htc/protou/prebuilt/usr/idc/projector_input.idc:system/usr/idc/projector_input.idc \
    device/htc/protou/prebuilt/usr/idc/himax-touchscreen.idc:system/usr/idc/himax-touchscreen.idc

# Ramdisk
PRODUCT_COPY_FILES += \
    device/htc/protou/prebuilt/init:root/init \
    device/htc/protou/prebuilt/init.rc:root/init.rc \
    device/htc/protou/prebuilt/init.protou.rc:root/init.protou.rc \
    device/htc/protou/prebuilt/init.protou.usb.rc:root/init.protou.usb.rc \
    device/htc/protou/prebuilt/ueventd.protou.rc:root/ueventd.protou.rc \
    device/htc/protou/prebuilt/ueventd.rc:root/ueventd.rc

# Vold 
PRODUCT_COPY_FILES += \
    device/htc/protou/prebuilt/etc/vold.fstab:system/etc/vold.fstab 

# Camera
PRODUCT_COPY_FILES += \
    device/htc/protou/prebuilt/lib/hw/camera.default.so:system/lib/hw/camera.default.so

# media_profiles
PRODUCT_COPY_FILES += \
    device/htc/protou/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml

# Wifi
PRODUCT_COPY_FILES += \
    device/htc/protou/prebuilt/etc/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/htc/protou/prebuilt/etc/dhcpd/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf \

# Device permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

PRODUCT_PROPERTY_OVERRIDES += \
    ro.com.google.locationfeatures=1 \
    ro.com.google.networklocation=1 \
    ro.com.google.gmsversion=2.3_r6 \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    dalvik.vm.dexopt-flags=m=y 
   
# Inherit hdpi  
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_TAGS += dalvik.gc.type-precise
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
