$(call inherit-product-if-exists, target/allwinner/mr813-common/mr813-common.mk)

PRODUCT_PACKAGES +=

PRODUCT_COPY_FILES +=

PRODUCT_AAPT_CONFIG := large xlarge hdpi xhdpi
PRODUCT_AAPT_PERF_CONFIG := xhdpi
PRODUCT_CHARACTERISTICS := musicbox

PRODUCT_BRAND := allwinner
PRODUCT_NAME := mr813_perf1
PRODUCT_DEVICE := mr813-perf1
PRODUCT_MODEL := MR813 perf1
