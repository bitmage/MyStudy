.class public Lcom/google/tagmanager/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/tagmanager/r;

.field private b:Lcom/google/tagmanager/d;

.field private c:Lcom/google/tagmanager/o;

.field private d:Lcom/google/tagmanager/b;

.field private volatile e:Ljava/lang/String;

.field private volatile f:Lcom/google/analytics/a/a/q;

.field private volatile g:J

.field private volatile h:I


# direct methods
.method private b(J)Z
    .locals 7

    const/16 v6, 0x1e

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/google/tagmanager/c;->g:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget v1, p0, Lcom/google/tagmanager/c;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/tagmanager/c;->h:I

    :goto_0
    return v0

    :cond_0
    iget-wide v2, p0, Lcom/google/tagmanager/c;->g:J

    sub-long v2, p1, v2

    const-wide/16 v4, 0x1388

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget v4, p0, Lcom/google/tagmanager/c;->h:I

    if-ge v4, v6, :cond_2

    const-wide/32 v4, 0xdbba0

    div-long/2addr v2, v4

    long-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p0, Lcom/google/tagmanager/c;->h:I

    add-int/2addr v2, v3

    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, p0, Lcom/google/tagmanager/c;->h:I

    :cond_2
    iget v2, p0, Lcom/google/tagmanager/c;->h:I

    if-lez v2, :cond_3

    iget v1, p0, Lcom/google/tagmanager/c;->h:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/google/tagmanager/c;->h:I

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method private declared-synchronized c()Lcom/google/tagmanager/o;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/c;->c:Lcom/google/tagmanager/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private d()Z
    .locals 2

    iget-object v0, p0, Lcom/google/tagmanager/c;->a:Lcom/google/tagmanager/r;

    invoke-virtual {v0}, Lcom/google/tagmanager/r;->a()Lcom/google/tagmanager/w;

    move-result-object v0

    sget-object v1, Lcom/google/tagmanager/w;->b:Lcom/google/tagmanager/w;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/google/tagmanager/c;->c()Lcom/google/tagmanager/o;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "refresh called for closed container"

    invoke-static {v0}, Lcom/google/tagmanager/i;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/tagmanager/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Container is in DEFAULT_CONTAINER mode. Refresh request is ignored."

    invoke-static {v0}, Lcom/google/tagmanager/i;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling refresh() throws an exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/tagmanager/i;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/google/tagmanager/c;->d:Lcom/google/tagmanager/b;

    invoke-interface {v0}, Lcom/google/tagmanager/b;->a()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/c;->b(J)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Container refresh requested"

    invoke-static {v2}, Lcom/google/tagmanager/i;->d(Ljava/lang/String;)V

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/google/tagmanager/c;->a(J)V

    iput-wide v0, p0, Lcom/google/tagmanager/c;->g:J

    goto :goto_0

    :cond_2
    const-string v0, "Container refresh was called too often. Ignored."

    invoke-static {v0}, Lcom/google/tagmanager/i;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method

.method declared-synchronized a(J)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/tagmanager/c;->b:Lcom/google/tagmanager/d;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/tagmanager/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/tagmanager/c;->f:Lcom/google/analytics/a/a/q;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/tagmanager/c;->b:Lcom/google/tagmanager/d;

    invoke-interface {v1, p1, p2, v0}, Lcom/google/tagmanager/d;->a(JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/tagmanager/c;->f:Lcom/google/analytics/a/a/q;

    invoke-virtual {v0}, Lcom/google/analytics/a/a/q;->C()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/google/tagmanager/c;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/tagmanager/c;->b:Lcom/google/tagmanager/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/tagmanager/c;->b:Lcom/google/tagmanager/d;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/c;->e:Ljava/lang/String;

    return-object v0
.end method
