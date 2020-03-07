.class final Lcom/unity3d/player/f;
.super Ljava/lang/Object;


# static fields
.field protected static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method protected static Log(ILjava/lang/String;)V
    .registers 4

    sget-boolean v0, Lcom/unity3d/player/f;->a:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x6

    const-string v1, "Unity"

    if-ne p0, v0, :cond_d

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    const/4 v0, 0x5

    if-ne p0, v0, :cond_13

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    return-void
.end method
