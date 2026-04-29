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
source $work_dir/functions.sh
regionTYPE=$(cat $work_dir/bin/ddevice/rom_region.txt)
MAIN_FOLDER="$work_dir/build/baserom/images"
android=$(cat $work_dir/bin/ddevice/androidver.txt)

disper1=$(find "$MAIN_FOLDER/" -type f -name oplus.feature.control_cn_gms.xml)
disper2=$(find "$MAIN_FOLDER/" -type f -name oplus_google_cn_gms_features.xml)



if [[ $regionTYPE == "Domestic" ]]; then 
    echo "[MODS] - Adding GMS Services 16 For Domestic ROM"
    aria2c -q -d "$work_dir/bin/package/Universal/GMS/product_privapp/GoogleVelvet_CTS/" -o GoogleVelvet_CTS.apk https://github.com/Hma1984/File/releases/download/file/GoogleVelvet_CTS.apk && echo "[INFO] - Get File Successfully"
    aria2c -q -d "$work_dir/bin/package/Universal/GMS/product_privapp/Photos/" -o Photos.apk https://github.com/Hma1984/File/releases/download/file/Photos.apk && echo "[INFO] - Get File Successfully"
    rm -rf $disper1
    rm -rf $disper2
    cp -rf $work_dir/bin/package/Universal/GMS/sysconfig $MAIN_FOLDER/my_product/etc/
    cp -rf $work_dir/bin/package/Universal/GMS/feature_contextualsearch_navbarhidden.xml $MAIN_FOLDER/my_product/etc/extension/
    cp -rf $work_dir/bin/package/Universal/GMS/default-permissions $MAIN_FOLDER/my_product/etc/
    cp -rf $work_dir/bin/package/Universal/GMS/permissions/*.xml $MAIN_FOLDER/my_product/etc/permissions/
    cp -rf $work_dir/bin/package/Universal/GMS/product_app/* $MAIN_FOLDER/my_product/app/
    cp -rf $work_dir/bin/package/Universal/GMS/product_privapp/* $MAIN_FOLDER/my_product/priv-app/
    cp -rf $work_dir/bin/package/Universal/GMS/del-app/* $MAIN_FOLDER/my_product/del-app/
    cp -rf $work_dir/bin/package/Universal/GMS/overlay/* $MAIN_FOLDER/my_product/overlay/
    echo "[MODS] - Added GMS Done"
else
  echo "[WARN] - Detected Global ROM!Skipped Added GMS."
fi