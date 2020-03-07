.class public Lorg/fmod/FMODAudioDevice;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static h:I = 0x0

.field private static i:I = 0x1

.field private static j:I = 0x2

.field private static k:I = 0x3


# instance fields
.field private volatile a:Ljava/lang/Thread;

.field private volatile b:Z

.field private c:Landroid/media/AudioTrack;

.field private d:Z

.field private e:Ljava/nio/ByteBuffer;

.field private f:[B

.field private volatile g:Lorg/fmod/a;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->a:Ljava/lang/Thread;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/fmod/FMODAudioDevice;->b:Z

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->c:Landroid/media/AudioTrack;

    iput-boolean v1, p0, Lorg/fmod/FMODAudioDevice;->d:Z

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->e:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->f:[B

    return-void
.end method

.method private native fmodGetInfo(I)I
.end method

.method private native fmodProcess(Ljava/nio/ByteBuffer;)I
.end method

.method private releaseAudioTrack()V
    .registers 4

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->c:Landroid/media/AudioTrack;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_11
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->c:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    iput-object v1, p0, Lorg/fmod/FMODAudioDevice;->c:Landroid/media/AudioTrack;

    :cond_18
    iput-object v1, p0, Lorg/fmod/FMODAudioDevice;->e:Ljava/nio/ByteBuffer;

    iput-object v1, p0, Lorg/fmod/FMODAudioDevice;->f:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->d:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lorg/fmod/FMODAudioDevice;->stop()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method native fmodProcessMicData(Ljava/nio/ByteBuffer;I)I
.end method

.method public isRunning()Z
    .registers 2

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .registers 15

    const/4 v0, 0x3

    const/4 v1, 0x3

    :cond_2
    :goto_2
    iget-boolean v2, p0, Lorg/fmod/FMODAudioDevice;->b:Z

    if-eqz v2, :cond_cd

    iget-boolean v2, p0, Lorg/fmod/FMODAudioDevice;->d:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_98

    if-lez v1, :cond_98

    invoke-direct {p0}, Lorg/fmod/FMODAudioDevice;->releaseAudioTrack()V

    sget v2, Lorg/fmod/FMODAudioDevice;->h:I

    invoke-direct {p0, v2}, Lorg/fmod/FMODAudioDevice;->fmodGetInfo(I)I

    move-result v7

    const/4 v2, 0x2

    invoke-static {v7, v0, v2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v5

    int-to-float v5, v5

    const v6, 0x3f8ccccd    # 1.1f

    mul-float v5, v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    and-int/lit8 v5, v5, -0x4

    sget v6, Lorg/fmod/FMODAudioDevice;->i:I

    invoke-direct {p0, v6}, Lorg/fmod/FMODAudioDevice;->fmodGetInfo(I)I

    move-result v12

    sget v6, Lorg/fmod/FMODAudioDevice;->j:I

    invoke-direct {p0, v6}, Lorg/fmod/FMODAudioDevice;->fmodGetInfo(I)I

    move-result v6

    mul-int v6, v6, v12

    mul-int/lit8 v6, v6, 0x4

    if-le v6, v5, :cond_3c

    move v10, v6

    goto :goto_3d

    :cond_3c
    move v10, v5

    :goto_3d
    new-instance v13, Landroid/media/AudioTrack;

    const/4 v6, 0x3

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v11, 0x1

    move-object v5, v13

    invoke-direct/range {v5 .. v11}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v13, p0, Lorg/fmod/FMODAudioDevice;->c:Landroid/media/AudioTrack;

    iget-object v5, p0, Lorg/fmod/FMODAudioDevice;->c:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getState()I

    move-result v5

    if-ne v5, v3, :cond_53

    const/4 v5, 0x1

    goto :goto_54

    :cond_53
    const/4 v5, 0x0

    :goto_54
    iput-boolean v5, p0, Lorg/fmod/FMODAudioDevice;->d:Z

    iget-boolean v5, p0, Lorg/fmod/FMODAudioDevice;->d:Z

    if-eqz v5, :cond_75

    mul-int/lit8 v12, v12, 0x2

    mul-int/lit8 v12, v12, 0x2

    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/fmod/FMODAudioDevice;->e:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lorg/fmod/FMODAudioDevice;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/fmod/FMODAudioDevice;->f:[B

    iget-object v1, p0, Lorg/fmod/FMODAudioDevice;->c:Landroid/media/AudioTrack;

    invoke-virtual {v1}, Landroid/media/AudioTrack;->play()V

    const/4 v1, 0x3

    goto :goto_98

    :cond_75
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "AudioTrack failed to initialize (status "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/fmod/FMODAudioDevice;->c:Landroid/media/AudioTrack;

    invoke-virtual {v5}, Landroid/media/AudioTrack;->getState()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "FMOD"

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lorg/fmod/FMODAudioDevice;->releaseAudioTrack()V

    add-int/lit8 v1, v1, -0x1

    :cond_98
    :goto_98
    iget-boolean v2, p0, Lorg/fmod/FMODAudioDevice;->d:Z

    if-eqz v2, :cond_2

    sget v2, Lorg/fmod/FMODAudioDevice;->k:I

    invoke-direct {p0, v2}, Lorg/fmod/FMODAudioDevice;->fmodGetInfo(I)I

    move-result v2

    if-ne v2, v3, :cond_c8

    iget-object v2, p0, Lorg/fmod/FMODAudioDevice;->e:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v2}, Lorg/fmod/FMODAudioDevice;->fmodProcess(Ljava/nio/ByteBuffer;)I

    iget-object v2, p0, Lorg/fmod/FMODAudioDevice;->e:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lorg/fmod/FMODAudioDevice;->f:[B

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/fmod/FMODAudioDevice;->c:Landroid/media/AudioTrack;

    iget-object v3, p0, Lorg/fmod/FMODAudioDevice;->f:[B

    iget-object v5, p0, Lorg/fmod/FMODAudioDevice;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/media/AudioTrack;->write([BII)I

    iget-object v2, p0, Lorg/fmod/FMODAudioDevice;->e:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto/16 :goto_2

    :cond_c8
    invoke-direct {p0}, Lorg/fmod/FMODAudioDevice;->releaseAudioTrack()V

    goto/16 :goto_2

    :cond_cd
    invoke-direct {p0}, Lorg/fmod/FMODAudioDevice;->releaseAudioTrack()V

    return-void
.end method

.method public declared-synchronized start()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lorg/fmod/FMODAudioDevice;->stop()V

    :cond_8
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "FMODAudioDevice"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->a:Ljava/lang/Thread;

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->a:Ljava/lang/Thread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->b:Z

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->g:Lorg/fmod/a;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->g:Lorg/fmod/a;

    invoke-virtual {v0}, Lorg/fmod/a;->b()V
    :try_end_29
    .catchall {:try_start_1 .. :try_end_29} :catchall_2b

    :cond_29
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startAudioRecord(III)I
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object p3, p0, Lorg/fmod/FMODAudioDevice;->g:Lorg/fmod/a;

    if-nez p3, :cond_11

    new-instance p3, Lorg/fmod/a;

    invoke-direct {p3, p0, p1, p2}, Lorg/fmod/a;-><init>(Lorg/fmod/FMODAudioDevice;II)V

    iput-object p3, p0, Lorg/fmod/FMODAudioDevice;->g:Lorg/fmod/a;

    iget-object p1, p0, Lorg/fmod/FMODAudioDevice;->g:Lorg/fmod/a;

    invoke-virtual {p1}, Lorg/fmod/a;->b()V

    :cond_11
    iget-object p1, p0, Lorg/fmod/FMODAudioDevice;->g:Lorg/fmod/a;

    invoke-virtual {p1}, Lorg/fmod/a;->a()I

    move-result p1
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_19

    monitor-exit p0

    return p1

    :catchall_19
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized stop()V
    .registers 2

    monitor-enter p0

    :catch_1
    :goto_1
    :try_start_1
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->a:Ljava/lang/Thread;

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/fmod/FMODAudioDevice;->b:Z
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_1c

    :try_start_8
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->a:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->a:Ljava/lang/Thread;
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_10} :catch_1
    .catchall {:try_start_8 .. :try_end_10} :catchall_1c

    goto :goto_1

    :cond_11
    :try_start_11
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->g:Lorg/fmod/a;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->g:Lorg/fmod/a;

    invoke-virtual {v0}, Lorg/fmod/a;->c()V
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_1c

    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0

    return-void
.end method

.method public declared-synchronized stopAudioRecord()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->g:Lorg/fmod/a;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lorg/fmod/FMODAudioDevice;->g:Lorg/fmod/a;

    invoke-virtual {v0}, Lorg/fmod/a;->c()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/fmod/FMODAudioDevice;->g:Lorg/fmod/a;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method
