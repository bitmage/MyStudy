.class public final Lcom/google/analytics/a/a/w;
.super Lcom/google/tagmanager/a/v;

# interfaces
.implements Lcom/google/analytics/a/a/x;


# instance fields
.field private a:I

.field private b:Ljava/util/List;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:Ljava/util/List;

.field private j:Ljava/util/List;

.field private k:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/tagmanager/a/v;-><init>()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->b:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->c:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->d:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->f:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->g:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->h:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->i:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->j:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->k:Ljava/util/List;

    invoke-direct {p0}, Lcom/google/analytics/a/a/w;->k()V

    return-void
.end method

.method static synthetic i()Lcom/google/analytics/a/a/w;
    .locals 1

    invoke-static {}, Lcom/google/analytics/a/a/w;->l()Lcom/google/analytics/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method private k()V
    .locals 0

    return-void
.end method

.method private static l()Lcom/google/analytics/a/a/w;
    .locals 1

    new-instance v0, Lcom/google/analytics/a/a/w;

    invoke-direct {v0}, Lcom/google/analytics/a/a/w;-><init>()V

    return-object v0
.end method

.method private m()V
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/w;->b:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->b:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_0
    return-void
.end method

.method private n()V
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/w;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->c:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/w;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->d:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_0
    return-void
.end method

.method private q()V
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/w;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->e:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_0
    return-void
.end method

.method private s()V
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/w;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->f:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_0
    return-void
.end method

.method private t()V
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/w;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->g:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_0
    return-void
.end method

.method private u()V
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/w;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->h:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_0
    return-void
.end method

.method private v()V
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/w;->i:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->i:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/w;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->j:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_0
    return-void
.end method

