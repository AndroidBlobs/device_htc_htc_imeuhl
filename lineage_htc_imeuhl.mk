# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from htc_imeuhl device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := htc
PRODUCT_DEVICE := htc_imeuhl
PRODUCT_MANUFACTURER := htc
PRODUCT_NAME := lineage_htc_imeuhl
PRODUCT_MODEL := HTC U12+

PRODUCT_GMS_CLIENTID_BASE := android-htc
TARGET_VENDOR := htc
TARGET_VENDOR_PRODUCT_NAME := htc_imeuhl
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="1.30.617.2 10.0_g CL1050003 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := htc/imeuhl_00617/htc_imeuhl:8.0.0/OPR1.170623.032/1050003.2:user/release-keys
