#!/bin/bash
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function blob_fixup() {
    case "${1}" in
	vendor/lib/hw/audio.primary.exynos9810.so)
	    "${PATCHELF}" --replace-needed libvndsecril-client.so libsecril-client.so "${2}"
            ;;
	vendor/lib*/libwrappergps.so)
	    "${PATCHELF}" --replace-needed libvndsecril-client.so libsecril-client.so "${2}"
	    ;;
    esac
}

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=starlte
export DEVICE_COMMON=exynos9810-common
export VENDOR=samsung

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
