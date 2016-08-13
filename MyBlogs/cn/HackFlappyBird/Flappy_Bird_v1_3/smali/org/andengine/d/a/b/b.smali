.class public abstract Lorg/andengine/d/a/b/b;
.super Lorg/andengine/d/a/b/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/andengine/d/a/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lorg/andengine/d/a/b/c;
    .locals 1

    invoke-super {p0}, Lorg/andengine/d/a/b/a;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/d/a/b/c;

    iput-object p0, v0, Lorg/andengine/d/a/b/c;->b:Lorg/andengine/d/a/b/b;

    return-object v0
.end method

.method protected synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/andengine/d/a/b/c;

    invoke-virtual {p0, p1}, Lorg/andengine/d/a/b/b;->b(Lorg/andengine/d/a/b/c;)V

    return-void
.end method

.method protected a(Lorg/andengine/d/a/b/c;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/andengine/d/a/b/c;->c:Z

    invoke-virtual {p1}, Lorg/andengine/d/a/b/c;->c()V

    return-void
.end method

.method protected synthetic b(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/andengine/d/a/b/c;

    invoke-virtual {p0, p1}, Lorg/andengine/d/a/b/b;->a(Lorg/andengine/d/a/b/c;)V

    return-void
.end method

.method protected b(Lorg/andengine/d/a/b/c;)V
    .locals 1

    invoke-virtual {p1}, Lorg/andengine/d/a/b/c;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/andengine/d/a/b/c;->c:Z

    return-void
.end method

.method protected synthetic c()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/andengine/d/a/b/b;->a()Lorg/andengine/d/a/b/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/andengine/d/a/b/c;

    invoke-virtual {p0, p1}, Lorg/andengine/d/a/b/b;->c(Lorg/andengine/d/a/b/c;)V

    return-void
.end method

.method public declared-synchronized c(Lorg/andengine/d/a/b/c;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lorg/andengine/d/a/b/c;->b:Lorg/andengine/d/a/b/b;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PoolItem not assigned to a pool!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1, p0}, Lorg/andengine/d/a/b/c;->a(Lorg/andengine/d/a/b/b;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PoolItem from another pool!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lorg/andengine/d/a/b/c;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PoolItem already recycled!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-super {p0, p1}, Lorg/andengine/d/a/b/a;->c(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized d(Lorg/andengine/d/a/b/c;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lorg/andengine/d/a/b/c;->b:Lorg/andengine/d/a/b/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
