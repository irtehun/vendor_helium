SUPERUSER_EMBEDDED := true

# Common overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/helium/overlay/common

# Common dictionaries
PRODUCT_PACKAGE_OVERLAYS += vendor/helium/overlay/dictionaries

PRODUCT_PACKAGES += \
    AppWidgetPicker \
    LatinImeDictionaryPack \
    Microbes \
    Superuser \
    su \
    Torch

PRODUCT_PROPERTY_OVERRIDES += \
    ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
    ro.url.legal.android_privacy=http://www.google.com/intl/%s/mobile/android/basic/privacy.html \
    ro.com.google.clientidbase=android-google \
    ro.com.android.wifi-watchlist=GoogleGuest \
    ro.error.receiver.system.apps=com.google.android.feedback \
    ro.com.google.locationfeatures=1 \
    ro.setupwizard.enterprise_mode=1 \
    windowsmgr.max_events_per_sec=240 \
    ro.kernel.android.checkjni=0

PRODUCT_COPY_FILES += \
    vendor/helium/prebuilt/common/lib/libmicrobes_jni.so:system/lib/libmicrobes_jni.so \
    vendor/helium/prebuilt/common/etc/resolv.conf:system/etc/resolv.conf

# init.d
PRODUCT_COPY_FILES += \
    vendor/helium/prebuilt/common/etc/init.local.rc:root/init.helium.rc \
    vendor/helium/prebuilt/common/etc/init.d/00start:system/etc/init.d/00start \
    vendor/helium/prebuilt/common/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
    vendor/helium/prebuilt/common/etc/sysctl.conf:system/etc/sysctl.conf \
    vendor/helium/prebuilt/common/bin/sysinit:system/bin/sysinit

# Enable SIP+VoIP on all targets
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

PRODUCT_PACKAGES += \
    openvpn \
    e2fsck \
    mke2fs \
    tune2fs \
    libssh \
    ssh \
    sshd \
    sshd-config \
    ssh-keygen \
    sftp \
    scp

# Default ringtone
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.ringtone=Scarabaeus.ogg \
    ro.config.notification_sound=Antimony.ogg \
    ro.config.alarm_alert=Scandium.ogg

PRODUCT_COPY_FILES += packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:/system/etc/permissions/android.software.live_wallpaper.xml

# Inherit common build.prop overrides
-include vendor/helium/configs/common_versions.mk

# common boot animation
PRODUCT_COPY_FILES += \
    vendor/helium/prebuilt/bootanimation/bootanimation.zip:system/media/bootanimation.zip
