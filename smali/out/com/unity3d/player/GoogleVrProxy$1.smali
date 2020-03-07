.class final Lcom/unity3d/player/GoogleVrProxy$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/GoogleVrProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/GoogleVrProxy;


# direct methods
.method constructor <init>(Lcom/unity3d/player/GoogleVrProxy;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/unity3d/player/GoogleVrProxy$1;->a:Lcom/unity3d/player/GoogleVrProxy;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x2121f

    if-eq v0, v1, :cond_b

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :cond_b
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_4e

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_14
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/Surface;

    iget-object v0, p0, Lcom/unity3d/player/GoogleVrProxy$1;->a:Lcom/unity3d/player/GoogleVrProxy;

    invoke-static {v0}, Lcom/unity3d/player/GoogleVrProxy;->a(Lcom/unity3d/player/GoogleVrProxy;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;

    invoke-interface {v1, p1}, Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;->onSurfaceAvailable(Landroid/view/Surface;)V

    goto :goto_22

    :cond_32
    return-void

    :pswitch_33
    iget-object p1, p0, Lcom/unity3d/player/GoogleVrProxy$1;->a:Lcom/unity3d/player/GoogleVrProxy;

    invoke-static {p1}, Lcom/unity3d/player/GoogleVrProxy;->a(Lcom/unity3d/player/GoogleVrProxy;)Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;

    invoke-interface {v0}, Lcom/unity3d/player/GoogleVrVideo$GoogleVrVideoCallbacks;->onFrameAvailable()V

    goto :goto_3d

    :cond_4d
    return-void

    :pswitch_data_4e
    .packed-switch 0x7ffffffd
        :pswitch_33
        :pswitch_14
    .end packed-switch
.end method
