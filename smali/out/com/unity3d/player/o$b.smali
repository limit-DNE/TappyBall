.class public final Lcom/unity3d/player/o$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/o;

.field private b:Lcom/unity3d/player/o;

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/unity3d/player/o;Lcom/unity3d/player/o;)V
    .registers 3

    iput-object p1, p0, Lcom/unity3d/player/o$b;->a:Lcom/unity3d/player/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/unity3d/player/o$b;->b:Lcom/unity3d/player/o;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unity3d/player/o$b;->c:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/o$b;->c:Z

    return-void
.end method

.method public final run()V
    .registers 3

    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_d

    :catch_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_d
    iget-boolean v0, p0, Lcom/unity3d/player/o$b;->c:Z

    if-nez v0, :cond_21

    invoke-static {}, Lcom/unity3d/player/o;->b()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "Stopping the video player due to timeout."

    invoke-static {v0}, Lcom/unity3d/player/o;->a(Ljava/lang/String;)V

    :cond_1c
    iget-object v0, p0, Lcom/unity3d/player/o$b;->b:Lcom/unity3d/player/o;

    invoke-virtual {v0}, Lcom/unity3d/player/o;->CancelOnPrepare()V

    :cond_21
    return-void
.end method
