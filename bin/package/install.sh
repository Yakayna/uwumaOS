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
source $work_dir/bin/ddevice/fetchINFO.sh
BASE_REGION=$(cat $work_dir/bin/ddevice/rom_region.txt)

if [[ $ROMVERSION == "16.0.5" && $ANDROID_VER == "16" ]]; then
    bash $work_dir/bin/package/OS165/insmod.sh
elif [[ $ROMVERSION == "16.0.0" || $ROMVERSION == "16.0.1" || $ROMVERSION == "16.0.2" || $ROMVERSION == "16.0.3" && $ANDROID_VER == "16" ]]; then
    bash $work_dir/bin/package/OS160/insmod.sh
elif [[ $ROMVERSION == "V15.0.0" && $ANDROID_VER == "15" ]]; then
    bash $work_dir/bin/package/OS150/insmod.sh
fi

bash $work_dir/bin/package/Universal/insfile.sh
bash $work_dir/bin/package/UpdateFile/insupdate.sh
bash $work_dir/bin/package/FrameworkPatcher/insfw.sh