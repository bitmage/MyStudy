.class public final Lcom/google/analytics/a/a/e;
.super Lcom/google/tagmanager/a/v;

# interfaces
.implements Lcom/google/analytics/a/a/h;


# instance fields
.field private a:I

.field private b:Lcom/google/analytics/a/a/f;

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/tagmanager/a/v;-><init>()V

    sget-object v0, Lcom/google/analytics/a/a/f;->a:Lcom/google/analytics/a/a/f;

    iput-object v0, p0, Lcom/google/analytics/a/a/e;->b:Lcom/google/analytics/a/a/f;

    invoke-direct {p0}, Lcom/google/analytics/a/a/e;->k()V

    return-void
.end method

.method static synthetic i()Lcom/google/analytics/a/a/e;
    .locals 1

    invoke-static {}, Lcom/google/analytics/a/a/e;->l()Lcom/google/analytics/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .locals 0

    return-void
.end method

.method private static l()Lcom/google/analytics/a/a/e;
    .locals 1

    new-instance v0, Lcom/google/analytics/a/a/e;

    invoke-direct {v0}, Lcom/google/analytics/a/a/e;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/analytics/a/a/e;
    .locals 2

    invoke-static {}, Lcom/google/analytics/a/a/e;->l()Lcom/google/analytics/a/a/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/analytics/a/a/e;->d()Lcom/google/analytics/a/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/a/a/e;->a(Lcom/google/analytics/a/a/c;)Lcom/google/analytics/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/google/analytics/a/a/e;
    .locals 1

    iget v0, p0, Lcom/google/analytics/a/a/e;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/a/a/e;->a:I

    iput p1, p0, Lcom/google/analytics/a/a/e;->c:I

    return-object p0
.end method

.method public a(Lcom/google/analytics/a/a/c;)Lcom/google/analytics/a/a/e;
    .locals 2

    invoke-static {}, Lcom/google/analytics/a/a/c;->a()Lcom/google/analytics/a/a/c;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/analytics/a/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/analytics/a/a/c;->e()Lcom/google/analytics/a/a/f;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/e;->a(Lcom/google/analytics/a/a/f;)Lcom/google/analytics/a/a/e;

    :cond_1
    invoke-virtual {p1}, Lcom/google/analytics/a/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/analytics/a/a/c;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/e;->a(I)Lcom/google/analytics/a/a/e;

    :cond_2
    invoke-virtual {p1}, Lcom/google/analytics/a/a/c;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/analytics/a/a/c;->i()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/e;->b(I)Lcom/google/analytics/a/a/e;

    :cond_3
    invoke-virtual {p0}, Lcom/google/analytics/a/a/e;->r()Lcom/google/tagmanager/a/h;

    move-result-object v0

    invoke-static {p1}, Lcom/google/analytics/a/a/c;->b(Lcom/google/analytics/a/a/c;)Lcom/google/tagmanager/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/a/h;->a(Lcom/google/tagmanager/a/h;)Lcom/google/tagmanager/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/e;->a(Lcom/google/tagmanager/a/h;)Lcom/google/tagmanager/a/v;

    goto :goto_0
.end method

.method public a(Lcom/google/analytics/a/a/f;)Lcom/google/analytics/a/a/e;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/analytics/a/a/e;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/a/a/e;->a:I

    iput-object p1, p0, Lcom/google/analytics/a/a/e;->b:Lcom/google/analytics/a/a/f;

    return-object p0
.end method

.method public a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/analytics/a/a/e;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/google/analytics/a/a/c;->a:Lcom/google/tagmanager/a/aq;

    invoke-interface {v0, p1, p2}, Lcom/google/tagmanager/a/aq;->b(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/tagmanager/a/af; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/e;->a(Lcom/google/analytics/a/a/c;)Lcom/google/analytics/a/a/e;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/tagmanager/a/af;->a()Lcom/google/tagmanager/a/am;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/c;
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

    invoke-virtual {p0, v1}, Lcom/google/analytics/a/a/e;->a(Lcom/google/analytics/a/a/c;)Lcom/google/analytics/a/a/e;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/google/tagmanager/a/t;)Lcom/google/tagmanager/a/v;
    .locals 1

    check-cast p1, Lcom/google/analytics/a/a/c;

    invoke-virtual {p0, p1}, Lcom/google/analytics/a/a/e;->a(Lcom/google/analytics/a/a/c;)Lcom/google/analytics/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/analytics/a/a/c;
    .locals 1

    invoke-static {}, Lcom/google/analytics/a/a/c;->a()Lcom/google/analytics/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/google/analytics/a/a/e;
    .locals 1

    iget v0, p0, Lcom/google/analytics/a/a/e;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/analytics/a/a/e;->a:I

    iput p1, p0, Lcom/google/analytics/a/a/e;->d:I

    return-object p0
.end method

.method public synthetic b(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/tagmanager/a/b;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/a/a/e;->a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/analytics/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/analytics/a/a/c;
    .locals 2

    invoke-virtual {p0}, Lcom/google/analytics/a/a/e;->d()Lcom/google/analytics/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/a/a/c;->j()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/analytics/a/a/e;->a(Lcom/google/tagmanager/a/am;)Lcom/google/tagmanager/a/bf;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/tagmanager/a/an;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/a/a/e;->a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/analytics/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/e;->a()Lcom/google/analytics/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/analytics/a/a/c;
    .locals 5

    const/4 v0, 0x1

    new-instance v2, Lcom/google/analytics/a/a/c;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/analytics/a/a/c;-><init>(Lcom/google/tagmanager/a/v;Lcom/google/analytics/a/a/b;)V

    iget v3, p0, Lcom/google/analytics/a/a/e;->a:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_2

    :goto_0
    iget-object v1, p0, Lcom/google/analytics/a/a/e;->b:Lcom/google/analytics/a/a/f;

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/c;->a(Lcom/google/analytics/a/a/c;Lcom/google/analytics/a/a/f;)Lcom/google/analytics/a/a/f;

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget v1, p0, Lcom/google/analytics/a/a/e;->c:I

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/c;->a(Lcom/google/analytics/a/a/c;I)I

    and-int/lit8 v1, v3, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    or-int/lit8 v0, v0, 0x4

    :cond_1
    iget v1, p0, Lcom/google/analytics/a/a/e;->d:I

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/c;->b(Lcom/google/analytics/a/a/c;I)I

    invoke-static {v2, v0}, Lcom/google/analytics/a/a/c;->c(Lcom/google/analytics/a/a/c;I)I

    return-object v2

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public synthetic e()Lcom/google/tagmanager/a/t;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/e;->b()Lcom/google/analytics/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lcom/google/tagmanager/a/v;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/e;->a()Lcom/google/analytics/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()Lcom/google/tagmanager/a/b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/e;->a()Lcom/google/analytics/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/tagmanager/a/am;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/e;->c()Lcom/google/analytics/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public final j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public synthetic p()Lcom/google/tagmanager/a/am;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/e;->b()Lcom/google/analytics/a/a/c;

    move-result-object v0

    return-object v0
.end method
