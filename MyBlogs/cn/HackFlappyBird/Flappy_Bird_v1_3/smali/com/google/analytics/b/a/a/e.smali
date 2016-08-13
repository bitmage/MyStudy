.class public final Lcom/google/analytics/b/a/a/e;
.super Lcom/google/tagmanager/a/w;

# interfaces
.implements Lcom/google/analytics/b/a/a/j;


# instance fields
.field private a:I

.field private b:Lcom/google/analytics/b/a/a/h;

.field private c:Ljava/lang/Object;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:J

.field private j:Z

.field private k:Ljava/util/List;

.field private l:Ljava/util/List;

.field private m:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/tagmanager/a/w;-><init>()V

    sget-object v0, Lcom/google/analytics/b/a/a/h;->a:Lcom/google/analytics/b/a/a/h;

    iput-object v0, p0, Lcom/google/analytics/b/a/a/e;->b:Lcom/google/analytics/b/a/a/h;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/b/a/a/e;->c:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/e;->d:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/e;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/e;->f:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/b/a/a/e;->g:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/b/a/a/e;->h:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/e;->k:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/e;->l:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/analytics/b/a/a/e;->t()V

    return-void
.end method

.method static synthetic q()Lcom/google/analytics/b/a/a/e;
    .locals 1

    invoke-static {}, Lcom/google/analytics/b/a/a/e;->u()Lcom/google/analytics/b/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method private t()V
    .locals 0

    return-void
.end method

.method private static u()Lcom/google/analytics/b/a/a/e;
    .locals 1

    new-instance v0, Lcom/google/analytics/b/a/a/e;

    invoke-direct {v0}, Lcom/google/analytics/b/a/a/e;-><init>()V

    return-object v0
.end method

.method private v()V
    .locals 2

    iget v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/b/a/a/e;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/b/a/a/e;->d:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    iget v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/b/a/a/e;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/b/a/a/e;->e:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    :cond_0
    return-void
.end method

.method private x()V
    .locals 2

    iget v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/b/a/a/e;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/b/a/a/e;->f:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    :cond_0
    return-void
.end method

.method private y()V
    .locals 2

    iget v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/b/a/a/e;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/b/a/a/e;->k:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    :cond_0
    return-void
.end method

.method private z()V
    .locals 2

    iget v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/b/a/a/e;->l:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/b/a/a/e;->l:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)Lcom/google/analytics/b/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/e;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/c;

    return-object v0
.end method

.method public a()Lcom/google/analytics/b/a/a/e;
    .locals 2

    invoke-static {}, Lcom/google/analytics/b/a/a/e;->u()Lcom/google/analytics/b/a/a/e;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/e;->d()Lcom/google/analytics/b/a/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/b/a/a/e;->a(Lcom/google/analytics/b/a/a/c;)Lcom/google/analytics/b/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public a(J)Lcom/google/analytics/b/a/a/e;
    .locals 1

    iget v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    iput-wide p1, p0, Lcom/google/analytics/b/a/a/e;->i:J

    return-object p0
.end method

