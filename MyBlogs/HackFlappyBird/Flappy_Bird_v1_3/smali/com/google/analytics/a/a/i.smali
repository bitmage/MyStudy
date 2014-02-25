.class public final Lcom/google/analytics/a/a/i;
.super Lcom/google/tagmanager/a/t;

# interfaces
.implements Lcom/google/analytics/a/a/l;


# static fields
.field public static a:Lcom/google/tagmanager/a/aq;

.field private static final c:Lcom/google/analytics/a/a/i;

.field private static volatile m:Lcom/google/tagmanager/a/ap;


# instance fields
.field private final d:Lcom/google/tagmanager/a/h;

.field private e:I

.field private f:Ljava/util/List;

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:B

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/analytics/a/a/j;

    invoke-direct {v0}, Lcom/google/analytics/a/a/j;-><init>()V

    sput-object v0, Lcom/google/analytics/a/a/i;->a:Lcom/google/tagmanager/a/aq;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/analytics/a/a/i;->m:Lcom/google/tagmanager/a/ap;

    new-instance v0, Lcom/google/analytics/a/a/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/analytics/a/a/i;-><init>(Z)V

    sput-object v0, Lcom/google/analytics/a/a/i;->c:Lcom/google/analytics/a/a/i;

    sget-object v0, Lcom/google/analytics/a/a/i;->c:Lcom/google/analytics/a/a/i;

    invoke-direct {v0}, Lcom/google/analytics/a/a/i;->u()V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)V
    .locals 8

    const/4 v0, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/google/tagmanager/a/t;-><init>()V

    iput-byte v2, p0, Lcom/google/analytics/a/a/i;->k:B

    iput v2, p0, Lcom/google/analytics/a/a/i;->l:I

    invoke-direct {p0}, Lcom/google/analytics/a/a/i;->u()V

    invoke-static {}, Lcom/google/tagmanager/a/h;->i()Lcom/google/tagmanager/a/j;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/a/m;->a(Ljava/io/OutputStream;)Lcom/google/tagmanager/a/m;

    move-result-object v4

    move v2, v0

    :cond_0
    :goto_0
    if-nez v0, :cond_5

    :try_start_0
    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->a()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    invoke-virtual {p0, p1, v4, p2, v5}, Lcom/google/analytics/a/a/i;->a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/m;Lcom/google/tagmanager/a/o;I)Z

    move-result v5

    if-nez v5, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    iget v5, p0, Lcom/google/analytics/a/a/i;->e:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/analytics/a/a/i;->e:I

    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->i()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/analytics/a/a/i;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/tagmanager/a/af; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0, p0}, Lcom/google/tagmanager/a/af;->a(Lcom/google/tagmanager/a/am;)Lcom/google/tagmanager/a/af;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/google/analytics/a/a/i;->f:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/i;->f:Ljava/util/List;

    :cond_1
    :try_start_2
    invoke-virtual {v4}, Lcom/google/tagmanager/a/m;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    invoke-virtual {v3}, Lcom/google/tagmanager/a/j;->a()Lcom/google/tagmanager/a/h;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/i;->d:Lcom/google/tagmanager/a/h;

    :goto_1
    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->R()V

    throw v0

    :sswitch_2
    :try_start_3
    iget v5, p0, Lcom/google/analytics/a/a/i;->e:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/analytics/a/a/i;->e:I

    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->f()I

    move-result v5

    iput v5, p0, Lcom/google/analytics/a/a/i;->g:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/tagmanager/a/af; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v5, Lcom/google/tagmanager/a/af;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/google/tagmanager/a/af;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Lcom/google/tagmanager/a/af;->a(Lcom/google/tagmanager/a/am;)Lcom/google/tagmanager/a/af;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :sswitch_3
    and-int/lit8 v5, v2, 0x1

    if-eq v5, v1, :cond_2

    :try_start_5
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/google/analytics/a/a/i;->f:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    :cond_2
    iget-object v5, p0, Lcom/google/analytics/a/a/i;->f:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->f()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :sswitch_4
    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->s()I

    move-result v5

    invoke-virtual {p1, v5}, Lcom/google/tagmanager/a/k;->c(I)I

    move-result v5

    and-int/lit8 v6, v2, 0x1

    if-eq v6, v1, :cond_3

    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->w()I

    move-result v6

    if-lez v6, :cond_3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/google/analytics/a/a/i;->f:Ljava/util/List;

    or-int/lit8 v2, v2, 0x1

    :cond_3
    :goto_2
    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->w()I

    move-result v6

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/google/analytics/a/a/i;->f:Ljava/util/List;

    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->f()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v5}, Lcom/google/tagmanager/a/k;->d(I)V

    goto/16 :goto_0

    :sswitch_5
    iget v5, p0, Lcom/google/analytics/a/a/i;->e:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/analytics/a/a/i;->e:I

    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->f()I

    move-result v5

    iput v5, p0, Lcom/google/analytics/a/a/i;->h:I

    goto/16 :goto_0

    :sswitch_6
    iget v5, p0, Lcom/google/analytics/a/a/i;->e:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/analytics/a/a/i;->e:I

    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->i()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/analytics/a/a/i;->i:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/tagmanager/a/af; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    :cond_5
    and-int/lit8 v0, v2, 0x1

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/google/analytics/a/a/i;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/i;->f:Ljava/util/List;

    :cond_6
    :try_start_6
    invoke-virtual {v4}, Lcom/google/tagmanager/a/m;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    invoke-virtual {v3}, Lcom/google/tagmanager/a/j;->a()Lcom/google/tagmanager/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/i;->d:Lcom/google/tagmanager/a/h;

    :goto_3
    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->R()V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v3}, Lcom/google/tagmanager/a/j;->a()Lcom/google/tagmanager/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/i;->d:Lcom/google/tagmanager/a/h;

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-virtual {v3}, Lcom/google/tagmanager/a/j;->a()Lcom/google/tagmanager/a/h;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/i;->d:Lcom/google/tagmanager/a/h;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v3}, Lcom/google/tagmanager/a/j;->a()Lcom/google/tagmanager/a/h;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/i;->d:Lcom/google/tagmanager/a/h;

    goto/16 :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v3}, Lcom/google/tagmanager/a/j;->a()Lcom/google/tagmanager/a/h;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/i;->d:Lcom/google/tagmanager/a/h;

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x1a -> :sswitch_4
        0x20 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;Lcom/google/analytics/a/a/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/analytics/a/a/i;-><init>(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/a/v;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/tagmanager/a/t;-><init>(Lcom/google/tagmanager/a/v;)V

    iput-byte v0, p0, Lcom/google/analytics/a/a/i;->k:B

    iput v0, p0, Lcom/google/analytics/a/a/i;->l:I

    invoke-virtual {p1}, Lcom/google/tagmanager/a/v;->r()Lcom/google/tagmanager/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/i;->d:Lcom/google/tagmanager/a/h;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/a/v;Lcom/google/analytics/a/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/analytics/a/a/i;-><init>(Lcom/google/tagmanager/a/v;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/tagmanager/a/t;-><init>()V

    iput-byte v0, p0, Lcom/google/analytics/a/a/i;->k:B

    iput v0, p0, Lcom/google/analytics/a/a/i;->l:I

    sget-object v0, Lcom/google/tagmanager/a/h;->a:Lcom/google/tagmanager/a/h;

    iput-object v0, p0, Lcom/google/analytics/a/a/i;->d:Lcom/google/tagmanager/a/h;

    return-void
.end method

.method static synthetic a(Lcom/google/analytics/a/a/i;I)I
    .locals 0

    iput p1, p0, Lcom/google/analytics/a/a/i;->g:I

    return p1
.end method

.method public static a()Lcom/google/analytics/a/a/i;
    .locals 1

    sget-object v0, Lcom/google/analytics/a/a/i;->c:Lcom/google/analytics/a/a/i;

    return-object v0
.end method

.method public static a(Lcom/google/analytics/a/a/i;)Lcom/google/analytics/a/a/k;
    .locals 1

    invoke-static {}, Lcom/google/analytics/a/a/i;->r()Lcom/google/analytics/a/a/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/a/a/k;->a(Lcom/google/analytics/a/a/i;)Lcom/google/analytics/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/analytics/a/a/i;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/a/a/i;->f:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/google/analytics/a/a/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/analytics/a/a/i;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/google/analytics/a/a/i;I)I
    .locals 0

    iput p1, p0, Lcom/google/analytics/a/a/i;->h:I

    return p1
.end method

.method static synthetic b(Lcom/google/analytics/a/a/i;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/a/a/i;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/google/analytics/a/a/i;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/analytics/a/a/i;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/google/analytics/a/a/i;I)I
    .locals 0

    iput p1, p0, Lcom/google/analytics/a/a/i;->e:I

    return p1
.end method

.method static synthetic c(Lcom/google/analytics/a/a/i;)Lcom/google/tagmanager/a/h;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/a/a/i;->d:Lcom/google/tagmanager/a/h;

    return-object v0
.end method

.method public static r()Lcom/google/analytics/a/a/k;
    .locals 1

    invoke-static {}, Lcom/google/analytics/a/a/k;->k()Lcom/google/analytics/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method private u()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/i;->f:Ljava/util/List;

    iput v1, p0, Lcom/google/analytics/a/a/i;->g:I

    iput v1, p0, Lcom/google/analytics/a/a/i;->h:I

    iput-boolean v1, p0, Lcom/google/analytics/a/a/i;->i:Z

    iput-boolean v1, p0, Lcom/google/analytics/a/a/i;->j:Z

    return-void
.end method


# virtual methods
.method public b()Lcom/google/analytics/a/a/i;
    .locals 1

    sget-object v0, Lcom/google/analytics/a/a/i;->c:Lcom/google/analytics/a/a/i;

    return-object v0
.end method

.method public c()Lcom/google/tagmanager/a/aq;
    .locals 1

    sget-object v0, Lcom/google/analytics/a/a/i;->a:Lcom/google/tagmanager/a/aq;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/a/a/i;->f:Ljava/util/List;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/a/a/i;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v0, p1, Lcom/google/analytics/a/a/i;

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/analytics/a/a/i;

    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/analytics/a/a/i;->d()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->f()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/a/a/i;->f()Z

    move-result v3

    if-ne v0, v3, :cond_8

    move v0, v1

    :goto_2
    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->f()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->g()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/a/a/i;->g()I

    move-result v3

    if-ne v0, v3, :cond_9

    move v0, v1

    :cond_3
    :goto_3
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->h()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/a/a/i;->h()Z

    move-result v3

    if-ne v0, v3, :cond_a

    move v0, v1

    :goto_4
    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->h()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->i()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/a/a/i;->i()I

    move-result v3

    if-ne v0, v3, :cond_b

    move v0, v1

    :cond_4
    :goto_5
    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->k()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/a/a/i;->k()Z

    move-result v3

    if-ne v0, v3, :cond_c

    move v0, v1

    :goto_6
    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->k()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->l()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/a/a/i;->l()Z

    move-result v3

    if-ne v0, v3, :cond_d

    move v0, v1

    :cond_5
    :goto_7
    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->m()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/a/a/i;->m()Z

    move-result v3

    if-ne v0, v3, :cond_e

    move v0, v1

    :goto_8
    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->m()Z

    move-result v3

    if-eqz v3, :cond_f

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->q()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/a/a/i;->q()Z

    move-result v3

    if-eq v0, v3, :cond_0

    :cond_6
    move v1, v2

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto/16 :goto_1

    :cond_8
    move v0, v2

    goto :goto_2

    :cond_9
    move v0, v2

    goto :goto_3

    :cond_a
    move v0, v2

    goto :goto_4

    :cond_b
    move v0, v2

    goto :goto_5

    :cond_c
    move v0, v2

    goto :goto_6

    :cond_d
    move v0, v2

    goto :goto_7

    :cond_e
    move v0, v2

    goto :goto_8

    :cond_f
    move v1, v0

    goto/16 :goto_0
.end method

.method public f()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/analytics/a/a/i;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/google/analytics/a/a/i;->g:I

    return v0
.end method

.method public h()Z
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/i;->e:I

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

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/i;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/analytics/a/a/i;->b:I

    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/google/analytics/a/a/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->e()I

    move-result v1

    if-lez v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->g()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->i()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->l()Z

    move-result v1

    invoke-static {v1}, Lcom/google/tagmanager/a/ac;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->m()Z

    move-result v1

    if-eqz v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->q()Z

    move-result v1

    invoke-static {v1}, Lcom/google/tagmanager/a/ac;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/google/analytics/a/a/i;->d:Lcom/google/tagmanager/a/h;

    invoke-virtual {v1}, Lcom/google/tagmanager/a/h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/a/a/i;->b:I

    goto :goto_0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/google/analytics/a/a/i;->h:I

    return v0
.end method

.method public final j()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-byte v2, p0, Lcom/google/analytics/a/a/i;->k:B

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->f()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lcom/google/analytics/a/a/i;->k:B

    move v0, v1

    goto :goto_0

    :cond_2
    iput-byte v0, p0, Lcom/google/analytics/a/a/i;->k:B

    goto :goto_0
.end method

.method public k()Z
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/i;->e:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/analytics/a/a/i;->i:Z

    return v0
.end method

.method public m()Z
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/i;->e:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic n()Lcom/google/tagmanager/a/an;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->t()Lcom/google/analytics/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o()Lcom/google/tagmanager/a/an;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->s()Lcom/google/analytics/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public synthetic p()Lcom/google/tagmanager/a/am;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/i;->b()Lcom/google/analytics/a/a/i;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/analytics/a/a/i;->j:Z

    return v0
.end method

.method public s()Lcom/google/analytics/a/a/k;
    .locals 1

    invoke-static {}, Lcom/google/analytics/a/a/i;->r()Lcom/google/analytics/a/a/k;

    move-result-object v0

    return-object v0
.end method

.method public t()Lcom/google/analytics/a/a/k;
    .locals 1

    invoke-static {p0}, Lcom/google/analytics/a/a/i;->a(Lcom/google/analytics/a/a/i;)Lcom/google/analytics/a/a/k;

    move-result-object v0

    return-object v0
.end method
