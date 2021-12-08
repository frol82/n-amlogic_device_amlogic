LOCAL_PATH:= device/amlogic/p281/proprietary

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/run-init.sh:system/bin/run-init.sh \
    $(LOCAL_PATH)/permissive.sh:system/su.d/permissive.sh \
    $(LOCAL_PATH)/afrd.ini:system/etc/afrd.ini \
    $(LOCAL_PATH)/00test:system/etc/init.d/00test \
    $(LOCAL_PATH)/rootsudaemon.sh:system/etc/init.d/rootsudaemon.sh \
    $(LOCAL_PATH)/00system_tune:system/etc/init.d/00system_tune \
    $(LOCAL_PATH)/30afrd:system/etc/init.d/30afrd \
    $(LOCAL_PATH)/aml_fd628.ko:system/lib/aml_fd628.ko \
    $(LOCAL_PATH)/su:system/bin/su \
    $(LOCAL_PATH)/afrd:system/xbin/afrd

#    $(LOCAL_PATH)/aml_fd628.ko:system/lib/aml_fd628.ko \
#    $(LOCAL_PATH)/FD628Service:system/bin/FD628Service \
#    $(LOCAL_PATH)/resolv.conf:system/etc/resolv.conf \
