.class final synthetic Lcom/unity3d/player/k$1;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    invoke-static {}, Lcom/unity3d/player/k$a;->a()[I

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/unity3d/player/k$1;->a:[I

    const/4 v0, 0x1

    :try_start_a
    sget-object v1, Lcom/unity3d/player/k$1;->a:[I

    sget v2, Lcom/unity3d/player/k$a;->a:I

    sub-int/2addr v2, v0

    aput v0, v1, v2
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_11} :catch_11

    :catch_11
    :try_start_11
    sget-object v1, Lcom/unity3d/player/k$1;->a:[I

    sget v2, Lcom/unity3d/player/k$a;->b:I

    sub-int/2addr v2, v0

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_19} :catch_19

    :catch_19
    :try_start_19
    sget-object v1, Lcom/unity3d/player/k$1;->a:[I

    sget v2, Lcom/unity3d/player/k$a;->c:I

    sub-int/2addr v2, v0

    const/4 v0, 0x3

    aput v0, v1, v2
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_21} :catch_21

    :catch_21
    return-void
.end method
