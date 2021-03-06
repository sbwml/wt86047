.class public Lcyanogenmod/os/Build;
.super Ljava/lang/Object;
.source "Build.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcyanogenmod/os/Build$CM_VERSION;,
        Lcyanogenmod/os/Build$CM_VERSION_CODES;
    }
.end annotation


# static fields
.field public static final CYANOGENMOD_DISPLAY_VERSION:Ljava/lang/String; = "ro.cm.display.version"

.field public static final CYANOGENMOD_VERSION:Ljava/lang/String; = "ro.cm.version"

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final sdkMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcyanogenmod/os/Build;->sdkMap:Landroid/util/SparseArray;

    .line 40
    sget-object v0, Lcyanogenmod/os/Build;->sdkMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "Apricot"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 41
    sget-object v0, Lcyanogenmod/os/Build;->sdkMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "Boysenberry"

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 42
    sget-object v0, Lcyanogenmod/os/Build;->sdkMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "Cantaloupe"

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 43
    sget-object v0, Lcyanogenmod/os/Build;->sdkMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "Dragon Fruit"

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 44
    sget-object v0, Lcyanogenmod/os/Build;->sdkMap:Landroid/util/SparseArray;

    const-string/jumbo v1, "Elderberry"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNameForSDKInt(I)Ljava/lang/String;
    .locals 2
    .param p0, "sdkInt"    # I

    .prologue
    .line 142
    sget-object v1, Lcyanogenmod/os/Build;->sdkMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 143
    .local v0, "name":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    const-string/jumbo v1, "unknown"

    return-object v1

    .line 146
    :cond_0
    return-object v0
.end method
