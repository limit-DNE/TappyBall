.class final Lcom/unity3d/player/UnityPlayer$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->setSelection(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;II)V
    .registers 4

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$10;->c:Lcom/unity3d/player/UnityPlayer;

    iput p2, p0, Lcom/unity3d/player/UnityPlayer$10;->a:I

    iput p3, p0, Lcom/unity3d/player/UnityPlayer$10;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$10;->c:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->b:Lcom/unity3d/player/j;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$10;->c:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->b:Lcom/unity3d/player/j;

    iget v1, p0, Lcom/unity3d/player/UnityPlayer$10;->a:I

    iget v2, p0, Lcom/unity3d/player/UnityPlayer$10;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/j;->a(II)V

    :cond_11
    return-void
.end method
