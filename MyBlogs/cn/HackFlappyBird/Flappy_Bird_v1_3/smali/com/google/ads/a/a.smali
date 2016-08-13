.class public Lcom/google/ads/a/a;
.super Lcom/google/ads/a/e;


# instance fields
.field private volatile b:Z

.field private c:Z

.field private d:I

.field private e:I

.field private final f:Lcom/google/ads/a/ad;


# direct methods
.method public constructor <init>(Lcom/google/ads/bt;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/ads/a/e;-><init>(Lcom/google/ads/bt;Lcom/google/ads/g;)V

    iput-boolean v2, p0, Lcom/google/ads/a/a;->b:Z

    iput-boolean v2, p0, Lcom/google/ads/a/a;->c:Z

    iput v1, p0, Lcom/google/ads/a/a;->d:I

    iput v1, p0, Lcom/google/ads/a/a;->e:I

    iget-object v0, p1, Lcom/google/ads/bt;->d:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/br;

    iget-object v0, v0, Lcom/google/ads/br;->b:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bs;

    sget v1, Lcom/google/ads/util/AdUtil;->a:I

    iget-object v0, v0, Lcom/google/ads/bs;->c:Lcom/google/ads/util/ae;

    invoke-virtual {v0}, Lcom/google/ads/util/ae;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_0

    const-string v0, "Disabling hardware acceleration for an activation overlay."

    invoke-static {v0}, Lcom/google/ads/util/g;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/ads/a/a;->g()V

    :cond_0
    iget-object v0, p1, Lcom/google/ads/bt;->b:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/a/w;

    sget-object v1, Lcom/google/ads/a/h;->c:Ljava/util/Map;

    invoke-static {v0, v1, v2, v2}, Lcom/google/ads/a/ad;->a(Lcom/google/ads/a/w;Ljava/util/Map;ZZ)Lcom/google/ads/a/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/a/a;->f:Lcom/google/ads/a/ad;

    iget-object v0, p0, Lcom/google/ads/a/a;->f:Lcom/google/ads/a/ad;

    invoke-virtual {p0, v0}, Lcom/google/ads/a/a;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/a/a;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/ads/a/a;->c:Z

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/ads/a/a;->e:I

    return v0
.end method

.method public canScrollHorizontally(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canScrollVertically(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/ads/a/a;->d:I

    return v0
.end method

.method public e()Lcom/google/ads/a/ad;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/a/a;->f:Lcom/google/ads/a/ad;

    return-object v0
.end method

.method public setOverlayActivated(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/ads/a/a;->c:Z

    return-void
.end method

.method public setOverlayEnabled(Z)V
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Lcom/google/ads/br;->a()Lcom/google/ads/br;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/br;->c:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    new-instance v1, Lcom/google/ads/a/b;

    invoke-direct {v1, p0, p0}, Lcom/google/ads/a/b;-><init>(Lcom/google/ads/a/a;Lcom/google/ads/a/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iput-boolean p1, p0, Lcom/google/ads/a/a;->b:Z

    return-void
.end method

.method public setXPosition(I)V
    .locals 0

    iput p1, p0, Lcom/google/ads/a/a;->d:I

    return-void
.end method

.method public setYPosition(I)V
    .locals 0

    iput p1, p0, Lcom/google/ads/a/a;->e:I

    return-void
.end method
