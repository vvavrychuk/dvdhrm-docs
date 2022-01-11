MODESET_COMMON_MK := $(call my-dir)/Android.common.mk

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := modeset

LOCAL_SRC_FILES := modeset.c

include $(MODESET_COMMON_MK)
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := modeset-vsync

LOCAL_SRC_FILES := modeset-vsync.c

LOCAL_SHARED_LIBRARIES := libdrm

include $(MODESET_COMMON_MK)
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)

LOCAL_MODULE := modeset-double-buffered

LOCAL_SRC_FILES := modeset-double-buffered.c

LOCAL_SHARED_LIBRARIES := libdrm

include $(MODESET_COMMON_MK)
include $(BUILD_EXECUTABLE)
