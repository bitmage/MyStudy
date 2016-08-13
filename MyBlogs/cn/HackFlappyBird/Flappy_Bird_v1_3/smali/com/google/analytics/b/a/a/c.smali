.class public final Lcom/google/analytics/b/a/a/c;
.super Lcom/google/tagmanager/a/x;

# interfaces
.implements Lcom/google/analytics/b/a/a/j;


# static fields
.field public static a:Lcom/google/tagmanager/a/aq;

.field private static final c:Lcom/google/analytics/b/a/a/c;

.field private static volatile t:Lcom/google/tagmanager/a/ap;


# instance fields
.field private final d:Lcom/google/tagmanager/a/h;

.field private e:I

.field private f:Lcom/google/analytics/b/a/a/h;

.field private g:Ljava/lang/Object;

.field private h:Ljava/util/List;

.field private i:Ljava/util/List;

.field private j:Ljava/util/List;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;

.field private m:J

.field private n:Z

.field private o:Ljava/util/List;

.field private p:Ljava/util/List;

.field private q:Z

.field private r:B

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/analytics/b/a/a/d;

    invoke-direct {v0}, Lcom/google/analytics/b/a/a/d;-><init>()V

    sput-object v0, Lcom/google/analytics/b/a/a/c;->a:Lcom/google/tagmanager/a/aq;

    const/4 v0, 0x0

    sput-object v0, Lcom/google/analytics/b/a/a/c;->t:Lcom/google/tagmanager/a/ap;

    new-instance v0, Lcom/google/analytics/b/a/a/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/analytics/b/a/a/c;-><init>(Z)V

    sput-object v0, Lcom/google/analytics/b/a/a/c;->c:Lcom/google/analytics/b/a/a/c;

    sget-object v0, Lcom/google/analytics/b/a/a/c;->c:Lcom/google/analytics/b/a/a/c;

    invoke-direct {v0}, Lcom/google/analytics/b/a/a/c;->J()V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)V
    .locals 10

    invoke-direct {p0}, Lcom/google/tagmanager/a/x;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/google/analytics/b/a/a/c;->r:B

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/analytics/b/a/a/c;->s:I

    invoke-direct {p0}, Lcom/google/analytics/b/a/a/c;->J()V

    const/4 v2, 0x0

    invoke-static {}, Lcom/google/tagmanager/a/h;->i()Lcom/google/tagmanager/a/j;

    move-result-object v3

    invoke-static {v3}, Lcom/google/tagmanager/a/m;->a(Ljava/io/OutputStream;)Lcom/google/tagmanager/a/m;

    move-result-object v4

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_b

    :try_start_0
    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->a()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    invoke-virtual {p0, p1, v4, p2, v5}, Lcom/google/analytics/b/a/a/c;->a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/m;Lcom/google/tagmanager/a/o;I)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    move v1, v2

    :goto_1
    move v2, v1

    move v1, v0

    goto :goto_0

    :sswitch_0
    const/4 v0, 0x1

    move v1, v2

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->n()I

    move-result v0

    invoke-static {v0}, Lcom/google/analytics/b/a/a/h;->a(I)Lcom/google/analytics/b/a/a/h;

    move-result-object v6

    if-nez v6, :cond_0

    invoke-virtual {v4, v5}, Lcom/google/tagmanager/a/m;->d(I)V

    invoke-virtual {v4, v0}, Lcom/google/tagmanager/a/m;->d(I)V

    move v0, v1

    move v1, v2

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/google/analytics/b/a/a/c;->e:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/analytics/b/a/a/c;->e:I

    iput-object v6, p0, Lcom/google/analytics/b/a/a/c;->f:Lcom/google/analytics/b/a/a/h;

    move v0, v1

    move v1, v2

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->l()Lcom/google/tagmanager/a/h;

    move-result-object v0

    iget v5, p0, Lcom/google/analytics/b/a/a/c;->e:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/analytics/b/a/a/c;->e:I

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->g:Ljava/lang/Object;

    move v0, v1

    move v1, v2

    goto :goto_1

    :sswitch_3
    and-int/lit8 v0, v2, 0x4

    const/4 v5, 0x4

    if-eq v0, v5, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->h:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lcom/google/tagmanager/a/af; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    or-int/lit8 v0, v2, 0x4

    :goto_2
    :try_start_1
    iget-object v2, p0, Lcom/google/analytics/b/a/a/c;->h:Ljava/util/List;

    sget-object v5, Lcom/google/analytics/b/a/a/c;->a:Lcom/google/tagmanager/a/aq;

    invoke-virtual {p1, v5, p2}, Lcom/google/tagmanager/a/k;->a(Lcom/google/tagmanager/a/aq;Lcom/google/tagmanager/a/o;)Lcom/google/tagmanager/a/am;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Lcom/google/tagmanager/a/af; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_1

    :sswitch_4
    and-int/lit8 v0, v2, 0x8

    const/16 v5, 0x8

    if-eq v0, v5, :cond_14

    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->i:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/tagmanager/a/af; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    or-int/lit8 v0, v2, 0x8

    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/google/analytics/b/a/a/c;->i:Ljava/util/List;

    sget-object v5, Lcom/google/analytics/b/a/a/c;->a:Lcom/google/tagmanager/a/aq;

    invoke-virtual {p1, v5, p2}, Lcom/google/tagmanager/a/k;->a(Lcom/google/tagmanager/a/aq;Lcom/google/tagmanager/a/o;)Lcom/google/tagmanager/a/am;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Lcom/google/tagmanager/a/af; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move v9, v1

    move v1, v0

    move v0, v9

    goto :goto_1

    :sswitch_5
    and-int/lit8 v0, v2, 0x10

    const/16 v5, 0x10

    if-eq v0, v5, :cond_13

    :try_start_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->j:Ljava/util/List;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lcom/google/tagmanager/a/af; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    or-int/lit8 v0, v2, 0x10

    :goto_4
    :try_start_5
    iget-object v2, p0, Lcom/google/analytics/b/a/a/c;->j:Ljava/util/List;

    sget-object v5, Lcom/google/analytics/b/a/a/c;->a:Lcom/google/tagmanager/a/aq;

    invoke-virtual {p1, v5, p2}, Lcom/google/tagmanager/a/k;->a(Lcom/google/tagmanager/a/aq;Lcom/google/tagmanager/a/o;)Lcom/google/tagmanager/a/am;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3
    .catch Lcom/google/tagmanager/a/af; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    move v9, v1

    move v1, v0

    move v0, v9

    goto/16 :goto_1

    :sswitch_6
    :try_start_6
    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->l()Lcom/google/tagmanager/a/h;

    move-result-object v0

    iget v5, p0, Lcom/google/analytics/b/a/a/c;->e:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/analytics/b/a/a/c;->e:I

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->k:Ljava/lang/Object;

    move v0, v1

    move v1, v2

    goto/16 :goto_1

    :sswitch_7
    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->l()Lcom/google/tagmanager/a/h;

    move-result-object v0

    iget v5, p0, Lcom/google/analytics/b/a/a/c;->e:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/analytics/b/a/a/c;->e:I

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->l:Ljava/lang/Object;

    move v0, v1

    move v1, v2

    goto/16 :goto_1

    :sswitch_8
    iget v0, p0, Lcom/google/analytics/b/a/a/c;->e:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/analytics/b/a/a/c;->e:I

    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->e()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/analytics/b/a/a/c;->m:J

    move v0, v1

    move v1, v2

    goto/16 :goto_1

    :sswitch_9
    iget v0, p0, Lcom/google/analytics/b/a/a/c;->e:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/analytics/b/a/a/c;->e:I

    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/analytics/b/a/a/c;->q:Z

    move v0, v1

    move v1, v2

    goto/16 :goto_1

    :sswitch_a
    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->n()I

    move-result v0

    invoke-static {v0}, Lcom/google/analytics/b/a/a/f;->a(I)Lcom/google/analytics/b/a/a/f;

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v4, v5}, Lcom/google/tagmanager/a/m;->d(I)V

    invoke-virtual {v4, v0}, Lcom/google/tagmanager/a/m;->d(I)V

    move v0, v1

    move v1, v2

    goto/16 :goto_1

    :cond_1
    and-int/lit16 v0, v2, 0x400

    const/16 v5, 0x400

    if-eq v0, v5, :cond_12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->p:Ljava/util/List;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lcom/google/tagmanager/a/af; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    or-int/lit16 v0, v2, 0x400

    :goto_5
    :try_start_7
    iget-object v2, p0, Lcom/google/analytics/b/a/a/c;->p:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Lcom/google/tagmanager/a/af; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    move v9, v1

    move v1, v0

    move v0, v9

    goto/16 :goto_1

    :sswitch_b
    :try_start_8
    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->s()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/tagmanager/a/k;->c(I)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lcom/google/tagmanager/a/af; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    move-result v6

    move v0, v2

    :goto_6
    :try_start_9
    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->w()I

    move-result v2

    if-lez v2, :cond_9

    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->n()I

    move-result v2

    invoke-static {v2}, Lcom/google/analytics/b/a/a/f;->a(I)Lcom/google/analytics/b/a/a/f;

    move-result-object v7

    if-nez v7, :cond_7

    invoke-virtual {v4, v5}, Lcom/google/tagmanager/a/m;->d(I)V

    invoke-virtual {v4, v2}, Lcom/google/tagmanager/a/m;->d(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Lcom/google/tagmanager/a/af; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_6

    :catch_0
    move-exception v1

    move v2, v0

    move-object v0, v1

    :goto_7
    :try_start_a
    invoke-virtual {v0, p0}, Lcom/google/tagmanager/a/af;->a(Lcom/google/tagmanager/a/am;)Lcom/google/tagmanager/a/af;

    move-result-object v0

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catchall_0
    move-exception v0

    :goto_8
    and-int/lit8 v1, v2, 0x4

    const/4 v5, 0x4

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/google/analytics/b/a/a/c;->h:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/c;->h:Ljava/util/List;

    :cond_2
    and-int/lit8 v1, v2, 0x8

    const/16 v5, 0x8

    if-ne v1, v5, :cond_3

    iget-object v1, p0, Lcom/google/analytics/b/a/a/c;->i:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/c;->i:Ljava/util/List;

    :cond_3
    and-int/lit8 v1, v2, 0x10

    const/16 v5, 0x10

    if-ne v1, v5, :cond_4

    iget-object v1, p0, Lcom/google/analytics/b/a/a/c;->j:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/c;->j:Ljava/util/List;

    :cond_4
    and-int/lit16 v1, v2, 0x400

    const/16 v5, 0x400

    if-ne v1, v5, :cond_5

    iget-object v1, p0, Lcom/google/analytics/b/a/a/c;->p:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/c;->p:Ljava/util/List;

    :cond_5
    and-int/lit16 v1, v2, 0x200

    const/16 v2, 0x200

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/google/analytics/b/a/a/c;->o:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/c;->o:Ljava/util/List;

    :cond_6
    :try_start_b
    invoke-virtual {v4}, Lcom/google/tagmanager/a/m;->a()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    invoke-virtual {v3}, Lcom/google/tagmanager/a/j;->a()Lcom/google/tagmanager/a/h;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/c;->d:Lcom/google/tagmanager/a/h;

    :goto_9
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->R()V

    throw v0

    :cond_7
    and-int/lit16 v2, v0, 0x400

    const/16 v8, 0x400

    if-eq v2, v8, :cond_8

    :try_start_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/analytics/b/a/a/c;->p:Ljava/util/List;

    or-int/lit16 v0, v0, 0x400

    :cond_8
    iget-object v2, p0, Lcom/google/analytics/b/a/a/c;->p:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3
    .catch Lcom/google/tagmanager/a/af; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v1

    move v2, v0

    move-object v0, v1

    :goto_a
    :try_start_d
    new-instance v1, Lcom/google/tagmanager/a/af;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/tagmanager/a/af;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/google/tagmanager/a/af;->a(Lcom/google/tagmanager/a/am;)Lcom/google/tagmanager/a/af;

    move-result-object v0

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :cond_9
    :try_start_e
    invoke-virtual {p1, v6}, Lcom/google/tagmanager/a/k;->d(I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3
    .catch Lcom/google/tagmanager/a/af; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_1

    move v9, v1

    move v1, v0

    move v0, v9

    goto/16 :goto_1

    :sswitch_c
    and-int/lit16 v0, v2, 0x200

    const/16 v5, 0x200

    if-eq v0, v5, :cond_11

    :try_start_f
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->o:Ljava/util/List;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Lcom/google/tagmanager/a/af; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4

    or-int/lit16 v0, v2, 0x200

    :goto_b
    :try_start_10
    iget-object v2, p0, Lcom/google/analytics/b/a/a/c;->o:Ljava/util/List;

    sget-object v5, Lcom/google/analytics/b/a/a/c;->a:Lcom/google/tagmanager/a/aq;

    invoke-virtual {p1, v5, p2}, Lcom/google/tagmanager/a/k;->a(Lcom/google/tagmanager/a/aq;Lcom/google/tagmanager/a/o;)Lcom/google/tagmanager/a/am;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3
    .catch Lcom/google/tagmanager/a/af; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_1

    move v9, v1

    move v1, v0

    move v0, v9

    goto/16 :goto_1

    :sswitch_d
    :try_start_11
    iget v0, p0, Lcom/google/analytics/b/a/a/c;->e:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/analytics/b/a/a/c;->e:I

    invoke-virtual {p1}, Lcom/google/tagmanager/a/k;->i()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/analytics/b/a/a/c;->n:Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0
    .catch Lcom/google/tagmanager/a/af; {:try_start_11 .. :try_end_11} :catch_5
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_4

    :cond_a
    move v0, v1

    move v1, v2

    goto/16 :goto_1

    :cond_b
    and-int/lit8 v0, v2, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->h:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->h:Ljava/util/List;

    :cond_c
    and-int/lit8 v0, v2, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->i:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->i:Ljava/util/List;

    :cond_d
    and-int/lit8 v0, v2, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->j:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->j:Ljava/util/List;

    :cond_e
    and-int/lit16 v0, v2, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_f

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->p:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->p:Ljava/util/List;

    :cond_f
    and-int/lit16 v0, v2, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->o:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->o:Ljava/util/List;

    :cond_10
    :try_start_12
    invoke-virtual {v4}, Lcom/google/tagmanager/a/m;->a()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_2

    invoke-virtual {v3}, Lcom/google/tagmanager/a/j;->a()Lcom/google/tagmanager/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->d:Lcom/google/tagmanager/a/h;

    :goto_c
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->R()V

    return-void

    :catch_2
    move-exception v0

    invoke-virtual {v3}, Lcom/google/tagmanager/a/j;->a()Lcom/google/tagmanager/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->d:Lcom/google/tagmanager/a/h;

    goto :goto_c

    :catchall_1
    move-exception v0

    invoke-virtual {v3}, Lcom/google/tagmanager/a/j;->a()Lcom/google/tagmanager/a/h;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/c;->d:Lcom/google/tagmanager/a/h;

    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v3}, Lcom/google/tagmanager/a/j;->a()Lcom/google/tagmanager/a/h;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/c;->d:Lcom/google/tagmanager/a/h;

    goto/16 :goto_9

    :catchall_2
    move-exception v0

    invoke-virtual {v3}, Lcom/google/tagmanager/a/j;->a()Lcom/google/tagmanager/a/h;

    move-result-object v1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/c;->d:Lcom/google/tagmanager/a/h;

    throw v0

    :catchall_3
    move-exception v1

    move v2, v0

    move-object v0, v1

    goto/16 :goto_8

    :catch_4
    move-exception v0

    goto/16 :goto_a

    :catch_5
    move-exception v0

    goto/16 :goto_7

    :cond_11
    move v0, v2

    goto/16 :goto_b

    :cond_12
    move v0, v2

    goto/16 :goto_5

    :cond_13
    move v0, v2

    goto/16 :goto_4

    :cond_14
    move v0, v2

    goto/16 :goto_3

    :cond_15
    move v0, v2

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x40 -> :sswitch_8
        0x48 -> :sswitch_9
        0x50 -> :sswitch_a
        0x52 -> :sswitch_b
        0x5a -> :sswitch_c
        0x60 -> :sswitch_d
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;Lcom/google/analytics/b/a/a/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/analytics/b/a/a/c;-><init>(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/tagmanager/a/w;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1}, Lcom/google/tagmanager/a/x;-><init>(Lcom/google/tagmanager/a/w;)V

    iput-byte v0, p0, Lcom/google/analytics/b/a/a/c;->r:B

    iput v0, p0, Lcom/google/analytics/b/a/a/c;->s:I

    invoke-virtual {p1}, Lcom/google/tagmanager/a/w;->r()Lcom/google/tagmanager/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->d:Lcom/google/tagmanager/a/h;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/a/w;Lcom/google/analytics/b/a/a/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/analytics/b/a/a/c;-><init>(Lcom/google/tagmanager/a/w;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/tagmanager/a/x;-><init>()V

    iput-byte v0, p0, Lcom/google/analytics/b/a/a/c;->r:B

    iput v0, p0, Lcom/google/analytics/b/a/a/c;->s:I

    sget-object v0, Lcom/google/tagmanager/a/h;->a:Lcom/google/tagmanager/a/h;

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->d:Lcom/google/tagmanager/a/h;

    return-void
.end method

.method public static F()Lcom/google/analytics/b/a/a/e;
    .locals 1

    invoke-static {}, Lcom/google/analytics/b/a/a/e;->q()Lcom/google/analytics/b/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method private J()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/google/analytics/b/a/a/h;->a:Lcom/google/analytics/b/a/a/h;

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->f:Lcom/google/analytics/b/a/a/h;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->g:Ljava/lang/Object;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->h:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->i:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->j:Ljava/util/List;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->k:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->l:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/analytics/b/a/a/c;->m:J

    iput-boolean v2, p0, Lcom/google/analytics/b/a/a/c;->n:Z

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->o:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/analytics/b/a/a/c;->p:Ljava/util/List;

    iput-boolean v2, p0, Lcom/google/analytics/b/a/a/c;->q:Z

    return-void
.end method

.method static synthetic a(Lcom/google/analytics/b/a/a/c;I)I
    .locals 0

    iput p1, p0, Lcom/google/analytics/b/a/a/c;->e:I

    return p1
.end method

.method static synthetic a(Lcom/google/analytics/b/a/a/c;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/analytics/b/a/a/c;->m:J

    return-wide p1
.end method

.method public static a()Lcom/google/analytics/b/a/a/c;
    .locals 1

    sget-object v0, Lcom/google/analytics/b/a/a/c;->c:Lcom/google/analytics/b/a/a/c;

    return-object v0
.end method

.method public static a(Lcom/google/analytics/b/a/a/c;)Lcom/google/analytics/b/a/a/e;
    .locals 1

    invoke-static {}, Lcom/google/analytics/b/a/a/c;->F()Lcom/google/analytics/b/a/a/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/analytics/b/a/a/e;->a(Lcom/google/analytics/b/a/a/c;)Lcom/google/analytics/b/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/google/analytics/b/a/a/c;Lcom/google/analytics/b/a/a/h;)Lcom/google/analytics/b/a/a/h;
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/b/a/a/c;->f:Lcom/google/analytics/b/a/a/h;

    return-object p1
.end method

.method static synthetic a(Lcom/google/analytics/b/a/a/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/b/a/a/c;->g:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic a(Lcom/google/analytics/b/a/a/c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/b/a/a/c;->h:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/google/analytics/b/a/a/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/analytics/b/a/a/c;->n:Z

    return p1
.end method

.method static synthetic b(Lcom/google/analytics/b/a/a/c;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->g:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(Lcom/google/analytics/b/a/a/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/b/a/a/c;->k:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/google/analytics/b/a/a/c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/b/a/a/c;->i:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b(Lcom/google/analytics/b/a/a/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/analytics/b/a/a/c;->q:Z

    return p1
.end method

.method static synthetic c(Lcom/google/analytics/b/a/a/c;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/b/a/a/c;->l:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic c(Lcom/google/analytics/b/a/a/c;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/google/analytics/b/a/a/c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/b/a/a/c;->j:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lcom/google/analytics/b/a/a/c;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->i:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/google/analytics/b/a/a/c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/b/a/a/c;->o:Ljava/util/List;

    return-object p1
.end method

.method static synthetic e(Lcom/google/analytics/b/a/a/c;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->j:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/google/analytics/b/a/a/c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/b/a/a/c;->p:Ljava/util/List;

    return-object p1
.end method

.method static synthetic f(Lcom/google/analytics/b/a/a/c;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->k:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic g(Lcom/google/analytics/b/a/a/c;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->l:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic h(Lcom/google/analytics/b/a/a/c;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/google/analytics/b/a/a/c;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic j(Lcom/google/analytics/b/a/a/c;)Lcom/google/tagmanager/a/h;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->d:Lcom/google/tagmanager/a/h;

    return-object v0
.end method


# virtual methods
.method public A()I
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public B()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->p:Ljava/util/List;

    return-object v0
.end method

.method public C()I
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public D()Z
    .locals 2

    iget v0, p0, Lcom/google/analytics/b/a/a/c;->e:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public E()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/analytics/b/a/a/c;->q:Z

    return v0
.end method

.method public G()Lcom/google/analytics/b/a/a/e;
    .locals 1

    invoke-static {}, Lcom/google/analytics/b/a/a/c;->F()Lcom/google/analytics/b/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public H()Lcom/google/analytics/b/a/a/e;
    .locals 1

    invoke-static {p0}, Lcom/google/analytics/b/a/a/c;->a(Lcom/google/analytics/b/a/a/c;)Lcom/google/analytics/b/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Lcom/google/analytics/b/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/c;

    return-object v0
.end method

.method public b()Lcom/google/analytics/b/a/a/c;
    .locals 1

    sget-object v0, Lcom/google/analytics/b/a/a/c;->c:Lcom/google/analytics/b/a/a/c;

    return-object v0
.end method

.method public b(I)Lcom/google/analytics/b/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/c;

    return-object v0
.end method

.method public c(I)Lcom/google/analytics/b/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/c;

    return-object v0
.end method

.method public c()Lcom/google/tagmanager/a/aq;
    .locals 1

    sget-object v0, Lcom/google/analytics/b/a/a/c;->a:Lcom/google/tagmanager/a/aq;

    return-object v0
.end method

.method public d(I)Lcom/google/analytics/b/a/a/c;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/b/a/a/c;

    return-object v0
.end method

.method public d()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/analytics/b/a/a/c;->e:I

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Lcom/google/analytics/b/a/a/h;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->f:Lcom/google/analytics/b/a/a/h;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v0, p1, Lcom/google/analytics/b/a/a/c;

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/analytics/b/a/a/c;

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->d()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->d()Z

    move-result v3

    if-ne v0, v3, :cond_a

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->d()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->e()Lcom/google/analytics/b/a/a/h;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->e()Lcom/google/analytics/b/a/a/h;

    move-result-object v3

    if-ne v0, v3, :cond_b

    move v0, v1

    :cond_3
    :goto_2
    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->f()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->f()Z

    move-result v3

    if-ne v0, v3, :cond_c

    move v0, v1

    :goto_3
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->f()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    :cond_4
    :goto_4
    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->h()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move v0, v1

    :goto_5
    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->k()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->k()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    :goto_6
    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->m()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->m()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v1

    :goto_7
    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->r()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->r()Z

    move-result v3

    if-ne v0, v3, :cond_11

    move v0, v1

    :goto_8
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->r()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->s()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    move v0, v1

    :cond_5
    :goto_9
    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->t()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->t()Z

    move-result v3

    if-ne v0, v3, :cond_13

    move v0, v1

    :goto_a
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->t()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->u()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->u()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    move v0, v1

    :cond_6
    :goto_b
    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->v()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->v()Z

    move-result v3

    if-ne v0, v3, :cond_15

    move v0, v1

    :goto_c
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->v()Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->w()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->w()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_16

    move v0, v1

    :cond_7
    :goto_d
    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->x()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->x()Z

    move-result v3

    if-ne v0, v3, :cond_17

    move v0, v1

    :goto_e
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->x()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->y()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->y()Z

    move-result v3

    if-ne v0, v3, :cond_18

    move v0, v1

    :cond_8
    :goto_f
    if-eqz v0, :cond_19

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->z()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->z()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    move v0, v1

    :goto_10
    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->B()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->B()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    move v0, v1

    :goto_11
    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->D()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->D()Z

    move-result v3

    if-ne v0, v3, :cond_1b

    move v0, v1

    :goto_12
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->D()Z

    move-result v3

    if-eqz v3, :cond_1c

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->E()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/analytics/b/a/a/c;->E()Z

    move-result v3

    if-eq v0, v3, :cond_0

    :cond_9
    move v1, v2

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto/16 :goto_1

    :cond_b
    move v0, v2

    goto/16 :goto_2

    :cond_c
    move v0, v2

    goto/16 :goto_3

    :cond_d
    move v0, v2

    goto/16 :goto_4

    :cond_e
    move v0, v2

    goto/16 :goto_5

    :cond_f
    move v0, v2

    goto/16 :goto_6

    :cond_10
    move v0, v2

    goto/16 :goto_7

    :cond_11
    move v0, v2

    goto/16 :goto_8

    :cond_12
    move v0, v2

    goto/16 :goto_9

    :cond_13
    move v0, v2

    goto/16 :goto_a

    :cond_14
    move v0, v2

    goto/16 :goto_b

    :cond_15
    move v0, v2

    goto/16 :goto_c

    :cond_16
    move v0, v2

    goto/16 :goto_d

    :cond_17
    move v0, v2

    goto :goto_e

    :cond_18
    move v0, v2

    goto :goto_f

    :cond_19
    move v0, v2

    goto :goto_10

    :cond_1a
    move v0, v2

    goto :goto_11

    :cond_1b
    move v0, v2

    goto :goto_12

    :cond_1c
    move v1, v0

    goto/16 :goto_0
.end method

.method public f()Z
    .locals 2

    iget v0, p0, Lcom/google/analytics/b/a/a/c;->e:I

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

.method public g()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->g:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/tagmanager/a/h;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/tagmanager/a/h;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/c;->g:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->h:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lcom/google/analytics/b/a/a/c;->b:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/analytics/b/a/a/c;->b:I

    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/google/analytics/b/a/a/c;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x30b

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->d()Z

    move-result v1

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->e()Lcom/google/analytics/b/a/a/h;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/a/ac;->a(Lcom/google/tagmanager/a/ad;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->i()I

    move-result v1

    if-lez v1, :cond_3

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->l()I

    move-result v1

    if-lez v1, :cond_4

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->q()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->m()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->r()Z

    move-result v1

    if-eqz v1, :cond_6

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->t()Z

    move-result v1

    if-eqz v1, :cond_7

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_7
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->v()Z

    move-result v1

    if-eqz v1, :cond_8

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->w()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/tagmanager/a/ac;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->x()Z

    move-result v1

    if-eqz v1, :cond_9

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->y()Z

    move-result v1

    invoke-static {v1}, Lcom/google/tagmanager/a/ac;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_9
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->A()I

    move-result v1

    if-lez v1, :cond_a

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xb

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->z()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->C()I

    move-result v1

    if-lez v1, :cond_b

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->B()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/tagmanager/a/ac;->a(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->D()Z

    move-result v1

    if-eqz v1, :cond_c

    mul-int/lit8 v0, v0, 0x25

    add-int/lit8 v0, v0, 0x9

    mul-int/lit8 v0, v0, 0x35

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->E()Z

    move-result v1

    invoke-static {v1}, Lcom/google/tagmanager/a/ac;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c
    mul-int/lit8 v0, v0, 0x1d

    iget-object v1, p0, Lcom/google/analytics/b/a/a/c;->d:Lcom/google/tagmanager/a/h;

    invoke-virtual {v1}, Lcom/google/tagmanager/a/h;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/analytics/b/a/a/c;->b:I

    goto/16 :goto_0
.end method

.method public i()I
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/google/analytics/b/a/a/c;->r:B

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    if-ne v2, v0, :cond_0

    :goto_0
    move v1, v0

    :goto_1
    return v1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->d()Z

    move-result v2

    if-nez v2, :cond_2

    iput-byte v1, p0, Lcom/google/analytics/b/a/a/c;->r:B

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_2
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->i()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/google/analytics/b/a/a/c;->a(I)Lcom/google/analytics/b/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/analytics/b/a/a/c;->j()Z

    move-result v3

    if-nez v3, :cond_3

    iput-byte v1, p0, Lcom/google/analytics/b/a/a/c;->r:B

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    move v2, v1

    :goto_3
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->l()I

    move-result v3

    if-ge v2, v3, :cond_6

    invoke-virtual {p0, v2}, Lcom/google/analytics/b/a/a/c;->b(I)Lcom/google/analytics/b/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/analytics/b/a/a/c;->j()Z

    move-result v3

    if-nez v3, :cond_5

    iput-byte v1, p0, Lcom/google/analytics/b/a/a/c;->r:B

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    move v2, v1

    :goto_4
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->q()I

    move-result v3

    if-ge v2, v3, :cond_8

    invoke-virtual {p0, v2}, Lcom/google/analytics/b/a/a/c;->c(I)Lcom/google/analytics/b/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/analytics/b/a/a/c;->j()Z

    move-result v3

    if-nez v3, :cond_7

    iput-byte v1, p0, Lcom/google/analytics/b/a/a/c;->r:B

    goto :goto_1

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    move v2, v1

    :goto_5
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->A()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-virtual {p0, v2}, Lcom/google/analytics/b/a/a/c;->d(I)Lcom/google/analytics/b/a/a/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/analytics/b/a/a/c;->j()Z

    move-result v3

    if-nez v3, :cond_9

    iput-byte v1, p0, Lcom/google/analytics/b/a/a/c;->r:B

    goto :goto_1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->I()Z

    move-result v2

    if-nez v2, :cond_b

    iput-byte v1, p0, Lcom/google/analytics/b/a/a/c;->r:B

    goto :goto_1

    :cond_b
    iput-byte v0, p0, Lcom/google/analytics/b/a/a/c;->r:B

    move v1, v0

    goto :goto_1
.end method

.method public k()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->i:Ljava/util/List;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public m()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->j:Ljava/util/List;

    return-object v0
.end method

.method public synthetic n()Lcom/google/tagmanager/a/an;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->H()Lcom/google/analytics/b/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic o()Lcom/google/tagmanager/a/an;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->G()Lcom/google/analytics/b/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic p()Lcom/google/tagmanager/a/am;
    .locals 1

    invoke-virtual {p0}, Lcom/google/analytics/b/a/a/c;->b()Lcom/google/analytics/b/a/a/c;

    move-result-object v0

    return-object v0
.end method

.method public q()I
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public r()Z
    .locals 2

    iget v0, p0, Lcom/google/analytics/b/a/a/c;->e:I

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

.method public s()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->k:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/tagmanager/a/h;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/tagmanager/a/h;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/c;->k:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public t()Z
    .locals 2

    iget v0, p0, Lcom/google/analytics/b/a/a/c;->e:I

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

.method public u()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->l:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    check-cast v0, Lcom/google/tagmanager/a/h;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/h;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/tagmanager/a/h;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/google/analytics/b/a/a/c;->l:Ljava/lang/Object;

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public v()Z
    .locals 2

    iget v0, p0, Lcom/google/analytics/b/a/a/c;->e:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public w()J
    .locals 2

    iget-wide v0, p0, Lcom/google/analytics/b/a/a/c;->m:J

    return-wide v0
.end method

.method public x()Z
    .locals 2

    iget v0, p0, Lcom/google/analytics/b/a/a/c;->e:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/analytics/b/a/a/c;->n:Z

    return v0
.end method

.method public z()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/b/a/a/c;->o:Ljava/util/List;

    return-object v0
.end method
