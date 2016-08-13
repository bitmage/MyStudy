.class final Lcom/google/tagmanager/a/q;
.super Ljava/lang/Object;


# static fields
.field private static final d:Lcom/google/tagmanager/a/q;


# instance fields
.field private final a:Lcom/google/tagmanager/a/ax;

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/tagmanager/a/q;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/tagmanager/a/q;-><init>(Z)V

    sput-object v0, Lcom/google/tagmanager/a/q;->d:Lcom/google/tagmanager/a/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/tagmanager/a/q;->c:Z

    const/16 v0, 0x10

    invoke-static {v0}, Lcom/google/tagmanager/a/ax;->a(I)Lcom/google/tagmanager/a/ax;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/q;->a:Lcom/google/tagmanager/a/ax;

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/google/tagmanager/a/q;->c:Z

    invoke-static {v0}, Lcom/google/tagmanager/a/ax;->a(I)Lcom/google/tagmanager/a/ax;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/q;->a:Lcom/google/tagmanager/a/ax;

    invoke-virtual {p0}, Lcom/google/tagmanager/a/q;->c()V

    return-void
.end method

.method static a(Lcom/google/tagmanager/a/bm;Z)I
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/tagmanager/a/bm;->b()I

    move-result v0

    goto :goto_0
.end method

