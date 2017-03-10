LOCAL_PATH := $(call my-dir)

LIBUSB_ROOT_REL := ..
LIBUSB_ROOT_ABS := $(LOCAL_PATH)/..

include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
  $(LIBUSB_ROOT_REL)/libusb/core.c \
  $(LIBUSB_ROOT_REL)/libusb/descriptor.c \
  $(LIBUSB_ROOT_REL)/libusb/io.c \
  $(LIBUSB_ROOT_REL)/libusb/sync.c \
  $(LIBUSB_ROOT_REL)/libusb/os/linux_usbfs.c

LOCAL_C_INCLUDES += \
	$(LOCAL_PATH) \
  $(LIBUSB_ROOT_ABS)/libusb \
  $(LIBUSB_ROOT_ABS)/libusb/os

LOCAL_EXPORT_C_INCLUDE_DIRS := $(LIBUSB_ROOT_ABS)/libusb

LOCAL_LDLIBS := -llog

LOCAL_MODULE := libusb1.0
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
