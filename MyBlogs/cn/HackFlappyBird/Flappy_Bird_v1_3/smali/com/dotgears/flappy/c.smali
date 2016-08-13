.class public Lcom/dotgears/flappy/c;
.super Lcom/dotgears/g;


# instance fields
.field H:Z

.field I:Z

.field J:Lcom/dotgears/flappy/a;

.field K:Lcom/dotgears/f;

.field L:Lcom/dotgears/f;

.field M:Lcom/dotgears/f;

.field N:Lcom/dotgears/f;

.field O:Lcom/dotgears/f;

.field P:Lcom/dotgears/f;

.field Q:Lcom/dotgears/f;

.field R:Lcom/dotgears/f;

.field S:Lcom/dotgears/l;

.field T:Lcom/dotgears/i;

.field U:Lcom/dotgears/i;

.field V:Lcom/dotgears/i;

.field W:Lcom/dotgears/i;

.field X:Lcom/dotgears/i;

.field Y:Lcom/dotgears/i;

.field Z:Lcom/dotgears/i;

.field aa:Lcom/dotgears/i;

.field ab:Lcom/dotgears/i;

.field ac:I

.field ad:I

.field ae:I

.field af:I

.field ag:I

.field ah:I

.field ai:I

.field aj:I

.field ak:I

.field al:Lcom/dotgears/flappy/f;

.field am:Lcom/dotgears/flappy/e;

.field an:Lcom/dotgears/h;

.field ao:I

.field private ap:Z


