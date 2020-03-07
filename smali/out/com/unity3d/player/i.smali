.class public final Lcom/unity3d/player/i;
.super Ljava/lang/Object;


# static fields
.field static final a:Z

.field static final b:Z

.field static final c:Z

.field static final d:Z

.field static final e:Lcom/unity3d/player/d;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x13

    if-lt v0, v3, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    sput-boolean v0, Lcom/unity3d/player/i;->a:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v0, v3, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    sput-boolean v0, Lcom/unity3d/player/i;->b:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v0, v3, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    sput-boolean v0, Lcom/unity3d/player/i;->c:Z

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v0, v3, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v1, 0x0

    :goto_2b
    sput-boolean v1, Lcom/unity3d/player/i;->d:Z

    sget-boolean v0, Lcom/unity3d/player/i;->c:Z

    if-eqz v0, :cond_37

    new-instance v0, Lcom/unity3d/player/g;

    invoke-direct {v0}, Lcom/unity3d/player/g;-><init>()V

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    sput-object v0, Lcom/unity3d/player/i;->e:Lcom/unity3d/player/d;

    return-void
.end method
