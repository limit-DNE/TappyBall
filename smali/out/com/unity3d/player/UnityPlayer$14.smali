.class final Lcom/unity3d/player/UnityPlayer$14;
.super Lcom/unity3d/player/UnityPlayer$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->reportSoftInputIsVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Z)V
    .registers 3

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$14;->b:Lcom/unity3d/player/UnityPlayer;

    iput-boolean p2, p0, Lcom/unity3d/player/UnityPlayer$14;->a:Z

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/unity3d/player/UnityPlayer$f;-><init>(Lcom/unity3d/player/UnityPlayer;B)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$14;->b:Lcom/unity3d/player/UnityPlayer;

    iget-boolean v1, p0, Lcom/unity3d/player/UnityPlayer$14;->a:Z

    invoke-static {v0, v1}, Lcom/unity3d/player/UnityPlayer;->c(Lcom/unity3d/player/UnityPlayer;Z)V

    return-void
.end method