# direct methods
.method public constructor <init>(IILjava/io/InputStream;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/dotgears/g;-><init>(IILjava/io/InputStream;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dotgears/flappy/c;->ap:Z

    return-void
.end method

.method public static a(IIIIIIII)Z
    .locals 1

    add-int v0, p0, p2

    if-lt v0, p4, :cond_0

    add-int v0, p4, p6

    if-gt p0, v0, :cond_0

    add-int v0, p1, p3

    if-lt v0, p5, :cond_0

    add-int v0, p5, p7

    if-le p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(II)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/dotgears/flappy/c;->H:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dotgears/flappy/c;->M:Lcom/dotgears/f;

    iget v0, v0, Lcom/dotgears/f;->b:I

    add-int/lit8 v0, v0, -0x14

    if-lt p1, v0, :cond_1

    iget-object v0, p0, Lcom/dotgears/flappy/c;->M:Lcom/dotgears/f;

    iget v0, v0, Lcom/dotgears/f;->b:I

    iget-object v1, p0, Lcom/dotgears/flappy/c;->M:Lcom/dotgears/f;

    iget v1, v1, Lcom/dotgears/f;->d:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x14

    if-gt p1, v0, :cond_1

    iget-object v0, p0, Lcom/dotgears/flappy/c;->M:Lcom/dotgears/f;

    iget v0, v0, Lcom/dotgears/f;->c:I

    add-int/lit8 v0, v0, -0x14

    if-lt p2, v0, :cond_1

    iget-object v0, p0, Lcom/dotgears/flappy/c;->M:Lcom/dotgears/f;

    iget v0, v0, Lcom/dotgears/f;->c:I

    iget-object v1, p0, Lcom/dotgears/flappy/c;->M:Lcom/dotgears/f;

    iget v1, v1, Lcom/dotgears/f;->e:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x14

    if-gt p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget-boolean v0, v0, Lcom/dotgears/flappy/a;->w:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/dotgears/flappy/c;->ao:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    invoke-virtual {v0}, Lcom/dotgears/flappy/a;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/dotgears/flappy/c;->al:Lcom/dotgears/flappy/f;

    iget-boolean v0, v0, Lcom/dotgears/flappy/f;->F:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dotgears/flappy/c;->al:Lcom/dotgears/flappy/f;

    iget v0, v0, Lcom/dotgears/flappy/f;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/dotgears/flappy/c;->al:Lcom/dotgears/flappy/f;

    const/4 v1, 0x2

    iput v1, v0, Lcom/dotgears/flappy/f;->d:I

    iget-object v0, p0, Lcom/dotgears/flappy/c;->al:Lcom/dotgears/flappy/f;

    iget-object v0, v0, Lcom/dotgears/flappy/f;->a:Lcom/dotgears/r;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    const/high16 v3, 0x3f00

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/dotgears/r;->a(FFIF)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iput-boolean v4, v0, Lcom/dotgears/flappy/a;->w:Z

    iget-object v0, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    invoke-virtual {v0}, Lcom/dotgears/flappy/a;->b()V

    goto :goto_0
.end method

.method public a(IIII)V
    .locals 3

    iget-boolean v0, p0, Lcom/dotgears/flappy/c;->H:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dotgears/flappy/c;->ab:Lcom/dotgears/i;

    iget v0, v0, Lcom/dotgears/i;->c:I

    rsub-int v0, v0, 0x1e2

    if-lt p4, v0, :cond_0

    const/16 v0, 0x1e2

    if-gt p4, v0, :cond_0

    const/4 v0, 0x7

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-virtual {p0, v0, v1, v2}, Lcom/dotgears/flappy/c;->a(ILcom/dotgears/m;I)V

    :cond_0
    return-void
.end method

.method public a(ILcom/dotgears/m;)V
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, 0x3f00

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/dotgears/flappy/c;->e()V

    invoke-virtual {p0, v1, v1, v2}, Lcom/dotgears/flappy/c;->a(ZIF)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/dotgears/flappy/c;->c(II)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/dotgears/flappy/c;->e()V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->K:Lcom/dotgears/f;

    iput-boolean v1, v0, Lcom/dotgears/f;->F:Z

    iget-object v0, p0, Lcom/dotgears/flappy/c;->P:Lcom/dotgears/f;

    iput-boolean v1, v0, Lcom/dotgears/f;->F:Z

    iget-object v0, p0, Lcom/dotgears/flappy/c;->R:Lcom/dotgears/f;

    iput-boolean v1, v0, Lcom/dotgears/f;->F:Z

    iput-boolean v1, p0, Lcom/dotgears/flappy/c;->H:Z

    invoke-virtual {p0, v1, v1, v2}, Lcom/dotgears/flappy/c;->a(ZIF)V

    iput v1, p0, Lcom/dotgears/flappy/c;->ac:I

    iget-object v0, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    invoke-virtual {v0}, Lcom/dotgears/flappy/a;->a()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/dotgears/flappy/c;->ao:I

    iput v3, p0, Lcom/dotgears/flappy/c;->ak:I

    iput v1, p0, Lcom/dotgears/flappy/c;->y:I

    iget-object v0, p0, Lcom/dotgears/flappy/c;->al:Lcom/dotgears/flappy/f;

    invoke-virtual {v0}, Lcom/dotgears/flappy/f;->a()V

    iget v0, p0, Lcom/dotgears/flappy/c;->A:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dotgears/flappy/c;->A:I

    const/4 v0, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/dotgears/flappy/c;->c(II)V

    goto :goto_0

    :pswitch_2
    iput-boolean v3, p0, Lcom/dotgears/flappy/c;->I:Z

    iget v0, p0, Lcom/dotgears/flappy/c;->y:I

    invoke-virtual {p0, v1, v0}, Lcom/dotgears/flappy/c;->c(II)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->am:Lcom/dotgears/flappy/e;

    invoke-virtual {v0}, Lcom/dotgears/flappy/e;->a()V

    const/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/dotgears/flappy/c;->c(II)V

    goto :goto_0

    :pswitch_3
    const/16 v0, 0xb

    invoke-virtual {p0, v0, v1}, Lcom/dotgears/flappy/c;->c(II)V

    goto :goto_0

    :pswitch_4
    const/16 v0, 0xd

    invoke-virtual {p0, v0, v1}, Lcom/dotgears/flappy/c;->c(II)V

    goto :goto_0

    :pswitch_5
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/dotgears/flappy/c;->c(II)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method public b(F)V
    .locals 13

    const/4 v12, 0x1

    const/high16 v11, 0x3f00

    const/4 v10, 0x2

    const/high16 v9, 0x3f80

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/dotgears/flappy/c;->T:Lcom/dotgears/i;

    invoke-virtual {p0, v0, v8, v8, v9}, Lcom/dotgears/flappy/c;->a(Lcom/dotgears/i;IIF)V

    iget v0, p0, Lcom/dotgears/flappy/c;->ac:I

    iget v1, p0, Lcom/dotgears/flappy/c;->ao:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/dotgears/flappy/c;->ac:I

    iget v0, p0, Lcom/dotgears/flappy/c;->ac:I

    const/16 v1, -0x18

    if-gt v0, v1, :cond_0

    iput v8, p0, Lcom/dotgears/flappy/c;->ac:I

    :cond_0
    iget-object v0, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget-boolean v0, v0, Lcom/dotgears/flappy/a;->w:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/dotgears/flappy/c;->ag:I

    iget v1, p0, Lcom/dotgears/flappy/c;->ao:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/dotgears/flappy/c;->ag:I

    iget v0, p0, Lcom/dotgears/flappy/c;->ah:I

    iget v1, p0, Lcom/dotgears/flappy/c;->ao:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/dotgears/flappy/c;->ah:I

    iget v0, p0, Lcom/dotgears/flappy/c;->ai:I

    iget v1, p0, Lcom/dotgears/flappy/c;->ao:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/dotgears/flappy/c;->ai:I

    iget v0, p0, Lcom/dotgears/flappy/c;->ao:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/dotgears/flappy/c;->ak:I

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/dotgears/flappy/c;->ag:I

    iget-object v1, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget v1, v1, Lcom/dotgears/flappy/a;->b:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/dotgears/flappy/c;->ag:I

    iget-object v1, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget v1, v1, Lcom/dotgears/flappy/a;->b:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    :cond_1
    iget v0, p0, Lcom/dotgears/flappy/c;->y:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dotgears/flappy/c;->y:I

    const/16 v0, 0x9
    # my code
    const-string v0, "  SN:  "
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    # mycode
    invoke-virtual {p0, v0, v8}, Lcom/dotgears/flappy/c;->c(II)V

    :cond_2
    iget v0, p0, Lcom/dotgears/flappy/c;->ag:I

    iget-object v1, p0, Lcom/dotgears/flappy/c;->Y:Lcom/dotgears/i;

    iget v1, v1, Lcom/dotgears/i;->b:I

    neg-int v1, v1

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/dotgears/flappy/c;->ah:I

    iput v0, p0, Lcom/dotgears/flappy/c;->ag:I

    iget v0, p0, Lcom/dotgears/flappy/c;->ae:I

    iput v0, p0, Lcom/dotgears/flappy/c;->ad:I

    iget v0, p0, Lcom/dotgears/flappy/c;->ai:I

    iput v0, p0, Lcom/dotgears/flappy/c;->ah:I

    iget v0, p0, Lcom/dotgears/flappy/c;->af:I

    iput v0, p0, Lcom/dotgears/flappy/c;->ae:I

    iget v0, p0, Lcom/dotgears/flappy/c;->ah:I

    iget v1, p0, Lcom/dotgears/flappy/c;->aj:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/dotgears/flappy/c;->Y:Lcom/dotgears/i;

    iget v1, v1, Lcom/dotgears/i;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/dotgears/flappy/c;->ai:I

    const/16 v0, 0xb4

    const/16 v1, 0x168

    invoke-static {v0, v1}, Lcom/dotgears/j;->a(II)I

    move-result v0

    iput v0, p0, Lcom/dotgears/flappy/c;->af:I

    iget v0, p0, Lcom/dotgears/flappy/c;->ak:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/dotgears/flappy/c;->ak:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dotgears/flappy/c;->ak:I

    iget v0, p0, Lcom/dotgears/flappy/c;->ak:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/dotgears/flappy/c;->Y:Lcom/dotgears/i;

    iget v0, v0, Lcom/dotgears/i;->b:I

    neg-int v0, v0

    iput v0, p0, Lcom/dotgears/flappy/c;->ah:I

    iget-object v0, p0, Lcom/dotgears/flappy/c;->Y:Lcom/dotgears/i;

    iget v0, v0, Lcom/dotgears/i;->b:I

    neg-int v0, v0

    iput v0, p0, Lcom/dotgears/flappy/c;->ag:I

    :cond_3
    iget-object v0, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    invoke-virtual {v0, p1}, Lcom/dotgears/flappy/a;->a(F)V

    iget-boolean v0, p0, Lcom/dotgears/flappy/c;->H:Z

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget v0, v0, Lcom/dotgears/flappy/a;->c:I

    iget-object v1, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget v1, v1, Lcom/dotgears/flappy/a;->f:I

    rsub-int v1, v1, 0x190

    if-lt v0, v1, :cond_4

    iget v0, p0, Lcom/dotgears/flappy/c;->ao:I

    if-lez v0, :cond_4

    invoke-virtual {p0, v9}, Lcom/dotgears/flappy/c;->c(F)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v11}, Lcom/dotgears/flappy/c;->a(IF)V

    iput v8, p0, Lcom/dotgears/flappy/c;->ao:I

    const/16 v0, 0xc

    invoke-virtual {p0, v0, v8}, Lcom/dotgears/flappy/c;->c(II)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->C:Lcom/dotgears/p;

    const/16 v1, 0x3e8

    invoke-virtual {p0, v10, v0, v1}, Lcom/dotgears/flappy/c;->a(ILcom/dotgears/m;I)V

    :cond_4
    iget-object v0, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget-boolean v0, v0, Lcom/dotgears/flappy/a;->v:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/dotgears/flappy/c;->ak:I

    if-gtz v0, :cond_6

    iget v0, p0, Lcom/dotgears/flappy/c;->ao:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/dotgears/flappy/c;->ad:I

    iget-object v1, p0, Lcom/dotgears/flappy/c;->Z:Lcom/dotgears/i;

    iget v1, v1, Lcom/dotgears/i;->c:I

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, -0x60

    iget-object v0, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget v0, v0, Lcom/dotgears/flappy/a;->b:I

    iget-object v1, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget v1, v1, Lcom/dotgears/flappy/a;->c:I

    iget-object v2, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget v2, v2, Lcom/dotgears/flappy/a;->e:I

    iget-object v3, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget v3, v3, Lcom/dotgears/flappy/a;->f:I

    iget v4, p0, Lcom/dotgears/flappy/c;->ag:I

    iget-object v6, p0, Lcom/dotgears/flappy/c;->Z:Lcom/dotgears/i;

    iget v6, v6, Lcom/dotgears/i;->b:I

    iget-object v7, p0, Lcom/dotgears/flappy/c;->Z:Lcom/dotgears/i;

    iget v7, v7, Lcom/dotgears/i;->c:I

    invoke-static/range {v0 .. v7}, Lcom/dotgears/flappy/c;->a(IIIIIIII)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0, v9}, Lcom/dotgears/flappy/c;->c(F)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v11}, Lcom/dotgears/flappy/c;->a(IF)V

    iput v8, p0, Lcom/dotgears/flappy/c;->ao:I

    const/16 v0, 0xc

    invoke-virtual {p0, v0, v8}, Lcom/dotgears/flappy/c;->c(II)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/dotgears/flappy/c;->a(ILcom/dotgears/m;I)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->C:Lcom/dotgears/p;

    const/16 v1, 0x3e8

    invoke-virtual {p0, v10, v0, v1}, Lcom/dotgears/flappy/c;->a(ILcom/dotgears/m;I)V

    :cond_5
    :goto_0
    iget v0, p0, Lcom/dotgears/flappy/c;->ae:I

    iget-object v1, p0, Lcom/dotgears/flappy/c;->Z:Lcom/dotgears/i;

    iget v1, v1, Lcom/dotgears/i;->c:I

    sub-int/2addr v0, v1

    add-int/lit8 v5, v0, -0x60

    iget-object v0, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget v0, v0, Lcom/dotgears/flappy/a;->b:I

    iget-object v1, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget v1, v1, Lcom/dotgears/flappy/a;->c:I

    iget-object v2, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget v2, v2, Lcom/dotgears/flappy/a;->e:I

    iget-object v3, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget v3, v3, Lcom/dotgears/flappy/a;->f:I

    iget v4, p0, Lcom/dotgears/flappy/c;->ah:I

    iget-object v6, p0, Lcom/dotgears/flappy/c;->Z:Lcom/dotgears/i;

    iget v6, v6, Lcom/dotgears/i;->b:I

    iget-object v7, p0, Lcom/dotgears/flappy/c;->Z:Lcom/dotgears/i;

    iget v7, v7, Lcom/dotgears/i;->c:I

    invoke-static/range {v0 .. v7}, Lcom/dotgears/flappy/c;->a(IIIIIIII)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, v9}, Lcom/dotgears/flappy/c;->c(F)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v11}, Lcom/dotgears/flappy/c;->a(IF)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iput-boolean v12, v0, Lcom/dotgears/flappy/a;->v:Z

    iput v8, p0, Lcom/dotgears/flappy/c;->ao:I

    const/16 v0, 0xc

    invoke-virtual {p0, v0, v8}, Lcom/dotgears/flappy/c;->c(II)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/dotgears/flappy/c;->a(ILcom/dotgears/m;I)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->C:Lcom/dotgears/p;

    const/16 v1, 0x3e8

    invoke-virtual {p0, v10, v0, v1}, Lcom/dotgears/flappy/c;->a(ILcom/dotgears/m;I)V

    :cond_6
    :goto_1
    iget v0, p0, Lcom/dotgears/flappy/c;->ak:I

    if-gtz v0, :cond_7

    iget-object v0, p0, Lcom/dotgears/flappy/c;->Y:Lcom/dotgears/i;

    iget v1, p0, Lcom/dotgears/flappy/c;->ag:I

    iget v2, p0, Lcom/dotgears/flappy/c;->ad:I

    invoke-virtual {p0, v0, v1, v2, v9}, Lcom/dotgears/flappy/c;->a(Lcom/dotgears/i;IIF)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->Z:Lcom/dotgears/i;

    iget v1, p0, Lcom/dotgears/flappy/c;->ag:I

    iget v2, p0, Lcom/dotgears/flappy/c;->ad:I

    iget-object v3, p0, Lcom/dotgears/flappy/c;->Z:Lcom/dotgears/i;

    iget v3, v3, Lcom/dotgears/i;->c:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x60

    invoke-virtual {p0, v0, v1, v2, v9}, Lcom/dotgears/flappy/c;->a(Lcom/dotgears/i;IIF)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->Y:Lcom/dotgears/i;

    iget v1, p0, Lcom/dotgears/flappy/c;->ah:I

    iget v2, p0, Lcom/dotgears/flappy/c;->ae:I

    invoke-virtual {p0, v0, v1, v2, v9}, Lcom/dotgears/flappy/c;->a(Lcom/dotgears/i;IIF)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->Z:Lcom/dotgears/i;

    iget v1, p0, Lcom/dotgears/flappy/c;->ah:I

    iget v2, p0, Lcom/dotgears/flappy/c;->ae:I

    iget-object v3, p0, Lcom/dotgears/flappy/c;->Z:Lcom/dotgears/i;

    iget v3, v3, Lcom/dotgears/i;->c:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x60

    invoke-virtual {p0, v0, v1, v2, v9}, Lcom/dotgears/flappy/c;->a(Lcom/dotgears/i;IIF)V

    iget v0, p0, Lcom/dotgears/flappy/c;->ai:I

    const/16 v1, 0x120

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Lcom/dotgears/flappy/c;->Y:Lcom/dotgears/i;

    iget v1, p0, Lcom/dotgears/flappy/c;->ai:I

    iget v2, p0, Lcom/dotgears/flappy/c;->af:I

    invoke-virtual {p0, v0, v1, v2, v9}, Lcom/dotgears/flappy/c;->a(Lcom/dotgears/i;IIF)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->Z:Lcom/dotgears/i;

    iget v1, p0, Lcom/dotgears/flappy/c;->ai:I

    iget v2, p0, Lcom/dotgears/flappy/c;->af:I

    iget-object v3, p0, Lcom/dotgears/flappy/c;->Z:Lcom/dotgears/i;

    iget v3, v3, Lcom/dotgears/i;->c:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x60

    invoke-virtual {p0, v0, v1, v2, v9}, Lcom/dotgears/flappy/c;->a(Lcom/dotgears/i;IIF)V

    :cond_7
    iget-object v0, p0, Lcom/dotgears/flappy/c;->C:Lcom/dotgears/p;

    iget-boolean v0, v0, Lcom/dotgears/p;->F:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/dotgears/flappy/c;->C:Lcom/dotgears/p;

    iget v0, v0, Lcom/dotgears/p;->k:I

    if-ne v0, v10, :cond_8

    iget-object v0, p0, Lcom/dotgears/flappy/c;->K:Lcom/dotgears/f;

    iget-boolean v0, v0, Lcom/dotgears/f;->F:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/dotgears/flappy/c;->K:Lcom/dotgears/f;

    iget-object v1, p0, Lcom/dotgears/flappy/c;->K:Lcom/dotgears/f;

    iget v1, v1, Lcom/dotgears/f;->d:I

    iget-object v2, p0, Lcom/dotgears/flappy/c;->P:Lcom/dotgears/f;

    iget v2, v2, Lcom/dotgears/f;->d:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x10

    rsub-int v1, v1, 0x120

    shr-int/lit8 v1, v1, 0x1

    const/16 v2, 0x154

    invoke-virtual {v0, v1, v2}, Lcom/dotgears/f;->a(II)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->P:Lcom/dotgears/f;

    iget-object v1, p0, Lcom/dotgears/flappy/c;->K:Lcom/dotgears/f;

    iget v1, v1, Lcom/dotgears/f;->b:I

    iget-object v2, p0, Lcom/dotgears/flappy/c;->K:Lcom/dotgears/f;

    iget v2, v2, Lcom/dotgears/f;->d:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x10

    const/16 v2, 0x154

    invoke-virtual {v0, v1, v2}, Lcom/dotgears/f;->a(II)V

    :cond_8
    iget-object v0, p0, Lcom/dotgears/flappy/c;->am:Lcom/dotgears/flappy/e;

    iget-boolean v0, v0, Lcom/dotgears/flappy/e;->F:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/dotgears/flappy/c;->am:Lcom/dotgears/flappy/e;

    invoke-virtual {v0, p1}, Lcom/dotgears/flappy/e;->a(F)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->am:Lcom/dotgears/flappy/e;

    invoke-virtual {v0, p0}, Lcom/dotgears/flappy/e;->a(Lcom/dotgears/g;)V

    :goto_2
    iget-object v0, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    invoke-virtual {v0, p0}, Lcom/dotgears/flappy/a;->a(Lcom/dotgears/g;)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->X:Lcom/dotgears/i;

    iget v1, p0, Lcom/dotgears/flappy/c;->ac:I

    iget-object v2, p0, Lcom/dotgears/flappy/c;->X:Lcom/dotgears/i;

    iget v2, v2, Lcom/dotgears/i;->c:I

    rsub-int v2, v2, 0x200

    invoke-virtual {p0, v0, v1, v2, v9}, Lcom/dotgears/flappy/c;->a(Lcom/dotgears/i;IIF)V

    :goto_3
    iget-object v0, p0, Lcom/dotgears/flappy/c;->al:Lcom/dotgears/flappy/f;

    iget-boolean v0, v0, Lcom/dotgears/flappy/f;->F:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/dotgears/flappy/c;->al:Lcom/dotgears/flappy/f;

    invoke-virtual {v0, p1}, Lcom/dotgears/flappy/f;->a(F)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->al:Lcom/dotgears/flappy/f;

    invoke-virtual {v0, p0}, Lcom/dotgears/flappy/f;->a(Lcom/dotgears/g;)V

    :cond_9
    iget-boolean v0, p0, Lcom/dotgears/flappy/c;->H:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/dotgears/flappy/c;->ab:Lcom/dotgears/i;

    iget-object v1, p0, Lcom/dotgears/flappy/c;->ab:Lcom/dotgears/i;

    iget v1, v1, Lcom/dotgears/i;->b:I

    rsub-int v1, v1, 0x120

    shr-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/dotgears/flappy/c;->ab:Lcom/dotgears/i;

    iget v2, v2, Lcom/dotgears/i;->c:I

    rsub-int v2, v2, 0x1b0

    invoke-virtual {p0, v0, v1, v2, v9}, Lcom/dotgears/flappy/c;->a(Lcom/dotgears/i;IIF)V

    :cond_a
    iget-object v0, p0, Lcom/dotgears/flappy/c;->K:Lcom/dotgears/f;

    iget-boolean v0, v0, Lcom/dotgears/f;->F:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/dotgears/flappy/c;->K:Lcom/dotgears/f;

    invoke-virtual {v0, p1}, Lcom/dotgears/f;->a(F)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->K:Lcom/dotgears/f;

    invoke-virtual {v0, p0}, Lcom/dotgears/f;->a(Lcom/dotgears/g;)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->P:Lcom/dotgears/f;

    invoke-virtual {v0, p1}, Lcom/dotgears/f;->a(F)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->P:Lcom/dotgears/f;

    invoke-virtual {v0, p0}, Lcom/dotgears/f;->a(Lcom/dotgears/g;)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->K:Lcom/dotgears/f;

    iget-boolean v0, v0, Lcom/dotgears/f;->h:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x5

    invoke-virtual {p0, v12, v0, v11}, Lcom/dotgears/flappy/c;->a(ZIF)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0, v8}, Lcom/dotgears/flappy/c;->c(II)V

    :cond_b
    iget-object v0, p0, Lcom/dotgears/flappy/c;->P:Lcom/dotgears/f;

    iget-boolean v0, v0, Lcom/dotgears/f;->h:Z

    if-eqz v0, :cond_c

    invoke-virtual {p0, v12, v8}, Lcom/dotgears/flappy/c;->c(II)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0, v8}, Lcom/dotgears/flappy/c;->c(II)V

    :cond_c
    iget-object v0, p0, Lcom/dotgears/flappy/c;->R:Lcom/dotgears/f;

    iget-boolean v0, v0, Lcom/dotgears/f;->F:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/dotgears/flappy/c;->R:Lcom/dotgears/f;

    invoke-virtual {v0, p1}, Lcom/dotgears/f;->a(F)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->R:Lcom/dotgears/f;

    invoke-virtual {v0, p0}, Lcom/dotgears/f;->a(Lcom/dotgears/g;)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->R:Lcom/dotgears/f;

    iget-boolean v0, v0, Lcom/dotgears/f;->h:Z

    if-eqz v0, :cond_d

    invoke-virtual {p0, v10, v8}, Lcom/dotgears/flappy/c;->c(II)V

    :cond_d
    return-void

    :cond_e
    iget-object v0, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget v0, v0, Lcom/dotgears/flappy/a;->b:I

    iget-object v1, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget v1, v1, Lcom/dotgears/flappy/a;->c:I

    iget-object v2, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget v2, v2, Lcom/dotgears/flappy/a;->e:I

    iget-object v3, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget v3, v3, Lcom/dotgears/flappy/a;->f:I

    iget v4, p0, Lcom/dotgears/flappy/c;->ag:I

    iget v5, p0, Lcom/dotgears/flappy/c;->ad:I

    iget-object v6, p0, Lcom/dotgears/flappy/c;->Y:Lcom/dotgears/i;

    iget v6, v6, Lcom/dotgears/i;->b:I

    iget-object v7, p0, Lcom/dotgears/flappy/c;->Y:Lcom/dotgears/i;

    iget v7, v7, Lcom/dotgears/i;->c:I

    invoke-static/range {v0 .. v7}, Lcom/dotgears/flappy/c;->a(IIIIIIII)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v9}, Lcom/dotgears/flappy/c;->c(F)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v11}, Lcom/dotgears/flappy/c;->a(IF)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iput-boolean v12, v0, Lcom/dotgears/flappy/a;->v:Z

    iput v8, p0, Lcom/dotgears/flappy/c;->ao:I

    const/16 v0, 0xc

    invoke-virtual {p0, v0, v8}, Lcom/dotgears/flappy/c;->c(II)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/dotgears/flappy/c;->a(ILcom/dotgears/m;I)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->C:Lcom/dotgears/p;

    const/16 v1, 0x3e8

    invoke-virtual {p0, v10, v0, v1}, Lcom/dotgears/flappy/c;->a(ILcom/dotgears/m;I)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget v0, v0, Lcom/dotgears/flappy/a;->b:I

    iget-object v1, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget v1, v1, Lcom/dotgears/flappy/a;->c:I

    iget-object v2, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget v2, v2, Lcom/dotgears/flappy/a;->e:I

    iget-object v3, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget v3, v3, Lcom/dotgears/flappy/a;->f:I

    iget v4, p0, Lcom/dotgears/flappy/c;->ah:I

    iget v5, p0, Lcom/dotgears/flappy/c;->ae:I

    iget-object v6, p0, Lcom/dotgears/flappy/c;->Y:Lcom/dotgears/i;

    iget v6, v6, Lcom/dotgears/i;->b:I

    iget-object v7, p0, Lcom/dotgears/flappy/c;->Y:Lcom/dotgears/i;

    iget v7, v7, Lcom/dotgears/i;->c:I

    invoke-static/range {v0 .. v7}, Lcom/dotgears/flappy/c;->a(IIIIIIII)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0, v9}, Lcom/dotgears/flappy/c;->c(F)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0, v11}, Lcom/dotgears/flappy/c;->a(IF)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iput-boolean v12, v0, Lcom/dotgears/flappy/a;->v:Z

    iput v8, p0, Lcom/dotgears/flappy/c;->ao:I

    const/16 v0, 0xc

    invoke-virtual {p0, v0, v8}, Lcom/dotgears/flappy/c;->c(II)V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/16 v2, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/dotgears/flappy/c;->a(ILcom/dotgears/m;I)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->C:Lcom/dotgears/p;

    const/16 v1, 0x3e8

    invoke-virtual {p0, v10, v0, v1}, Lcom/dotgears/flappy/c;->a(ILcom/dotgears/m;I)V

    goto/16 :goto_1

    :cond_10
    iget-object v0, p0, Lcom/dotgears/flappy/c;->an:Lcom/dotgears/h;

    const/16 v1, 0x90

    const/16 v2, 0x64

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/dotgears/h;->a(IIIF)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->an:Lcom/dotgears/h;

    iget v1, p0, Lcom/dotgears/flappy/c;->y:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Lcom/dotgears/h;->a(II)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->an:Lcom/dotgears/h;

    invoke-virtual {v0, p0}, Lcom/dotgears/h;->a(Lcom/dotgears/g;)V

    goto/16 :goto_2

    :cond_11
    iget-object v0, p0, Lcom/dotgears/flappy/c;->aa:Lcom/dotgears/i;

    iget-object v1, p0, Lcom/dotgears/flappy/c;->aa:Lcom/dotgears/i;

    iget v1, v1, Lcom/dotgears/i;->b:I

    rsub-int v1, v1, 0x120

    shr-int/lit8 v1, v1, 0x1

    const/16 v2, 0x96

    invoke-virtual {p0, v0, v1, v2, v9}, Lcom/dotgears/flappy/c;->a(Lcom/dotgears/i;IIF)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget-object v1, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget v1, v1, Lcom/dotgears/flappy/a;->e:I

    rsub-int v1, v1, 0x120

    shr-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/dotgears/flappy/a;->b:I

    iget-object v0, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget-object v1, p0, Lcom/dotgears/flappy/c;->aa:Lcom/dotgears/i;

    iget v1, v1, Lcom/dotgears/i;->c:I

    add-int/lit16 v1, v1, 0x96

    add-int/lit8 v1, v1, 0x14

    iput v1, v0, Lcom/dotgears/flappy/a;->c:I

    iget-object v0, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    invoke-virtual {v0, p0}, Lcom/dotgears/flappy/a;->a(Lcom/dotgears/g;)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->X:Lcom/dotgears/i;

    iget v1, p0, Lcom/dotgears/flappy/c;->ac:I

    iget-object v2, p0, Lcom/dotgears/flappy/c;->X:Lcom/dotgears/i;

    iget v2, v2, Lcom/dotgears/i;->c:I

    rsub-int v2, v2, 0x200

    invoke-virtual {p0, v0, v1, v2, v9}, Lcom/dotgears/flappy/c;->a(Lcom/dotgears/i;IIF)V

    goto/16 :goto_3
