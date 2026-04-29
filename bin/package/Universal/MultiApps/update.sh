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
source $work_dir/bin/ddevice/fetchINFO.sh
MAIN_FOLDER="$work_dir/build/baserom/images"
repS="python3 $work_dir/bin/strRep.py"
APKEDITOR="java -jar $work_dir/bin/apktool/apke.jar"
repS="python3 $work_dir/bin/strRep.py"
region=$(cat $work_dir/bin/ddevice/rom_region.txt)
brand_os=$(cat $work_dir/bin/ddevice/brand_os.txt)

OplusMultiApp=$(find "$MAIN_FOLDER/system_ext" -type d -name "OplusMultiApp")
A15="$work_dir/bin/package/Universal/MultiApps/A15"
A16="$work_dir/bin/package/Universal/MultiApps/A16"

if [[ $ANDROID_VER == "16" ]]; then
ModFile="$A16"
elif [[ $ANDROID_VER == "15" ]]; then
ModFile="$A15"
fi

echo "[MODS] - Allow MultiApp Can Detected Many User Apps"
rm -rf $OplusMultiApp/*
mv $ModFile/OplusMultiApp/* $OplusMultiApp
cp -rf $ModFile/sys_multi_app_black_list.xml $MAIN_FOLDER/system_ext/oplus
cp -rf $ModFile/sys_multi_app_config.xml $MAIN_FOLDER/system_ext/oplus
echo "[MODS] - Done"
