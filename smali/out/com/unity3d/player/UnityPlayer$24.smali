.class final Lcom/unity3d/player/UnityPlayer$24;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/Semaphore;

.field final synthetic b:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Ljava/util/concurrent/Semaphore;)V
    .registers 3

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$24;->b:Lcom/unity3d/player/UnityPlayer;

    iput-object p2, p0, Lcom/unity3d/player/UnityPlayer$24;->a:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$24;->b:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->k(Lcom/unity3d/player/UnityPlayer;)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$24;->a:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
