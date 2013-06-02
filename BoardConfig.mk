# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

# inherit from common shooter
-include device/htc/shooter-common/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := shooteru

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=shooteru no_console_suspend=1
TARGET_KERNEL_CONFIG := shooter_u_defconfig

# Partitions

# cat /proc/emmc
#dev:        size     erasesize name
#mmcblk0p31: 000ffa00 00000200 "misc"
#mmcblk0p21: 00fffc00 00000200 "recovery"
#mmcblk0p20: 01000000 00000200 "boot"
#mmcblk0p22: 31fffc00 00000200 "system"
#mmcblk0p24: 077fde00 00000200 "cache"
#mmcblk0p23: 4aabc400 00000200 "userdata"
#mmcblk0p27: 01400000 00000200 "devlog"
#mmcblk0p29: 00040000 00000200 "pdata"
#mmcblk0p17: 02800000 00000200 "radio"
#mmcblk0p19: 01000000 00000200 "adsp"
#mmcblk0p18: 007ffa00 00000200 "radio_config"
#mmcblk0p25: 00400000 00000200 "modem_st1"
#mmcblk0p26: 00400000 00000200 "modem_st2"

BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838859776
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1252770816
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216

# GPS
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := shooteru

# RIL
BOARD_USE_NEW_LIBRIL_HTC := true
