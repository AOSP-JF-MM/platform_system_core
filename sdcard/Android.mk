LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
ifeq ($(call is-vendor-board-platform,QCOM),true)
LOCAL_C_INCLUDES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr/include
LOCAL_ADDITIONAL_DEPENDENCIES += $(TARGET_OUT_INTERMEDIATES)/KERNEL_OBJ/usr
endif

LOCAL_SRC_FILES := sdcard.cpp fuse.cpp
LOCAL_MODULE := sdcard
LOCAL_CFLAGS := -Wall -Wno-unused-parameter -Werror
LOCAL_SHARED_LIBRARIES := libbase liblog libcutils libpackagelistparser

LOCAL_SANITIZE := integer
LOCAL_CLANG := true

include $(BUILD_EXECUTABLE)
