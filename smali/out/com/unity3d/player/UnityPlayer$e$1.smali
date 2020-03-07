.class final Lcom/unity3d/player/UnityPlayer$e$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/UnityPlayer$e;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer$e;)V
    .registers 2

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iget v0, v0, Lcom/unity3d/player/UnityPlayer$e;->d:I

    sget v1, Lcom/unity3d/player/UnityPlayer$b;->c:I

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iget-boolean v0, v0, Lcom/unity3d/player/UnityPlayer$e;->c:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$e;->g:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;Z)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    sget v1, Lcom/unity3d/player/UnityPlayer$b;->a:I

    iput v1, v0, Lcom/unity3d/player/UnityPlayer$e;->d:I

    :cond_1c
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x8dd

    const/4 v2, 0x0

    if-eq v0, v1, :cond_8

    return v2

    :cond_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/unity3d/player/UnityPlayer$d;

    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->h:Lcom/unity3d/player/UnityPlayer$d;

    const/4 v3, 0x1

    if-ne p1, v0, :cond_6e

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iget v0, p1, Lcom/unity3d/player/UnityPlayer$e;->e:I

    sub-int/2addr v0, v3

    iput v0, p1, Lcom/unity3d/player/UnityPlayer$e;->e:I

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$e;->g:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->executeGLThreadJobs()V

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iget-boolean p1, p1, Lcom/unity3d/player/UnityPlayer$e;->b:Z

    if-nez p1, :cond_26

    return v3

    :cond_26
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iget-boolean p1, p1, Lcom/unity3d/player/UnityPlayer$e;->c:Z

    if-nez p1, :cond_2d

    return v3

    :cond_2d
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iget p1, p1, Lcom/unity3d/player/UnityPlayer$e;->f:I

    if-ltz p1, :cond_51

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iget p1, p1, Lcom/unity3d/player/UnityPlayer$e;->f:I

    if-nez p1, :cond_4a

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$e;->g:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;)Z

    move-result p1

    if-eqz p1, :cond_4a

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$e;->g:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->b(Lcom/unity3d/player/UnityPlayer;)V

    :cond_4a
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iget v0, p1, Lcom/unity3d/player/UnityPlayer$e;->f:I

    sub-int/2addr v0, v3

    iput v0, p1, Lcom/unity3d/player/UnityPlayer$e;->f:I

    :cond_51
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$e;->g:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {p1}, Lcom/unity3d/player/UnityPlayer;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_d9

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$e;->g:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->c(Lcom/unity3d/player/UnityPlayer;)Z

    move-result p1

    if-nez p1, :cond_d9

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$e;->g:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1}, Lcom/unity3d/player/UnityPlayer;->d(Lcom/unity3d/player/UnityPlayer;)V

    goto/16 :goto_d9

    :cond_6e
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->c:Lcom/unity3d/player/UnityPlayer$d;

    if-ne p1, v0, :cond_7a

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    goto :goto_d9

    :cond_7a
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->b:Lcom/unity3d/player/UnityPlayer$d;

    if-ne p1, v0, :cond_83

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iput-boolean v3, p1, Lcom/unity3d/player/UnityPlayer$e;->b:Z

    goto :goto_d9

    :cond_83
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->a:Lcom/unity3d/player/UnityPlayer$d;

    if-ne p1, v0, :cond_8c

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iput-boolean v2, p1, Lcom/unity3d/player/UnityPlayer$e;->b:Z

    goto :goto_d9

    :cond_8c
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->d:Lcom/unity3d/player/UnityPlayer$d;

    if-ne p1, v0, :cond_95

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iput-boolean v2, p1, Lcom/unity3d/player/UnityPlayer$e;->c:Z

    goto :goto_d9

    :cond_95
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->e:Lcom/unity3d/player/UnityPlayer$d;

    if-ne p1, v0, :cond_a1

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iput-boolean v3, p1, Lcom/unity3d/player/UnityPlayer$e;->c:Z

    :goto_9d
    invoke-direct {p0}, Lcom/unity3d/player/UnityPlayer$e$1;->a()V

    goto :goto_d9

    :cond_a1
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->f:Lcom/unity3d/player/UnityPlayer$d;

    if-ne p1, v0, :cond_bb

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iget p1, p1, Lcom/unity3d/player/UnityPlayer$e;->d:I

    sget v0, Lcom/unity3d/player/UnityPlayer$b;->a:I

    if-ne p1, v0, :cond_b4

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$e;->g:Lcom/unity3d/player/UnityPlayer;

    invoke-static {p1, v2}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;Z)V

    :cond_b4
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    sget v0, Lcom/unity3d/player/UnityPlayer$b;->b:I

    iput v0, p1, Lcom/unity3d/player/UnityPlayer$e;->d:I

    goto :goto_d9

    :cond_bb
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->g:Lcom/unity3d/player/UnityPlayer$d;

    if-ne p1, v0, :cond_c6

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    sget v0, Lcom/unity3d/player/UnityPlayer$b;->c:I

    iput v0, p1, Lcom/unity3d/player/UnityPlayer$e;->d:I

    goto :goto_9d

    :cond_c6
    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->i:Lcom/unity3d/player/UnityPlayer$d;

    if-ne p1, v0, :cond_d9

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$e;->g:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer$e;->g:Lcom/unity3d/player/UnityPlayer;

    invoke-virtual {v0}, Lcom/unity3d/player/UnityPlayer;->getLaunchURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;)V

    :cond_d9
    :goto_d9
    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iget-boolean p1, p1, Lcom/unity3d/player/UnityPlayer$e;->b:Z

    if-eqz p1, :cond_f9

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iget p1, p1, Lcom/unity3d/player/UnityPlayer$e;->e:I

    if-gtz p1, :cond_f9

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iget-object p1, p1, Lcom/unity3d/player/UnityPlayer$e;->a:Landroid/os/Handler;

    sget-object v0, Lcom/unity3d/player/UnityPlayer$d;->h:Lcom/unity3d/player/UnityPlayer$d;

    invoke-static {p1, v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget-object p1, p0, Lcom/unity3d/player/UnityPlayer$e$1;->a:Lcom/unity3d/player/UnityPlayer$e;

    iget v0, p1, Lcom/unity3d/player/UnityPlayer$e;->e:I

    add-int/2addr v0, v3

    iput v0, p1, Lcom/unity3d/player/UnityPlayer$e;->e:I

    :cond_f9
    return v3
.end method
