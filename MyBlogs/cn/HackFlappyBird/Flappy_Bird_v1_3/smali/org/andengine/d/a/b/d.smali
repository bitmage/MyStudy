.class public abstract Lorg/andengine/d/a/b/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/andengine/b/b/c;


# instance fields
.field private final a:Lorg/andengine/d/a/b/b;

.field private final b:Lorg/andengine/d/a/c/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/andengine/d/a/c/a/a;

    new-instance v1, Lorg/andengine/d/a/a/a;

    invoke-direct {v1}, Lorg/andengine/d/a/a/a;-><init>()V

    invoke-direct {v0, v1}, Lorg/andengine/d/a/c/a/a;-><init>(Lorg/andengine/d/a/c/a;)V

    iput-object v0, p0, Lorg/andengine/d/a/b/d;->b:Lorg/andengine/d/a/c/a;

    new-instance v0, Lorg/andengine/d/a/b/e;

    invoke-direct {v0, p0}, Lorg/andengine/d/a/b/e;-><init>(Lorg/andengine/d/a/b/d;)V

    iput-object v0, p0, Lorg/andengine/d/a/b/d;->a:Lorg/andengine/d/a/b/b;

    return-void
.end method


# virtual methods
.method protected abstract a(Lorg/andengine/d/a/b/c;)V
.end method

.method public a_(F)V
    .locals 3

    iget-object v1, p0, Lorg/andengine/d/a/b/d;->b:Lorg/andengine/d/a/c/a;

    iget-object v2, p0, Lorg/andengine/d/a/b/d;->a:Lorg/andengine/d/a/b/b;

    :goto_0
    invoke-interface {v1}, Lorg/andengine/d/a/c/a;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/d/a/b/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lorg/andengine/d/a/b/d;->a(Lorg/andengine/d/a/b/c;)V

    invoke-virtual {v2, v0}, Lorg/andengine/d/a/b/b;->c(Lorg/andengine/d/a/b/c;)V

    goto :goto_0
.end method

.method public b(Lorg/andengine/d/a/b/c;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PoolItem already recycled!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/andengine/d/a/b/d;->a:Lorg/andengine/d/a/b/b;

    invoke-virtual {v0, p1}, Lorg/andengine/d/a/b/b;->d(Lorg/andengine/d/a/b/c;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PoolItem from another pool!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/andengine/d/a/b/d;->b:Lorg/andengine/d/a/c/a;

    invoke-interface {v0, p1}, Lorg/andengine/d/a/c/a;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract c()Lorg/andengine/d/a/b/c;
.end method

.method public d()Lorg/andengine/d/a/b/c;
    .locals 1

    iget-object v0, p0, Lorg/andengine/d/a/b/d;->a:Lorg/andengine/d/a/b/b;

    invoke-virtual {v0}, Lorg/andengine/d/a/b/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/d/a/b/c;

    return-object v0
.end method
