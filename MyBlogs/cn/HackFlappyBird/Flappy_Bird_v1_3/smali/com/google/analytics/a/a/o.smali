.class public final Lcom/google/analytics/a/a/o;
.super Lcom/google/tagmanager/a/v;

# interfaces
.implements Lcom/google/analytics/a/a/p;


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/tagmanager/a/v;-><init>()V

    invoke-direct {p0}, Lcom/google/analytics/a/a/o;->m()V

    return-void
.end method

.method static synthetic l()Lcom/google/analytics/a/a/o;
    .locals 1

    invoke-static {}, Lcom/google/analytics/a/a/o;->n()Lcom/google/analytics/a/a/o;

    move-result-object v0

    return-object v0
.end method

.method private m()V
    .locals 0

    return-void
.end method

.method private static n()Lcom/google/analytics/a/a/o;
    .locals 1

    new-instance v0, Lcom/google/analytics/a/a/o;

    invoke-direct {v0}, Lcom/google/analytics/a/a/o;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/analytics/a/a/o;
    .locals 2

    invoke-static {}, Lcom/google/analytics/a/a/o;->n()Lcom/google/analytics/a/a/o;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/analytics/a/a/o;->d()Lcom/google/analytics/a/a/m;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/a/a/o;->a(Lcom/google/analytics/a/a/m;)Lcom/google/analytics/a/a/o;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/google/analytics/a/a/o;
    .locals 1

    iget v0, p0, Lcom/google/analytics/a/a/o;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/a/a/o;->a:I

    iput p1, p0, Lcom/google/analytics/a/a/o;->b:I

    return-object p0
.end method

.method public a(Lcom/google/analytics/a/a/m;)Lcom/google/analytics/a/a/o;
    .locals 2

    invoke-static {}, Lcom/google/analytics/a/a/m;->a()Lcom/google/analytics/a/a/m;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/analytics/a/a/m;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/analytics/a/a/m;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/o;->a(I)Lcom/google/analytics/a/a/o;

    :cond_1
    invoke-virtual {p1}, Lcom/google/analytics/a/a/m;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/analytics/a/a/m;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/o;->b(I)Lcom/google/analytics/a/a/o;

    :cond_2
    invoke-virtual {p0}, Lcom/google/analytics/a/a/o;->r()Lcom/google/tagmanager/a/h;

    move-result-object v0

    invoke-static {p1}, Lcom/google/analytics/a/a/m;->b(Lcom/google/analytics/a/a/m;)Lcom/google/tagmanager/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/a/h;->a(Lcom/google/tagmanager/a/h;)Lcom/google/tagmanager/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/o;->a(Lcom/google/tagmanager/a/h;)Lcom/google/tagmanager/a/v;

    goto :goto_0
.end method

.method public a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/analytics/a/a/o;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/google/analytics/a/a/m;->a:Lcom/google/tagmanager/a/aq;

    invoke-interface {v0, p1, p2}, Lcom/google/tagmanager/a/aq;->b(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/m;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/tagmanager/a/af; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/o;->a(Lcom/google/analytics/a/a/m;)Lcom/google/analytics/a/a/o;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/tagmanager/a/af;->a()Lcom/google/tagmanager/a/am;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/m;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/google/analytics/a/a/o;->a(Lcom/google/analytics/a/a/m;)Lcom/google/analytics/a/a/o;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/google/tagmanager/a/t;)Lcom/google/tagmanager/a/v;
    .locals 1

    check-cast p1, Lcom/google/analytics/a/a/m;

    invoke-virtual {p0, p1}, Lcom/google/analytics/a/a/o;->a(Lcom/google/analytics/a/a/m;)Lcom/google/analytics/a/a/o;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/analytics/a/a/m;
    .locals 1

    invoke-static {}, Lcom/google/analytics/a/a/m;->a()Lcom/google/analytics/a/a/m;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/google/analytics/a/a/o;
    .locals 1

    iget v0, p0, Lcom/google/analytics/a/a/o;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/a/a/o;->a:I

    iput p1, p0, Lcom/google/analytics/a/a/o;->c:I

    return-object p0
.end method

.method public synthetic b(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/tagmanager/a/b;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/a/a/o;->a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/analytics/a/a/o;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/analytics/a/a/m;
    .locals 2

    invoke-virtual {p0}, Lcom/google/analytics/a/a/o;->d()Lcom/google/analytics/a/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/a/a/m;->j()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/analytics/a/a/o;->a(Lcom/google/tagmanager/a/am;)Lcom/google/tagmanager/a/bf;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/tagmanager/a/an;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/a/a/o;->a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/analytics/a/a/o;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/o;->a()Lcom/google/analytics/a/a/o;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/analytics/a/a/m;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/google/analytics/a/a/m;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/analytics/a/a/m;-><init>(Lcom/google/tagmanager/a/v;Lcom/google/analytics/a/a/b;)V

    iget v3, p0, Lcom/google/analytics/a/a/o;->a:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_1

    :goto_0
    iget v1, p0, Lcom/google/analytics/a/a/o;->b:I

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/m;->a(Lcom/google/analytics/a/a/m;I)I

    and-int/lit8 v1, v3, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/google/analytics/a/a/o;->c:I

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/m;->b(Lcom/google/analytics/a/a/m;I)I

    invoke-static {v2, v0}, Lcom/google/analytics/a/a/m;->c(Lcom/google/analytics/a/a/m;I)I

    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public synthetic e()Lcom/google/tagmanager/a/t;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/o;->b()Lcom/google/analytics/a/a/m;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lcom/google/tagmanager/a/v;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/o;->a()Lcom/google/analytics/a/a/o;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()Lcom/google/tagmanager/a/b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/o;->a()Lcom/google/analytics/a/a/o;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/tagmanager/a/am;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/o;->c()Lcom/google/analytics/a/a/m;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/analytics/a/a/o;->a:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/analytics/a/a/o;->i()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/a/a/o;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public k()Z
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/o;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic p()Lcom/google/tagmanager/a/am;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/o;->b()Lcom/google/analytics/a/a/m;

    move-result-object v0

    return-object v0
.end method
