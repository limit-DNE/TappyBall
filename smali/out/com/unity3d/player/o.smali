.class public final Lcom/unity3d/player/o;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/player/o$b;,
        Lcom/unity3d/player/o$a;
    }
.end annotation


# static fields
.field private static a:Z = false


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/view/SurfaceView;

.field private final d:Landroid/view/SurfaceHolder;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:J

.field private final j:J

.field private final k:Landroid/widget/FrameLayout;

.field private final l:Landroid/view/Display;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Landroid/media/MediaPlayer;

.field private r:Landroid/widget/MediaController;

.field private s:Z

.field private t:Z

.field private u:I

.field private v:Z

.field private w:Z

.field private x:Lcom/unity3d/player/o$a;

.field private y:Lcom/unity3d/player/o$b;

.field private volatile z:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;IIIZJJLcom/unity3d/player/o$a;)V
    .registers 13

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/o;->s:Z

    iput-boolean v0, p0, Lcom/unity3d/player/o;->t:Z

    iput v0, p0, Lcom/unity3d/player/o;->u:I

    iput-boolean v0, p0, Lcom/unity3d/player/o;->v:Z

    iput-boolean v0, p0, Lcom/unity3d/player/o;->w:Z

    iput v0, p0, Lcom/unity3d/player/o;->z:I

    iput-object p11, p0, Lcom/unity3d/player/o;->x:Lcom/unity3d/player/o$a;

    iput-object p1, p0, Lcom/unity3d/player/o;->b:Landroid/content/Context;

    iput-object p0, p0, Lcom/unity3d/player/o;->k:Landroid/widget/FrameLayout;

    new-instance p11, Landroid/view/SurfaceView;

    invoke-direct {p11, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object p11, p0, Lcom/unity3d/player/o;->c:Landroid/view/SurfaceView;

    iget-object p1, p0, Lcom/unity3d/player/o;->c:Landroid/view/SurfaceView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/o;->d:Landroid/view/SurfaceHolder;

    iget-object p1, p0, Lcom/unity3d/player/o;->d:Landroid/view/SurfaceHolder;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    iget-object p1, p0, Lcom/unity3d/player/o;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object p1, p0, Lcom/unity3d/player/o;->k:Landroid/widget/FrameLayout;

    iget-object p11, p0, Lcom/unity3d/player/o;->c:Landroid/view/SurfaceView;

    invoke-virtual {p1, p11}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/unity3d/player/o;->b:Landroid/content/Context;

    const-string p11, "window"

    invoke-virtual {p1, p11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iput-object p1, p0, Lcom/unity3d/player/o;->l:Landroid/view/Display;

    iput-object p2, p0, Lcom/unity3d/player/o;->e:Ljava/lang/String;

    iput p4, p0, Lcom/unity3d/player/o;->f:I

    iput p5, p0, Lcom/unity3d/player/o;->g:I

    iput-boolean p6, p0, Lcom/unity3d/player/o;->h:Z

    iput-wide p7, p0, Lcom/unity3d/player/o;->i:J

    iput-wide p9, p0, Lcom/unity3d/player/o;->j:J

    sget-boolean p1, Lcom/unity3d/player/o;->a:Z

    if-eqz p1, :cond_69

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "fileName: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/unity3d/player/o;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    :cond_69
    sget-boolean p1, Lcom/unity3d/player/o;->a:Z

    if-eqz p1, :cond_7e

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "backgroundColor: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    :cond_7e
    sget-boolean p1, Lcom/unity3d/player/o;->a:Z

    if-eqz p1, :cond_95

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "controlMode: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/unity3d/player/o;->f:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    :cond_95
    sget-boolean p1, Lcom/unity3d/player/o;->a:Z

    if-eqz p1, :cond_ac

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "scalingMode: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/unity3d/player/o;->g:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    :cond_ac
    sget-boolean p1, Lcom/unity3d/player/o;->a:Z

    if-eqz p1, :cond_c3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "isURL: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/unity3d/player/o;->h:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    :cond_c3
    sget-boolean p1, Lcom/unity3d/player/o;->a:Z

    if-eqz p1, :cond_da

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "videoOffset: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide p2, p0, Lcom/unity3d/player/o;->i:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    :cond_da
    sget-boolean p1, Lcom/unity3d/player/o;->a:Z

    if-eqz p1, :cond_f1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "videoLength: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide p2, p0, Lcom/unity3d/player/o;->j:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    :cond_f1
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/unity3d/player/o;->setFocusable(Z)V

    invoke-virtual {p0, p1}, Lcom/unity3d/player/o;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private a(I)V
    .registers 3

    iput p1, p0, Lcom/unity3d/player/o;->z:I

    iget-object p1, p0, Lcom/unity3d/player/o;->x:Lcom/unity3d/player/o$a;

    if-eqz p1, :cond_b

    iget v0, p0, Lcom/unity3d/player/o;->z:I

    invoke-interface {p1, v0}, Lcom/unity3d/player/o$a;->a(I)V

    :cond_b
    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VideoPlayer: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Video"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic b()Z
    .registers 1

    sget-boolean v0, Lcom/unity3d/player/o;->a:Z

    return v0
.end method

.method private c()V
    .registers 9

    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/unity3d/player/o;->d:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-boolean v0, p0, Lcom/unity3d/player/o;->v:Z

    if-nez v0, :cond_1b

    sget-boolean v0, Lcom/unity3d/player/o;->a:Z

    if-eqz v0, :cond_16

    const-string v0, "Resuming playback"

    invoke-static {v0}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    :cond_16
    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_1b
    return-void

    :cond_1c
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/unity3d/player/o;->a(I)V

    invoke-virtual {p0}, Lcom/unity3d/player/o;->doCleanUp()V

    :try_start_23
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    iget-boolean v0, p0, Lcom/unity3d/player/o;->h:Z

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/unity3d/player/o;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/unity3d/player/o;->e:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_90

    :cond_3c
    iget-wide v0, p0, Lcom/unity3d/player/o;->j:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5c

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/unity3d/player/o;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-wide v4, p0, Lcom/unity3d/player/o;->i:J

    iget-wide v6, p0, Lcom/unity3d/player/o;->j:J

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    :goto_58
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    goto :goto_90

    :cond_5c
    invoke-virtual {p0}, Lcom/unity3d/player/o;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_64} :catch_ce

    :try_start_64
    iget-object v1, p0, Lcom/unity3d/player/o;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7e
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_7e} :catch_7f
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_7e} :catch_ce

    goto :goto_90

    :catch_7f
    :try_start_7f
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/unity3d/player/o;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_58

    :goto_90
    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/unity3d/player/o;->d:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    new-instance v0, Lcom/unity3d/player/o$b;

    invoke-direct {v0, p0, p0}, Lcom/unity3d/player/o$b;-><init>(Lcom/unity3d/player/o;Lcom/unity3d/player/o;)V

    iput-object v0, p0, Lcom/unity3d/player/o;->y:Lcom/unity3d/player/o$b;

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/unity3d/player/o;->y:Lcom/unity3d/player/o$b;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_cd} :catch_ce

    return-void

    :catch_ce
    move-exception v0

    sget-boolean v1, Lcom/unity3d/player/o;->a:Z

    if-eqz v1, :cond_eb

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    :cond_eb
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/unity3d/player/o;->a(I)V

    return-void
