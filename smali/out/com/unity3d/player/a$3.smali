.class final Lcom/unity3d/player/a$3;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/a;


# direct methods
.method constructor <init>(Lcom/unity3d/player/a;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/a$3;->a:Lcom/unity3d/player/a;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClosed(Landroid/hardware/camera2/CameraDevice;)V
    .registers 2

    invoke-static {}, Lcom/unity3d/player/a;->f()Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public final onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .registers 4

    const/4 v0, 0x5

    const-string v1, "Camera2: CameraDevice disconnected."

    invoke-static {v0, v1}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/unity3d/player/a$3;->a:Lcom/unity3d/player/a;

    invoke-static {v0, p1}, Lcom/unity3d/player/a;->b(Lcom/unity3d/player/a;Landroid/hardware/camera2/CameraDevice;)V

    invoke-static {}, Lcom/unity3d/player/a;->f()Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public final onError(Landroid/hardware/camera2/CameraDevice;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera2: Error opeining CameraDevice "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x6

    invoke-static {v0, p2}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/unity3d/player/a$3;->a:Lcom/unity3d/player/a;

    invoke-static {p2, p1}, Lcom/unity3d/player/a;->b(Lcom/unity3d/player/a;Landroid/hardware/camera2/CameraDevice;)V

    invoke-static {}, Lcom/unity3d/player/a;->f()Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method

.method public final onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/a$3;->a:Lcom/unity3d/player/a;

    invoke-static {v0, p1}, Lcom/unity3d/player/a;->a(Lcom/unity3d/player/a;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    invoke-static {}, Lcom/unity3d/player/a;->f()Ljava/util/concurrent/Semaphore;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
