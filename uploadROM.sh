token="$1"
work_dir=$(pwd)
source $work_dir/functions.sh
ANDROID_VER=$(cat $work_dir/bin/ddevice/androidver.txt)
DEVICE_MODEL=$(cat $work_dir/bin/ddevice/device_model.txt)
BASE_BUILD_ID=$(cat $work_dir/bin/ddevice/base_build_id.txt)
BRAND=$(cat $work_dir/bin/ddevice/brand.txt)
echo -n "$token" | base64 -d > "$work_dir/rclone.conf" 2>/dev/null
if ! grep -q '\[.*\]' "$work_dir/rclone.conf"; then
    echo "$token" > "$work_dir/rclone.conf"
fi
RCLONE_CONFIG="$work_dir/rclone.conf"
GDRIVE_REMOTE=$(grep -o '\[.*\]' "$work_dir/rclone.conf" | head -n 1 | tr -d '[]\r')

if [ -z "$GDRIVE_REMOTE" ]; then
    echo "[GDRIVE] - Error: Could not find any remote section in rclone config"
    exit 1
fi

if [[ $(git branch --show-current) == "beta" ]]; then
    VERSION="$(cat $work_dir/Version)"
 	status="Beta"
else
    VERSION="$(cat $work_dir/Version)"
 	status="Official"
fi

if [[ $BRAND == "OnePlus" ]]; then
  NTBUILD="ColorOS"
  uploaddir="ColorOS"
elif [[ $BRAND == "OnePlus_Global" ]]; then
  NTBUILD="OxygenOS"
  uploaddir="OxygenOS"
elif [[ $BRAND == "RealmeUI" ]]; then
  NTBUILD="RealmeUI"
  uploaddir="RealmeUI"
fi

hash=$(md5sum out/${NTBUILD}_${DEVICE_MODEL}_${ANDROID_VER}_OS${BASE_BUILD_ID}.zip |head -c 5)
mv out/${NTBUILD}_${DEVICE_MODEL}_${ANDROID_VER}_OS${BASE_BUILD_ID}.zip out/${NTBUILD}_${VERSION}_${DEVICE_MODEL}_OS${BASE_BUILD_ID}_${hash}_${status}.zip
output_file="out/${NTBUILD}_${VERSION}_${DEVICE_MODEL}_OS${BASE_BUILD_ID}_${hash}_${status}.zip"
echo "[SCRIPT] - Output: "
echo "$(pwd)/out/${NTBUILD}_${VERSION}_${DEVICE_MODEL}_OS${BASE_BUILD_ID}_${hash}_${status}.zip"

echo "[GDRIVE] - Uploading"
rclone -v --config="$RCLONE_CONFIG" copy "$output_file" "$GDRIVE_REMOTE:uwumaOS/${uploaddir}/${VERSION}/${DEVICE_MODEL}/" || {
echo "[GDRIVE] - Error uploading file to Google Drive: $output_file"
exit 1
}

echo "[GDRIVE] - Generating public link..."
PUBLIC_LINK=$(rclone --config="$RCLONE_CONFIG" link "$GDRIVE_REMOTE:uwumaOS/${uploaddir}/${VERSION}/${DEVICE_MODEL}/$(basename $output_file)")
echo "[GDRIVE] - Download Link: $PUBLIC_LINK"

echo "[SYSTEM] - Clean Workflow.."
# rm -rf $work_dir/out  # Keep out directory for GitHub Artifacts upload
rm -rf $work_dir/build

echo "[INFO] - Build ${NTBUILD}_${VERSION} for ${DEVICE_MODEL} successfull !"