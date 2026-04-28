#!/usr/bin/env python3
"""Framework Spoof Patcher - Patches Instrumentation.smali and ApplicationPackageManager.smali"""
import sys, os, re
from pathlib import Path

def patch_instrumentation(smali_root):
    """Patch Instrumentation.smali to hook PixelPropsUtils.setProps()"""
    target = None
    for p in smali_root.rglob("Instrumentation.smali"):
        if "android/app/Instrumentation.smali" in str(p).replace("\\","/"):
            target = p; break
    if not target:
        print("  [WARN] Instrumentation.smali not found"); return False

    with open(target, 'r', encoding='utf-8', errors='ignore') as f:
        lines = f.readlines()

    new_lines = []; i = 0
    patched = False
    while i < len(lines):
        line = lines[i]; s = line.strip()

        # Method 1: static newApplication(Class, Context)
        if 'newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;' in s and '.method' in s:
            new_lines.append(line)
            new_lines.append("""    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/content/Context;",
            ")",
            "Landroid/app/Application;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    move-result-object v0
    check-cast p0, Landroid/app/Application;
    invoke-virtual {p0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V
    invoke-static {p1}, Lcom/android/internal/util/crdroid/PixelPropsUtils;->setProps(Landroid/content/Context;)V
    return-object p0
.end method
""")
            i += 1
            while i < len(lines) and '.end method' not in lines[i]: i += 1
            if i < len(lines): i += 1
            patched = True; continue

        # Method 2: newApplication(ClassLoader, String, Context)
        if 'newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;' in s and '.method' in s:
            new_lines.append(line)
            new_lines.append("""    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    move-result-object v0
    invoke-direct {p0, v0}, Landroid/app/Instrumentation;->getFactory(Ljava/lang/String;)Landroid/app/AppComponentFactory;
    move-result-object v0
    invoke-virtual {v0, p1, p2}, Landroid/app/AppComponentFactory;->instantiateApplication(Ljava/lang/ClassLoader;Ljava/lang/String;)Landroid/app/Application;
    move-result-object p1
    invoke-virtual {p1, p3}, Landroid/app/Application;->attach(Landroid/content/Context;)V
    invoke-static {p3}, Lcom/android/internal/util/crdroid/PixelPropsUtils;->setProps(Landroid/content/Context;)V
    return-object p1
.end method
""")
            i += 1
            while i < len(lines) and '.end method' not in lines[i]: i += 1
            if i < len(lines): i += 1
            patched = True; continue

        new_lines.append(line); i += 1

    if patched:
        with open(target, 'w', encoding='utf-8') as f: f.writelines(new_lines)
        print("  [OK] Instrumentation.smali patched")
    else:
        print("  [WARN] No matching methods found in Instrumentation.smali")
    return patched

def patch_apm(smali_root):
    """Patch ApplicationPackageManager.smali to add feature spoofing"""
    target = None
    for p in smali_root.rglob("ApplicationPackageManager.smali"):
        if "android/app/ApplicationPackageManager.smali" in str(p).replace("\\","/"):
            target = p; break
    if not target:
        print("  [WARN] ApplicationPackageManager.smali not found"); return False

    with open(target, 'r', encoding='utf-8', errors='ignore') as f:
        lines = f.readlines()

    new_lines = []; fields_added = False; i = 0
    while i < len(lines):
        line = lines[i]; new_lines.append(line)

        # Add fields after sSync
        if not fields_added and 'sSync:Ljava/lang/Object;' in line:
            new_lines.append('    .field private static final blacklist featuresNexus:[Ljava/lang/String;\n')
            new_lines.append('    .field private static final blacklist featuresPixelOthers:[Ljava/lang/String;\n')
            new_lines.append('    .field private static final blacklist featuresPixel:[Ljava/lang/String;\n')
            new_lines.append('    .field private static final blacklist featuresTensor:[Ljava/lang/String;\n')
            new_lines.append('    .field private static final blacklist pTensorCodenames:[Ljava/lang/String;\n')
            fields_added = True
        i += 1

    if fields_added:
        with open(target, 'w', encoding='utf-8') as f: f.writelines(new_lines)
        print("  [OK] ApplicationPackageManager.smali fields added")
    else:
        print("  [WARN] sSync field not found in ApplicationPackageManager.smali")
    return fields_added

def main():
    if len(sys.argv) < 2:
        print("Usage: patcher.py <jar_temp_dir>"); sys.exit(1)
    
    jar_temp = Path(sys.argv[1])
    fw_out = jar_temp / "framework.jar.out"
    
    if not fw_out.exists():
        print(f"[ERR] {fw_out} not found"); sys.exit(1)

    # Find all smali directories
    smali_dirs = sorted(fw_out.glob("*.dex.out"))
    if not smali_dirs:
        print("[ERR] No decompiled dex directories found"); sys.exit(1)

    print("[SPOOF] Patching Instrumentation.smali...")
    instr_ok = False
    for d in smali_dirs:
        if patch_instrumentation(d): instr_ok = True; break

    print("[SPOOF] Patching ApplicationPackageManager.smali...")
    apm_ok = False
    for d in smali_dirs:
        if patch_apm(d): apm_ok = True; break

    # Copy crdroid smali to the correct dex output (classes5 or last available)
    script_dir = Path(__file__).parent
    crdroid_src = script_dir / "crdroid"
    if crdroid_src.exists():
        # Find suitable target: prefer classes5, else last dex
        target_dex = None
        for d in smali_dirs:
            if "classes5" in d.name or "classes6" in d.name:
                target_dex = d; break
        if not target_dex:
            target_dex = smali_dirs[-1]
        
        target_path = target_dex / "com" / "android" / "internal" / "util" / "crdroid"
        target_path.mkdir(parents=True, exist_ok=True)
        
        import shutil
        for f in crdroid_src.glob("*.smali"):
            shutil.copy2(f, target_path / f.name)
            print(f"  [OK] Copied {f.name} -> {target_path}")
    else:
        print("[WARN] crdroid/ smali source not found")

    if instr_ok:
        print("[SPOOF] Framework spoof patch completed!")
    else:
        print("[SPOOF] Some patches failed - check output above")

if __name__ == "__main__":
    main()