.method public static a()Lcom/google/tagmanager/a/q;
    .locals 1

    new-instance v0, Lcom/google/tagmanager/a/q;

    invoke-direct {v0}, Lcom/google/tagmanager/a/q;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/bm;Z)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/google/tagmanager/a/r;->b:[I

    invoke-virtual {p1}, Lcom/google/tagmanager/a/bm;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/tagmanager/a/k;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/google/tagmanager/a/k;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/google/tagmanager/a/k;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/google/tagmanager/a/k;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lcom/google/tagmanager/a/k;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Lcom/google/tagmanager/a/k;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/google/tagmanager/a/k;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/google/tagmanager/a/k;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/google/tagmanager/a/k;->k()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/tagmanager/a/k;->j()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    invoke-virtual {p0}, Lcom/google/tagmanager/a/k;->l()Lcom/google/tagmanager/a/h;

    move-result-object v0

    goto :goto_0

    :pswitch_a
    invoke-virtual {p0}, Lcom/google/tagmanager/a/k;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_b
    invoke-virtual {p0}, Lcom/google/tagmanager/a/k;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_c
    invoke-virtual {p0}, Lcom/google/tagmanager/a/k;->p()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_d
    invoke-virtual {p0}, Lcom/google/tagmanager/a/k;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :pswitch_e
    invoke-virtual {p0}, Lcom/google/tagmanager/a/k;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0

    :pswitch_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle nested groups."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle embedded messages."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "readPrimitiveField() cannot handle enums."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private static a(Lcom/google/tagmanager/a/bm;Ljava/lang/Object;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/google/tagmanager/a/r;->a:[I

    invoke-virtual {p0}, Lcom/google/tagmanager/a/bm;->a()Lcom/google/tagmanager/a/br;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/tagmanager/a/br;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_1
    :goto_0
    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    instance-of v0, p1, Ljava/lang/Integer;

    goto :goto_0

    :pswitch_1
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    :pswitch_2
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    :pswitch_3
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    instance-of v2, p1, Lcom/google/tagmanager/a/h;

    if-nez v2, :cond_2

    instance-of v2, p1, [B

    if-eqz v2, :cond_1

    :cond_2
    move v0, v1

    goto :goto_0

    :pswitch_7
    instance-of v2, p1, Ljava/lang/Integer;

    if-nez v2, :cond_3

    instance-of v2, p1, Lcom/google/tagmanager/a/ad;

    if-eqz v2, :cond_1

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_8
    instance-of v2, p1, Lcom/google/tagmanager/a/am;

    if-nez v2, :cond_4

    instance-of v2, p1, Lcom/google/tagmanager/a/ag;

    if-eqz v2, :cond_1

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method private a(Ljava/util/Map$Entry;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/s;

    invoke-interface {v0}, Lcom/google/tagmanager/a/s;->b()Lcom/google/tagmanager/a/br;

    move-result-object v3

    sget-object v4, Lcom/google/tagmanager/a/br;->i:Lcom/google/tagmanager/a/br;

    if-ne v3, v4, :cond_4

    invoke-interface {v0}, Lcom/google/tagmanager/a/s;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/am;

    invoke-interface {v0}, Lcom/google/tagmanager/a/am;->j()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/google/tagmanager/a/am;

    if-eqz v3, :cond_2

    check-cast v0, Lcom/google/tagmanager/a/am;

    invoke-interface {v0}, Lcom/google/tagmanager/a/am;->j()Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v0, v0, Lcom/google/tagmanager/a/ag;

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public static b()Lcom/google/tagmanager/a/q;
    .locals 1

    sget-object v0, Lcom/google/tagmanager/a/q;->d:Lcom/google/tagmanager/a/q;

    return-object v0
.end method

.method private b(Ljava/util/Map$Entry;)V
    .locals 4

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/s;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/google/tagmanager/a/ag;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/google/tagmanager/a/ag;

    invoke-virtual {v1}, Lcom/google/tagmanager/a/ag;->a()Lcom/google/tagmanager/a/am;

    move-result-object v1

    :cond_0
    invoke-interface {v0}, Lcom/google/tagmanager/a/s;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/q;->a(Lcom/google/tagmanager/a/s;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/google/tagmanager/a/q;->a:Lcom/google/tagmanager/a/ax;

    new-instance v3, Ljava/util/ArrayList;

    check-cast v1, Ljava/util/List;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v0, v3}, Lcom/google/tagmanager/a/ax;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_1
    move-object v0, v2

    check-cast v0, Ljava/util/List;

    check-cast v1, Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lcom/google/tagmanager/a/s;->b()Lcom/google/tagmanager/a/br;

    move-result-object v2

    sget-object v3, Lcom/google/tagmanager/a/br;->i:Lcom/google/tagmanager/a/br;

    if-ne v2, v3, :cond_5

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/q;->a(Lcom/google/tagmanager/a/s;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/tagmanager/a/q;->a:Lcom/google/tagmanager/a/ax;

    invoke-virtual {v2, v0, v1}, Lcom/google/tagmanager/a/ax;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    instance-of v3, v2, Lcom/google/tagmanager/a/ap;

    if-eqz v3, :cond_4

    check-cast v2, Lcom/google/tagmanager/a/ap;

    check-cast v1, Lcom/google/tagmanager/a/ap;

    invoke-interface {v0, v2, v1}, Lcom/google/tagmanager/a/s;->a(Lcom/google/tagmanager/a/ap;Lcom/google/tagmanager/a/ap;)Lcom/google/tagmanager/a/ap;

    move-result-object v1

    :goto_1
    iget-object v2, p0, Lcom/google/tagmanager/a/q;->a:Lcom/google/tagmanager/a/ax;

    invoke-virtual {v2, v0, v1}, Lcom/google/tagmanager/a/ax;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    check-cast v2, Lcom/google/tagmanager/a/am;

    invoke-interface {v2}, Lcom/google/tagmanager/a/am;->n()Lcom/google/tagmanager/a/an;

    move-result-object v2

    check-cast v1, Lcom/google/tagmanager/a/am;

    invoke-interface {v0, v2, v1}, Lcom/google/tagmanager/a/s;->a(Lcom/google/tagmanager/a/an;Lcom/google/tagmanager/a/am;)Lcom/google/tagmanager/a/an;

    move-result-object v1

    invoke-interface {v1}, Lcom/google/tagmanager/a/an;->h()Lcom/google/tagmanager/a/am;

    move-result-object v1

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/tagmanager/a/q;->a:Lcom/google/tagmanager/a/ax;

    invoke-virtual {v2, v0, v1}, Lcom/google/tagmanager/a/ax;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/tagmanager/a/s;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/google/tagmanager/a/q;->a:Lcom/google/tagmanager/a/ax;

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/a/ax;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/google/tagmanager/a/ag;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/tagmanager/a/ag;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/ag;->a()Lcom/google/tagmanager/a/am;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public a(Lcom/google/tagmanager/a/q;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/google/tagmanager/a/q;->a:Lcom/google/tagmanager/a/ax;

    invoke-virtual {v1}, Lcom/google/tagmanager/a/ax;->c()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p1, Lcom/google/tagmanager/a/q;->a:Lcom/google/tagmanager/a/ax;

    invoke-virtual {v1, v0}, Lcom/google/tagmanager/a/ax;->b(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/tagmanager/a/q;->b(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/google/tagmanager/a/q;->a:Lcom/google/tagmanager/a/ax;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/ax;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v0}, Lcom/google/tagmanager/a/q;->b(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public a(Lcom/google/tagmanager/a/s;Ljava/lang/Object;)V
    .locals 4

    invoke-interface {p1}, Lcom/google/tagmanager/a/s;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p2, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong object type used with protocol message reflection."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1}, Lcom/google/tagmanager/a/s;->a()Lcom/google/tagmanager/a/bm;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/tagmanager/a/q;->a(Lcom/google/tagmanager/a/bm;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object p2, v0

    :goto_1
    instance-of v0, p2, Lcom/google/tagmanager/a/ag;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/a/q;->c:Z

    :cond_2
    iget-object v0, p0, Lcom/google/tagmanager/a/q;->a:Lcom/google/tagmanager/a/ax;

    invoke-virtual {v0, p1, p2}, Lcom/google/tagmanager/a/ax;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3
    invoke-interface {p1}, Lcom/google/tagmanager/a/s;->a()Lcom/google/tagmanager/a/bm;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/tagmanager/a/q;->a(Lcom/google/tagmanager/a/bm;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public b(Lcom/google/tagmanager/a/s;Ljava/lang/Object;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/tagmanager/a/s;->c()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lcom/google/tagmanager/a/s;->a()Lcom/google/tagmanager/a/bm;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/tagmanager/a/q;->a(Lcom/google/tagmanager/a/bm;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/a/q;->a(Lcom/google/tagmanager/a/s;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/google/tagmanager/a/q;->a:Lcom/google/tagmanager/a/ax;

    invoke-virtual {v1, p1, v0}, Lcom/google/tagmanager/a/ax;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    check-cast v0, Ljava/util/List;

    goto :goto_0
.end method

.method public c()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/tagmanager/a/q;->b:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/a/q;->a:Lcom/google/tagmanager/a/ax;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/ax;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/a/q;->b:Z

    goto :goto_0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/tagmanager/a/q;->d()Lcom/google/tagmanager/a/q;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/google/tagmanager/a/q;
    .locals 4

    invoke-static {}, Lcom/google/tagmanager/a/q;->a()Lcom/google/tagmanager/a/q;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/tagmanager/a/q;->a:Lcom/google/tagmanager/a/ax;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/ax;->c()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/tagmanager/a/q;->a:Lcom/google/tagmanager/a/ax;

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/a/ax;->b(I)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/s;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/google/tagmanager/a/q;->a(Lcom/google/tagmanager/a/s;Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/a/q;->a:Lcom/google/tagmanager/a/ax;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/ax;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/tagmanager/a/s;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/google/tagmanager/a/q;->a(Lcom/google/tagmanager/a/s;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/google/tagmanager/a/q;->c:Z

    iput-boolean v0, v2, Lcom/google/tagmanager/a/q;->c:Z

    return-object v2
.end method

.method public e()Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/tagmanager/a/q;->a:Lcom/google/tagmanager/a/ax;

    invoke-virtual {v2}, Lcom/google/tagmanager/a/ax;->c()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/google/tagmanager/a/q;->a:Lcom/google/tagmanager/a/ax;

    invoke-virtual {v2, v0}, Lcom/google/tagmanager/a/ax;->b(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/tagmanager/a/q;->a(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/tagmanager/a/q;->a:Lcom/google/tagmanager/a/ax;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/ax;->d()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-direct {p0, v0}, Lcom/google/tagmanager/a/q;->a(Ljava/util/Map$Entry;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    goto :goto_1
.end method