.end method

.method private d()V
    .registers 2

    invoke-virtual {p0}, Lcom/unity3d/player/o;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/unity3d/player/o;->a(I)V

    sget-boolean v0, Lcom/unity3d/player/o;->a:Z

    if-eqz v0, :cond_14

    const-string v0, "startVideoPlayback"

    invoke-static {v0}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    :cond_14
    invoke-virtual {p0}, Lcom/unity3d/player/o;->updateVideoLayout()V

    iget-boolean v0, p0, Lcom/unity3d/player/o;->v:Z

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/unity3d/player/o;->start()V

    :cond_1e
    return-void
.end method


# virtual methods
.method public final CancelOnPrepare()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/unity3d/player/o;->a(I)V

    return-void
.end method

.method final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/unity3d/player/o;->v:Z

    return v0
.end method

.method public final canPause()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final canSeekBackward()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final canSeekForward()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final destroyPlayer()V
    .registers 2

    sget-boolean v0, Lcom/unity3d/player/o;->a:Z

    if-eqz v0, :cond_9

    const-string v0, "destroyPlayer"

    invoke-static {v0}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    :cond_9
    iget-boolean v0, p0, Lcom/unity3d/player/o;->v:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/unity3d/player/o;->pause()V

    :cond_10
    invoke-virtual {p0}, Lcom/unity3d/player/o;->doCleanUp()V

    return-void
