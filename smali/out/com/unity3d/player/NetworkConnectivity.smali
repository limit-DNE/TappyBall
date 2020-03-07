.class public Lcom/unity3d/player/NetworkConnectivity;
.super Landroid/app/Activity;


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private d:I

.field private e:Landroid/net/ConnectivityManager;

.field private final f:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/player/NetworkConnectivity;->a:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/unity3d/player/NetworkConnectivity;->b:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/unity3d/player/NetworkConnectivity;->c:I

    iput v0, p0, Lcom/unity3d/player/NetworkConnectivity;->d:I

    new-instance v0, Lcom/unity3d/player/NetworkConnectivity$1;

    invoke-direct {v0, p0}, Lcom/unity3d/player/NetworkConnectivity$1;-><init>(Lcom/unity3d/player/NetworkConnectivity;)V

    iput-object v0, p0, Lcom/unity3d/player/NetworkConnectivity;->f:Landroid/net/ConnectivityManager$NetworkCallback;

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/unity3d/player/NetworkConnectivity;->e:Landroid/net/ConnectivityManager;

    iget-object p1, p0, Lcom/unity3d/player/NetworkConnectivity;->e:Landroid/net/ConnectivityManager;

    iget-object v0, p0, Lcom/unity3d/player/NetworkConnectivity;->f:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iget-object p1, p0, Lcom/unity3d/player/NetworkConnectivity;->e:Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-nez p1, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x2

    :goto_3c
    iput v1, p0, Lcom/unity3d/player/NetworkConnectivity;->d:I

    :cond_3e
    return-void
.end method

.method static synthetic a(Lcom/unity3d/player/NetworkConnectivity;I)I
    .registers 2

    iput p1, p0, Lcom/unity3d/player/NetworkConnectivity;->d:I

    return p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/unity3d/player/NetworkConnectivity;->d:I

    return v0
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/NetworkConnectivity;->e:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/unity3d/player/NetworkConnectivity;->f:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method
