## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)
$(call inherit-product, build/target/product/full.mk)
$(call inherit-product, frameworks/base/build/phone-hdpi-512-dalvik-heap.mk)

#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_eu_supl.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit device configuration
$(call inherit-product, device/htc/protou/protou.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/protou/overlay

PRODUCT_NAME := cm_protou
PRODUCT_BRAND := htc_europe
PRODUCT_DEVICE := protou
PRODUCT_MODEL := HTC Desire X
PRODUCT_MANUFACTURER := HTC
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=htc_protou BUILD_FINGERPRINT=htc_europe/protou/protou:4.0.4/IMM76D/110954.1:user/release-keys

# Release name and versioning
PRODUCT_RELEASE_NAME := protou
PRODUCT_VERSION_DEVICE_SPECIFIC :=
 
