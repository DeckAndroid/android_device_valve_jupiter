#SPDX-License-Identifier: Apache-2.0

ifneq($(filter jupiter debx,$(TARGET_DEVICE)),)
	LOCAL_PATH := $(call my-dir)
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
