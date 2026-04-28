work_dir=$(pwd)
source $work_dir/functions.sh
MAIN_FOLDER="$work_dir/build/baserom/images"
sdkLevel=$(cat $work_dir/bin/ddevice/sdkLevel.txt)
JARDIR="$work_dir/jar_temp"
SPOOF_DIR="$work_dir/bin/package/Universal/FrameworkSpoof"

bak="java -jar $work_dir/bin/apktool/baksmali.jar d --api $sdkLevel"
sma="java -jar $work_dir/bin/apktool/smali.jar a --api $sdkLevel"

echo "[SPOOF] - Starting Framework Spoof (Game + Google Photos)..."

# Step 1: Find framework.jar
fw_path=$(find "$MAIN_FOLDER" -type f -name "framework.jar" | head -1)
if [ -z "$fw_path" ]; then
    echo "[SPOOF] - framework.jar not found!"; exit 1
fi
echo "[SPOOF] - Found: $fw_path"

# Step 2: Copy and extract framework.jar (reuse jar_temp if exists from SIGNATURE_PATCH)
if [ ! -d "$JARDIR/framework.jar.out" ]; then
    mkdir -p $JARDIR
    cp "$fw_path" $JARDIR/
    chown $(whoami) $JARDIR/framework.jar 2>/dev/null
    unzip $JARDIR/framework.jar -d $JARDIR/framework.jar.out >/dev/null 2>&1
    rm -rf $JARDIR/framework.jar

    # Decompile all DEX files
    for dex in $(find $JARDIR/framework.jar.out -maxdepth 1 -name "*.dex"); do
        $bak $dex -o "$dex.out"
        [ -d "$dex.out" ] && rm -rf $dex
    done
    echo "[SPOOF] - framework.jar decompiled"
else
    echo "[SPOOF] - Reusing existing decompiled framework.jar"
fi

# Step 3: Run Python patcher
echo "[SPOOF] - Applying spoof patches..."
python3 "$SPOOF_DIR/patcher.py" "$JARDIR"

# Step 4: Recompile and replace
echo "[SPOOF] - Recompiling framework.jar..."
cd $JARDIR/framework.jar.out
for fld in $(find -maxdepth 1 -name "*.out"); do
    $sma $fld -o $(echo ${fld//.out})
    [ -f $(echo ${fld//.out}) ] && rm -rf $fld
done

7za a -tzip -mx=0 $JARDIR/framework.jar_notal $JARDIR/framework.jar.out/. >/dev/null 2>&1
zipalign 4 $JARDIR/framework.jar_notal $JARDIR/framework.jar

if [ -f "$JARDIR/framework.jar" ]; then
    cp -rf "$JARDIR/framework.jar" "$fw_path"
    echo "[SPOOF] - framework.jar replaced successfully!"
    rm -rf $JARDIR/framework.jar.out $JARDIR/framework.jar_notal $JARDIR/framework.jar
else
    echo "[SPOOF] - Failed to recompile framework.jar!"
fi

cd $work_dir

# Step 5: Enable Google Photos spoof by default
echo "[SPOOF] - Enabling Google Photos unlimited storage spoof..."
SYSTEM_PROP=$(find "$MAIN_FOLDER/system" -type f -name "build.prop" | head -1)
if [ -n "$SYSTEM_PROP" ]; then
    echo "persist.sys.pixelprops.gphotos=true" >> "$SYSTEM_PROP"
    echo "persist.sys.pixelprops.games=true" >> "$SYSTEM_PROP"
    echo "[SPOOF] - Props added to build.prop"
fi

echo "[SPOOF] - Framework Spoof completed!"
