LOCAL_PATH:= $(call my-dir)

# audio preprocessing wrapper
include $(CLEAR_VARS)

LOCAL_MODULE:= libqcomvoiceprocessing
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_RELATIVE_PATH := soundfx
LOCAL_VENDOR_MODULE := true

LOCAL_SRC_FILES:= \
    voice_processing.c

LOCAL_C_INCLUDES += \
    $(call include-path-for, audio-effects)

LOCAL_SHARED_LIBRARIES := \
    libcutils liblog libdl

LOCAL_HEADER_LIBRARIES := \
    libhardware_headers

LOCAL_CFLAGS += -fvisibility=hidden
LOCAL_CFLAGS += -Wno-error

include $(BUILD_SHARED_LIBRARY)
