#gms
PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/gms/app/GoogleCalendarSyncAdapter/GoogleCalendarSyncAdapter.apk:system/app/GoogleCalendarSyncAdapter/GoogleCalendarSyncAdapter.apk \
  $(LOCAL_PATH)/gms/app/GoogleContactsSyncAdapter/GoogleContactsSyncAdapter.apk:system/app/GoogleContactsSyncAdapter/GoogleContactsSyncAdapter.apk \
  $(LOCAL_PATH)/gms/app/PartnerBookmarksProvider/PartnerBookmarksProvider.apk:system/app/PartnerBookmarksProvider/PartnerBookmarksProvider.apk \
  $(LOCAL_PATH)/gms/app/WebViewGoogle/WebViewGoogle.apk:system/app/WebViewGoogle/WebViewGoogle.apk \
  $(LOCAL_PATH)/gms/app/WebViewGoogle/lib/arm/libwebviewchromium.so:system/app/WebViewGoogle/lib/arm/libwebviewchromium.so \
  $(LOCAL_PATH)/gms/priv-app/GoogleBackupTransport/GoogleBackupTransport.apk:system/priv-app/GoogleBackupTransport/GoogleBackupTransport.apk \
  $(LOCAL_PATH)/gms/priv-app/GoogleFeedback/GoogleFeedback.apk:system/priv-app/GoogleFeedback/GoogleFeedback.apk \
  $(LOCAL_PATH)/gms/priv-app/GoogleLoginService/GoogleLoginService.apk:system/priv-app/GoogleLoginService/GoogleLoginService.apk \
  $(LOCAL_PATH)/gms/priv-app/GoogleOneTimeInitializer/GoogleOneTimeInitializer.apk:system/priv-app/GoogleOneTimeInitializer/GoogleOneTimeInitializer.apk \
  $(LOCAL_PATH)/gms/priv-app/GooglePartnerSetup/GooglePartnerSetup.apk:system/priv-app/GooglePartnerSetup/GooglePartnerSetup.apk \
  $(LOCAL_PATH)/gms/priv-app/GoogleServicesFramework/GoogleServicesFramework.apk:system/priv-app/GoogleServicesFramework/GoogleServicesFramework.apk \
  $(LOCAL_PATH)/gms/priv-app/Phonesky/Phonesky.apk:system/priv-app/Phonesky/Phonesky.apk \
  $(LOCAL_PATH)/gms/priv-app/TagGoogle/TagGoogle.apk:system/priv-app/TagGoogle/TagGoogle.apk \
  $(LOCAL_PATH)/gms/priv-app/GmsCore/GmsCore.apk:system/priv-app/GmsCore/GmsCore.apk \
  $(LOCAL_PATH)/gms/priv-app/GmsCore/lib/arm/libAppDataSearch.so:system/priv-app/GmsCore/lib/arm/libAppDataSearch.so \
  $(LOCAL_PATH)/gms/priv-app/GmsCore/lib/arm/libappstreaming_jni.so:system/priv-app/GmsCore/lib/arm/libappstreaming_jni.so \
  $(LOCAL_PATH)/gms/priv-app/GmsCore/lib/arm/libconscrypt_gmscore_jni.so:system/priv-app/GmsCore/lib/arm/libconscrypt_gmscore_jni.so \
  $(LOCAL_PATH)/gms/priv-app/GmsCore/lib/arm/libdirect-audio.so:system/priv-app/GmsCore/lib/arm/libdirect-audio.so \
  $(LOCAL_PATH)/gms/priv-app/GmsCore/lib/arm/libgcastv2_base.so:system/priv-app/GmsCore/lib/arm/libgcastv2_base.so \
  $(LOCAL_PATH)/gms/priv-app/GmsCore/lib/arm/libgcastv2_support.so:system/priv-app/GmsCore/lib/arm/libgcastv2_support.so \
  $(LOCAL_PATH)/gms/priv-app/GmsCore/lib/arm/libgmscore.so:system/priv-app/GmsCore/lib/arm/libgmscore.so \
  $(LOCAL_PATH)/gms/priv-app/GmsCore/lib/arm/libgms-ocrclient.so:system/priv-app/GmsCore/lib/arm/libgms-ocrclient.so \
  $(LOCAL_PATH)/gms/priv-app/GmsCore/lib/arm/libjgcastservice.so:system/priv-app/GmsCore/lib/arm/libjgcastservice.so \
  $(LOCAL_PATH)/gms/priv-app/GmsCore/lib/arm/libleveldbjni.so:system/priv-app/GmsCore/lib/arm/libleveldbjni.so \
  $(LOCAL_PATH)/gms/priv-app/GmsCore/lib/arm/libNearbyApp.so:system/priv-app/GmsCore/lib/arm/libNearbyApp.so \
  $(LOCAL_PATH)/gms/priv-app/GmsCore/lib/arm/libsslwrapper_jni.so:system/priv-app/GmsCore/lib/arm/libsslwrapper_jni.so \
  $(LOCAL_PATH)/gms/priv-app/GmsCore/lib/arm/libwearable-selector.so:system/priv-app/GmsCore/lib/arm/libwearable-selector.so \
  $(LOCAL_PATH)/gms/priv-app/GmsCore/lib/arm/libWhisper.so:system/priv-app/GmsCore/lib/arm/libWhisper.so \
  $(call find-copy-subdir-files,*.xml,$(LOCAL_PATH)/gms/permissions,system/etc/permissions) \
  $(call find-copy-subdir-files,*.jar,$(LOCAL_PATH)/gms/framework,system/framework)