.method public a(Lcom/google/analytics/b/a/a/c;)Lcom/google/analytics/b/a/a/e;
    .locals 2

    invoke-static {}, Lcom/google/analytics/b/a/a/c;->a()Lcom/google/analytics/b/a/a/c;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->e()Lcom/google/analytics/b/a/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/b/a/a/e;->a(Lcom/google/analytics/b/a/a/h;)Lcom/google/analytics/b/a/a/e;

    :cond_1
    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    invoke-static {p1}, Lcom/google/analytics/b/a/a/c;->b(Lcom/google/analytics/b/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/e;->c:Ljava/lang/Object;

    :cond_2
    invoke-static {p1}, Lcom/google/analytics/b/a/a/c;->c(Lcom/google/analytics/b/a/a/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/analytics/b/a/a/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Lcom/google/analytics/b/a/a/c;->c(Lcom/google/analytics/b/a/a/c;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/e;->d:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/google/analytics/b/a/a/c;->d(Lcom/google/analytics/b/a/a/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/analytics/b/a/a/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/google/analytics/b/a/a/c;->d(Lcom/google/analytics/b/a/a/c;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/e;->e:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    :cond_4
    :goto_2
    invoke-static {p1}, Lcom/google/analytics/b/a/a/c;->e(Lcom/google/analytics/b/a/a/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/analytics/b/a/a/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Lcom/google/analytics/b/a/a/c;->e(Lcom/google/analytics/b/a/a/c;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/e;->f:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    :cond_5
    :goto_3
    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->r()Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    invoke-static {p1}, Lcom/google/analytics/b/a/a/c;->f(Lcom/google/analytics/b/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/e;->g:Ljava/lang/Object;

    :cond_6
    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->t()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    invoke-static {p1}, Lcom/google/analytics/b/a/a/c;->g(Lcom/google/analytics/b/a/a/c;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/e;->h:Ljava/lang/Object;

    :cond_7
    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->w()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/analytics/b/a/a/e;->a(J)Lcom/google/analytics/b/a/a/e;

    :cond_8
    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->x()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->y()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/b/a/a/e;->a(Z)Lcom/google/analytics/b/a/a/e;

    :cond_9
    invoke-static {p1}, Lcom/google/analytics/b/a/a/c;->h(Lcom/google/analytics/b/a/a/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/analytics/b/a/a/e;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Lcom/google/analytics/b/a/a/c;->h(Lcom/google/analytics/b/a/a/c;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/e;->k:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    :cond_a
    :goto_4
    invoke-static {p1}, Lcom/google/analytics/b/a/a/c;->i(Lcom/google/analytics/b/a/a/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/google/analytics/b/a/a/e;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/google/analytics/b/a/a/c;->i(Lcom/google/analytics/b/a/a/c;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/e;->l:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    :cond_b
    :goto_5
    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->D()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->E()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/b/a/a/e;->b(Z)Lcom/google/analytics/b/a/a/e;

    :cond_c
    invoke-virtual {p0, p1}, Lcom/google/analytics/b/a/a/e;->a(Lcom/google/tagmanager/a/x;)V

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/e;->r()Lcom/google/tagmanager/a/h;

    move-result-object v0

    invoke-static {p1}, Lcom/google/analytics/b/a/a/c;->j(Lcom/google/analytics/b/a/a/c;)Lcom/google/tagmanager/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/a/h;->a(Lcom/google/tagmanager/a/h;)Lcom/google/tagmanager/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/b/a/a/e;->a(Lcom/google/tagmanager/a/h;)Lcom/google/tagmanager/a/v;

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/e;->v()V

    iget-object v0, p0, Lcom/google/analytics/b/a/a/e;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/b/a/a/c;->c(Lcom/google/analytics/b/a/a/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_e
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/e;->w()V

    iget-object v0, p0, Lcom/google/analytics/b/a/a/e;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/b/a/a/c;->d(Lcom/google/analytics/b/a/a/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :cond_f
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/e;->x()V

    iget-object v0, p0, Lcom/google/analytics/b/a/a/e;->f:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/b/a/a/c;->e(Lcom/google/analytics/b/a/a/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    :cond_10
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/e;->y()V

    iget-object v0, p0, Lcom/google/analytics/b/a/a/e;->k:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/b/a/a/c;->h(Lcom/google/analytics/b/a/a/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_4

    :cond_11
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/e;->z()V

    iget-object v0, p0, Lcom/google/analytics/b/a/a/e;->l:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/b/a/a/c;->i(Lcom/google/analytics/b/a/a/c;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_5
.end method

.method public a(Lcom/google/analytics/b/a/a/h;)Lcom/google/analytics/b/a/a/e;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    iput-object p1, p0, Lcom/google/analytics/b/a/a/e;->b:Lcom/google/analytics/b/a/a/h;

    return-object p0
.end method

.method public a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/analytics/b/a/a/e;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/google/analytics/b/a/a/c;->a:Lcom/google/tagmanager/a/aq;

    invoke-interface {v0, p1, p2}, Lcom/google/tagmanager/a/aq;->b(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/tagmanager/a/af; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/analytics/b/a/a/e;->a(Lcom/google/analytics/b/a/a/c;)Lcom/google/analytics/b/a/a/e;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/tagmanager/a/af;->a()Lcom/google/tagmanager/a/am;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/c;
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

    invoke-virtual {p0, v1}, Lcom/google/analytics/b/a/a/e;->a(Lcom/google/analytics/b/a/a/c;)Lcom/google/analytics/b/a/a/e;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/google/analytics/b/a/a/e;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    iput-object p1, p0, Lcom/google/analytics/b/a/a/e;->c:Ljava/lang/Object;

    return-object p0
.end method

.method public a(Z)Lcom/google/analytics/b/a/a/e;
    .locals 1

    iget v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    iput-boolean p1, p0, Lcom/google/analytics/b/a/a/e;->j:Z

    return-object p0
.end method

.method public bridge synthetic a(Lcom/google/tagmanager/a/t;)Lcom/google/tagmanager/a/v;
    .locals 1

    check-cast p1, Lcom/google/analytics/b/a/a/c;

    invoke-virtual {p0, p1}, Lcom/google/analytics/b/a/a/e;->a(Lcom/google/analytics/b/a/a/c;)Lcom/google/analytics/b/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/analytics/b/a/a/c;
    .locals 1

    invoke-static {}, Lcom/google/analytics/b/a/a/c;->a()Lcom/google/analytics/b/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/google/analytics/b/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/e;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/c;

    return-object v0
.end method

.method public b(Lcom/google/analytics/b/a/a/c;)Lcom/google/analytics/b/a/a/e;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/e;->v()V

    iget-object v0, p0, Lcom/google/analytics/b/a/a/e;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Z)Lcom/google/analytics/b/a/a/e;
    .locals 1

    iget v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/analytics/b/a/a/e;->a:I

    iput-boolean p1, p0, Lcom/google/analytics/b/a/a/e;->m:Z

    return-object p0
.end method

.method public synthetic b(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/tagmanager/a/b;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/b/a/a/e;->a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/analytics/b/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/analytics/b/a/a/c;
    .locals 2

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/e;->d()Lcom/google/analytics/b/a/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/b/a/a/c;->j()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/analytics/b/a/a/e;->a(Lcom/google/tagmanager/a/am;)Lcom/google/tagmanager/a/bf;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public c(I)Lcom/google/analytics/b/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/e;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/c;

    return-object v0
.end method

.method public c(Lcom/google/analytics/b/a/a/c;)Lcom/google/analytics/b/a/a/e;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/e;->w()V

    iget-object v0, p0, Lcom/google/analytics/b/a/a/e;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public synthetic c(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/tagmanager/a/an;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/b/a/a/e;->a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/analytics/b/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/e;->a()Lcom/google/analytics/b/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/analytics/b/a/a/c;
    .locals 6

    const/4 v0, 0x1

    new-instance v2, Lcom/google/analytics/b/a/a/c;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/analytics/b/a/a/c;-><init>(Lcom/google/tagmanager/a/w;Lcom/google/analytics/b/a/a/b;)V

    iget v3, p0, Lcom/google/analytics/b/a/a/e;->a:I

    const/4 v1, 0x0

    and-int/lit8 v4, v3, 0x1

    if-ne v4, v0, :cond_b

    :goto_0
    iget-object v1, p0, Lcom/google/analytics/b/a/a/e;->b:Lcom/google/analytics/b/a/a/h;

    invoke-static {v2, v1}, Lcom/google/analytics/b/a/a/c;->a(Lcom/google/analytics/b/a/a/c;Lcom/google/analytics/b/a/a/h;)Lcom/google/analytics/b/a/a/h;

    and-int/lit8 v1, v3, 0x2

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    or-int/lit8 v0, v0, 0x2

    :cond_0
    iget-object v1, p0, Lcom/google/analytics/b/a/a/e;->c:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/analytics/b/a/a/c;->a(Lcom/google/analytics/b/a/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/google/analytics/b/a/a/e;->a:I

    and-int/lit8 v1, v1, 0x4

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/google/analytics/b/a/a/e;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/e;->d:Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/b/a/a/e;->a:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/analytics/b/a/a/e;->a:I

    :cond_1
    iget-object v1, p0, Lcom/google/analytics/b/a/a/e;->d:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/google/analytics/b/a/a/c;->a(Lcom/google/analytics/b/a/a/c;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/b/a/a/e;->a:I

    and-int/lit8 v1, v1, 0x8

    const/16 v4, 0x8

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/google/analytics/b/a/a/e;->e:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/e;->e:Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/b/a/a/e;->a:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/analytics/b/a/a/e;->a:I

    :cond_2
    iget-object v1, p0, Lcom/google/analytics/b/a/a/e;->e:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/google/analytics/b/a/a/c;->b(Lcom/google/analytics/b/a/a/c;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/b/a/a/e;->a:I

    and-int/lit8 v1, v1, 0x10

    const/16 v4, 0x10

    if-ne v1, v4, :cond_3

    iget-object v1, p0, Lcom/google/analytics/b/a/a/e;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/e;->f:Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/b/a/a/e;->a:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/analytics/b/a/a/e;->a:I

    :cond_3
    iget-object v1, p0, Lcom/google/analytics/b/a/a/e;->f:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/google/analytics/b/a/a/c;->c(Lcom/google/analytics/b/a/a/c;Ljava/util/List;)Ljava/util/List;

    and-int/lit8 v1, v3, 0x20

    const/16 v4, 0x20

    if-ne v1, v4, :cond_4

    or-int/lit8 v0, v0, 0x4

    :cond_4
    iget-object v1, p0, Lcom/google/analytics/b/a/a/e;->g:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/analytics/b/a/a/c;->b(Lcom/google/analytics/b/a/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit8 v1, v3, 0x40

    const/16 v4, 0x40

    if-ne v1, v4, :cond_5

    or-int/lit8 v0, v0, 0x8

    :cond_5
    iget-object v1, p0, Lcom/google/analytics/b/a/a/e;->h:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/analytics/b/a/a/c;->c(Lcom/google/analytics/b/a/a/c;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x80

    const/16 v4, 0x80

    if-ne v1, v4, :cond_6

    or-int/lit8 v0, v0, 0x10

    :cond_6
    iget-wide v4, p0, Lcom/google/analytics/b/a/a/e;->i:J

    invoke-static {v2, v4, v5}, Lcom/google/analytics/b/a/a/c;->a(Lcom/google/analytics/b/a/a/c;J)J

    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    or-int/lit8 v0, v0, 0x20

    :cond_7
    iget-boolean v1, p0, Lcom/google/analytics/b/a/a/e;->j:Z

    invoke-static {v2, v1}, Lcom/google/analytics/b/a/a/c;->a(Lcom/google/analytics/b/a/a/c;Z)Z

    iget v1, p0, Lcom/google/analytics/b/a/a/e;->a:I

    and-int/lit16 v1, v1, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    iget-object v1, p0, Lcom/google/analytics/b/a/a/e;->k:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/e;->k:Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/b/a/a/e;->a:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/google/analytics/b/a/a/e;->a:I

    :cond_8
    iget-object v1, p0, Lcom/google/analytics/b/a/a/e;->k:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/google/analytics/b/a/a/c;->d(Lcom/google/analytics/b/a/a/c;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/b/a/a/e;->a:I

    and-int/lit16 v1, v1, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    iget-object v1, p0, Lcom/google/analytics/b/a/a/e;->l:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/e;->l:Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/b/a/a/e;->a:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/google/analytics/b/a/a/e;->a:I

    :cond_9
    iget-object v1, p0, Lcom/google/analytics/b/a/a/e;->l:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/google/analytics/b/a/a/c;->e(Lcom/google/analytics/b/a/a/c;Ljava/util/List;)Ljava/util/List;

    and-int/lit16 v1, v3, 0x800

    const/16 v3, 0x800

    if-ne v1, v3, :cond_a

    or-int/lit8 v0, v0, 0x40

    :cond_a
    iget-boolean v1, p0, Lcom/google/analytics/b/a/a/e;->m:Z

    invoke-static {v2, v1}, Lcom/google/analytics/b/a/a/c;->b(Lcom/google/analytics/b/a/a/c;Z)Z

    invoke-static {v2, v0}, Lcom/google/analytics/b/a/a/c;->a(Lcom/google/analytics/b/a/a/c;I)I

    return-object v2

    :cond_b
    move v0, v1

    goto/16 :goto_0
.end method

.method public d(I)Lcom/google/analytics/b/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/e;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/c;

    return-object v0
.end method

.method public d(Lcom/google/analytics/b/a/a/c;)Lcom/google/analytics/b/a/a/e;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-direct {p0}, Lcom/google/analytics/b/a/a/e;->x()V

    iget-object v0, p0, Lcom/google/analytics/b/a/a/e;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public synthetic e()Lcom/google/tagmanager/a/t;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/e;->b()Lcom/google/analytics/b/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lcom/google/tagmanager/a/v;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/e;->a()Lcom/google/analytics/b/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()Lcom/google/tagmanager/a/b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/e;->a()Lcom/google/analytics/b/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/tagmanager/a/am;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/e;->c()Lcom/google/analytics/b/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public i()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/analytics/b/a/a/e;->a:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Z
    .locals 3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/e;->i()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/e;->k()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/analytics/b/a/a/e;->a(I)Lcom/google/analytics/b/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/b/a/a/c;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/e;->l()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/analytics/b/a/a/e;->b(I)Lcom/google/analytics/b/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/b/a/a/c;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/e;->m()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/analytics/b/a/a/e;->c(I)Lcom/google/analytics/b/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/b/a/a/c;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_4
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/e;->n()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/google/analytics/b/a/a/e;->d(I)Lcom/google/analytics/b/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/b/a/a/c;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/e;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/e;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/e;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/e;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/e;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic o()Lcom/google/tagmanager/a/w;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/e;->a()Lcom/google/analytics/b/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic p()Lcom/google/tagmanager/a/am;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/e;->b()Lcom/google/analytics/b/a/a/c;

    move-result-object v0

    return-object v0
.end method
