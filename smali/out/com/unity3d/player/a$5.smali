.class final Lcom/unity3d/player/a$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


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

    iput-object p1, p0, Lcom/unity3d/player/a$5;->a:Lcom/unity3d/player/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/a$5;->a:Lcom/unity3d/player/a;

    invoke-static {v0}, Lcom/unity3d/player/a;->h(Lcom/unity3d/player/a;)Lcom/unity3d/player/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/unity3d/player/c;->a(Ljava/lang/Object;)V

    return-void
.end method