.end method

.method public c()V
    .locals 4

    const/4 v3, 0x1

    const/16 v2, 0x112

    new-instance v0, Lcom/dotgears/flappy/b;

    invoke-direct {v0}, Lcom/dotgears/flappy/b;-><init>()V

    iput-object v0, p0, Lcom/dotgears/flappy/c;->an:Lcom/dotgears/h;

    new-instance v0, Lcom/dotgears/f;

    invoke-direct {v0}, Lcom/dotgears/f;-><init>()V

    iput-object v0, p0, Lcom/dotgears/flappy/c;->K:Lcom/dotgears/f;

    iget-object v0, p0, Lcom/dotgears/flappy/c;->K:Lcom/dotgears/f;

    const-string v1, "button_play"

    invoke-virtual {v0, v1}, Lcom/dotgears/f;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/dotgears/f;

    invoke-direct {v0}, Lcom/dotgears/f;-><init>()V

    iput-object v0, p0, Lcom/dotgears/flappy/c;->P:Lcom/dotgears/f;

    iget-object v0, p0, Lcom/dotgears/flappy/c;->P:Lcom/dotgears/f;

    const-string v1, "button_score"

    invoke-virtual {v0, v1}, Lcom/dotgears/f;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/dotgears/f;

    invoke-direct {v0}, Lcom/dotgears/f;-><init>()V

    iput-object v0, p0, Lcom/dotgears/flappy/c;->L:Lcom/dotgears/f;

    iget-object v0, p0, Lcom/dotgears/flappy/c;->L:Lcom/dotgears/f;

    const-string v1, "button_ok"

    invoke-virtual {v0, v1}, Lcom/dotgears/f;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/dotgears/f;

    invoke-direct {v0}, Lcom/dotgears/f;-><init>()V

    iput-object v0, p0, Lcom/dotgears/flappy/c;->O:Lcom/dotgears/f;

    iget-object v0, p0, Lcom/dotgears/flappy/c;->O:Lcom/dotgears/f;

    const-string v1, "button_menu"

    invoke-virtual {v0, v1}, Lcom/dotgears/f;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/dotgears/f;

    invoke-direct {v0}, Lcom/dotgears/f;-><init>()V

    iput-object v0, p0, Lcom/dotgears/flappy/c;->M:Lcom/dotgears/f;

    iget-object v0, p0, Lcom/dotgears/flappy/c;->M:Lcom/dotgears/f;

    const-string v1, "button_pause"

    invoke-virtual {v0, v1}, Lcom/dotgears/f;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/dotgears/f;

    invoke-direct {v0}, Lcom/dotgears/f;-><init>()V

    iput-object v0, p0, Lcom/dotgears/flappy/c;->N:Lcom/dotgears/f;

    iget-object v0, p0, Lcom/dotgears/flappy/c;->N:Lcom/dotgears/f;

    const-string v1, "button_resume"

    invoke-virtual {v0, v1}, Lcom/dotgears/f;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/dotgears/f;

    invoke-direct {v0}, Lcom/dotgears/f;-><init>()V

    iput-object v0, p0, Lcom/dotgears/flappy/c;->Q:Lcom/dotgears/f;

    iget-object v0, p0, Lcom/dotgears/flappy/c;->Q:Lcom/dotgears/f;

    const-string v1, "button_share"

    invoke-virtual {v0, v1}, Lcom/dotgears/f;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/dotgears/f;

    invoke-direct {v0}, Lcom/dotgears/f;-><init>()V

    iput-object v0, p0, Lcom/dotgears/flappy/c;->R:Lcom/dotgears/f;

    iget-object v0, p0, Lcom/dotgears/flappy/c;->R:Lcom/dotgears/f;

    const-string v1, "button_rate"

    invoke-virtual {v0, v1}, Lcom/dotgears/f;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/dotgears/l;

    const-string v1, "number_score"

    invoke-direct {v0, v1}, Lcom/dotgears/l;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/dotgears/flappy/c;->S:Lcom/dotgears/l;

    const-string v0, "bg_day"

    invoke-virtual {p0, v0}, Lcom/dotgears/flappy/c;->b(Ljava/lang/String;)Lcom/dotgears/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dotgears/flappy/c;->U:Lcom/dotgears/i;

    const-string v0, "bg_night"

    invoke-virtual {p0, v0}, Lcom/dotgears/flappy/c;->b(Ljava/lang/String;)Lcom/dotgears/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dotgears/flappy/c;->V:Lcom/dotgears/i;

    const-string v0, "bg_forest"

    invoke-virtual {p0, v0}, Lcom/dotgears/flappy/c;->b(Ljava/lang/String;)Lcom/dotgears/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dotgears/flappy/c;->W:Lcom/dotgears/i;

    const-string v0, "land"

    invoke-virtual {p0, v0}, Lcom/dotgears/flappy/c;->b(Ljava/lang/String;)Lcom/dotgears/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dotgears/flappy/c;->X:Lcom/dotgears/i;

    const-string v0, "pipe_up"

    invoke-virtual {p0, v0}, Lcom/dotgears/flappy/c;->b(Ljava/lang/String;)Lcom/dotgears/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dotgears/flappy/c;->Y:Lcom/dotgears/i;

    const-string v0, "pipe_down"

    invoke-virtual {p0, v0}, Lcom/dotgears/flappy/c;->b(Ljava/lang/String;)Lcom/dotgears/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dotgears/flappy/c;->Z:Lcom/dotgears/i;

    const-string v0, "title"

    invoke-virtual {p0, v0}, Lcom/dotgears/flappy/c;->b(Ljava/lang/String;)Lcom/dotgears/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dotgears/flappy/c;->aa:Lcom/dotgears/i;

    const-string v0, "brand_copyright"

    invoke-virtual {p0, v0}, Lcom/dotgears/flappy/c;->b(Ljava/lang/String;)Lcom/dotgears/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dotgears/flappy/c;->ab:Lcom/dotgears/i;

    iget-object v0, p0, Lcom/dotgears/flappy/c;->Y:Lcom/dotgears/i;

    iget v0, v0, Lcom/dotgears/i;->b:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    rsub-int v0, v0, 0x120

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/dotgears/flappy/c;->aj:I

    iget v0, p0, Lcom/dotgears/flappy/c;->aj:I

    iget-object v1, p0, Lcom/dotgears/flappy/c;->Y:Lcom/dotgears/i;

    iget v1, v1, Lcom/dotgears/i;->b:I

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/dotgears/flappy/c;->ag:I

    iput v2, p0, Lcom/dotgears/flappy/c;->ad:I

    iget v0, p0, Lcom/dotgears/flappy/c;->ag:I

    iget v1, p0, Lcom/dotgears/flappy/c;->aj:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/dotgears/flappy/c;->Y:Lcom/dotgears/i;

    iget v1, v1, Lcom/dotgears/i;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/dotgears/flappy/c;->ah:I

    iput v2, p0, Lcom/dotgears/flappy/c;->ae:I

    iget v0, p0, Lcom/dotgears/flappy/c;->ah:I

    iget v1, p0, Lcom/dotgears/flappy/c;->aj:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/dotgears/flappy/c;->Y:Lcom/dotgears/i;

    iget v1, v1, Lcom/dotgears/i;->b:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/dotgears/flappy/c;->ai:I

    iput v2, p0, Lcom/dotgears/flappy/c;->af:I

    new-instance v0, Lcom/dotgears/flappy/a;

    invoke-direct {v0}, Lcom/dotgears/flappy/a;-><init>()V

    iput-object v0, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    iget-object v0, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    invoke-virtual {v0}, Lcom/dotgears/flappy/a;->a()V

    new-instance v0, Lcom/dotgears/flappy/f;

    invoke-direct {v0}, Lcom/dotgears/flappy/f;-><init>()V

    iput-object v0, p0, Lcom/dotgears/flappy/c;->al:Lcom/dotgears/flappy/f;

    new-instance v0, Lcom/dotgears/flappy/e;

    invoke-direct {v0}, Lcom/dotgears/flappy/e;-><init>()V

    iput-object v0, p0, Lcom/dotgears/flappy/c;->am:Lcom/dotgears/flappy/e;

    iput-boolean v3, p0, Lcom/dotgears/flappy/c;->H:Z

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p0, v3}, Lcom/dotgears/flappy/c;->a(ILcom/dotgears/m;I)V

    return-void