.method private x()V
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/w;->k:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->k:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/google/analytics/a/a/w;
    .locals 2

    invoke-static {}, Lcom/google/analytics/a/a/w;->l()Lcom/google/analytics/a/a/w;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/analytics/a/a/w;->d()Lcom/google/analytics/a/a/u;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/a/a/w;->a(Lcom/google/analytics/a/a/u;)Lcom/google/analytics/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/analytics/a/a/u;)Lcom/google/analytics/a/a/w;
    .locals 2

    invoke-static {}, Lcom/google/analytics/a/a/u;->a()Lcom/google/analytics/a/a/u;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/analytics/a/a/u;->b(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/a/a/w;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1}, Lcom/google/analytics/a/a/u;->b(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->b:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/google/analytics/a/a/u;->c(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/analytics/a/a/w;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {p1}, Lcom/google/analytics/a/a/u;->c(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->c:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_2
    :goto_2
    invoke-static {p1}, Lcom/google/analytics/a/a/u;->d(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/analytics/a/a/w;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p1}, Lcom/google/analytics/a/a/u;->d(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->d:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_3
    :goto_3
    invoke-static {p1}, Lcom/google/analytics/a/a/u;->e(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/analytics/a/a/w;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1}, Lcom/google/analytics/a/a/u;->e(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->e:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_4
    :goto_4
    invoke-static {p1}, Lcom/google/analytics/a/a/u;->f(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/analytics/a/a/w;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p1}, Lcom/google/analytics/a/a/u;->f(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->f:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_5
    :goto_5
    invoke-static {p1}, Lcom/google/analytics/a/a/u;->g(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/analytics/a/a/w;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-static {p1}, Lcom/google/analytics/a/a/u;->g(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->g:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_6
    :goto_6
    invoke-static {p1}, Lcom/google/analytics/a/a/u;->h(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/analytics/a/a/w;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/google/analytics/a/a/u;->h(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->h:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_7
    :goto_7
    invoke-static {p1}, Lcom/google/analytics/a/a/u;->i(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/google/analytics/a/a/w;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p1}, Lcom/google/analytics/a/a/u;->i(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->i:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_8
    :goto_8
    invoke-static {p1}, Lcom/google/analytics/a/a/u;->j(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/google/analytics/a/a/w;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p1}, Lcom/google/analytics/a/a/u;->j(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->j:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_9
    :goto_9
    invoke-static {p1}, Lcom/google/analytics/a/a/u;->k(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/analytics/a/a/w;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p1}, Lcom/google/analytics/a/a/u;->k(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/w;->k:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_a
    :goto_a
    invoke-virtual {p0}, Lcom/google/analytics/a/a/w;->r()Lcom/google/tagmanager/a/h;

    move-result-object v0

    invoke-static {p1}, Lcom/google/analytics/a/a/u;->l(Lcom/google/analytics/a/a/u;)Lcom/google/tagmanager/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/a/h;->a(Lcom/google/tagmanager/a/h;)Lcom/google/tagmanager/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/w;->a(Lcom/google/tagmanager/a/h;)Lcom/google/tagmanager/a/v;

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0}, Lcom/google/analytics/a/a/w;->m()V

    iget-object v0, p0, Lcom/google/analytics/a/a/w;->b:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/u;->b(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_c
    invoke-direct {p0}, Lcom/google/analytics/a/a/w;->n()V

    iget-object v0, p0, Lcom/google/analytics/a/a/w;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/u;->c(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :cond_d
    invoke-direct {p0}, Lcom/google/analytics/a/a/w;->o()V

    iget-object v0, p0, Lcom/google/analytics/a/a/w;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/u;->d(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    :cond_e
    invoke-direct {p0}, Lcom/google/analytics/a/a/w;->q()V

    iget-object v0, p0, Lcom/google/analytics/a/a/w;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/u;->e(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    :cond_f
    invoke-direct {p0}, Lcom/google/analytics/a/a/w;->s()V

    iget-object v0, p0, Lcom/google/analytics/a/a/w;->f:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/u;->f(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    :cond_10
    invoke-direct {p0}, Lcom/google/analytics/a/a/w;->t()V

    iget-object v0, p0, Lcom/google/analytics/a/a/w;->g:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/u;->g(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    :cond_11
    invoke-direct {p0}, Lcom/google/analytics/a/a/w;->u()V

    iget-object v0, p0, Lcom/google/analytics/a/a/w;->h:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/u;->h(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7

    :cond_12
    invoke-direct {p0}, Lcom/google/analytics/a/a/w;->v()V

    iget-object v0, p0, Lcom/google/analytics/a/a/w;->i:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/u;->i(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_8

    :cond_13
    invoke-direct {p0}, Lcom/google/analytics/a/a/w;->w()V

    iget-object v0, p0, Lcom/google/analytics/a/a/w;->j:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/u;->j(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_9

    :cond_14
    invoke-direct {p0}, Lcom/google/analytics/a/a/w;->x()V

    iget-object v0, p0, Lcom/google/analytics/a/a/w;->k:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/u;->k(Lcom/google/analytics/a/a/u;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_a
.end method

.method public a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/analytics/a/a/w;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/google/analytics/a/a/u;->a:Lcom/google/tagmanager/a/aq;

    invoke-interface {v0, p1, p2}, Lcom/google/tagmanager/a/aq;->b(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/u;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/tagmanager/a/af; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/w;->a(Lcom/google/analytics/a/a/u;)Lcom/google/analytics/a/a/w;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/tagmanager/a/af;->a()Lcom/google/tagmanager/a/am;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/u;
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

    invoke-virtual {p0, v1}, Lcom/google/analytics/a/a/w;->a(Lcom/google/analytics/a/a/u;)Lcom/google/analytics/a/a/w;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/google/tagmanager/a/t;)Lcom/google/tagmanager/a/v;
    .locals 1

    check-cast p1, Lcom/google/analytics/a/a/u;

    invoke-virtual {p0, p1}, Lcom/google/analytics/a/a/w;->a(Lcom/google/analytics/a/a/u;)Lcom/google/analytics/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/analytics/a/a/u;
    .locals 1

    invoke-static {}, Lcom/google/analytics/a/a/u;->a()Lcom/google/analytics/a/a/u;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/tagmanager/a/b;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/a/a/w;->a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/analytics/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/google/analytics/a/a/u;
    .locals 2

    invoke-virtual {p0}, Lcom/google/analytics/a/a/w;->d()Lcom/google/analytics/a/a/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/a/a/u;->j()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/analytics/a/a/w;->a(Lcom/google/tagmanager/a/am;)Lcom/google/tagmanager/a/bf;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/tagmanager/a/an;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/a/a/w;->a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/analytics/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/w;->a()Lcom/google/analytics/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/analytics/a/a/u;
    .locals 3

    new-instance v0, Lcom/google/analytics/a/a/u;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/analytics/a/a/u;-><init>(Lcom/google/tagmanager/a/v;Lcom/google/analytics/a/a/b;)V

    iget v1, p0, Lcom/google/analytics/a/a/w;->a:I

    iget v1, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/analytics/a/a/w;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/w;->b:Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_0
    iget-object v1, p0, Lcom/google/analytics/a/a/w;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/a/a/u;->a(Lcom/google/analytics/a/a/u;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/google/analytics/a/a/w;->c:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/w;->c:Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_1
    iget-object v1, p0, Lcom/google/analytics/a/a/w;->c:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/a/a/u;->b(Lcom/google/analytics/a/a/u;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/analytics/a/a/w;->d:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/w;->d:Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_2
    iget-object v1, p0, Lcom/google/analytics/a/a/w;->d:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/a/a/u;->c(Lcom/google/analytics/a/a/u;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/google/analytics/a/a/w;->e:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/w;->e:Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_3
    iget-object v1, p0, Lcom/google/analytics/a/a/w;->e:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/a/a/u;->d(Lcom/google/analytics/a/a/u;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v1, v1, 0x10

    const/16 v2, 0x10

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/google/analytics/a/a/w;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/w;->f:Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_4
    iget-object v1, p0, Lcom/google/analytics/a/a/w;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/a/a/u;->e(Lcom/google/analytics/a/a/u;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v1, v1, 0x20

    const/16 v2, 0x20

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/google/analytics/a/a/w;->g:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/w;->g:Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_5
    iget-object v1, p0, Lcom/google/analytics/a/a/w;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/a/a/u;->f(Lcom/google/analytics/a/a/u;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/google/analytics/a/a/w;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/w;->h:Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit8 v1, v1, -0x41

    iput v1, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_6
    iget-object v1, p0, Lcom/google/analytics/a/a/w;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/a/a/u;->g(Lcom/google/analytics/a/a/u;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit16 v1, v1, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_7

    iget-object v1, p0, Lcom/google/analytics/a/a/w;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/w;->i:Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit16 v1, v1, -0x81

    iput v1, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_7
    iget-object v1, p0, Lcom/google/analytics/a/a/w;->i:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/a/a/u;->h(Lcom/google/analytics/a/a/u;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit16 v1, v1, 0x100

    const/16 v2, 0x100

    if-ne v1, v2, :cond_8

    iget-object v1, p0, Lcom/google/analytics/a/a/w;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/w;->j:Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit16 v1, v1, -0x101

    iput v1, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_8
    iget-object v1, p0, Lcom/google/analytics/a/a/w;->j:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/a/a/u;->i(Lcom/google/analytics/a/a/u;Ljava/util/List;)Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit16 v1, v1, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_9

    iget-object v1, p0, Lcom/google/analytics/a/a/w;->k:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/w;->k:Ljava/util/List;

    iget v1, p0, Lcom/google/analytics/a/a/w;->a:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Lcom/google/analytics/a/a/w;->a:I

    :cond_9
    iget-object v1, p0, Lcom/google/analytics/a/a/w;->k:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/google/analytics/a/a/u;->j(Lcom/google/analytics/a/a/u;Ljava/util/List;)Ljava/util/List;

    return-object v0
.end method

.method public synthetic e()Lcom/google/tagmanager/a/t;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/w;->b()Lcom/google/analytics/a/a/u;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lcom/google/tagmanager/a/v;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/w;->a()Lcom/google/analytics/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()Lcom/google/tagmanager/a/b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/w;->a()Lcom/google/analytics/a/a/w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/tagmanager/a/am;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/w;->c()Lcom/google/analytics/a/a/u;

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

    invoke-virtual {p0}, Lcom/google/analytics/a/a/w;->b()Lcom/google/analytics/a/a/u;

    move-result-object v0

    return-object v0
.end method
