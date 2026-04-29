# uwumaOS Custom OEM ROM Project
# Copyright (C) 2026 Chau Vinh Tien
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <https://www.gnu.org/licenses/>.
work_dir=$(pwd)
localbuild="$1"
source "$work_dir/functions.sh"
ANDROID_VER=$(cat "$work_dir/bin/ddevice/androidver.txt")
DEVICE_MODEL=$(cat "$work_dir/bin/ddevice/device_model.txt")
BASE_BUILD_ID=$(cat "$work_dir/bin/ddevice/base_build_id.txt")
BRAND=$(cat "$work_dir/bin/ddevice/brand.txt")
super_list="system system_ext product vendor odm my_product my_engineering my_stock my_carrier my_region my_bigball my_heytap my_manifest vendor_dlkm system_dlkm odm_dlkm system_ext_dlkm product_dlkm"

if [[ $BRAND == "OnePlus" ]]; then
  NTBUILD="ColorOS"
elif [[ $BRAND == "OnePlus_Global" ]]; then
  NTBUILD="OxygenOS"
elif [[ $BRAND == "RealmeUI" ]]; then
  NTBUILD="RealmeUI"
fi

OUTDIR="${NTBUILD}_${DEVICE_MODEL}_${ANDROID_VER}_OS${BASE_BUILD_ID}"

for img in $(find "$work_dir/build/baserom/images" -type f -name "vbmeta*.img");do
    sudo "$work_dir/bin/vbmeta-disable-verification" "${img}"
    python3 "$work_dir/bin/patch-vbmeta.py" "${img}"
done

echo "[SCRIPT] - Generating flashing script"
mkdir -p "$work_dir/out/${OUTDIR}/images/"
mkdir -p "$work_dir/out/${OUTDIR}/firmware-update/"
mkdir -p "$work_dir/out/${OUTDIR}/system/"

if [ -f "$work_dir/build/baserom/images/recovery.img" ]; then 
  rm -rf "$work_dir/build/baserom/images/recovery.img"
fi

mv -f "$work_dir/build/baserom/images/modem.img" "$work_dir/out/${OUTDIR}/images/"
if [ -f "$work_dir/build/baserom/images/vendorboot_stk.img" ]; then 
  mv -f "$work_dir/build/baserom/images/vendorboot_stk.img" "$work_dir/out/${OUTDIR}/images/"
fi

if [ -f "$work_dir/build/baserom/images/vendorboot_edt.img" ]; then 
  mv -f "$work_dir/build/baserom/images/vendorboot_edt.img" "$work_dir/out/${OUTDIR}/images/"
fi

for pname in ${super_list}; do
    if [ -f "$work_dir/build/baserom/images/${pname}.img" ]; then
    mv -f "$work_dir/build/baserom/images/${pname}.img" "$work_dir/out/${OUTDIR}/system/"
    fi
done


cp -rf "$work_dir/bin/script2flash/my_company.img" "$work_dir/out/${OUTDIR}/system/"
cp -rf "$work_dir/bin/script2flash/my_preload.img" "$work_dir/out/${OUTDIR}/system/"

mv -f "$work_dir/build/baserom/images/"*.img "$work_dir/out/${OUTDIR}/firmware-update/"

# generate dynamic script
cp -rf "$work_dir/bin/script2flash/META-INF" "$work_dir/out/${OUTDIR}/"
cp -rf "$work_dir/bin/script2flash/"*.exe "$work_dir/out/${OUTDIR}/"
echo "[SCRIPT] - Done"

if [[ $localbuild != "y" ]]; then
  find "out/${OUTDIR}" -exec touch {} +
  pushd "out/${OUTDIR}/" || exit
  zip -r "../${OUTDIR}.zip" ./*
  popd || exit
  echo "[SCRIPT] - Build completed"
else
  mv "$work_dir/out/${OUTDIR}/" "$work_dir/"
  rm -rf "$work_dir/out"
  echo "[SCRIPT] - LocalBuild completed"
fi
