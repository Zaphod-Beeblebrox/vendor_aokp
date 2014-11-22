# Inherit AOSP device configuration for grouper
$(call inherit-product, device/rockchip/rk3188/rk3188.mk)

# Inherit AOKP common_tablet bits
$(call inherit-product, vendor/aokp/configs/common_tablet.mk)

# Grouper Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/aokp/overlay/rk3188

# Setup device specific product configuration.
PRODUCT_NAME := aokp_rk3188
PRODUCT_BRAND := Rockchip
PRODUCT_DEVICE := rk3188
PRODUCT_MODEL := CarPad-II-P
PRODUCT_MANUFACTURER := Newsmy

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=nakasi BUILD_FINGERPRINT=google/nakasi/grouper:4.4.3/KTU84L/1148727:user/release-keys PRIVATE_BUILD_DESC="nakasi-user 4.4.3 KTU84L 1148727 release-keys" BUILD_NUMBER=573038

PRODUCT_COPY_FILES += \
    vendor/aokp/prebuilt/bootanimation/bootanimation_800.zip:system/media/bootanimation.zip
