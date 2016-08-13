.class Lcom/google/tagmanager/a/ag;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/tagmanager/a/am;

.field private final b:Lcom/google/tagmanager/a/o;

.field private c:Lcom/google/tagmanager/a/h;

.field private volatile d:Lcom/google/tagmanager/a/am;


# direct methods
.method private b()V
    .locals 3

    iget-object v0, p0, Lcom/google/tagmanager/a/ag;->d:Lcom/google/tagmanager/a/am;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/a/ag;->d:Lcom/google/tagmanager/a/am;

    if-eqz v0, :cond_1

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/a/ag;->c:Lcom/google/tagmanager/a/h;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/tagmanager/a/ag;->a:Lcom/google/tagmanager/a/am;

    invoke-interface {v0}, Lcom/google/tagmanager/a/am;->c()Lcom/google/tagmanager/a/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/google/tagmanager/a/ag;->c:Lcom/google/tagmanager/a/h;

    iget-object v2, p0, Lcom/google/tagmanager/a/ag;->b:Lcom/google/tagmanager/a/o;

    invoke-interface {v0, v1, v2}, Lcom/google/tagmanager/a/aq;->c(Lcom/google/tagmanager/a/h;Lcom/google/tagmanager/a/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/am;

    iput-object v0, p0, Lcom/google/tagmanager/a/ag;->d:Lcom/google/tagmanager/a/am;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public a()Lcom/google/tagmanager/a/am;
    .locals 1

    invoke-direct {p0}, Lcom/google/tagmanager/a/ag;->b()V

    iget-object v0, p0, Lcom/google/tagmanager/a/ag;->d:Lcom/google/tagmanager/a/am;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-direct {p0}, Lcom/google/tagmanager/a/ag;->b()V

    iget-object v0, p0, Lcom/google/tagmanager/a/ag;->d:Lcom/google/tagmanager/a/am;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-direct {p0}, Lcom/google/tagmanager/a/ag;->b()V

    iget-object v0, p0, Lcom/google/tagmanager/a/ag;->d:Lcom/google/tagmanager/a/am;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/google/tagmanager/a/ag;->b()V

    iget-object v0, p0, Lcom/google/tagmanager/a/ag;->d:Lcom/google/tagmanager/a/am;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
