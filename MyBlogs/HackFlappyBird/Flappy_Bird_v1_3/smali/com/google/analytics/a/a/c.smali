.class public final Lcom/google/analytics/a/a/c;
.super Lcom/google/tagmanager/a/t;

# interfaces
.implements Lcom/google/analytics/a/a/h;


# static fields
.field public static a:Lcom/google/tagmanager/a/aq;

.field private static final c:Lcom/google/analytics/a/a/c;

.field private static volatile k:Lcom/google/tagmanager/a/ap;


# instance fields
.field private final d:Lcom/google/tagmanager/a/h;

.field private e:I

.field private f:Lcom/google/analytics/a/a/f;

.field private g:I

.field private h:I

.field private i:B

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/analytics/a/a/d;

    invoke-direct {v0}, Lcom/google/analytics/a/a/d;-><init>()V

    sput-object v0, Lcom/google/analytics/a/a/c;->a:Lcom/google/tagmanager/a/aq;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/analytics/a/a/c;->k:Lcom/google/tagmanager/a/ap;

    new-instance v0, Lcom/google/analytics/a/a/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/analytics/a/a/c;-><init>(Z)V

    sput-object v0, Lcom/google/analytics/a/a/c;->c:Lcom/google/analytics/a/a/c;

    sget-object v0, Lcom/google/analytics/a/a/c;->c:Lcom/google/analytics/a/a/c;

    invoke-direct {v0}, Lcom/google/analytics/a/a/c;->q()V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/tagmanager/a/t;-><init>()V

    iput-byte v0, p0, Lcom/google/analytics/a/a/c;->i:B

    iput v0, p0, Lcom/google/analytics/a/a/c;->j:I

    invoke-direct {p0}, Lcom/google/analytics/a/a/c;->q()V

    invoke-static {}, Lcom/google/tagmanager/a/h;->i()Lcom/google/tagmanager/a/j;

    move-result-object v2

    invoke-static {v2}, Lcom/google/tagmanager/a/m;->a(Ljava/io/OutputStream;)Lcom/google/tagmanager/a/m;

    move-result-object v3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->a()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    invoke-virtual {p0, p1, v3, p2, v4}, Lcom/google/analytics/a/a/c;->a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/m;Lcom/google/tagmanager/a/o;I)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_0
    move v0, v1

    goto :goto_0

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->n()I

    move-result v5

    invoke-static {v5}, Lcom/google/analytics/a/a/f;->a(I)Lcom/google/analytics/a/a/f;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v3, v4}, Lcom/google/tagmanager/a/m;->d(I)V

    invoke-virtual {v3, v5}, Lcom/google/tagmanager/a/m;->d(I)V
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

    :try_start_2
    invoke-virtual {v3}, Lcom/google/tagmanager/a/m;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    invoke-virtual {v2}, Lcom/google/tagmanager/a/j;->a()Lcom/google/tagmanager/a/h;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/c;->d:Lcom/google/tagmanager/a/h;

    :goto_1
    invoke-virtual {p0}, Lcom/google/analytics/a/a/c;->R()V

    throw v0

    :cond_1
    :try_start_3
    iget v4, p0, Lcom/google/analytics/a/a/c;->e:I

    or-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/google/analytics/a/a/c;->e:I

    iput-object v6, p0, Lcom/google/analytics/a/a/c;->f:Lcom/google/analytics/a/a/f;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lcom/google/tagmanager/a/af; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_4
    new-instance v1, Lcom/google/tagmanager/a/af;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/tagmanager/a/af;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/tagmanager/a/af;->a(Lcom/google/tagmanager/a/am;)Lcom/google/tagmanager/a/af;

    move-result-object v0

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :sswitch_2
    :try_start_5
    iget v4, p0, Lcom/google/analytics/a/a/c;->e:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/google/analytics/a/a/c;->e:I

    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->f()I

    move-result v4

    iput v4, p0, Lcom/google/analytics/a/a/c;->g:I

    goto :goto_0

    :sswitch_3
    iget v4, p0, Lcom/google/analytics/a/a/c;->e:I

    or-int/lit8 v4, v4, 0x4

    iput v4, p0, Lcom/google/analytics/a/a/c;->e:I

    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->f()I

    move-result v4

    iput v4, p0, Lcom/google/analytics/a/a/c;->h:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lcom/google/tagmanager/a/af; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :cond_2
    :try_start_6
    invoke-virtual {v3}, Lcom/google/tagmanager/a/m;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    invoke-virtual {v2}, Lcom/google/tagmanager/a/j;->a()Lcom/google/tagmanager/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/c;->d:Lcom/google/tagmanager/a/h;

    :goto_2
    invoke-virtual {p0}, Lcom/google/analytics/a/a/c;->R()V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v2}, Lcom/google/tagmanager/a/j;->a()Lcom/google/tagmanager/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/c;->d:Lcom/google/tagmanager/a/h;

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Lcom/google/tagmanager/a/j;->a()Lcom/google/tagmanager/a/h;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/c;->d:Lcom/google/tagmanager/a/h;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v2}, Lcom/google/tagmanager/a/j;->a()Lcom/google/tagmanager/a/h;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/c;->d:Lcom/google/tagmanager/a/h;

    goto :goto_1

    :catchall_2
    move-exception v0

    invoke-virtual {v2}, Lcom/google/tagmanager/a/j;->a()Lcom/google/tagmanager/a/h;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/a/a/c;->d:Lcom/google/tagmanager/a/h;

    throw v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;Lcom/google/analytics/a/a/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/analytics/a/a/c;-><init>(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/a/v;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/tagmanager/a/t;-><init>(Lcom/google/tagmanager/a/v;)V

    iput-byte v0, p0, Lcom/google/analytics/a/a/c;->i:B

    iput v0, p0, Lcom/google/analytics/a/a/c;->j:I

    invoke-virtual {p1}, Lcom/google/tagmanager/a/v;->r()Lcom/google/tagmanager/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/a/a/c;->d:Lcom/google/tagmanager/a/h;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/a/v;Lcom/google/analytics/a/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/analytics/a/a/c;-><init>(Lcom/google/tagmanager/a/v;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/tagmanager/a/t;-><init>()V

    iput-byte v0, p0, Lcom/google/analytics/a/a/c;->i:B

    iput v0, p0, Lcom/google/analytics/a/a/c;->j:I

    sget-object v0, Lcom/google/tagmanager/a/h;->a:Lcom/google/tagmanager/a/h;

    iput-object v0, p0, Lcom/google/analytics/a/a/c;->d:Lcom/google/tagmanager/a/h;

    return-void
.end method

.method static synthetic a(Lcom/google/analytics/a/a/c;I)I
    .locals 0

    iput p1, p0, Lcom/google/analytics/a/a/c;->g:I

    return p1
.end method

.method public static a()Lcom/google/analytics/a/a/c;
    .locals 1

    sget-object v0, Lcom/google/analytics/a/a/c;->c:Lcom/google/analytics/a/a/c;

    return-object v0
.end method

.method public static a(Lcom/google/analytics/a/a/c;)Lcom/google/analytics/a/a/e;
    .locals 1

    invoke-static {}, Lcom/google/analytics/a/a/c;->k()Lcom/google/analytics/a/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/a/a/e;->a(Lcom/google/analytics/a/a/c;)Lcom/google/analytics/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/analytics/a/a/c;Lcom/google/analytics/a/a/f;)Lcom/google/analytics/a/a/f;
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/a/a/c;->f:Lcom/google/analytics/a/a/f;

    return-object p1
.end method

.method static synthetic b(Lcom/google/analytics/a/a/c;I)I
    .locals 0

    iput p1, p0, Lcom/google/analytics/a/a/c;->h:I

    return p1
.end method

.method static synthetic b(Lcom/google/analytics/a/a/c;)Lcom/google/tagmanager/a/h;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/a/a/c;->d:Lcom/google/tagmanager/a/h;

    return-object v0
.end method

.method static synthetic c(Lcom/google/analytics/a/a/c;I)I
    .locals 0

    iput p1, p0, Lcom/google/analytics/a/a/c;->e:I

    return p1
.end method

.method public static k()Lcom/google/analytics/a/a/e;
    .locals 1

    invoke-static {}, Lcom/google/analytics/a/a/e;->i()Lcom/google/analytics/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method private q()V
    .locals 2

    const/4 v1, 0x0

    sget-object v0, Lcom/google/analytics/a/a/f;->a:Lcom/google/analytics/a/a/f;

    iput-object v0, p0, Lcom/google/analytics/a/a/c;->f:Lcom/google/analytics/a/a/f;

    iput v1, p0, Lcom/google/analytics/a/a/c;->g:I

    iput v1, p0, Lcom/google/analytics/a/a/c;->h:I

    return-void
.end method


# virtual methods
.method public b()Lcom/google/analytics/a/a/c;
    .locals 1

    sget-object v0, Lcom/google/analytics/a/a/c;->c:Lcom/google/analytics/a/a/c;

    return-object v0
.end method

.method public c()Lcom/google/tagmanager/a/aq;
    .locals 1

    sget-object v0, Lcom/google/analytics/a/a/c;->a:Lcom/google/tagmanager/a/aq;

    return-object v0
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/analytics/a/a/c;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Lcom/google/analytics/a/a/f;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/a/a/c;->f:Lcom/google/analytics/a/a/f;

    return-object v0
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
    instance-of v0, p1, Lcom/google/analytics/a/a/c;

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/analytics/a/a/c;

    invoke-virtual {p0}, Lcom/google/analytics/a/a/c;->d()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/a/a/c;->d()Z

    move-result v3

    if-ne v0, v3, :cond_6

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/google/analytics/a/a/c;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/google/analytics/a/a/c;->e()Lcom/google/analytics/a/a/f;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/analytics/a/a/c;->e()Lcom/google/analytics/a/a/f;

    move-result-object v3

    if-ne v0, v3, :cond_7

    move v0, v1

    :cond_3
    :goto_2
    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/google/analytics/a/a/c;->f()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/a/a/c;->f()Z

    move-result v3

    if-ne v0, v3, :cond_8

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/google/analytics/a/a/c;->f()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/google/analytics/a/a/c;->g()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/a/a/c;->g()I

    move-result v3

    if-ne v0, v3, :cond_9

    move v0, v1

    :cond_4
    :goto_4
    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/google/analytics/a/a/c;->h()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/a/a/c;->h()Z

    move-result v3

    if-ne v0, v3, :cond_a

    move v0, v1

    :goto_5
    invoke-virtual {p0}, Lcom/google/analytics/a/a/c;->h()Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/google/analytics/a/a/c;->i()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/a/a/c;->i()I

    move-result v3

    if-eq v0, v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    move v0, v2

    goto :goto_1

    :cond_7
    move v0, v2

    goto :goto_2

    :cond_8
    move v0, v2

    goto :goto_3

    :cond_9
    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v2

    goto :goto_5

    :cond_b
    move v1, v0

    goto :goto_0
.end method

.method public f()Z
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/c;->e:I

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

.method public g()I
    .locals 1

    iget v0, p0, Lcom/google/analytics/a/a/c;->g:I

    return v0
.end method

.method public h()Z
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/c;->e:I

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

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/google/analytics/a/a/c;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/analytics/a/a/c;->b:I

    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/google/analytics/a/a/c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/google/analytics/a/a/c;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/analytics/a/a/c;->e()Lcom/google/analytics/a/a/f;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/a/ac;->a(Lcom/google/tagmanager/a/ad;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/a/a/c;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/analytics/a/a/c;->g()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/analytics/a/a/c;->h()Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/analytics/a/a/c;->i()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/google/analytics/a/a/c;->d:Lcom/google/tagmanager/a/h;

    invoke-virtual {v1}, Lcom/google/tagmanager/a/h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/a/a/c;->b:I

    goto :goto_0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/google/analytics/a/a/c;->h:I

    return v0
.end method

.method public final j()Z
    .locals 3

    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/google/analytics/a/a/c;->i:B

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput-byte v0, p0, Lcom/google/analytics/a/a/c;->i:B

    goto :goto_0
.end method

.method public l()Lcom/google/analytics/a/a/e;
    .locals 1

    invoke-static {}, Lcom/google/analytics/a/a/c;->k()Lcom/google/analytics/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public m()Lcom/google/analytics/a/a/e;
    .locals 1

    invoke-static {p0}, Lcom/google/analytics/a/a/c;->a(Lcom/google/analytics/a/a/c;)Lcom/google/analytics/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic n()Lcom/google/tagmanager/a/an;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/c;->m()Lcom/google/analytics/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o()Lcom/google/tagmanager/a/an;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/c;->l()Lcom/google/analytics/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic p()Lcom/google/tagmanager/a/am;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/a/a/c;->b()Lcom/google/analytics/a/a/c;

    move-result-object v0

    return-object v0
.end method