.end method

.method protected final doCleanUp()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/o;->y:Lcom/unity3d/player/o$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/unity3d/player/o$b;->a()V

    iput-object v1, p0, Lcom/unity3d/player/o;->y:Lcom/unity3d/player/o$b;

    :cond_a
    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    iput-object v1, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    :cond_13
    const/4 v0, 0x0

    iput v0, p0, Lcom/unity3d/player/o;->o:I

    iput v0, p0, Lcom/unity3d/player/o;->p:I

    iput-boolean v0, p0, Lcom/unity3d/player/o;->t:Z

    iput-boolean v0, p0, Lcom/unity3d/player/o;->s:Z

    return-void
.end method

.method public final getBufferPercentage()I
    .registers 2

    iget-boolean v0, p0, Lcom/unity3d/player/o;->h:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/unity3d/player/o;->u:I

    return v0

    :cond_7
    const/16 v0, 0x64

    return v0
.end method

.method public final getCurrentPosition()I
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public final getDuration()I
    .registers 2

    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0
.end method

.method public final isPlaying()Z
    .registers 5

    iget-boolean v0, p0, Lcom/unity3d/player/o;->t:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/unity3d/player/o;->s:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iget-object v3, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    if-nez v3, :cond_15

    if-nez v0, :cond_14

    return v1

    :cond_14
    return v2

    :cond_15
    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_1f

    if-nez v0, :cond_1e

    goto :goto_1f

    :cond_1e
    return v2

    :cond_1f
    :goto_1f
    return v1
.end method