.end method

.method public e()V
    .locals 6

    const/16 v5, 0x154

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/dotgears/j;->a()I

    move-result v0

    rem-int/lit8 v0, v0, 0xa

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/dotgears/flappy/c;->U:Lcom/dotgears/i;

    iput-object v0, p0, Lcom/dotgears/flappy/c;->T:Lcom/dotgears/i;

    :goto_0
    iget-object v0, p0, Lcom/dotgears/flappy/c;->n:Lcom/dotgears/n;

    invoke-virtual {v0}, Lcom/dotgears/n;->b()V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->K:Lcom/dotgears/f;

    iget-object v1, p0, Lcom/dotgears/flappy/c;->K:Lcom/dotgears/f;

    iget v1, v1, Lcom/dotgears/f;->d:I

    iget-object v2, p0, Lcom/dotgears/flappy/c;->P:Lcom/dotgears/f;

    iget v2, v2, Lcom/dotgears/f;->d:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x10

    rsub-int v1, v1, 0x120

    shr-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v5}, Lcom/dotgears/f;->a(II)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->P:Lcom/dotgears/f;

    iget-object v1, p0, Lcom/dotgears/flappy/c;->K:Lcom/dotgears/f;

    iget v1, v1, Lcom/dotgears/f;->b:I

    iget-object v2, p0, Lcom/dotgears/flappy/c;->K:Lcom/dotgears/f;

    iget v2, v2, Lcom/dotgears/f;->d:I

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1, v5}, Lcom/dotgears/f;->a(II)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->R:Lcom/dotgears/f;

    iget-object v1, p0, Lcom/dotgears/flappy/c;->R:Lcom/dotgears/f;

    iget v1, v1, Lcom/dotgears/f;->d:I

    rsub-int v1, v1, 0x120

    shr-int/lit8 v1, v1, 0x1

    const/16 v2, 0x10e

    invoke-virtual {v0, v1, v2}, Lcom/dotgears/f;->a(II)V

    iget-object v0, p0, Lcom/dotgears/flappy/c;->al:Lcom/dotgears/flappy/f;

    iput-boolean v3, v0, Lcom/dotgears/flappy/f;->F:Z

    iget-object v0, p0, Lcom/dotgears/flappy/c;->am:Lcom/dotgears/flappy/e;

    iput-boolean v3, v0, Lcom/dotgears/flappy/e;->F:Z

    iget-object v0, p0, Lcom/dotgears/flappy/c;->C:Lcom/dotgears/p;

    iput-boolean v3, v0, Lcom/dotgears/p;->F:Z

    iget-object v0, p0, Lcom/dotgears/flappy/c;->C:Lcom/dotgears/p;

    iput-boolean v3, v0, Lcom/dotgears/p;->G:Z

    iget-object v0, p0, Lcom/dotgears/flappy/c;->L:Lcom/dotgears/f;

    iput-boolean v3, v0, Lcom/dotgears/f;->F:Z

    iget-object v0, p0, Lcom/dotgears/flappy/c;->L:Lcom/dotgears/f;

    iput-boolean v3, v0, Lcom/dotgears/f;->G:Z

    iget-object v0, p0, Lcom/dotgears/flappy/c;->O:Lcom/dotgears/f;

    iput-boolean v3, v0, Lcom/dotgears/f;->F:Z

    iget-object v0, p0, Lcom/dotgears/flappy/c;->O:Lcom/dotgears/f;

    iput-boolean v3, v0, Lcom/dotgears/f;->G:Z

    iget-object v0, p0, Lcom/dotgears/flappy/c;->M:Lcom/dotgears/f;

    iput-boolean v3, v0, Lcom/dotgears/f;->F:Z

    iget-object v0, p0, Lcom/dotgears/flappy/c;->M:Lcom/dotgears/f;

    iput-boolean v3, v0, Lcom/dotgears/f;->G:Z

    iget-object v0, p0, Lcom/dotgears/flappy/c;->N:Lcom/dotgears/f;

    iput-boolean v3, v0, Lcom/dotgears/f;->F:Z

    iget-object v0, p0, Lcom/dotgears/flappy/c;->N:Lcom/dotgears/f;

    iput-boolean v3, v0, Lcom/dotgears/f;->G:Z

    iget-object v0, p0, Lcom/dotgears/flappy/c;->Q:Lcom/dotgears/f;

    iput-boolean v3, v0, Lcom/dotgears/f;->F:Z

    iget-object v0, p0, Lcom/dotgears/flappy/c;->Q:Lcom/dotgears/f;

    iput-boolean v3, v0, Lcom/dotgears/f;->G:Z

    iput-boolean v4, p0, Lcom/dotgears/flappy/c;->H:Z

    iput v3, p0, Lcom/dotgears/flappy/c;->ac:I

    iget-object v0, p0, Lcom/dotgears/flappy/c;->J:Lcom/dotgears/flappy/a;

    invoke-virtual {v0}, Lcom/dotgears/flappy/a;->a()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/dotgears/flappy/c;->ao:I

    iput v4, p0, Lcom/dotgears/flappy/c;->ak:I

    iput v3, p0, Lcom/dotgears/flappy/c;->y:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/dotgears/flappy/c;->V:Lcom/dotgears/i;

    iput-object v0, p0, Lcom/dotgears/flappy/c;->T:Lcom/dotgears/i;

    goto/16 :goto_0
.end method
