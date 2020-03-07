.class public final Lcom/unity3d/player/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/a$a;
    }
.end annotation


# static fields
.field private static b:Landroid/hardware/camera2/CameraManager;

.field private static c:[Ljava/lang/String;

.field private static e:Ljava/util/concurrent/Semaphore;


# instance fields
.field private A:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

.field private final B:Landroid/hardware/camera2/CameraDevice$StateCallback;

.field private final C:Landroid/media/ImageReader$OnImageAvailableListener;

.field private final D:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

.field private a:Lcom/unity3d/player/c;

.field private d:Landroid/hardware/camera2/CameraDevice;

.field private f:Landroid/os/HandlerThread;

.field private g:Landroid/os/Handler;

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/Rect;

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:I

.field private o:I

.field private p:Z

.field private q:Landroid/util/Range;

.field private r:Landroid/media/ImageReader;

.field private s:Landroid/media/Image;

.field private t:Landroid/hardware/camera2/CaptureRequest$Builder;

.field private u:Landroid/hardware/camera2/CameraCaptureSession;

.field private v:Ljava/lang/Object;

.field private w:I

.field private x:Landroid/graphics/SurfaceTexture;

.field private y:Landroid/view/Surface;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    sput-object v0, Lcom/unity3d/player/a;->e:Ljava/util/concurrent/Semaphore;

    return-void
.end method

.method protected constructor <init>(Lcom/unity3d/player/c;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/a;->a:Lcom/unity3d/player/c;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/unity3d/player/a;->l:F

    iput v1, p0, Lcom/unity3d/player/a;->m:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/unity3d/player/a;->p:Z

    iput-object v0, p0, Lcom/unity3d/player/a;->r:Landroid/media/ImageReader;

    iput-object v0, p0, Lcom/unity3d/player/a;->u:Landroid/hardware/camera2/CameraCaptureSession;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/unity3d/player/a;->v:Ljava/lang/Object;

    iput-object v0, p0, Lcom/unity3d/player/a;->y:Landroid/view/Surface;

    sget v0, Lcom/unity3d/player/a$a;->c:I

    iput v0, p0, Lcom/unity3d/player/a;->z:I

    new-instance v0, Lcom/unity3d/player/a$1;

    invoke-direct {v0, p0}, Lcom/unity3d/player/a$1;-><init>(Lcom/unity3d/player/a;)V

    iput-object v0, p0, Lcom/unity3d/player/a;->A:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    new-instance v0, Lcom/unity3d/player/a$3;

    invoke-direct {v0, p0}, Lcom/unity3d/player/a$3;-><init>(Lcom/unity3d/player/a;)V

    iput-object v0, p0, Lcom/unity3d/player/a;->B:Landroid/hardware/camera2/CameraDevice$StateCallback;

    new-instance v0, Lcom/unity3d/player/a$4;

    invoke-direct {v0, p0}, Lcom/unity3d/player/a$4;-><init>(Lcom/unity3d/player/a;)V

    iput-object v0, p0, Lcom/unity3d/player/a;->C:Landroid/media/ImageReader$OnImageAvailableListener;

    new-instance v0, Lcom/unity3d/player/a$5;

    invoke-direct {v0, p0}, Lcom/unity3d/player/a$5;-><init>(Lcom/unity3d/player/a;)V

    iput-object v0, p0, Lcom/unity3d/player/a;->D:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iput-object p1, p0, Lcom/unity3d/player/a;->a:Lcom/unity3d/player/c;

    invoke-direct {p0}, Lcom/unity3d/player/a;->g()V

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .registers 1

    invoke-static {p0}, Lcom/unity3d/player/a;->c(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    array-length p0, p0

    return p0
.end method

.method public static a(Landroid/content/Context;I)I
    .registers 4

    :try_start_0
    invoke-static {p0}, Lcom/unity3d/player/a;->b(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    invoke-static {p0}, Lcom/unity3d/player/a;->c(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1a
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_1a} :catch_1b

    return p0

    :catch_1b
    move-exception p0

    const/4 p1, 0x6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Camera2: CameraAccessException "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private static a([Landroid/util/Range;I)I
    .registers 12

    const/4 v0, -0x1

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const/4 v3, 0x0

    :goto_7
    array-length v4, p0

    if-ge v3, v4, :cond_4f

    aget-object v4, p0, v3

    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v5, p0, v3

    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-float v6, p1

    const v7, 0x3dcccccd    # 0.1f

    add-float v8, v6, v7

    int-to-float v9, v4

    cmpl-float v8, v8, v9

    if-lez v8, :cond_34

    sub-float/2addr v6, v7

    int-to-float v7, v5

    cmpg-float v6, v6, v7

    if-gez v6, :cond_34

    return p1

    :cond_34
    sub-int v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    float-to-double v4, v4

    cmpg-double v6, v4, v1

    if-gez v6, :cond_4c

    move v0, v3

    move-wide v1, v4

    :cond_4c
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_4f
    aget-object v1, p0, v0

    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le p1, v1, :cond_6a

    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object p0

    :goto_63
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_6a
    aget-object p0, p0, v0

    invoke-virtual {p0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object p0

    goto :goto_63
.end method

.method private static a([Landroid/util/Size;DD)Landroid/graphics/Rect;
    .registers 18

    move-object v0, p0

    const/4 v1, 0x0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v5, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_b
    array-length v7, v0

    if-ge v2, v7, :cond_41

    aget-object v7, v0, v2

    invoke-virtual {v7}, Landroid/util/Size;->getWidth()I

    move-result v7

    aget-object v8, v0, v2

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    int-to-double v9, v7

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    div-double v9, p1, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    int-to-double v11, v8

    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    div-double v11, p3, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->log(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(D)D

    move-result-wide v11

    add-double/2addr v9, v11

    cmpg-double v11, v9, v5

    if-gez v11, :cond_3e

    move v3, v7

    move v4, v8

    move-wide v5, v9

    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_41
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method static synthetic a(Lcom/unity3d/player/a;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/a;->u:Landroid/hardware/camera2/CameraCaptureSession;

    return-object p1
.end method

.method static synthetic a(Lcom/unity3d/player/a;)Landroid/hardware/camera2/CameraDevice;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/player/a;->d:Landroid/hardware/camera2/CameraDevice;

    return-object p0
.end method

.method static synthetic a(Lcom/unity3d/player/a;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/a;->d:Landroid/hardware/camera2/CameraDevice;

    return-object p1
.end method

.method static synthetic a(Lcom/unity3d/player/a;Landroid/hardware/camera2/CaptureRequest$Builder;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/a;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p1
.end method

.method static synthetic a(Lcom/unity3d/player/a;Landroid/media/Image;)Landroid/media/Image;
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/a;->s:Landroid/media/Image;

    return-object p1
.end method

.method private a(Landroid/hardware/camera2/CameraDevice;)V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/player/a;->v:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    iput-object v1, p0, Lcom/unity3d/player/a;->u:Landroid/hardware/camera2/CameraCaptureSession;

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    iput-object v1, p0, Lcom/unity3d/player/a;->d:Landroid/hardware/camera2/CameraDevice;

    return-void

    :catchall_d
    move-exception p1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    throw p1
.end method

.method static synthetic a(Lcom/unity3d/player/a;Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/player/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method private a(Ljava/lang/Object;)V
    .registers 6

    const-string v0, "Focus"

    if-ne p1, v0, :cond_48

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unity3d/player/a;->p:Z

    iget-object v0, p0, Lcom/unity3d/player/a;->v:Ljava/lang/Object;

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lcom/unity3d/player/a;->u:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_45

    if-eqz v1, :cond_43

    :try_start_e
    iget-object v1, p0, Lcom/unity3d/player/a;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/player/a;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v1, "Regular"

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/unity3d/player/a;->u:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/unity3d/player/a;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/player/a;->A:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/unity3d/player/a;->g:Landroid/os/Handler;

    invoke-virtual {p1, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_2f
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_e .. :try_end_2f} :catch_30
    .catchall {:try_start_e .. :try_end_2f} :catchall_45

    goto :goto_43

    :catch_30
    move-exception p1

    const/4 v1, 0x6

    :try_start_32
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: CameraAccessException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    :cond_43
    :goto_43
    monitor-exit v0

    return-void

    :catchall_45
    move-exception p1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_32 .. :try_end_47} :catchall_45

    throw p1

    :cond_48
    const-string v0, "Cancel focus"

    if-ne p1, v0, :cond_5b

    iget-object p1, p0, Lcom/unity3d/player/a;->v:Ljava/lang/Object;

    monitor-enter p1

    :try_start_4f
    iget-object v0, p0, Lcom/unity3d/player/a;->u:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_56

    invoke-direct {p0}, Lcom/unity3d/player/a;->j()V

    :cond_56
    monitor-exit p1

    return-void

    :catchall_58
    move-exception v0

    monitor-exit p1
    :try_end_5a
    .catchall {:try_start_4f .. :try_end_5a} :catchall_58

    throw v0

    :cond_5b
    return-void
.end method

.method private static a(Landroid/hardware/camera2/CameraCharacteristics;)[Landroid/util/Size;
    .registers 4

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    const/4 v0, 0x0

    const/4 v1, 0x6

    if-nez p0, :cond_12

    const-string p0, "Camera2: configuration map is not available."

    :goto_e
    invoke-static {v1, p0}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    return-object v0

    :cond_12
    const/16 v2, 0x23

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_1f

    array-length v2, p0

    if-nez v2, :cond_1e

    goto :goto_1f

    :cond_1e
    return-object p0

    :cond_1f
    :goto_1f
    const-string p0, "Camera2: output sizes for YUV_420_888 format are not avialable."

    goto :goto_e
.end method

.method private static b(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;
    .registers 2

    sget-object v0, Lcom/unity3d/player/a;->b:Landroid/hardware/camera2/CameraManager;

    if-nez v0, :cond_e

    const-string v0, "camera"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    sput-object p0, Lcom/unity3d/player/a;->b:Landroid/hardware/camera2/CameraManager;

    :cond_e
    sget-object p0, Lcom/unity3d/player/a;->b:Landroid/hardware/camera2/CameraManager;

    return-object p0
.end method

.method static synthetic b(Lcom/unity3d/player/a;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/player/a;->v:Ljava/lang/Object;

    return-object p0
.end method

.method private b(Landroid/hardware/camera2/CameraCharacteristics;)V
    .registers 5

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/unity3d/player/a;->k:I

    iget v0, p0, Lcom/unity3d/player/a;->k:I

    if-lez v0, :cond_83

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/unity3d/player/a;->i:Landroid/graphics/Rect;

    iget-object p1, p0, Lcom/unity3d/player/a;->i:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/unity3d/player/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/unity3d/player/a;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/unity3d/player/a;->h:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    cmpl-float p1, v0, p1

    if-lez p1, :cond_58

    iput v2, p0, Lcom/unity3d/player/a;->n:I

    iget-object p1, p0, Lcom/unity3d/player/a;->i:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Lcom/unity3d/player/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v0

    sub-float/2addr p1, v2

    div-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/unity3d/player/a;->o:I

    goto :goto_6f

    :cond_58
    iput v2, p0, Lcom/unity3d/player/a;->o:I

    iget-object p1, p0, Lcom/unity3d/player/a;->i:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Lcom/unity3d/player/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    mul-float v2, v2, v0

    sub-float/2addr p1, v2

    div-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/unity3d/player/a;->n:I

    :goto_6f
    iget-object p1, p0, Lcom/unity3d/player/a;->i:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v0, p0, Lcom/unity3d/player/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x14

    iput p1, p0, Lcom/unity3d/player/a;->j:I

    :cond_83
    return-void
.end method

.method static synthetic b(Lcom/unity3d/player/a;Landroid/hardware/camera2/CameraDevice;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/unity3d/player/a;->a(Landroid/hardware/camera2/CameraDevice;)V

    return-void
.end method

.method public static b(Landroid/content/Context;I)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/unity3d/player/a;->b(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    invoke-static {p0}, Lcom/unity3d/player/a;->c(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1b
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1b} :catch_20

    if-nez p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    return v0

    :catch_20
    move-exception p0

    const/4 p1, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Camera2: CameraAccessException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    return v0
.end method

.method static synthetic c(Lcom/unity3d/player/a;)Landroid/view/Surface;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/player/a;->y:Landroid/view/Surface;

    return-object p0
.end method

.method public static c(Landroid/content/Context;I)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/unity3d/player/a;->b(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    invoke-static {p0}, Lcom/unity3d/player/a;->c(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1b
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1b} :catch_20

    if-lez p0, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    return v0

    :catch_20
    move-exception p0

    const/4 p1, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Camera2: CameraAccessException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    return v0
.end method

.method private static c(Landroid/content/Context;)[Ljava/lang/String;
    .registers 4

    sget-object v0, Lcom/unity3d/player/a;->c:[Ljava/lang/String;

    if-nez v0, :cond_27

    :try_start_4
    invoke-static {p0}, Lcom/unity3d/player/a;->b(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/unity3d/player/a;->c:[Ljava/lang/String;
    :try_end_e
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_e} :catch_f

    goto :goto_27

    :catch_f
    move-exception p0

    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Camera2: CameraAccessException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    sput-object p0, Lcom/unity3d/player/a;->c:[Ljava/lang/String;

    :cond_27
    :goto_27
    sget-object p0, Lcom/unity3d/player/a;->c:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/unity3d/player/a;)Landroid/hardware/camera2/CaptureRequest$Builder;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/player/a;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    return-object p0
.end method

.method public static d(Landroid/content/Context;I)[I
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/unity3d/player/a;->b(Landroid/content/Context;)Landroid/hardware/camera2/CameraManager;

    move-result-object v1

    invoke-static {p0}, Lcom/unity3d/player/a;->c(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, p1

    invoke-virtual {v1, p0}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0
    :try_end_f
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_f} :catch_37

    invoke-static {p0}, Lcom/unity3d/player/a;->a(Landroid/hardware/camera2/CameraCharacteristics;)[Landroid/util/Size;

    move-result-object p0

    if-eqz p0, :cond_36

    array-length p1, p0

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    const/4 v0, 0x0

    :goto_1b
    array-length v1, p0

    if-ge v0, v1, :cond_35

    mul-int/lit8 v1, v0, 0x2

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    aget-object v2, p0, v0

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_35
    return-object p1

    :cond_36
    return-object v0

    :catch_37
    move-exception p0

    const/4 p1, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Camera2: CameraAccessException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    return-object v0
.end method

.method static synthetic e(Lcom/unity3d/player/a;)Landroid/media/ImageReader;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/player/a;->r:Landroid/media/ImageReader;

    return-object p0
.end method

.method static synthetic f(Lcom/unity3d/player/a;)Landroid/util/Range;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/player/a;->q:Landroid/util/Range;

    return-object p0
.end method

.method static synthetic f()Ljava/util/concurrent/Semaphore;
    .registers 1

    sget-object v0, Lcom/unity3d/player/a;->e:Ljava/util/concurrent/Semaphore;

    return-object v0
.end method

.method private g()V
    .registers 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unity3d/player/a;->f:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/unity3d/player/a;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/unity3d/player/a;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unity3d/player/a;->g:Landroid/os/Handler;

    return-void
.end method

.method static synthetic g(Lcom/unity3d/player/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/unity3d/player/a;->j()V

    return-void
.end method

.method static synthetic h(Lcom/unity3d/player/a;)Lcom/unity3d/player/c;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/player/a;->a:Lcom/unity3d/player/c;

    return-object p0
.end method

.method private h()V
    .registers 5

    iget-object v0, p0, Lcom/unity3d/player/a;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :try_start_5
    iget-object v0, p0, Lcom/unity3d/player/a;->f:Landroid/os/HandlerThread;

    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Landroid/os/HandlerThread;->join(J)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/a;->f:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/unity3d/player/a;->g:Landroid/os/Handler;
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_11} :catch_12

    return-void

    :catch_12
    move-exception v0

    iget-object v1, p0, Lcom/unity3d/player/a;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->interrupt()V

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: Interrupted while waiting for the background thread to finish "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic i(Lcom/unity3d/player/a;)Landroid/media/Image;
    .registers 1

    iget-object p0, p0, Lcom/unity3d/player/a;->s:Landroid/media/Image;

    return-object p0
.end method

.method private i()V
    .registers 7

    const/4 v0, 0x6

    :try_start_1
    sget-object v1, Lcom/unity3d/player/a;->e:Ljava/util/concurrent/Semaphore;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x4

    invoke-virtual {v1, v3, v4, v2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    const/4 v2, 0x5

    if-nez v1, :cond_14

    const-string v1, "Camera2: Timeout waiting to lock camera for closing."

    invoke-static {v2, v1}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_13} :catch_44

    return-void

    :cond_14
    iget-object v1, p0, Lcom/unity3d/player/a;->d:Landroid/hardware/camera2/CameraDevice;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraDevice;->close()V

    :try_start_19
    sget-object v1, Lcom/unity3d/player/a;->e:Ljava/util/concurrent/Semaphore;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v5}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, "Camera2: Timeout waiting to close camera."

    invoke-static {v2, v1}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_28} :catch_29

    goto :goto_3b

    :catch_29
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: Interrupted while waiting to close camera "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    :cond_3b
    :goto_3b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/a;->d:Landroid/hardware/camera2/CameraDevice;

    sget-object v0, Lcom/unity3d/player/a;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void

    :catch_44
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: Interrupted while trying to lock camera for closing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    return-void
.end method

.method private j()V
    .registers 15

    :try_start_0
    iget v0, p0, Lcom/unity3d/player/a;->k:I

    if-eqz v0, :cond_d6

    iget v0, p0, Lcom/unity3d/player/a;->l:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_d6

    iget v0, p0, Lcom/unity3d/player/a;->l:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_d6

    iget v0, p0, Lcom/unity3d/player/a;->m:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_d6

    iget v0, p0, Lcom/unity3d/player/a;->m:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_21

    goto/16 :goto_d6

    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/a;->p:Z

    iget-object v1, p0, Lcom/unity3d/player/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget v2, p0, Lcom/unity3d/player/a;->n:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/unity3d/player/a;->l:F

    mul-float v1, v1, v2

    iget v2, p0, Lcom/unity3d/player/a;->n:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/unity3d/player/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, p0, Lcom/unity3d/player/a;->o:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget v6, p0, Lcom/unity3d/player/a;->m:F
    :try_end_49
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_49} :catch_fd

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v4, v6

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    :try_start_53
    iget v4, p0, Lcom/unity3d/player/a;->o:I
    :try_end_55
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_53 .. :try_end_55} :catch_fd

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    double-to-int v2, v2

    :try_start_5b
    iget v3, p0, Lcom/unity3d/player/a;->j:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/unity3d/player/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v5, p0, Lcom/unity3d/player/a;->j:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v3, p0, Lcom/unity3d/player/a;->j:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/unity3d/player/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/unity3d/player/a;->j:I

    sub-int/2addr v4, v5

    sub-int/2addr v4, v0

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v3, p0, Lcom/unity3d/player/a;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v4, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_REGIONS:Landroid/hardware/camera2/CaptureRequest$Key;

    new-array v5, v0, [Landroid/hardware/camera2/params/MeteringRectangle;

    const/4 v6, 0x0

    new-instance v13, Landroid/hardware/camera2/params/MeteringRectangle;

    iget v7, p0, Lcom/unity3d/player/a;->j:I

    sub-int v8, v1, v7

    iget v1, p0, Lcom/unity3d/player/a;->j:I

    sub-int v9, v2, v1

    iget v1, p0, Lcom/unity3d/player/a;->j:I

    mul-int/lit8 v10, v1, 0x2

    iget v1, p0, Lcom/unity3d/player/a;->j:I

    mul-int/lit8 v11, v1, 0x2

    const/16 v12, 0x3e7

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Landroid/hardware/camera2/params/MeteringRectangle;-><init>(IIIII)V

    aput-object v13, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/unity3d/player/a;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/unity3d/player/a;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unity3d/player/a;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v1, "Focus"

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unity3d/player/a;->u:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/unity3d/player/a;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/player/a;->A:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/unity3d/player/a;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_fc

    :cond_d6
    :goto_d6
    iget-object v0, p0, Lcom/unity3d/player/a;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unity3d/player/a;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v1, "Regular"

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unity3d/player/a;->u:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_fc

    iget-object v0, p0, Lcom/unity3d/player/a;->u:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/unity3d/player/a;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/player/a;->A:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/unity3d/player/a;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_fc
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_5b .. :try_end_fc} :catch_fd

    :cond_fc
    :goto_fc
    return-void

    :catch_fd
    move-exception v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: CameraAccessException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    return-void
.end method

.method private k()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/player/a;->u:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/unity3d/player/a;->u:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    iget-object v0, p0, Lcom/unity3d/player/a;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unity3d/player/a;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unity3d/player/a;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    const-string v1, "Cancel focus"

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/unity3d/player/a;->u:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/unity3d/player/a;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/player/a;->A:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/unity3d/player/a;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->capture(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_37
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_37} :catch_38

    :cond_37
    return-void

    :catch_38
    move-exception v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: CameraAccessException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/a;->h:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final a(FF)Z
    .registers 4

    iget v0, p0, Lcom/unity3d/player/a;->k:I

    if-lez v0, :cond_28

    iget-boolean v0, p0, Lcom/unity3d/player/a;->p:Z

    if-nez v0, :cond_22

    iput p1, p0, Lcom/unity3d/player/a;->l:F

    iput p2, p0, Lcom/unity3d/player/a;->m:F

    iget-object p1, p0, Lcom/unity3d/player/a;->v:Ljava/lang/Object;

    monitor-enter p1

    :try_start_f
    iget-object p2, p0, Lcom/unity3d/player/a;->u:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz p2, :cond_1c

    iget p2, p0, Lcom/unity3d/player/a;->z:I

    sget v0, Lcom/unity3d/player/a$a;->b:I

    if-eq p2, v0, :cond_1c

    invoke-direct {p0}, Lcom/unity3d/player/a;->k()V

    :cond_1c
    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :catchall_1f
    move-exception p2

    monitor-exit p1
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_1f

    throw p2

    :cond_22
    const/4 p1, 0x5

    const-string p2, "Camera2: Setting manual focus point already started."

    invoke-static {p1, p2}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    :cond_28
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Landroid/content/Context;IIIII)Z
    .registers 16

    const-string v0, "Camera2: CameraAccessException "

    const/4 v1, 0x6

    const/4 v2, 0x0

    :try_start_4
    sget-object v3, Lcom/unity3d/player/a;->b:Landroid/hardware/camera2/CameraManager;

    invoke-static {p1}, Lcom/unity3d/player/a;->c(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3
    :try_end_10
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_4 .. :try_end_10} :catch_df

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->INFO_SUPPORTED_HARDWARE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x5

    if-ne v4, v5, :cond_26

    const-string p1, "Camera2: only LEGACY hardware level is supported."

    invoke-static {v6, p1}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    return v2

    :cond_26
    invoke-static {v3}, Lcom/unity3d/player/a;->a(Landroid/hardware/camera2/CameraCharacteristics;)[Landroid/util/Size;

    move-result-object v4

    if-eqz v4, :cond_de

    array-length v5, v4

    if-nez v5, :cond_31

    goto/16 :goto_de

    :cond_31
    int-to-double v7, p3

    int-to-double p3, p4

    invoke-static {v4, v7, v8, p3, p4}, Lcom/unity3d/player/a;->a([Landroid/util/Size;DD)Landroid/graphics/Rect;

    move-result-object p3

    iput-object p3, p0, Lcom/unity3d/player/a;->h:Landroid/graphics/Rect;

    sget-object p3, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, p3}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Landroid/util/Range;

    if-eqz p3, :cond_d9

    array-length p4, p3

    if-nez p4, :cond_48

    goto/16 :goto_d9

    :cond_48
    invoke-static {p3, p5}, Lcom/unity3d/player/a;->a([Landroid/util/Range;I)I

    move-result p3

    new-instance p4, Landroid/util/Range;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p4, p5, p3}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p4, p0, Lcom/unity3d/player/a;->q:Landroid/util/Range;

    :try_start_5b
    sget-object p3, Lcom/unity3d/player/a;->e:Ljava/util/concurrent/Semaphore;

    sget-object p4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x4

    invoke-virtual {p3, v4, v5, p4}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p3

    if-nez p3, :cond_6d

    const-string p1, "Camera2: Timeout waiting to lock camera for opening."

    invoke-static {v6, p1}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V
    :try_end_6c
    .catch Ljava/lang/InterruptedException; {:try_start_5b .. :try_end_6c} :catch_c6

    return v2

    :cond_6d
    :try_start_6d
    sget-object p3, Lcom/unity3d/player/a;->b:Landroid/hardware/camera2/CameraManager;

    invoke-static {p1}, Lcom/unity3d/player/a;->c(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/unity3d/player/a;->B:Landroid/hardware/camera2/CameraDevice$StateCallback;

    iget-object p4, p0, Lcom/unity3d/player/a;->g:Landroid/os/Handler;

    invoke-virtual {p3, p1, p2, p4}, Landroid/hardware/camera2/CameraManager;->openCamera(Ljava/lang/String;Landroid/hardware/camera2/CameraDevice$StateCallback;Landroid/os/Handler;)V
    :try_end_7c
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_6d .. :try_end_7c} :catch_b0

    :try_start_7c
    sget-object p1, Lcom/unity3d/player/a;->e:Ljava/util/concurrent/Semaphore;

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v4, v5, p2}, Ljava/util/concurrent/Semaphore;->tryAcquire(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-nez p1, :cond_8c

    const-string p1, "Camera2: Timeout waiting to open camera."

    invoke-static {v6, p1}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    return v2

    :cond_8c
    sget-object p1, Lcom/unity3d/player/a;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V
    :try_end_91
    .catch Ljava/lang/InterruptedException; {:try_start_7c .. :try_end_91} :catch_92

    goto :goto_a4

    :catch_92
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Camera2: Interrupted while waiting to open camera "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    :goto_a4
    iput p6, p0, Lcom/unity3d/player/a;->w:I

    invoke-direct {p0, v3}, Lcom/unity3d/player/a;->b(Landroid/hardware/camera2/CameraCharacteristics;)V

    iget-object p1, p0, Lcom/unity3d/player/a;->d:Landroid/hardware/camera2/CameraDevice;

    if-eqz p1, :cond_af

    const/4 p1, 0x1

    return p1

    :cond_af
    return v2

    :catch_b0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    sget-object p1, Lcom/unity3d/player/a;->e:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p1}, Ljava/util/concurrent/Semaphore;->release()V

    return v2

    :catch_c6
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Camera2: Interrupted while trying to lock camera for opening "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    return v2

    :cond_d9
    :goto_d9
    const-string p1, "Camera2: target FPS ranges are not avialable."

    invoke-static {v1, p1}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    :cond_de
    :goto_de
    return v2

    :catch_df
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    return v2
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/a;->d:Landroid/hardware/camera2/CameraDevice;

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/unity3d/player/a;->e()V

    invoke-direct {p0}, Lcom/unity3d/player/a;->i()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/a;->A:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iput-object v0, p0, Lcom/unity3d/player/a;->y:Landroid/view/Surface;

    iput-object v0, p0, Lcom/unity3d/player/a;->x:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/unity3d/player/a;->s:Landroid/media/Image;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroid/media/Image;->close()V

    iput-object v0, p0, Lcom/unity3d/player/a;->s:Landroid/media/Image;

    :cond_1a
    iget-object v1, p0, Lcom/unity3d/player/a;->r:Landroid/media/ImageReader;

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    iput-object v0, p0, Lcom/unity3d/player/a;->r:Landroid/media/ImageReader;

    :cond_23
    invoke-direct {p0}, Lcom/unity3d/player/a;->h()V

    return-void
.end method

.method public final c()V
    .registers 6

    iget-object v0, p0, Lcom/unity3d/player/a;->r:Landroid/media/ImageReader;

    const/4 v1, 0x2

    if-nez v0, :cond_53

    iget-object v0, p0, Lcom/unity3d/player/a;->h:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/unity3d/player/a;->h:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/16 v3, 0x23

    invoke-static {v0, v2, v3, v1}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/player/a;->r:Landroid/media/ImageReader;

    iget-object v0, p0, Lcom/unity3d/player/a;->r:Landroid/media/ImageReader;

    iget-object v2, p0, Lcom/unity3d/player/a;->C:Landroid/media/ImageReader$OnImageAvailableListener;

    iget-object v3, p0, Lcom/unity3d/player/a;->g:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unity3d/player/a;->s:Landroid/media/Image;

    iget v0, p0, Lcom/unity3d/player/a;->w:I

    if-eqz v0, :cond_53

    new-instance v2, Landroid/graphics/SurfaceTexture;

    invoke-direct {v2, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v2, p0, Lcom/unity3d/player/a;->x:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lcom/unity3d/player/a;->x:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/unity3d/player/a;->h:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget-object v3, p0, Lcom/unity3d/player/a;->h:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    iget-object v0, p0, Lcom/unity3d/player/a;->x:Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/unity3d/player/a;->D:Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;

    iget-object v3, p0, Lcom/unity3d/player/a;->g:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V

    new-instance v0, Landroid/view/Surface;

    iget-object v2, p0, Lcom/unity3d/player/a;->x:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/unity3d/player/a;->y:Landroid/view/Surface;

    :cond_53
    :try_start_53
    iget-object v0, p0, Lcom/unity3d/player/a;->u:Landroid/hardware/camera2/CameraCaptureSession;

    if-eqz v0, :cond_6d

    iget v0, p0, Lcom/unity3d/player/a;->z:I

    sget v1, Lcom/unity3d/player/a$a;->b:I

    if-ne v0, v1, :cond_9d

    iget-object v0, p0, Lcom/unity3d/player/a;->u:Landroid/hardware/camera2/CameraCaptureSession;

    iget-object v1, p0, Lcom/unity3d/player/a;->t:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v1}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/unity3d/player/a;->A:Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;

    iget-object v3, p0, Lcom/unity3d/player/a;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I

    goto :goto_9d

    :cond_6d
    iget-object v0, p0, Lcom/unity3d/player/a;->d:Landroid/hardware/camera2/CameraDevice;

    iget-object v2, p0, Lcom/unity3d/player/a;->y:Landroid/view/Surface;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_88

    new-array v1, v1, [Landroid/view/Surface;

    iget-object v2, p0, Lcom/unity3d/player/a;->y:Landroid/view/Surface;

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/unity3d/player/a;->r:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v1, v4

    :goto_83
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_93

    :cond_88
    new-array v1, v4, [Landroid/view/Surface;

    iget-object v2, p0, Lcom/unity3d/player/a;->r:Landroid/media/ImageReader;

    invoke-virtual {v2}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v2

    aput-object v2, v1, v3

    goto :goto_83

    :goto_93
    new-instance v2, Lcom/unity3d/player/a$2;

    invoke-direct {v2, p0}, Lcom/unity3d/player/a$2;-><init>(Lcom/unity3d/player/a;)V

    iget-object v3, p0, Lcom/unity3d/player/a;->g:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/camera2/CameraDevice;->createCaptureSession(Ljava/util/List;Landroid/hardware/camera2/CameraCaptureSession$StateCallback;Landroid/os/Handler;)V

    :cond_9d
    :goto_9d
    sget v0, Lcom/unity3d/player/a$a;->a:I

    iput v0, p0, Lcom/unity3d/player/a;->z:I
    :try_end_a1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_53 .. :try_end_a1} :catch_a2

    return-void

    :catch_a2
    move-exception v0

    const/4 v1, 0x6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Camera2: CameraAccessException "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    return-void
.end method

.method public final d()V
    .registers 6

    iget-object v0, p0, Lcom/unity3d/player/a;->v:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/unity3d/player/a;->u:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_26

    if-eqz v1, :cond_24

    :try_start_7
    iget-object v1, p0, Lcom/unity3d/player/a;->u:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->stopRepeating()V

    sget v1, Lcom/unity3d/player/a$a;->b:I

    iput v1, p0, Lcom/unity3d/player/a;->z:I
    :try_end_10
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_10} :catch_11
    .catchall {:try_start_7 .. :try_end_10} :catchall_26

    goto :goto_24

    :catch_11
    move-exception v1

    const/4 v2, 0x6

    :try_start_13
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Camera2: CameraAccessException "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    :cond_24
    :goto_24
    monitor-exit v0

    return-void

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public final e()V
    .registers 6

    iget-object v0, p0, Lcom/unity3d/player/a;->v:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/unity3d/player/a;->u:Landroid/hardware/camera2/CameraCaptureSession;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2e

    if-eqz v1, :cond_2c

    :try_start_7
    iget-object v1, p0, Lcom/unity3d/player/a;->u:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->abortCaptures()V
    :try_end_c
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_7 .. :try_end_c} :catch_d
    .catchall {:try_start_7 .. :try_end_c} :catchall_2e

    goto :goto_20

    :catch_d
    move-exception v1

    const/4 v2, 0x6

    :try_start_f
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Camera2: CameraAccessException "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/unity3d/player/f;->Log(ILjava/lang/String;)V

    :goto_20
    iget-object v1, p0, Lcom/unity3d/player/a;->u:Landroid/hardware/camera2/CameraCaptureSession;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unity3d/player/a;->u:Landroid/hardware/camera2/CameraCaptureSession;

    sget v1, Lcom/unity3d/player/a$a;->c:I

    iput v1, p0, Lcom/unity3d/player/a;->z:I

    :cond_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_f .. :try_end_30} :catchall_2e

    throw v1
.end method
