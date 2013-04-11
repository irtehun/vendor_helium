# Inherit AOSP device configuration for toroplus.
$(call inherit-product, device/samsung/toroplus/full_toroplus.mk)

# Inherit Helium common bits
$(call inherit-product, vendor/helium/configs/common.mk)

# Tuna Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/helium/overlay/tuna

# CDMATools
PRODUCT_PACKAGE_OVERLAYS += vendor/helium/overlay/CDMATools

# Setup device specific product configuration.
PRODUCT_NAME := helium_toroplus
PRODUCT_BRAND := Google
PRODUCT_DEVICE := toroplus
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := Samsung

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=mysidspr BUILD_FINGERPRINT=samsung/mysidspr/toroplus:4.0.4/IMM76I/330937:user/release-keys PRIVATE_BUILD_DESC="mysidspr-user 4.0.4 IMM76I 330937 release-keys" BUILD_NUMBER=330937

# Toroplus specific packages
PRODUCT_PACKAGES += \
    Thinkfree \
    CDMATools

PRODUCT_COPY_FILES += \
    vendor/helium/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip
