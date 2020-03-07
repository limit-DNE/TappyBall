.class final Lcom/unity3d/player/a$2;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/a;->c()V
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

    iput-object p1, p0, Lcom/unity3d/player/a$2;->a:Lcom/unity3d/player/a;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 3

    const/4 p1, 0x6

    const-string v0, "Camera2: CaptureSession configuration failed."

    invoke-static {p1, v0}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    return-void
.end method

.method public final onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .registers 6

    iget-object v0, p0, Lcom/unity3d/player/a$2;->a:Lcom/unity3d/player/a;

    invoke-static {v0}, Lcom/unity3d/player/a;->a(Lcom/unity3d/player/a;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/unity3d/player/a$2;->a:Lcom/unity3d/player/a;

    invoke-static {v0}, Lcom/unity3d/player/a;->b(Lcom/unity3d/player/a;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_10
    iget-object v1, p0, Lcom/unity3d/player/a$2;->a:Lcom/unity3d/player/a;

    invoke-static {v1, p1}, Lcom/unity3d/player/a;->a(Lcom/unity3d/player/a;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_7b

    :try_start_15
    iget-object p1, p0, Lcom/unity3d/player/a$2;->a:Lcom/unity3d/player/a;

    iget-object v1, p0, Lcom/unity3d/player/a$2;->a:Lcom/unity3d/player/a;

    invoke-static {v1}, Lcom/unity3d/player/a;->a(Lcom/unity3d/player/a;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/camera2/CameraDevice;->createCaptureRequest(I)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/unity3d/player/a;->a(Lcom/unity3d/player/a;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;

    iget-object p1, p0, Lcom/unity3d/player/a$2;->a:Lcom/unity3d/player/a;

    invoke-static {p1}, Lcom/unity3d/player/a;->c(Lcom/unity3d/player/a;)Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_3c

    iget-object p1, p0, Lcom/unity3d/player/a$2;->a:Lcom/unity3d/player/a;

    invoke-static {p1}, Lcom/unity3d/player/a;->d(Lcom/unity3d/player/a;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/unity3d/player/a$2;->a:Lcom/unity3d/player/a;

    invoke-static {v1}, Lcom/unity3d/player/a;->c(Lcom/unity3d/player/a;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    :cond_3c
    iget-object p1, p0, Lcom/unity3d/player/a$2;->a:Lcom/unity3d/player/a;

    invoke-static {p1}, Lcom/unity3d/player/a;->d(Lcom/unity3d/player/a;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/unity3d/player/a$2;->a:Lcom/unity3d/player/a;

    invoke-static {v1}, Lcom/unity3d/player/a;->e(Lcom/unity3d/player/a;)Landroid/media/ImageReader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->addTarget(Landroid/view/Surface;)V

    iget-object p1, p0, Lcom/unity3d/player/a$2;->a:Lcom/unity3d/player/a;

    invoke-static {p1}, Lcom/unity3d/player/a;->d(Lcom/unity3d/player/a;)Landroid/hardware/camera2/CaptureRequest$Builder;

    move-result-object p1

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    iget-object v2, p0, Lcom/unity3d/player/a$2;->a:Lcom/unity3d/player/a;

    invoke-static {v2}, Lcom/unity3d/player/a;->f(Lcom/unity3d/player/a;)Landroid/util/Range;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/player/a$2;->a:Lcom/unity3d/player/a;

    invoke-static {p1}, Lcom/unity3d/player/a;->g(Lcom/unity3d/player/a;)V
    :try_end_65
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_15 .. :try_end_65} :catch_66
    .catchall {:try_start_15 .. :try_end_65} :catchall_7b

    goto :goto_79

    :catch_66
    move-exception p1

    const/4 v1, 0x6

    :try_start_68
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: CameraAccessException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    :goto_79
    monitor-exit v0

    return-void

    :catchall_7b
    move-exception p1

    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_68 .. :try_end_7d} :catchall_7b

    throw p1
.end method