.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .registers 4

    sget-boolean p1, Lcom/unity3d/player/o;->a:Z

    if-eqz p1, :cond_15

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onBufferingUpdate percent:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    :cond_15
    iput p2, p0, Lcom/unity3d/player/o;->u:I

    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2

    sget-boolean p1, Lcom/unity3d/player/o;->a:Z

    if-eqz p1, :cond_9

    const-string p1, "onCompletion called"

    invoke-static {p1}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Lcom/unity3d/player/o;->destroyPlayer()V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/unity3d/player/o;->a(I)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1f

    iget v0, p0, Lcom/unity3d/player/o;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    if-eqz p1, :cond_11

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_1f

    :cond_11
    iget-object v0, p0, Lcom/unity3d/player/o;->r:Landroid/widget/MediaController;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, p1, p2}, Landroid/widget/MediaController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1a
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_1f
    :goto_1f
    invoke-virtual {p0}, Lcom/unity3d/player/o;->destroyPlayer()V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/unity3d/player/o;->a(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .registers 4

    sget-boolean p1, Lcom/unity3d/player/o;->a:Z

    if-eqz p1, :cond_9

    const-string p1, "onPrepared called"

    invoke-static {p1}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    :cond_9
    iget-object p1, p0, Lcom/unity3d/player/o;->y:Lcom/unity3d/player/o$b;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/unity3d/player/o$b;->a()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/unity3d/player/o;->y:Lcom/unity3d/player/o$b;

    :cond_13
    iget p1, p0, Lcom/unity3d/player/o;->f:I

    const/4 v0, 0x1

    if-eqz p1, :cond_1a

    if-ne p1, v0, :cond_50

    :cond_1a
    new-instance p1, Landroid/widget/MediaController;

    iget-object v1, p0, Lcom/unity3d/player/o;->b:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unity3d/player/o;->r:Landroid/widget/MediaController;

    iget-object p1, p0, Lcom/unity3d/player/o;->r:Landroid/widget/MediaController;

    invoke-virtual {p1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    iget-object p1, p0, Lcom/unity3d/player/o;->r:Landroid/widget/MediaController;

    invoke-virtual {p1, p0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/unity3d/player/o;->r:Landroid/widget/MediaController;

    invoke-virtual {p1, v0}, Landroid/widget/MediaController;->setEnabled(Z)V

    iget-object p1, p0, Lcom/unity3d/player/o;->b:Landroid/content/Context;

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_4b

    check-cast p1, Landroid/app/Activity;

    iget-object v1, p0, Lcom/unity3d/player/o;->r:Landroid/widget/MediaController;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/MediaController;->setSystemUiVisibility(I)V

    :cond_4b
    iget-object p1, p0, Lcom/unity3d/player/o;->r:Landroid/widget/MediaController;

    invoke-virtual {p1}, Landroid/widget/MediaController;->show()V

    :cond_50
    iput-boolean v0, p0, Lcom/unity3d/player/o;->t:Z

    iget-boolean p1, p0, Lcom/unity3d/player/o;->t:Z

    if-eqz p1, :cond_5d

    iget-boolean p1, p0, Lcom/unity3d/player/o;->s:Z

    if-eqz p1, :cond_5d

    invoke-direct {p0}, Lcom/unity3d/player/o;->d()V

    :cond_5d
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lcom/unity3d/player/o;->f:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_16

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/unity3d/player/o;->destroyPlayer()V

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/unity3d/player/o;->a(I)V

    const/4 p1, 0x1

    return p1

    :cond_16
    iget-object v0, p0, Lcom/unity3d/player/o;->r:Landroid/widget/MediaController;

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Landroid/widget/MediaController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_1f
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .registers 5

    sget-boolean p1, Lcom/unity3d/player/o;->a:Z

    if-eqz p1, :cond_1d

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onVideoSizeChanged called "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    :cond_1d
    if-eqz p2, :cond_35

    if-nez p3, :cond_22

    goto :goto_35

    :cond_22
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/unity3d/player/o;->s:Z

    iput p2, p0, Lcom/unity3d/player/o;->o:I

    iput p3, p0, Lcom/unity3d/player/o;->p:I

    iget-boolean p1, p0, Lcom/unity3d/player/o;->t:Z

    if-eqz p1, :cond_34

    iget-boolean p1, p0, Lcom/unity3d/player/o;->s:Z

    if-eqz p1, :cond_34

    invoke-direct {p0}, Lcom/unity3d/player/o;->d()V

    :cond_34
    return-void

    :cond_35
    :goto_35
    sget-boolean p1, Lcom/unity3d/player/o;->a:Z

    if-eqz p1, :cond_57

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "invalid video width("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") or height("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    :cond_57
    return-void
.end method

.method public final pause()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-boolean v1, p0, Lcom/unity3d/player/o;->w:Z

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/o;->v:Z

    return-void
.end method

.method public final seekTo(I)V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method

.method public final start()V
    .registers 3

    sget-boolean v0, Lcom/unity3d/player/o;->a:Z

    if-eqz v0, :cond_9

    const-string v0, "Start"

    invoke-static {v0}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-boolean v1, p0, Lcom/unity3d/player/o;->w:Z

    if-eqz v1, :cond_15

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/player/o;->v:Z

    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 6

    sget-boolean p1, Lcom/unity3d/player/o;->a:Z

    if-eqz p1, :cond_25

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "surfaceChanged called "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    :cond_25
    iget p1, p0, Lcom/unity3d/player/o;->m:I

    if-ne p1, p3, :cond_2d

    iget p1, p0, Lcom/unity3d/player/o;->n:I

    if-eq p1, p4, :cond_38

    :cond_2d
    iput p3, p0, Lcom/unity3d/player/o;->m:I

    iput p4, p0, Lcom/unity3d/player/o;->n:I

    iget-boolean p1, p0, Lcom/unity3d/player/o;->w:Z

    if-eqz p1, :cond_38

    invoke-virtual {p0}, Lcom/unity3d/player/o;->updateVideoLayout()V

    :cond_38
    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 2

    sget-boolean p1, Lcom/unity3d/player/o;->a:Z

    if-eqz p1, :cond_9

    const-string p1, "surfaceCreated called"

    invoke-static {p1}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    :cond_9
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/unity3d/player/o;->w:Z

    invoke-direct {p0}, Lcom/unity3d/player/o;->c()V

    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 2

    sget-boolean p1, Lcom/unity3d/player/o;->a:Z

    if-eqz p1, :cond_9

    const-string p1, "surfaceDestroyed called"

    invoke-static {p1}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    :cond_9
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/unity3d/player/o;->w:Z

    return-void
.end method

.method protected final updateVideoLayout()V
    .registers 9

    sget-boolean v0, Lcom/unity3d/player/o;->a:Z

    if-eqz v0, :cond_9

    const-string v0, "updateVideoLayout"

    invoke-static {v0}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    :cond_9
    iget-object v0, p0, Lcom/unity3d/player/o;->q:Landroid/media/MediaPlayer;

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget v0, p0, Lcom/unity3d/player/o;->m:I

    if-eqz v0, :cond_16

    iget v0, p0, Lcom/unity3d/player/o;->n:I

    if-nez v0, :cond_34

    :cond_16
    iget-object v0, p0, Lcom/unity3d/player/o;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/unity3d/player/o;->m:I

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/unity3d/player/o;->n:I

    :cond_34
    iget v0, p0, Lcom/unity3d/player/o;->m:I

    iget v1, p0, Lcom/unity3d/player/o;->n:I

    iget-boolean v2, p0, Lcom/unity3d/player/o;->s:Z

    if-eqz v2, :cond_65

    iget v2, p0, Lcom/unity3d/player/o;->o:I

    int-to-float v3, v2

    iget v4, p0, Lcom/unity3d/player/o;->p:I

    int-to-float v5, v4

    div-float/2addr v3, v5

    int-to-float v5, v0

    int-to-float v6, v1

    div-float/2addr v5, v6

    iget v6, p0, Lcom/unity3d/player/o;->g:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_58

    cmpg-float v2, v5, v3

    if-gtz v2, :cond_53

    :goto_4f
    int-to-float v1, v0

    div-float/2addr v1, v3

    float-to-int v1, v1

    goto :goto_6e

    :cond_53
    int-to-float v0, v1

    mul-float v0, v0, v3

    float-to-int v0, v0

    goto :goto_6e

    :cond_58
    const/4 v7, 0x2

    if-ne v6, v7, :cond_60

    cmpl-float v2, v5, v3

    if-ltz v2, :cond_53

    goto :goto_4f

    :cond_60
    if-nez v6, :cond_6e

    move v0, v2

    move v1, v4

    goto :goto_6e

    :cond_65
    sget-boolean v2, Lcom/unity3d/player/o;->a:Z

    if-eqz v2, :cond_6e

    const-string v2, "updateVideoLayout: Video size is not known yet"

    invoke-static {v2}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    :cond_6e
    :goto_6e
    iget v2, p0, Lcom/unity3d/player/o;->m:I

    if-ne v2, v0, :cond_76

    iget v2, p0, Lcom/unity3d/player/o;->n:I

    if-eq v2, v1, :cond_a1

    :cond_76
    sget-boolean v2, Lcom/unity3d/player/o;->a:Z

    if-eqz v2, :cond_93

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "frameWidth = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; frameHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/unity3d/player/o;->b(Ljava/lang/String;)V

    :cond_93
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v0, p0, Lcom/unity3d/player/o;->k:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/unity3d/player/o;->c:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a1
    return-void
.end method
