#SPDX-License-Identifier: Apache-2.0

ifeq($(TARGET_DEVICE),jupiter)
	LOCAL_PATH := $(call my-dir)
	include $(call all-makefiles-under,$(LOCAL_PATH))
endif
