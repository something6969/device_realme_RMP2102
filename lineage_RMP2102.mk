# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from RMP2102 device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := realme
PRODUCT_DEVICE := RMP2102
PRODUCT_MANUFACTURER := realme
PRODUCT_NAME := lineage_RMP2102
PRODUCT_MODEL := Realme Pad Volte

PRODUCT_GMS_CLIENTID_BASE := android-realme
TARGET_VENDOR := realme
TARGET_VENDOR_PRODUCT_NAME := RMP2102
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="full_oppo8786-user 11 RP1A.200720.011 448 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := realme/RMP2102/RE54C1L1:11/RP1A.200720.011/1648541055371:user/release-keys
