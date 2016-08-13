.class public Lorg/andengine/c/b/e;
.super Lorg/andengine/c/a;


# instance fields
.field protected I:Lorg/andengine/c/b/e;

.field protected J:Lorg/andengine/d/a/a/b;

.field private K:Z

.field private L:Z

.field private final M:Landroid/util/SparseArray;

.field private N:Z

.field private final O:Landroid/util/SparseArray;

.field private a:F

.field private b:Z

.field private c:Z

.field private d:Z

.field private final e:Lorg/andengine/b/b/a/a;

.field private f:Lorg/andengine/c/b/c;

.field private g:Lorg/andengine/c/b/b;

.field private h:Lorg/andengine/c/b/a/b;

.field private i:Z

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/andengine/c/a;-><init>()V

    new-instance v0, Lorg/andengine/d/a/a/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/andengine/d/a/a/b;-><init>(I)V

    iput-object v0, p0, Lorg/andengine/c/b/e;->J:Lorg/andengine/d/a/a/b;

    new-instance v0, Lorg/andengine/b/b/a/a;

    invoke-direct {v0}, Lorg/andengine/b/b/a/a;-><init>()V

    iput-object v0, p0, Lorg/andengine/c/b/e;->e:Lorg/andengine/b/b/a/a;

    new-instance v0, Lorg/andengine/c/b/a/a;

    sget-object v1, Lorg/andengine/d/d/a;->b:Lorg/andengine/d/d/a;

    invoke-direct {v0, v1}, Lorg/andengine/c/b/a/a;-><init>(Lorg/andengine/d/d/a;)V

    iput-object v0, p0, Lorg/andengine/c/b/e;->h:Lorg/andengine/c/b/a/b;

    iput-boolean v3, p0, Lorg/andengine/c/b/e;->i:Z

    iput-boolean v3, p0, Lorg/andengine/c/b/e;->j:Z

    iput-boolean v2, p0, Lorg/andengine/c/b/e;->K:Z

    iput-boolean v2, p0, Lorg/andengine/c/b/e;->L:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/andengine/c/b/e;->M:Landroid/util/SparseArray;

    iput-boolean v2, p0, Lorg/andengine/c/b/e;->N:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/andengine/c/b/e;->O:Landroid/util/SparseArray;

    return-void
.end method

.method private a(Lorg/andengine/input/a/a;FFLorg/andengine/c/b/d;)Ljava/lang/Boolean;
    .locals 3

    invoke-interface {p4, p2, p3}, Lorg/andengine/c/b/d;->b(FF)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-interface {p4, p1, v1, v0}, Lorg/andengine/c/b/d;->a(Lorg/andengine/input/a/a;FF)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    :cond_0
    iget-object v2, p0, Lorg/andengine/c/b/e;->g:Lorg/andengine/c/b/b;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/andengine/c/b/e;->g:Lorg/andengine/c/b/b;

    invoke-interface {v2, p1, p4, v1, v0}, Lorg/andengine/c/b/b;->a(Lorg/andengine/input/a/a;Lorg/andengine/c/b/d;FF)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(F)V
    .locals 2

    iget v0, p0, Lorg/andengine/c/b/e;->a:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/andengine/c/b/e;->a:F

    iget-object v0, p0, Lorg/andengine/c/b/e;->e:Lorg/andengine/b/b/a/a;

    invoke-virtual {v0, p1}, Lorg/andengine/b/b/a/a;->a_(F)V

    iget-object v0, p0, Lorg/andengine/c/b/e;->I:Lorg/andengine/c/b/e;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/andengine/c/b/e;->c:Z

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lorg/andengine/c/b/e;->h:Lorg/andengine/c/b/a/b;

    invoke-interface {v1, p1}, Lorg/andengine/c/b/a/b;->a_(F)V

    invoke-super {p0, p1}, Lorg/andengine/c/a;->a(F)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lorg/andengine/c/b/e;->a_(F)V

    :cond_2
    return-void
