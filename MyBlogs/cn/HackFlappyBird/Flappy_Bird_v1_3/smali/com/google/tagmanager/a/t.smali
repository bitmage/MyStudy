.class public abstract Lcom/google/tagmanager/a/t;
.super Lcom/google/tagmanager/a/a;

# interfaces
.implements Ljava/io/Serializable;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/tagmanager/a/a;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/google/tagmanager/a/v;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/tagmanager/a/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/tagmanager/a/q;Lcom/google/tagmanager/a/am;Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/m;Lcom/google/tagmanager/a/o;I)Z
    .locals 1

    invoke-static/range {p0 .. p5}, Lcom/google/tagmanager/a/t;->b(Lcom/google/tagmanager/a/q;Lcom/google/tagmanager/a/am;Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/m;Lcom/google/tagmanager/a/o;I)Z

    move-result v0

    return v0
.end method

.method private static b(Lcom/google/tagmanager/a/q;Lcom/google/tagmanager/a/am;Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/m;Lcom/google/tagmanager/a/o;I)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-static {p5}, Lcom/google/tagmanager/a/bk;->a(I)I

    move-result v0

    invoke-static {p5}, Lcom/google/tagmanager/a/bk;->b(I)I

    move-result v3

    invoke-virtual {p4, p1, v3}, Lcom/google/tagmanager/a/o;->a(Lcom/google/tagmanager/a/am;I)Lcom/google/tagmanager/a/aa;

    move-result-object v4

    if-nez v4, :cond_0

    move v0, v2

    move v3, v1

    :goto_0
    if-eqz v3, :cond_3

    invoke-virtual {p2, p5, p3}, Lcom/google/tagmanager/a/k;->a(ILcom/google/tagmanager/a/m;)Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    iget-object v3, v4, Lcom/google/tagmanager/a/aa;->b:Lcom/google/tagmanager/a/z;

    invoke-virtual {v3}, Lcom/google/tagmanager/a/z;->a()Lcom/google/tagmanager/a/bm;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/google/tagmanager/a/q;->a(Lcom/google/tagmanager/a/bm;Z)I

    move-result v3

    if-ne v0, v3, :cond_1

    move v0, v2

    move v3, v2

    goto :goto_0

    :cond_1
    iget-object v3, v4, Lcom/google/tagmanager/a/aa;->b:Lcom/google/tagmanager/a/z;

    iget-boolean v3, v3, Lcom/google/tagmanager/a/z;->d:Z

    if-eqz v3, :cond_2

    iget-object v3, v4, Lcom/google/tagmanager/a/aa;->b:Lcom/google/tagmanager/a/z;

    iget-object v3, v3, Lcom/google/tagmanager/a/z;->c:Lcom/google/tagmanager/a/bm;

    invoke-virtual {v3}, Lcom/google/tagmanager/a/bm;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, v4, Lcom/google/tagmanager/a/aa;->b:Lcom/google/tagmanager/a/z;

    invoke-virtual {v3}, Lcom/google/tagmanager/a/z;->a()Lcom/google/tagmanager/a/bm;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/google/tagmanager/a/q;->a(Lcom/google/tagmanager/a/bm;Z)I

    move-result v3

    if-ne v0, v3, :cond_2

    move v0, v1

    move v3, v2

    goto :goto_0

    :cond_2
    move v0, v2

    move v3, v1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_7

    invoke-virtual {p2}, Lcom/google/tagmanager/a/k;->s()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/tagmanager/a/k;->c(I)I

    move-result v0

    iget-object v3, v4, Lcom/google/tagmanager/a/aa;->b:Lcom/google/tagmanager/a/z;

    invoke-virtual {v3}, Lcom/google/tagmanager/a/z;->a()Lcom/google/tagmanager/a/bm;

    move-result-object v3

    sget-object v5, Lcom/google/tagmanager/a/bm;->n:Lcom/google/tagmanager/a/bm;

    if-ne v3, v5, :cond_5

    :goto_2
    invoke-virtual {p2}, Lcom/google/tagmanager/a/k;->w()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {p2}, Lcom/google/tagmanager/a/k;->n()I

    move-result v2

    iget-object v3, v4, Lcom/google/tagmanager/a/aa;->b:Lcom/google/tagmanager/a/z;

    invoke-virtual {v3}, Lcom/google/tagmanager/a/z;->e()Lcom/google/tagmanager/a/ae;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/google/tagmanager/a/ae;->b(I)Lcom/google/tagmanager/a/ad;

    move-result-object v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v3, v4, Lcom/google/tagmanager/a/aa;->b:Lcom/google/tagmanager/a/z;

    invoke-virtual {v4, v2}, Lcom/google/tagmanager/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v3, v2}, Lcom/google/tagmanager/a/q;->b(Lcom/google/tagmanager/a/s;Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    :goto_3
    invoke-virtual {p2}, Lcom/google/tagmanager/a/k;->w()I

    move-result v3

    if-lez v3, :cond_6

    iget-object v3, v4, Lcom/google/tagmanager/a/aa;->b:Lcom/google/tagmanager/a/z;

    invoke-virtual {v3}, Lcom/google/tagmanager/a/z;->a()Lcom/google/tagmanager/a/bm;

    move-result-object v3

    invoke-static {p2, v3, v2}, Lcom/google/tagmanager/a/q;->a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/bm;Z)Ljava/lang/Object;

    move-result-object v3

    iget-object v5, v4, Lcom/google/tagmanager/a/aa;->b:Lcom/google/tagmanager/a/z;

    invoke-virtual {p0, v5, v3}, Lcom/google/tagmanager/a/q;->b(Lcom/google/tagmanager/a/s;Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p2, v0}, Lcom/google/tagmanager/a/k;->d(I)V

    :goto_4
    move v0, v1

    goto/16 :goto_1

    :cond_7
    sget-object v0, Lcom/google/tagmanager/a/u;->a:[I

    iget-object v3, v4, Lcom/google/tagmanager/a/aa;->b:Lcom/google/tagmanager/a/z;

    invoke-virtual {v3}, Lcom/google/tagmanager/a/z;->b()Lcom/google/tagmanager/a/br;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/tagmanager/a/br;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    iget-object v0, v4, Lcom/google/tagmanager/a/aa;->b:Lcom/google/tagmanager/a/z;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/z;->a()Lcom/google/tagmanager/a/bm;

    move-result-object v0

    invoke-static {p2, v0, v2}, Lcom/google/tagmanager/a/q;->a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/bm;Z)Ljava/lang/Object;

    move-result-object v0

    :cond_8
    :goto_5
    iget-object v2, v4, Lcom/google/tagmanager/a/aa;->b:Lcom/google/tagmanager/a/z;

    invoke-virtual {v2}, Lcom/google/tagmanager/a/z;->c()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v4, Lcom/google/tagmanager/a/aa;->b:Lcom/google/tagmanager/a/z;

    invoke-virtual {v4, v0}, Lcom/google/tagmanager/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/tagmanager/a/q;->b(Lcom/google/tagmanager/a/s;Ljava/lang/Object;)V

    goto :goto_4

    :pswitch_0
    const/4 v2, 0x0

    iget-object v0, v4, Lcom/google/tagmanager/a/aa;->b:Lcom/google/tagmanager/a/z;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/z;->c()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v4, Lcom/google/tagmanager/a/aa;->b:Lcom/google/tagmanager/a/z;

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/q;->a(Lcom/google/tagmanager/a/s;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/am;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/google/tagmanager/a/am;->n()Lcom/google/tagmanager/a/an;

    move-result-object v0

    :goto_6
    if-nez v0, :cond_9

    invoke-virtual {v4}, Lcom/google/tagmanager/a/aa;->b()Lcom/google/tagmanager/a/am;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/tagmanager/a/am;->o()Lcom/google/tagmanager/a/an;

    move-result-object v0

    :cond_9
    iget-object v2, v4, Lcom/google/tagmanager/a/aa;->b:Lcom/google/tagmanager/a/z;

    invoke-virtual {v2}, Lcom/google/tagmanager/a/z;->a()Lcom/google/tagmanager/a/bm;

    move-result-object v2

    sget-object v3, Lcom/google/tagmanager/a/bm;->j:Lcom/google/tagmanager/a/bm;

    if-ne v2, v3, :cond_a

    invoke-virtual {v4}, Lcom/google/tagmanager/a/aa;->a()I

    move-result v2

    invoke-virtual {p2, v2, v0, p4}, Lcom/google/tagmanager/a/k;->a(ILcom/google/tagmanager/a/an;Lcom/google/tagmanager/a/o;)V

    :goto_7
    invoke-interface {v0}, Lcom/google/tagmanager/a/an;->h()Lcom/google/tagmanager/a/am;

    move-result-object v0

    goto :goto_5

    :cond_a
    invoke-virtual {p2, v0, p4}, Lcom/google/tagmanager/a/k;->a(Lcom/google/tagmanager/a/an;Lcom/google/tagmanager/a/o;)V

    goto :goto_7

    :pswitch_1
    invoke-virtual {p2}, Lcom/google/tagmanager/a/k;->n()I

    move-result v2

    iget-object v0, v4, Lcom/google/tagmanager/a/aa;->b:Lcom/google/tagmanager/a/z;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/z;->e()Lcom/google/tagmanager/a/ae;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/google/tagmanager/a/ae;->b(I)Lcom/google/tagmanager/a/ad;

    move-result-object v0

    if-nez v0, :cond_8

    invoke-virtual {p3, p5}, Lcom/google/tagmanager/a/m;->d(I)V

    invoke-virtual {p3, v2}, Lcom/google/tagmanager/a/m;->b(I)V

    move v0, v1

    goto/16 :goto_1

    :cond_b
    iget-object v2, v4, Lcom/google/tagmanager/a/aa;->b:Lcom/google/tagmanager/a/z;

    invoke-virtual {v4, v0}, Lcom/google/tagmanager/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/google/tagmanager/a/q;->a(Lcom/google/tagmanager/a/s;Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_c
    move-object v0, v2

    goto :goto_6

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected R()V
    .locals 0

    return-void
.end method

.method protected a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/m;Lcom/google/tagmanager/a/o;I)Z
    .locals 1

    invoke-virtual {p1, p4, p2}, Lcom/google/tagmanager/a/k;->a(ILcom/google/tagmanager/a/m;)Z

    move-result v0

    return v0
.end method

.method public c()Lcom/google/tagmanager/a/aq;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
