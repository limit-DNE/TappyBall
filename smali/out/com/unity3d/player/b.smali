.class Lcom/unity3d/player/b;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/unity3d/player/n;

.field protected b:Lcom/unity3d/player/e;

.field protected c:Landroid/content/Context;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/unity3d/player/e;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/b;->a:Lcom/unity3d/player/n;

    iput-object v0, p0, Lcom/unity3d/player/b;->b:Lcom/unity3d/player/e;

    iput-object v0, p0, Lcom/unity3d/player/b;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/unity3d/player/b;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/unity3d/player/b;->e:Ljava/lang/String;

    iput-object p1, p0, Lcom/unity3d/player/b;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/unity3d/player/b;->b:Lcom/unity3d/player/e;

    return-void
.end method


# virtual methods
.method protected reportError(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/unity3d/player/b;->b:Lcom/unity3d/player/e;

    const-string v1, " Error ["

    if-eqz v0, :cond_25

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/unity3d/player/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/player/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/unity3d/player/e;->reportError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_25
    const/4 v0, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/unity3d/player/b;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unity3d/player/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    return-void
.end method

.method protected runOnUiThread(Ljava/lang/Runnable;)V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/player/b;->c:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_c

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_c
    const/4 p1, 0x5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Not running "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/player/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from an Activity; Ignoring execution request..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    return-void
.end method

.method protected runOnUiThreadWithSync(Ljava/lang/Runnable;)Z
    .registers 7

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_13

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return v2

    :cond_13
    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    new-instance v3, Lcom/unity3d/player/b$1;

    invoke-direct {v3, p0, p1, v0}, Lcom/unity3d/player/b$1;-><init>(Lcom/unity3d/player/b;Ljava/lang/Runnable;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {p0, v3}, Lcom/unity3d/player/b;->runOnUiThread(Ljava/lang/Runnable;)V

    const-wide/16 v3, 0x4

    :try_start_23
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v3, v4, p1}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_31

    const-string p1, "Timeout waiting for vr state change!"

    invoke-virtual {p0, p1}, Lcom/unity3d/player/b;->reportError(Ljava/lang/String;)V
    :try_end_30
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_30} :catch_33

    goto :goto_49

    :cond_31
    const/4 v1, 0x1

    goto :goto_49

    :catch_33
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Interrupted while trying to acquire sync lock. "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/unity3d/player/b;->reportError(Ljava/lang/String;)V

    :goto_49
    return v1
.end method
