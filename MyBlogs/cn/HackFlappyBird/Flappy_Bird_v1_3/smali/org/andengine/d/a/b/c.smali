.class public abstract Lorg/andengine/d/a/b/c;
.super Ljava/lang/Object;


# instance fields
.field b:Lorg/andengine/d/a/b/b;

.field c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/d/a/b/c;->c:Z

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public a(Lorg/andengine/d/a/b/b;)Z
    .locals 1

    iget-object v0, p0, Lorg/andengine/d/a/b/c;->b:Lorg/andengine/d/a/b/b;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lorg/andengine/d/a/b/c;->c:Z

    return v0
.end method

.method protected c()V
    .locals 0

    return-void
.end method
