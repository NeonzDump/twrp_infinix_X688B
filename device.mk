#
# Copyright (C) 2022 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Dynamic Partitions
PRODUCT_USE_DYNAMIC_PARTITIONS := true

# Fastbootd
PRODUCT_PACKAGES += \
	fastbootd \
	android.hardware.fastboot@1.0-impl-mock \
	android.hardware.fastboot@1.0-impl-mock.recovery

# Additional Libraries
TARGET_RECOVERY_DEVICE_MODULES += \
	libkeymaster4 \
	libpuresoftkeymasterdevice \
	ashmemd_aidl_interface-cpp \
	libashmemd_client

TW_RECOVERY_ADDITIONAL_RELINK_LIBRARY_FILES += \
	$(TARGET_OUT_SHARED_LIBRARIES)/libkeymaster4.so \
	$(TARGET_OUT_SHARED_LIBRARIES)/libpuresoftkeymasterdevice.so \
	$(TARGET_OUT_SHARED_LIBRARIES)/ashmemd_aidl_interface-cpp.so \
	$(TARGET_OUT_SHARED_LIBRARIES)/libashmemd_client.so
