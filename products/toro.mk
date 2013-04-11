# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit Helium common bits
$(call inherit-product, vendor/helium/configs/common.mk)

# Inherit common Verizon Wireless Files
$(call inherit-product, vendor/helium/configs/vzw.mk)

# Tuna Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/helium/overlay/tuna

# Setup device specific product configuration.
PRODUCT_NAME := helium_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysid BUILD_ID=JDQ39 BUILD_FINGERPRINT=google/mysid/toro:4.2.2/JDQ39/125147:user/release-keys PRIVATE_BUILD_DESC="mysid-user 4.2.2 JDQ39 125147 release-keys" BUILD_NUMBER=125147

# Toro specific packages
PRODUCT_PACKAGES += \
    Thinkfree

PRODUCT_COPY_FILES += \
    vendor/helium/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip
