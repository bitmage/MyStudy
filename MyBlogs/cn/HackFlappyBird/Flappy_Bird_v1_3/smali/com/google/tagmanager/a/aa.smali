.class public Lcom/google/tagmanager/a/aa;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/tagmanager/a/am;

.field final b:Lcom/google/tagmanager/a/z;


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/a/aa;->b:Lcom/google/tagmanager/a/z;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/z;->d()I

    move-result v0

    return v0
.end method

.method a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/tagmanager/a/aa;->b:Lcom/google/tagmanager/a/z;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/z;->b()Lcom/google/tagmanager/a/br;

    move-result-object v0

    sget-object v1, Lcom/google/tagmanager/a/br;->h:Lcom/google/tagmanager/a/br;

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/google/tagmanager/a/ad;

    invoke-interface {p1}, Lcom/google/tagmanager/a/ad;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public b()Lcom/google/tagmanager/a/am;
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/a/aa;->a:Lcom/google/tagmanager/a/am;

    return-object v0
.end method
