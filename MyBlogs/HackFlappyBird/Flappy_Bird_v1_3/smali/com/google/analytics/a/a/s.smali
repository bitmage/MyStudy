.class public final Lcom/google/analytics/a/a/s;
.super Lcom/google/tagmanager/a/v;

# interfaces
.implements Lcom/google/analytics/a/a/t;


# instance fields
.field private a:I

.field private b:Lcom/google/tagmanager/a/ai;

.field private c:Ljava/util/List;

.field private d:Ljava/util/List;

.field private e:Ljava/util/List;

.field private f:Ljava/util/List;

.field private g:Ljava/util/List;

.field private h:Ljava/util/List;

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Object;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:Lcom/google/analytics/a/a/c;

.field private n:F

.field private o:Z

.field private p:Lcom/google/tagmanager/a/ai;

.field private q:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/tagmanager/a/v;-><init>()V

    sget-object v0, Lcom/google/tagmanager/a/ah;->a:Lcom/google/tagmanager/a/ai;

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->b:Lcom/google/tagmanager/a/ai;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->c:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->d:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->e:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->f:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->g:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->h:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->i:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->j:Ljava/lang/Object;

    const-string v0, "0"

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->k:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->l:Ljava/lang/Object;

    invoke-static {}, Lcom/google/analytics/a/a/c;->a()Lcom/google/analytics/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->m:Lcom/google/analytics/a/a/c;

    sget-object v0, Lcom/google/tagmanager/a/ah;->a:Lcom/google/tagmanager/a/ai;

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->p:Lcom/google/tagmanager/a/ai;

    invoke-direct {p0}, Lcom/google/analytics/a/a/s;->q()V

    return-void
.end method

