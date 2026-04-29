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
baserom="$1"
work_dir=$(pwd)
source $work_dir/functions.sh

UWUMA_VERSION=$(cat $work_dir/Version)
DEFAULT_VALUE=$(get_prop ro.build.version.oplusrom.display)
BRAND=$(cat $work_dir/bin/ddevice/brand_os.txt)
ANDROID_VER=$(cat $work_dir/bin/ddevice/androidver.txt)

if [[ $ANDROID_VER == "15" || $ANDROID_VER == "14" ]]; then

change_prop ro.build.version.oplusrom.display "$DEFAULT_VALUE | uwumaOS $UWUMA_VERSION"

if [[ $BRAND == "RealmeUI" ]]; then
  DEFAULT_VALUE1=$(get_prop ro.build.version.realmeui)
  change_prop ro.build.version.oplusrom.display "$DEFAULT_VALUE | uwumaOS $UWUMA_VERSION"
fi

else

change_prop ro.build.version.oplusrom.display "$DEFAULT_VALUE | uwumaOS $UWUMA_VERSION"
ROM_VERSION=$(cat "$work_dir/bin/ddevice/rom_version.txt")
change_prop ro.build.display.id.show "$ROM_VERSION | uwumaOS $UWUMA_VERSION"

fi