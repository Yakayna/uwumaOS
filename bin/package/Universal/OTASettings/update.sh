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
MAIN_FOLDER="$work_dir/build/baserom/images"
repS="python3 $work_dir/bin/strRep.py"
APKEDITOR="java -jar $work_dir/bin/apktool/apke.jar"
repS="python3 $work_dir/bin/strRep.py"
region=$(cat $work_dir/bin/ddevice/rom_region.txt)
brand_os=$(cat $work_dir/bin/ddevice/brand_os.txt)
android=$(cat $work_dir/bin/ddevice/androidver.txt)

echo "[MODS] - Modification Settings..."
#ready for patch
mkdir -p $work_dir/apk_temp
isSettingsDIR=$(find "$MAIN_FOLDER/system_ext" -type d -name "Settings")
isSettings=$(find "$MAIN_FOLDER/system_ext" -type f -name "Settings.apk")
$APKEDITOR d -t raw -f -no-dex-debug -i $isSettings -o $work_dir/apk_temp/isSettings.apk.out >/dev/null 2>&1

OTAF="$work_dir/bin/package/Universal/OTASettings/information.ini"
OTAW="$work_dir/bin/package/Universal/OTASettings/method.txt"
Smali1=$(find "$work_dir/apk_temp/isSettings.apk.out" -type f -name AboutDeviceOtaUpdatePreference.smali)

$repS $OTAF $Smali1

cat $OTAW >> $Smali1

#Replace OTA Card Background Image (Light + Dark mode)
# Note: -t raw decompile does NOT extract res/ directory, so we replace
# images directly in the final rebuilt APK using zip commands.
AGNES_BG="$work_dir/bin/package/Universal/OTASettings/agnes_ota_card_bg.jpg"


#Finishing
Settings=$(basename $isSettings)
$APKEDITOR b -f -i $work_dir/apk_temp/isSettings.apk.out -o $work_dir/apk_temp/final/$Settings >/dev/null 2>&1

if [ -f "$work_dir/apk_temp/final/$Settings" ]; then
    echo "[MODS] - Rebuilding Settings.apk..."

    # Replace OTA card background images directly inside the rebuilt APK
    if [ -f "$AGNES_BG" ]; then
        echo "[MODS] - Replacing OTA card background in rebuilt APK..."
        REBUILT_APK="$work_dir/apk_temp/final/$Settings"
        replaced=0
        # Get list of resource paths matching our target filenames
        res_paths=$(unzip -l "$REBUILT_APK" | grep -oP 'res/\S+' | grep -E '(device_ota_card_bg|coloros_1[56])')
        for res_path in $res_paths; do
            # Create temp directory structure matching the APK internal path
            temp_inject="$work_dir/apk_temp/inject"
            rm -rf "$temp_inject"
            mkdir -p "$temp_inject/$(dirname "$res_path")"
            cp -f "$AGNES_BG" "$temp_inject/$res_path"
            # Inject into the APK at the correct path
            (cd "$temp_inject" && zip -0 "$REBUILT_APK" "$res_path") >/dev/null 2>&1
            echo "[MODS] - Replaced: $res_path"
            replaced=$((replaced + 1))
        done
        rm -rf "$work_dir/apk_temp/inject"
        echo "[MODS] - Total replaced: $replaced file(s)"
    else
        echo "[WARN] - Agnes OTA background not found, skipping..."
    fi

    rm -rf $isSettingsDIR/oat
	rm -rf $isSettingsDIR/$Settings
    cp -rf $work_dir/apk_temp/final/$Settings $isSettingsDIR
    rm -rf $work_dir/apk_temp
    if [ -f $isSettingsDIR/Settings.apk ]; then
        echo "[MODS] - Done."
    else
        echo "[MODS] - Failed to create symlink for Settings."
    fi
else
    echo "[MODS] - Failed to create symlink for Settings."
fi