.method private A()V
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/tagmanager/a/ah;

    iget-object v1, p0, Lcom/google/analytics/a/a/s;->p:Lcom/google/tagmanager/a/ai;

    invoke-direct {v0, v1}, Lcom/google/tagmanager/a/ah;-><init>(Lcom/google/tagmanager/a/ai;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->p:Lcom/google/tagmanager/a/ai;

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_0
    return-void
.end method

.method static synthetic o()Lcom/google/analytics/a/a/s;
    .locals 1

    invoke-static {}, Lcom/google/analytics/a/a/s;->s()Lcom/google/analytics/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 0

    return-void
.end method

.method private static s()Lcom/google/analytics/a/a/s;
    .locals 1

    new-instance v0, Lcom/google/analytics/a/a/s;

    invoke-direct {v0}, Lcom/google/analytics/a/a/s;-><init>()V

    return-object v0
.end method

.method private t()V
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/google/tagmanager/a/ah;

    iget-object v1, p0, Lcom/google/analytics/a/a/s;->b:Lcom/google/tagmanager/a/ai;

    invoke-direct {v0, v1}, Lcom/google/tagmanager/a/ah;-><init>(Lcom/google/tagmanager/a/ai;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->b:Lcom/google/tagmanager/a/ai;

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_0
    return-void
.end method

.method private u()V
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/s;->c:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->c:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_0
    return-void
.end method

.method private v()V
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/s;->d:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->d:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_0
    return-void
.end method

.method private w()V
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/s;->e:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->e:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_0
    return-void
.end method

.method private x()V
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/s;->f:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->f:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_0
    return-void
.end method

.method private y()V
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/s;->g:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->g:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_0
    return-void
.end method

.method private z()V
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/analytics/a/a/s;->h:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->h:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lcom/google/analytics/a/a/s;
    .locals 2

    invoke-static {}, Lcom/google/analytics/a/a/s;->s()Lcom/google/analytics/a/a/s;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/analytics/a/a/s;->d()Lcom/google/analytics/a/a/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/analytics/a/a/s;->a(Lcom/google/analytics/a/a/q;)Lcom/google/analytics/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method public a(F)Lcom/google/analytics/a/a/s;
    .locals 1

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    iput p1, p0, Lcom/google/analytics/a/a/s;->n:F

    return-object p0
.end method

.method public a(Lcom/google/analytics/a/a/c;)Lcom/google/analytics/a/a/s;
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit16 v0, v0, 0x800

    const/16 v1, 0x800

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->m:Lcom/google/analytics/a/a/c;

    invoke-static {}, Lcom/google/analytics/a/a/c;->a()Lcom/google/analytics/a/a/c;

    move-result-object v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->m:Lcom/google/analytics/a/a/c;

    invoke-static {v0}, Lcom/google/analytics/a/a/c;->a(Lcom/google/analytics/a/a/c;)Lcom/google/analytics/a/a/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/analytics/a/a/e;->a(Lcom/google/analytics/a/a/c;)Lcom/google/analytics/a/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/a/a/e;->d()Lcom/google/analytics/a/a/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->m:Lcom/google/analytics/a/a/c;

    :goto_0
    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    return-object p0

    :cond_0
    iput-object p1, p0, Lcom/google/analytics/a/a/s;->m:Lcom/google/analytics/a/a/c;

    goto :goto_0
.end method

.method public a(Lcom/google/analytics/a/a/q;)Lcom/google/analytics/a/a/s;
    .locals 2

    invoke-static {}, Lcom/google/analytics/a/a/q;->a()Lcom/google/analytics/a/a/q;

    move-result-object v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-static {p1}, Lcom/google/analytics/a/a/q;->b(Lcom/google/analytics/a/a/q;)Lcom/google/tagmanager/a/ai;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/tagmanager/a/ai;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->b:Lcom/google/tagmanager/a/ai;

    invoke-interface {v0}, Lcom/google/tagmanager/a/ai;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/google/analytics/a/a/q;->b(Lcom/google/analytics/a/a/q;)Lcom/google/tagmanager/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->b:Lcom/google/tagmanager/a/ai;

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_1
    :goto_1
    invoke-static {p1}, Lcom/google/analytics/a/a/q;->c(Lcom/google/analytics/a/a/q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {p1}, Lcom/google/analytics/a/a/q;->c(Lcom/google/analytics/a/a/q;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->c:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_2
    :goto_2
    invoke-static {p1}, Lcom/google/analytics/a/a/q;->d(Lcom/google/analytics/a/a/q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-static {p1}, Lcom/google/analytics/a/a/q;->d(Lcom/google/analytics/a/a/q;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->d:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_3
    :goto_3
    invoke-static {p1}, Lcom/google/analytics/a/a/q;->e(Lcom/google/analytics/a/a/q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p1}, Lcom/google/analytics/a/a/q;->e(Lcom/google/analytics/a/a/q;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->e:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_4
    :goto_4
    invoke-static {p1}, Lcom/google/analytics/a/a/q;->f(Lcom/google/analytics/a/a/q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p1}, Lcom/google/analytics/a/a/q;->f(Lcom/google/analytics/a/a/q;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->f:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_5
    :goto_5
    invoke-static {p1}, Lcom/google/analytics/a/a/q;->g(Lcom/google/analytics/a/a/q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-static {p1}, Lcom/google/analytics/a/a/q;->g(Lcom/google/analytics/a/a/q;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->g:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_6
    :goto_6
    invoke-static {p1}, Lcom/google/analytics/a/a/q;->h(Lcom/google/analytics/a/a/q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p1}, Lcom/google/analytics/a/a/q;->h(Lcom/google/analytics/a/a/q;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->h:Ljava/util/List;

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_7
    :goto_7
    invoke-virtual {p1}, Lcom/google/analytics/a/a/q;->v()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    invoke-static {p1}, Lcom/google/analytics/a/a/q;->i(Lcom/google/analytics/a/a/q;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->i:Ljava/lang/Object;

    :cond_8
    invoke-virtual {p1}, Lcom/google/analytics/a/a/q;->x()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    invoke-static {p1}, Lcom/google/analytics/a/a/q;->j(Lcom/google/analytics/a/a/q;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->j:Ljava/lang/Object;

    :cond_9
    invoke-virtual {p1}, Lcom/google/analytics/a/a/q;->z()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    invoke-static {p1}, Lcom/google/analytics/a/a/q;->k(Lcom/google/analytics/a/a/q;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->k:Ljava/lang/Object;

    :cond_a
    invoke-virtual {p1}, Lcom/google/analytics/a/a/q;->B()Z

    move-result v0

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    invoke-static {p1}, Lcom/google/analytics/a/a/q;->l(Lcom/google/analytics/a/a/q;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->l:Ljava/lang/Object;

    :cond_b
    invoke-virtual {p1}, Lcom/google/analytics/a/a/q;->D()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1}, Lcom/google/analytics/a/a/q;->E()Lcom/google/analytics/a/a/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/s;->a(Lcom/google/analytics/a/a/c;)Lcom/google/analytics/a/a/s;

    :cond_c
    invoke-virtual {p1}, Lcom/google/analytics/a/a/q;->F()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/google/analytics/a/a/q;->G()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/s;->a(F)Lcom/google/analytics/a/a/s;

    :cond_d
    invoke-virtual {p1}, Lcom/google/analytics/a/a/q;->H()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p1}, Lcom/google/analytics/a/a/q;->I()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/s;->a(Z)Lcom/google/analytics/a/a/s;

    :cond_e
    invoke-static {p1}, Lcom/google/analytics/a/a/q;->m(Lcom/google/analytics/a/a/q;)Lcom/google/tagmanager/a/ai;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/tagmanager/a/ai;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->p:Lcom/google/tagmanager/a/ai;

    invoke-interface {v0}, Lcom/google/tagmanager/a/ai;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p1}, Lcom/google/analytics/a/a/q;->m(Lcom/google/analytics/a/a/q;)Lcom/google/tagmanager/a/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/s;->p:Lcom/google/tagmanager/a/ai;

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit16 v0, v0, -0x4001

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_f
    :goto_8
    invoke-virtual {p1}, Lcom/google/analytics/a/a/q;->L()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lcom/google/analytics/a/a/q;->M()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/s;->f(I)Lcom/google/analytics/a/a/s;

    :cond_10
    invoke-virtual {p0}, Lcom/google/analytics/a/a/s;->r()Lcom/google/tagmanager/a/h;

    move-result-object v0

    invoke-static {p1}, Lcom/google/analytics/a/a/q;->n(Lcom/google/analytics/a/a/q;)Lcom/google/tagmanager/a/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/a/h;->a(Lcom/google/tagmanager/a/h;)Lcom/google/tagmanager/a/h;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/s;->a(Lcom/google/tagmanager/a/h;)Lcom/google/tagmanager/a/v;

    goto/16 :goto_0

    :cond_11
    invoke-direct {p0}, Lcom/google/analytics/a/a/s;->t()V

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->b:Lcom/google/tagmanager/a/ai;

    invoke-static {p1}, Lcom/google/analytics/a/a/q;->b(Lcom/google/analytics/a/a/q;)Lcom/google/tagmanager/a/ai;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/tagmanager/a/ai;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_1

    :cond_12
    invoke-direct {p0}, Lcom/google/analytics/a/a/s;->u()V

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->c:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/q;->c(Lcom/google/analytics/a/a/q;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    :cond_13
    invoke-direct {p0}, Lcom/google/analytics/a/a/s;->v()V

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->d:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/q;->d(Lcom/google/analytics/a/a/q;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_3

    :cond_14
    invoke-direct {p0}, Lcom/google/analytics/a/a/s;->w()V

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->e:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/q;->e(Lcom/google/analytics/a/a/q;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_4

    :cond_15
    invoke-direct {p0}, Lcom/google/analytics/a/a/s;->x()V

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->f:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/q;->f(Lcom/google/analytics/a/a/q;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_5

    :cond_16
    invoke-direct {p0}, Lcom/google/analytics/a/a/s;->y()V

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->g:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/q;->g(Lcom/google/analytics/a/a/q;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_6

    :cond_17
    invoke-direct {p0}, Lcom/google/analytics/a/a/s;->z()V

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->h:Ljava/util/List;

    invoke-static {p1}, Lcom/google/analytics/a/a/q;->h(Lcom/google/analytics/a/a/q;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_7

    :cond_18
    invoke-direct {p0}, Lcom/google/analytics/a/a/s;->A()V

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->p:Lcom/google/tagmanager/a/ai;

    invoke-static {p1}, Lcom/google/analytics/a/a/q;->m(Lcom/google/analytics/a/a/q;)Lcom/google/tagmanager/a/ai;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/tagmanager/a/ai;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_8
.end method

.method public a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/analytics/a/a/s;
    .locals 4

    const/4 v2, 0x0

    :try_start_0
    sget-object v0, Lcom/google/analytics/a/a/q;->a:Lcom/google/tagmanager/a/aq;

    invoke-interface {v0, p1, p2}, Lcom/google/tagmanager/a/aq;->b(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/google/tagmanager/a/af; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/s;->a(Lcom/google/analytics/a/a/q;)Lcom/google/analytics/a/a/s;

    :cond_0
    return-object p0

    :catch_0
    move-exception v0

    move-object v1, v0

    :try_start_1
    invoke-virtual {v1}, Lcom/google/tagmanager/a/af;->a()Lcom/google/tagmanager/a/am;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/q;
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

    invoke-virtual {p0, v1}, Lcom/google/analytics/a/a/s;->a(Lcom/google/analytics/a/a/q;)Lcom/google/analytics/a/a/s;

    :cond_1
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public a(Z)Lcom/google/analytics/a/a/s;
    .locals 1

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    iput-boolean p1, p0, Lcom/google/analytics/a/a/s;->o:Z

    return-object p0
.end method

.method public a(I)Lcom/google/analytics/b/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/c;

    return-object v0
.end method

.method public bridge synthetic a(Lcom/google/tagmanager/a/t;)Lcom/google/tagmanager/a/v;
    .locals 1

    check-cast p1, Lcom/google/analytics/a/a/q;

    invoke-virtual {p0, p1}, Lcom/google/analytics/a/a/s;->a(Lcom/google/analytics/a/a/q;)Lcom/google/analytics/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Lcom/google/analytics/a/a/m;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/m;

    return-object v0
.end method

.method public b()Lcom/google/analytics/a/a/q;
    .locals 1

    invoke-static {}, Lcom/google/analytics/a/a/q;->a()Lcom/google/analytics/a/a/q;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/tagmanager/a/b;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/a/a/s;->a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/analytics/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method public c(I)Lcom/google/analytics/a/a/i;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/i;

    return-object v0
.end method

.method public c()Lcom/google/analytics/a/a/q;
    .locals 2

    invoke-virtual {p0}, Lcom/google/analytics/a/a/s;->d()Lcom/google/analytics/a/a/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/analytics/a/a/q;->j()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/analytics/a/a/s;->a(Lcom/google/tagmanager/a/am;)Lcom/google/tagmanager/a/bf;

    move-result-object v0

    throw v0

    :cond_0
    return-object v0
.end method

.method public synthetic c(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/tagmanager/a/an;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/a/a/s;->a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/analytics/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/s;->a()Lcom/google/analytics/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Lcom/google/analytics/a/a/i;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/i;

    return-object v0
.end method

.method public d()Lcom/google/analytics/a/a/q;
    .locals 7

    const v6, 0x8000

    const/4 v0, 0x1

    new-instance v2, Lcom/google/analytics/a/a/q;

    const/4 v1, 0x0

    invoke-direct {v2, p0, v1}, Lcom/google/analytics/a/a/q;-><init>(Lcom/google/tagmanager/a/v;Lcom/google/analytics/a/a/b;)V

    iget v3, p0, Lcom/google/analytics/a/a/s;->a:I

    const/4 v1, 0x0

    iget v4, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v4, v4, 0x1

    if-ne v4, v0, :cond_0

    new-instance v4, Lcom/google/tagmanager/a/bg;

    iget-object v5, p0, Lcom/google/analytics/a/a/s;->b:Lcom/google/tagmanager/a/ai;

    invoke-direct {v4, v5}, Lcom/google/tagmanager/a/bg;-><init>(Lcom/google/tagmanager/a/ai;)V

    iput-object v4, p0, Lcom/google/analytics/a/a/s;->b:Lcom/google/tagmanager/a/ai;

    iget v4, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v4, v4, -0x2

    iput v4, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_0
    iget-object v4, p0, Lcom/google/analytics/a/a/s;->b:Lcom/google/tagmanager/a/ai;

    invoke-static {v2, v4}, Lcom/google/analytics/a/a/q;->a(Lcom/google/analytics/a/a/q;Lcom/google/tagmanager/a/ai;)Lcom/google/tagmanager/a/ai;

    iget v4, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v4, v4, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/google/analytics/a/a/s;->c:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/a/a/s;->c:Ljava/util/List;

    iget v4, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v4, v4, -0x3

    iput v4, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_1
    iget-object v4, p0, Lcom/google/analytics/a/a/s;->c:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/google/analytics/a/a/q;->a(Lcom/google/analytics/a/a/q;Ljava/util/List;)Ljava/util/List;

    iget v4, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v4, v4, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/google/analytics/a/a/s;->d:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/a/a/s;->d:Ljava/util/List;

    iget v4, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v4, v4, -0x5

    iput v4, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_2
    iget-object v4, p0, Lcom/google/analytics/a/a/s;->d:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/google/analytics/a/a/q;->b(Lcom/google/analytics/a/a/q;Ljava/util/List;)Ljava/util/List;

    iget v4, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v4, v4, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    iget-object v4, p0, Lcom/google/analytics/a/a/s;->e:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/a/a/s;->e:Ljava/util/List;

    iget v4, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v4, v4, -0x9

    iput v4, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_3
    iget-object v4, p0, Lcom/google/analytics/a/a/s;->e:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/google/analytics/a/a/q;->c(Lcom/google/analytics/a/a/q;Ljava/util/List;)Ljava/util/List;

    iget v4, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v4, v4, 0x10

    const/16 v5, 0x10

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lcom/google/analytics/a/a/s;->f:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/a/a/s;->f:Ljava/util/List;

    iget v4, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v4, v4, -0x11

    iput v4, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_4
    iget-object v4, p0, Lcom/google/analytics/a/a/s;->f:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/google/analytics/a/a/q;->d(Lcom/google/analytics/a/a/q;Ljava/util/List;)Ljava/util/List;

    iget v4, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v4, v4, 0x20

    const/16 v5, 0x20

    if-ne v4, v5, :cond_5

    iget-object v4, p0, Lcom/google/analytics/a/a/s;->g:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/a/a/s;->g:Ljava/util/List;

    iget v4, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v4, v4, -0x21

    iput v4, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_5
    iget-object v4, p0, Lcom/google/analytics/a/a/s;->g:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/google/analytics/a/a/q;->e(Lcom/google/analytics/a/a/q;Ljava/util/List;)Ljava/util/List;

    iget v4, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v4, v4, 0x40

    const/16 v5, 0x40

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/google/analytics/a/a/s;->h:Ljava/util/List;

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/google/analytics/a/a/s;->h:Ljava/util/List;

    iget v4, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit8 v4, v4, -0x41

    iput v4, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_6
    iget-object v4, p0, Lcom/google/analytics/a/a/s;->h:Ljava/util/List;

    invoke-static {v2, v4}, Lcom/google/analytics/a/a/q;->f(Lcom/google/analytics/a/a/q;Ljava/util/List;)Ljava/util/List;

    and-int/lit16 v4, v3, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_f

    :goto_0
    iget-object v1, p0, Lcom/google/analytics/a/a/s;->i:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/q;->a(Lcom/google/analytics/a/a/q;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x100

    const/16 v4, 0x100

    if-ne v1, v4, :cond_7

    or-int/lit8 v0, v0, 0x2

    :cond_7
    iget-object v1, p0, Lcom/google/analytics/a/a/s;->j:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/q;->b(Lcom/google/analytics/a/a/q;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x200

    const/16 v4, 0x200

    if-ne v1, v4, :cond_8

    or-int/lit8 v0, v0, 0x4

    :cond_8
    iget-object v1, p0, Lcom/google/analytics/a/a/s;->k:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/q;->c(Lcom/google/analytics/a/a/q;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x400

    const/16 v4, 0x400

    if-ne v1, v4, :cond_9

    or-int/lit8 v0, v0, 0x8

    :cond_9
    iget-object v1, p0, Lcom/google/analytics/a/a/s;->l:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/q;->d(Lcom/google/analytics/a/a/q;Ljava/lang/Object;)Ljava/lang/Object;

    and-int/lit16 v1, v3, 0x800

    const/16 v4, 0x800

    if-ne v1, v4, :cond_a

    or-int/lit8 v0, v0, 0x10

    :cond_a
    iget-object v1, p0, Lcom/google/analytics/a/a/s;->m:Lcom/google/analytics/a/a/c;

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/q;->a(Lcom/google/analytics/a/a/q;Lcom/google/analytics/a/a/c;)Lcom/google/analytics/a/a/c;

    and-int/lit16 v1, v3, 0x1000

    const/16 v4, 0x1000

    if-ne v1, v4, :cond_b

    or-int/lit8 v0, v0, 0x20

    :cond_b
    iget v1, p0, Lcom/google/analytics/a/a/s;->n:F

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/q;->a(Lcom/google/analytics/a/a/q;F)F

    and-int/lit16 v1, v3, 0x2000

    const/16 v4, 0x2000

    if-ne v1, v4, :cond_c

    or-int/lit8 v0, v0, 0x40

    :cond_c
    iget-boolean v1, p0, Lcom/google/analytics/a/a/s;->o:Z

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/q;->a(Lcom/google/analytics/a/a/q;Z)Z

    iget v1, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v4, 0x4000

    if-ne v1, v4, :cond_d

    new-instance v1, Lcom/google/tagmanager/a/bg;

    iget-object v4, p0, Lcom/google/analytics/a/a/s;->p:Lcom/google/tagmanager/a/ai;

    invoke-direct {v1, v4}, Lcom/google/tagmanager/a/bg;-><init>(Lcom/google/tagmanager/a/ai;)V

    iput-object v1, p0, Lcom/google/analytics/a/a/s;->p:Lcom/google/tagmanager/a/ai;

    iget v1, p0, Lcom/google/analytics/a/a/s;->a:I

    and-int/lit16 v1, v1, -0x4001

    iput v1, p0, Lcom/google/analytics/a/a/s;->a:I

    :cond_d
    iget-object v1, p0, Lcom/google/analytics/a/a/s;->p:Lcom/google/tagmanager/a/ai;

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/q;->b(Lcom/google/analytics/a/a/q;Lcom/google/tagmanager/a/ai;)Lcom/google/tagmanager/a/ai;

    and-int v1, v3, v6

    if-ne v1, v6, :cond_e

    or-int/lit16 v0, v0, 0x80

    :cond_e
    iget v1, p0, Lcom/google/analytics/a/a/s;->q:I

    invoke-static {v2, v1}, Lcom/google/analytics/a/a/q;->a(Lcom/google/analytics/a/a/q;I)I

    invoke-static {v2, v0}, Lcom/google/analytics/a/a/q;->b(Lcom/google/analytics/a/a/q;I)I

    return-object v2

    :cond_f
    move v0, v1

    goto :goto_0
.end method

.method public e(I)Lcom/google/analytics/a/a/i;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/i;

    return-object v0
.end method

.method public synthetic e()Lcom/google/tagmanager/a/t;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/s;->b()Lcom/google/analytics/a/a/q;

    move-result-object v0

    return-object v0
.end method

.method public f(I)Lcom/google/analytics/a/a/s;
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/s;->a:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/a/a/s;->a:I

    iput p1, p0, Lcom/google/analytics/a/a/s;->q:I

    return-object p0
.end method

.method public synthetic f()Lcom/google/tagmanager/a/v;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/s;->a()Lcom/google/analytics/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()Lcom/google/tagmanager/a/b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/s;->a()Lcom/google/analytics/a/a/s;

    move-result-object v0

    return-object v0
.end method

.method public synthetic h()Lcom/google/tagmanager/a/am;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/s;->c()Lcom/google/analytics/a/a/q;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/analytics/a/a/s;->i()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/s;->a(I)Lcom/google/analytics/b/a/a/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/b/a/a/c;->j()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/google/analytics/a/a/s;->k()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/s;->b(I)Lcom/google/analytics/a/a/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/a/a/m;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/google/analytics/a/a/s;->l()I

    move-result v2

    if-ge v0, v2, :cond_4

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/s;->c(I)Lcom/google/analytics/a/a/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/a/a/i;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_4
    invoke-virtual {p0}, Lcom/google/analytics/a/a/s;->m()I

    move-result v2

    if-ge v0, v2, :cond_5

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/s;->d(I)Lcom/google/analytics/a/a/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/a/a/i;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/google/analytics/a/a/s;->n()I

    move-result v2

    if-ge v0, v2, :cond_6

    invoke-virtual {p0, v0}, Lcom/google/analytics/a/a/s;->e(I)Lcom/google/analytics/a/a/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/analytics/a/a/i;->j()Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public m()I
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public n()I
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/a/a/s;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic p()Lcom/google/tagmanager/a/am;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/s;->b()Lcom/google/analytics/a/a/q;

    move-result-object v0

    return-object v0
.end method