.end method

.method public a(Lorg/andengine/c/b/c;)V
    .locals 0

    iput-object p1, p0, Lorg/andengine/c/b/e;->f:Lorg/andengine/c/b/c;

    return-void
.end method

.method public a(Lorg/andengine/c/c;)V
    .locals 0

    return-void
.end method

.method public a(Lorg/andengine/input/a/a;)Z
    .locals 11

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/andengine/input/a/a;->e()I

    move-result v3

    invoke-virtual {p1}, Lorg/andengine/input/a/a;->f()Z

    move-result v4

    invoke-virtual {p1}, Lorg/andengine/input/a/a;->h()Z

    move-result v5

    if-nez v4, :cond_1

    iget-boolean v0, p0, Lorg/andengine/c/b/e;->N:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/c/b/e;->O:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/andengine/input/a/a;->d()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/c/b/c;

    if-eqz v0, :cond_0

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v0, p0, Lorg/andengine/c/b/e;->f:Lorg/andengine/c/b/c;

    invoke-interface {v0, p0, p1}, Lorg/andengine/c/b/c;->a(Lorg/andengine/c/b/e;Lorg/andengine/input/a/a;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :pswitch_1
    iget-object v0, p0, Lorg/andengine/c/b/e;->O:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/andengine/input/a/a;->d()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/andengine/c/b/e;->K:Z

    if-eqz v0, :cond_1

    iget-object v6, p0, Lorg/andengine/c/b/e;->M:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/andengine/input/a/a;->d()I

    move-result v0

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/c/b/d;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/andengine/input/a/a;->b()F

    move-result v7

    invoke-virtual {p1}, Lorg/andengine/input/a/a;->c()F

    move-result v8

    packed-switch v3, :pswitch_data_1

    :goto_2
    :pswitch_2
    invoke-direct {p0, p1, v7, v8, v0}, Lorg/andengine/c/b/e;->a(Lorg/andengine/input/a/a;FFLorg/andengine/c/b/d;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Lorg/andengine/input/a/a;->d()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/andengine/c/b/e;->I:Lorg/andengine/c/b/e;

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Lorg/andengine/c/b/e;->b(Lorg/andengine/input/a/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lorg/andengine/c/b/e;->d:Z

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lorg/andengine/input/a/a;->b()F

    move-result v6

    invoke-virtual {p1}, Lorg/andengine/input/a/a;->c()F

    move-result v7

    iget-object v8, p0, Lorg/andengine/c/b/e;->J:Lorg/andengine/d/a/a/b;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lorg/andengine/d/a/a/b;->size()I

    move-result v9

    if-lez v9, :cond_4

    iget-boolean v0, p0, Lorg/andengine/c/b/e;->j:Z

    if-eqz v0, :cond_b

    move v3, v2

    :goto_3
    if-lt v3, v9, :cond_6

    :cond_4
    iget-object v0, p0, Lorg/andengine/c/b/e;->f:Lorg/andengine/c/b/c;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lorg/andengine/c/b/e;->f:Lorg/andengine/c/b/c;

    invoke-interface {v0, p0, p1}, Lorg/andengine/c/b/c;->a(Lorg/andengine/c/b/e;Lorg/andengine/input/a/a;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lorg/andengine/c/b/e;->N:Z

    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    iget-object v0, p0, Lorg/andengine/c/b/e;->O:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/andengine/input/a/a;->d()I

    move-result v2

    iget-object v3, p0, Lorg/andengine/c/b/e;->f:Lorg/andengine/c/b/c;

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    move v0, v1

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v8, v3}, Lorg/andengine/d/a/a/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/c/b/d;

    invoke-interface {v0, v6, v7}, Lorg/andengine/c/b/d;->a(FF)Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-direct {p0, p1, v6, v7, v0}, Lorg/andengine/c/b/e;->a(Lorg/andengine/input/a/a;FFLorg/andengine/c/b/d;)Ljava/lang/Boolean;

    move-result-object v10

    if-eqz v10, :cond_a

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_a

    iget-boolean v2, p0, Lorg/andengine/c/b/e;->K:Z

    if-eqz v2, :cond_7

    if-nez v4, :cond_8

    :cond_7
    iget-boolean v2, p0, Lorg/andengine/c/b/e;->L:Z

    if-eqz v2, :cond_9

    if-eqz v5, :cond_9

    :cond_8
    iget-object v2, p0, Lorg/andengine/c/b/e;->M:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/andengine/input/a/a;->d()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_9
    move v0, v1

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_3

    :cond_b
    add-int/lit8 v0, v9, -0x1

    move v3, v0

    :goto_4
    if-ltz v3, :cond_4

    invoke-virtual {v8, v3}, Lorg/andengine/d/a/a/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/c/b/d;

    invoke-interface {v0, v6, v7}, Lorg/andengine/c/b/d;->a(FF)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-direct {p0, p1, v6, v7, v0}, Lorg/andengine/c/b/e;->a(Lorg/andengine/input/a/a;FFLorg/andengine/c/b/d;)Ljava/lang/Boolean;

    move-result-object v9

    if-eqz v9, :cond_f

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_f

    iget-boolean v2, p0, Lorg/andengine/c/b/e;->K:Z

    if-eqz v2, :cond_c

    if-nez v4, :cond_d

    :cond_c
    iget-boolean v2, p0, Lorg/andengine/c/b/e;->L:Z

    if-eqz v2, :cond_e

    if-eqz v5, :cond_e

    :cond_d
    iget-object v2, p0, Lorg/andengine/c/b/e;->M:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/andengine/input/a/a;->d()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_e
    move v0, v1

    goto/16 :goto_1

    :cond_f
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_4

    :cond_10
    move v0, v2

    goto/16 :goto_1

    :cond_11
    move v0, v2

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected b(Lorg/andengine/input/a/a;)Z
    .locals 1

    iget-object v0, p0, Lorg/andengine/c/b/e;->I:Lorg/andengine/c/b/e;

    invoke-virtual {v0, p1}, Lorg/andengine/c/b/e;->a(Lorg/andengine/input/a/a;)Z

    move-result v0

    return v0
.end method

.method protected e(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V
    .locals 2

    iget-object v0, p0, Lorg/andengine/c/b/e;->I:Lorg/andengine/c/b/e;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lorg/andengine/c/b/e;->b:Z

    if-nez v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lorg/andengine/c/b/e;->i:Z

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/andengine/opengl/util/e;->m()V

    invoke-virtual {p2, p1}, Lorg/andengine/b/a/a;->c(Lorg/andengine/opengl/util/e;)V

    invoke-virtual {p1}, Lorg/andengine/opengl/util/e;->l()V

    iget-object v1, p0, Lorg/andengine/c/b/e;->h:Lorg/andengine/c/b/a/b;

    invoke-interface {v1, p1, p2}, Lorg/andengine/c/b/a/b;->a(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V

    invoke-virtual {p1}, Lorg/andengine/opengl/util/e;->n()V

    :cond_1
    invoke-virtual {p1}, Lorg/andengine/opengl/util/e;->m()V

    invoke-virtual {p0, p1, p2}, Lorg/andengine/c/b/e;->f(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V

    invoke-virtual {p1}, Lorg/andengine/opengl/util/e;->l()V

    invoke-super {p0, p1, p2}, Lorg/andengine/c/a;->e(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V

    invoke-virtual {p1}, Lorg/andengine/opengl/util/e;->n()V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, p1, p2}, Lorg/andengine/c/b/e;->a(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V

    :cond_3
    return-void
.end method

.method protected f(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V
    .locals 0

    invoke-virtual {p2, p1}, Lorg/andengine/b/a/a;->b(Lorg/andengine/opengl/util/e;)V

    return-void
.end method
