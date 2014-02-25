.class final Lcom/google/tagmanager/a/z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/tagmanager/a/s;


# instance fields
.field final a:Lcom/google/tagmanager/a/ae;

.field final b:I

.field final c:Lcom/google/tagmanager/a/bm;

.field final d:Z


# virtual methods
.method public a(Lcom/google/tagmanager/a/z;)I
    .locals 2

    iget v0, p0, Lcom/google/tagmanager/a/z;->b:I

    iget v1, p1, Lcom/google/tagmanager/a/z;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/google/tagmanager/a/an;Lcom/google/tagmanager/a/am;)Lcom/google/tagmanager/a/an;
    .locals 1

    check-cast p1, Lcom/google/tagmanager/a/v;

    check-cast p2, Lcom/google/tagmanager/a/t;

    invoke-virtual {p1, p2}, Lcom/google/tagmanager/a/v;->a(Lcom/google/tagmanager/a/t;)Lcom/google/tagmanager/a/v;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/tagmanager/a/ap;Lcom/google/tagmanager/a/ap;)Lcom/google/tagmanager/a/ap;
    .locals 1

    check-cast p1, Lcom/google/tagmanager/a/ab;

    check-cast p2, Lcom/google/tagmanager/a/ab;

    invoke-virtual {p1, p2}, Lcom/google/tagmanager/a/ab;->a(Lcom/google/tagmanager/a/ab;)Lcom/google/tagmanager/a/ab;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/google/tagmanager/a/bm;
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/a/z;->c:Lcom/google/tagmanager/a/bm;

    return-object v0
.end method

.method public b()Lcom/google/tagmanager/a/br;
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/a/z;->c:Lcom/google/tagmanager/a/bm;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/bm;->a()Lcom/google/tagmanager/a/br;

    move-result-object v0

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/tagmanager/a/z;->d:Z

    return v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/tagmanager/a/z;

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/a/z;->a(Lcom/google/tagmanager/a/z;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/tagmanager/a/z;->b:I

    return v0
.end method

.method public e()Lcom/google/tagmanager/a/ae;
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/a/z;->a:Lcom/google/tagmanager/a/ae;

    return-object v0
.end method
