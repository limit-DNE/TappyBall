.class public final Lcom/unity3d/player/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/unity3d/player/d;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/pm/PackageItemInfo;)Z
    .registers 2

    :try_start_0
    iget-object p0, p0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "unityplayer.SkipPermissionsDialog"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 7

    if-eqz p1, :cond_2e

    if-nez p2, :cond_5

    goto :goto_2e

    :cond_5
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v0, "96489"

    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_2e

    new-instance v1, Lcom/unity3d/player/h;

    invoke-direct {v1}, Lcom/unity3d/player/h;-><init>()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "PermissionNames"

    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/unity3d/player/h;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    :cond_2e
    :goto_2e
    return-void
.end method

.method public final a(Landroid/app/Activity;)Z
    .registers 5

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    invoke-static {v1}, Lcom/unity3d/player/g;->a(Landroid/content/pm/PackageItemInfo;)Z

    move-result v0

    if-nez v0, :cond_22

    invoke-static {p1}, Lcom/unity3d/player/g;->a(Landroid/content/pm/PackageItemInfo;)Z

    move-result p1
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_24

    if-eqz p1, :cond_24

    :cond_22
    const/4 p1, 0x1

    return p1

    :catch_24
    :cond_24
    const/4 p1, 0x0

    return p1
.end method
