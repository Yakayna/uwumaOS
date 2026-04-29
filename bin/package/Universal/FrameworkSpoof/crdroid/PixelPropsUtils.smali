# classes6.dex

.class public final Lcom/android/internal/util/crdroid/PixelPropsUtils;
.super Ljava/lang/Object;
.source "PixelPropsUtils.java"


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist DEVICE:Ljava/lang/String; = "ro.product.device"

.field private static final blacklist SPOOF_PIXEL_GAMES:Ljava/lang/String; = "persist.sys.pixelprops.games"

.field private static final blacklist SPOOF_PIXEL_GPHOTOS:Ljava/lang/String; = "persist.sys.pixelprops.gphotos"

.field private static final blacklist SPOOF_PIXEL_NETFLIX:Ljava/lang/String; = "persist.sys.pixelprops.netflix"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist packagesToChangeBS4:[Ljava/lang/String;

.field private static final blacklist packagesToChangeF5:[Ljava/lang/String;

.field private static final blacklist packagesToChangeLenovoY700:[Ljava/lang/String;

.field private static final blacklist packagesToChangeMI11TP:[Ljava/lang/String;

.field private static final blacklist packagesToChangeMI13P:[Ljava/lang/String;

.field private static final blacklist packagesToChangeOP8P:[Ljava/lang/String;

.field private static final blacklist packagesToChangeOP9P:[Ljava/lang/String;

.field private static final blacklist packagesToChangeROG6:[Ljava/lang/String;

.field private static final blacklist packagesToChangeROG6D:[Ljava/lang/String;

.field private static final blacklist packagesToChangeRecentPixel:[Ljava/lang/String;

.field private static final blacklist packagesToChangeS24U:[Ljava/lang/String;

.field private static final blacklist propsToChangeBS4:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist propsToChangeF5:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist propsToChangeGeneric:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist propsToChangeLenovoY700:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist propsToChangeMI11TP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist propsToChangeMI13P:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist propsToChangeOP8P:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist propsToChangeOP9P:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist propsToChangePixel9ProXL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist propsToChangePixelTablet:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist propsToChangePixelXL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist propsToChangeROG6:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist propsToChangeROG6D:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist propsToChangeS24U:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 21

    .line 37
    const-class v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->TAG:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->DEBUG:Z

    .line 61
    const-string v19, "com.netflix.mediaclient"

    const-string v20, "com.nhs.online.nhsonline"

    const-string v1, "com.google.android.aicore"

    const-string v2, "com.google.android.apps.aiwallpapers"

    const-string v3, "com.google.android.apps.bard"

    const-string v4, "com.google.android.apps.customization.pixel"

    const-string v5, "com.google.android.apps.emojiwallpaper"

    const-string v6, "com.google.android.apps.nexuslauncher"

    const-string v7, "com.google.android.apps.photos"

    const-string v8, "com.google.android.apps.pixel.agent"

    const-string v9, "com.google.android.apps.pixel.creativeassistant"

    const-string v10, "com.google.android.apps.pixel.support"

    const-string v11, "com.google.android.apps.privacy.wildlife"

    const-string v12, "com.google.android.apps.wallpaper"

    const-string v13, "com.google.android.apps.wallpaper.pixel"

    const-string v14, "com.google.android.apps.weather"

    const-string v15, "com.google.android.googlequicksearchbox"

    const-string v16, "com.google.android.settings.intelligence"

    const-string v17, "com.google.android.wallpaper.effects"

    const-string v18, "com.google.pixel.livewallpaper"

    filled-new-array/range {v1 .. v20}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->packagesToChangeRecentPixel:[Ljava/lang/String;

    .line 85
    const-string v0, "com.pearlabyss.blackdesertm"

    const-string v1, "com.pearlabyss.blackdesertm.gl"

    const-string v2, "com.ea.gp.fifamobile"

    const-string v3, "com.gameloft.android.ANMP.GloftA9HM"

    const-string v4, "com.madfingergames.legends"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->packagesToChangeROG6:[Ljava/lang/String;

    .line 94
    const-string v0, "com.proxima.dfm"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->packagesToChangeROG6D:[Ljava/lang/String;

    .line 99
    const-string v0, "com.tencent.tmgp.kr.codm"

    const-string v1, "com.vng.codmvn"

    const-string v2, "com.activision.callofduty.shooter"

    const-string v3, "com.garena.game.codm"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->packagesToChangeLenovoY700:[Ljava/lang/String;

    .line 107
    const-string v6, "com.riotgames.league.teamfighttacticstw"

    const-string v7, "com.riotgames.league.teamfighttacticsvn"

    const-string v1, "com.netease.lztgglobal"

    const-string v2, "com.riotgames.league.wildrift"

    const-string v3, "com.riotgames.league.wildrifttw"

    const-string v4, "com.riotgames.league.wildriftvn"

    const-string v5, "com.riotgames.league.teamfighttactics"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->packagesToChangeOP8P:[Ljava/lang/String;

    .line 118
    const-string v0, "com.epicgames.portal"

    const-string v1, "com.tencent.lolm"

    const-string v2, "com.epicgames.fortnite"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->packagesToChangeOP9P:[Ljava/lang/String;

    .line 125
    const-string v0, "com.supercell.clashofclans"

    const-string v1, "com.vng.mlbbvn"

    const-string v2, "com.ea.gp.apexlegendsmobilefps"

    const-string v3, "com.levelinfinite.hotta.gp"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->packagesToChangeMI11TP:[Ljava/lang/String;

    .line 133
    const-string v0, "com.levelinfinite.sgameGlobal"

    const-string v1, "com.tencent.tmgp.sgame"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->packagesToChangeMI13P:[Ljava/lang/String;

    .line 139
    const-string v0, "com.mobile.legends"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->packagesToChangeF5:[Ljava/lang/String;

    .line 146
    const-string v0, "com.garena.game.kgvn"

    const-string v1, "com.dts.freefireth"

    const-string v2, "com.dts.freefiremax"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->packagesToChangeBS4:[Ljava/lang/String;

    .line 151
    const-string v5, "com.tencent.tmgp.pubgmhd"

    const-string v6, "com.vng.pubgmobile"
    
    const-string v7, "com.facebook.orca"
    
    const-string v8, "com.facebook.katana"

    const-string v1, "com.pubg.imobile"

    const-string v2, "com.pubg.krmobile"

    const-string v3, "com.rekoo.pubgm"

    const-string v4, "com.tencent.ig"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->packagesToChangeS24U:[Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeGeneric:Ljava/util/Map;

    .line 162
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeGeneric:Ljava/util/Map;

    const-string v1, "TYPE"

    const-string/jumbo v2, "user"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeGeneric:Ljava/util/Map;

    const-string v1, "TAGS"

    const-string/jumbo v2, "release-keys"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixel9ProXL:Ljava/util/Map;

    .line 165
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixel9ProXL:Ljava/util/Map;

    const-string v1, "BRAND"

    const-string v2, "google"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixel9ProXL:Ljava/util/Map;

    const-string v3, "MANUFACTURER"

    const-string v4, "Google"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixel9ProXL:Ljava/util/Map;

    const-string v5, "DEVICE"

    const-string v6, "komodo"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixel9ProXL:Ljava/util/Map;

    const-string v7, "PRODUCT"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixel9ProXL:Ljava/util/Map;

    const-string v8, "HARDWARE"

    invoke-interface {v0, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixel9ProXL:Ljava/util/Map;

    const-string v6, "Pixel 9 Pro XL"

    const-string v9, "MODEL"

    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixel9ProXL:Ljava/util/Map;

    const-string v6, "ID"

    const-string v10, "BP2A.250605.031.A2"

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixel9ProXL:Ljava/util/Map;

    const-string v11, "google/komodo/komodo:16/BP2A.250605.031.A2/13578606:user/release-keys"

    const-string v12, "FINGERPRINT"

    invoke-interface {v0, v12, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixelTablet:Ljava/util/Map;

    .line 174
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixelTablet:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixelTablet:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixelTablet:Ljava/util/Map;

    const-string/jumbo v11, "tangorpro"

    invoke-interface {v0, v5, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixelTablet:Ljava/util/Map;

    invoke-interface {v0, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixelTablet:Ljava/util/Map;

    invoke-interface {v0, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixelTablet:Ljava/util/Map;

    const-string v11, "Pixel Tablet"

    invoke-interface {v0, v9, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixelTablet:Ljava/util/Map;

    invoke-interface {v0, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixelTablet:Ljava/util/Map;

    const-string v10, "google/tangorpro/tangorpro:16/BP2A.250605.031.A2/13578606:user/release-keys"

    invoke-interface {v0, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixelXL:Ljava/util/Map;

    .line 183
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixelXL:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixelXL:Ljava/util/Map;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixelXL:Ljava/util/Map;

    const-string v2, "marlin"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixelXL:Ljava/util/Map;

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixelXL:Ljava/util/Map;

    invoke-interface {v0, v8, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixelXL:Ljava/util/Map;

    const-string v2, "Pixel XL"

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixelXL:Ljava/util/Map;

    const-string v2, "QP1A.191005.007.A3"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixelXL:Ljava/util/Map;

    const-string v2, "google/marlin/marlin:10/QP1A.191005.007.A3/5972272:user/release-keys"

    invoke-interface {v0, v12, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeROG6:Ljava/util/Map;

    .line 192
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeROG6:Ljava/util/Map;

    const-string v2, "asus"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeROG6:Ljava/util/Map;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeROG6:Ljava/util/Map;

    const-string v4, "AI2201"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeROG6:Ljava/util/Map;

    const-string v4, "ASUS_AI2201"

    invoke-interface {v0, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeROG6D:Ljava/util/Map;

    .line 197
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeROG6D:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeROG6D:Ljava/util/Map;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeROG6D:Ljava/util/Map;

    const-string v2, "AI2203_C"

    invoke-interface {v0, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeROG6D:Ljava/util/Map;

    const-string v2, "ASUS_AI2203_C"

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeLenovoY700:Ljava/util/Map;

    .line 202
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeLenovoY700:Ljava/util/Map;

    const-string v2, "Lenovo TB-9707F"

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeLenovoY700:Ljava/util/Map;

    const-string v2, "lenovo"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeOP8P:Ljava/util/Map;

    .line 205
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeOP8P:Ljava/util/Map;

    const-string v2, "IN2020"

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeOP8P:Ljava/util/Map;

    const-string v2, "OnePlus"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeOP9P:Ljava/util/Map;

    .line 208
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeOP9P:Ljava/util/Map;

    const-string v4, "LE2123"

    invoke-interface {v0, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeOP9P:Ljava/util/Map;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeMI11TP:Ljava/util/Map;

    .line 211
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeMI11TP:Ljava/util/Map;

    const-string v2, "2107113SI"

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeMI11TP:Ljava/util/Map;

    const-string v2, "Xiaomi"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeMI13P:Ljava/util/Map;

    .line 214
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeMI13P:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeMI13P:Ljava/util/Map;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeMI13P:Ljava/util/Map;

    const-string v4, "2210132C"

    invoke-interface {v0, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeF5:Ljava/util/Map;

    .line 218
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeF5:Ljava/util/Map;

    const-string v4, "23049PCD8G"

    invoke-interface {v0, v9, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeF5:Ljava/util/Map;

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeBS4:Ljava/util/Map;

    .line 221
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeBS4:Ljava/util/Map;

    const-string v2, "RMX5101"

    invoke-interface {v0, v9, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeBS4:Ljava/util/Map;

    const-string v2, "realme"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeS24U:Ljava/util/Map;

    .line 224
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeS24U:Ljava/util/Map;

    const-string v2, "SAMSUNG"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeS24U:Ljava/util/Map;

    const-string v1, "S24 ULTRA"

    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeS24U:Ljava/util/Map;

    const-string v1, "SM-S928B"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeS24U:Ljava/util/Map;

    invoke-interface {v0, v9, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist isDeviceTablet(Landroid/content/Context;)Z
    .registers 3

    .line 349
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 350
    return v0

    .line 352
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    .line 353
    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-lt p0, v1, :cond_13

    const/4 v0, 0x1

    .line 354
    :cond_13
    return v0
.end method

.method static synthetic blacklist lambda$setProps$0(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 2

    .line 237
    invoke-static {p0, p1}, Lcom/android/internal/util/crdroid/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static blacklist setPropValue(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 2

    .line 358
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/util/crdroid/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method private static blacklist setPropValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 363
    :try_start_0
    sget-boolean v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->DEBUG:Z

    if-eqz v0, :cond_26

    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Defining prop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :cond_26
    const-class v0, Landroid/os/Build;

    .line 365
    const-string v1, "VERSION."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 366
    const-class v0, Landroid/os/Build$VERSION;

    .line 367
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 369
    :cond_38
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 370
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 372
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_59

    .line 373
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_74

    .line 374
    :cond_59
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 375
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_74

    .line 377
    :cond_71
    invoke-virtual {v0, v2, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 379
    :goto_74
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_78} :catch_79

    .line 382
    goto :goto_92

    .line 380
    :catch_79
    move-exception p1

    .line 381
    sget-object v0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set prop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    :goto_92
    return-void
.end method

.method public static blacklist setProps(Landroid/content/Context;)V
    .registers 7

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 233
    if-eqz v0, :cond_3e4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto/16 :goto_3e4

    .line 237
    :cond_e
    sget-object v1, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeGeneric:Ljava/util/Map;

    new-instance v2, Lcom/android/internal/util/crdroid/PixelPropsUtils$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/internal/util/crdroid/PixelPropsUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 239
    sget-object v1, Lcom/android/internal/util/crdroid/PixelPropsUtils;->packagesToChangeRecentPixel:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "Defining props for: "

    if-eqz v1, :cond_ea

    .line 241
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 243
    const-string v4, "com.google.android.apps.photos"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    .line 244
    const-string/jumbo p0, "persist.sys.pixelprops.gphotos"

    const/4 v2, 0x1

    invoke-static {p0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_86

    .line 245
    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixelXL:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_86

    .line 247
    :cond_44
    const-string v4, "com.netflix.mediaclient"

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 248
    const/4 v2, 0x1

    if-nez v2, :cond_61

    .line 249
    sget-boolean p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->DEBUG:Z

    if-eqz p0, :cond_60

    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->TAG:Ljava/lang/String;

    const-string v0, "Netflix spoofing disabled by system prop"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_60
    return-void

    .line 251
    :cond_61
    const-string v2, "com.google.android.settings.intelligence"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    .line 252
    const-string p0, "FINGERPRINT"

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/util/crdroid/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    return-void

    .line 255
    :cond_71
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/util/crdroid/PixelPropsUtils;->isDeviceTablet(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_81

    .line 256
    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixelTablet:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_86

    .line 258
    :cond_81
    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangePixel9ProXL:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 262
    :cond_86
    :goto_86
    sget-boolean p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->DEBUG:Z

    if-eqz p0, :cond_a0

    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_a0
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_a8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 264
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 265
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 266
    sget-boolean v3, Lcom/android/internal/util/crdroid/PixelPropsUtils;->DEBUG:Z

    if-eqz v3, :cond_e4

    sget-object v3, Lcom/android/internal/util/crdroid/PixelPropsUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Defining "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " prop for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :cond_e4
    invoke-static {v2, v1}, Lcom/android/internal/util/crdroid/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    goto :goto_a8

    .line 269
    :cond_e8
    goto/16 :goto_3e3

    .line 271
    :cond_ea
    const/4 p0, 0x1

    if-nez p0, :cond_ee

    .line 272
    return-void

    .line 274
    :cond_ee
    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->packagesToChangeROG6:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_13a

    .line 275
    sget-boolean p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->DEBUG:Z

    if-eqz p0, :cond_114

    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_114
    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeROG6:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_138

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 277
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 278
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 279
    invoke-static {v1, v0}, Lcom/android/internal/util/crdroid/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 280
    goto :goto_11e

    :cond_138
    goto/16 :goto_3e3

    .line 281
    :cond_13a
    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->packagesToChangeROG6D:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_186

    .line 282
    sget-boolean p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->DEBUG:Z

    if-eqz p0, :cond_160

    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_160
    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeROG6D:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_16a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_184

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 284
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 285
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 286
    invoke-static {v1, v0}, Lcom/android/internal/util/crdroid/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 287
    goto :goto_16a

    :cond_184
    goto/16 :goto_3e3

    .line 288
    :cond_186
    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->packagesToChangeLenovoY700:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d2

    .line 289
    sget-boolean p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->DEBUG:Z

    if-eqz p0, :cond_1ac

    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_1ac
    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeLenovoY700:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1b6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 291
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 292
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 293
    invoke-static {v1, v0}, Lcom/android/internal/util/crdroid/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 294
    goto :goto_1b6

    :cond_1d0
    goto/16 :goto_3e3

    .line 295
    :cond_1d2
    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->packagesToChangeOP8P:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21e

    .line 296
    sget-boolean p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->DEBUG:Z

    if-eqz p0, :cond_1f8

    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_1f8
    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeOP8P:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_202
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_21c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 298
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 299
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 300
    invoke-static {v1, v0}, Lcom/android/internal/util/crdroid/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 301
    goto :goto_202

    :cond_21c
    goto/16 :goto_3e3

    .line 302
    :cond_21e
    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->packagesToChangeOP9P:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26a

    .line 303
    sget-boolean p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->DEBUG:Z

    if-eqz p0, :cond_244

    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_244
    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeOP9P:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_24e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_268

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 305
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 306
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 307
    invoke-static {v1, v0}, Lcom/android/internal/util/crdroid/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    goto :goto_24e

    :cond_268
    goto/16 :goto_3e3

    .line 309
    :cond_26a
    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->packagesToChangeMI11TP:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b6

    .line 310
    sget-boolean p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->DEBUG:Z

    if-eqz p0, :cond_290

    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_290
    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeMI11TP:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_29a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 312
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 313
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 314
    invoke-static {v1, v0}, Lcom/android/internal/util/crdroid/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 315
    goto :goto_29a

    :cond_2b4
    goto/16 :goto_3e3

    .line 316
    :cond_2b6
    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->packagesToChangeMI13P:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_302

    .line 317
    sget-boolean p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->DEBUG:Z

    if-eqz p0, :cond_2dc

    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_2dc
    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeMI13P:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2e6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_300

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 319
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 320
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 321
    invoke-static {v1, v0}, Lcom/android/internal/util/crdroid/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 322
    goto :goto_2e6

    :cond_300
    goto/16 :goto_3e3

    .line 323
    :cond_302
    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->packagesToChangeF5:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34e

    .line 324
    sget-boolean p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->DEBUG:Z

    if-eqz p0, :cond_328

    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_328
    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeF5:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_332
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 326
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 327
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 328
    invoke-static {v1, v0}, Lcom/android/internal/util/crdroid/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 329
    goto :goto_332

    :cond_34c
    goto/16 :goto_3e3

    .line 330
    :cond_34e
    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->packagesToChangeBS4:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_399

    .line 331
    sget-boolean p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->DEBUG:Z

    if-eqz p0, :cond_374

    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_374
    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeBS4:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_37e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_398

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 333
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 334
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 335
    invoke-static {v1, v0}, Lcom/android/internal/util/crdroid/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 336
    goto :goto_37e

    :cond_398
    goto :goto_3e3

    .line 337
    :cond_399
    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->packagesToChangeS24U:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3e3

    .line 338
    sget-boolean p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->DEBUG:Z

    if-eqz p0, :cond_3bf

    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_3bf
    sget-object p0, Lcom/android/internal/util/crdroid/PixelPropsUtils;->propsToChangeS24U:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3c9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 340
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 341
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 342
    invoke-static {v1, v0}, Lcom/android/internal/util/crdroid/PixelPropsUtils;->setPropValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 343
    goto :goto_3c9

    .line 346
    :cond_3e3
    :goto_3e3
    return-void

    .line 234
    :cond_3e4
    :goto_3e4
    return-void
.end method

.method public static spoofFeatures(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    if-nez p0, :cond_check1
    return v0

    :cond_check1
    const-string v1, "com.google.android.apps.photos."
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :cond_check2

    :return_true
    const/4 v0, 0x1
    return v0

    :cond_check2
    const-string v1, "com.google.android.feature.PIXEL_"
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v1
    if-eqz v1, :cond_check3
    goto :return_true

    :cond_check3
    const-string v1, "com.google.android.feature.GOOGLE_BUILD"
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :cond_check4
    goto :return_true

    :cond_check4
    const-string v1, "com.google.android.feature.GOOGLE_EXPERIENCE"
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v1
    if-eqz v1, :cond_end
    goto :return_true

    :cond_end
    return v0
.end method
