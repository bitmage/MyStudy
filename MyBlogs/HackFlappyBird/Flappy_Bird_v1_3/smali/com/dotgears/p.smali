.class public Lcom/dotgears/p;
.super Lcom/dotgears/m;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:Z

.field public n:I

.field public o:Lcom/dotgears/k;

.field public p:Lcom/dotgears/r;

.field public q:Lcom/dotgears/i;

.field public r:Lcom/dotgears/i;

.field public s:Lcom/dotgears/l;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/dotgears/m;-><init>()V

    iput v0, p0, Lcom/dotgears/p;->e:I

    iput v0, p0, Lcom/dotgears/p;->f:I

    iput v0, p0, Lcom/dotgears/p;->l:I

    sget-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    const-string v1, "score_panel"

    invoke-virtual {v0, v1}, Lcom/dotgears/g;->b(Ljava/lang/String;)Lcom/dotgears/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dotgears/p;->r:Lcom/dotgears/i;

    sget-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    const-string v1, "new"

    invoke-virtual {v0, v1}, Lcom/dotgears/g;->b(Ljava/lang/String;)Lcom/dotgears/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dotgears/p;->q:Lcom/dotgears/i;

    sget-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    iget-object v0, v0, Lcom/dotgears/g;->B:Lcom/dotgears/l;

    iput-object v0, p0, Lcom/dotgears/p;->s:Lcom/dotgears/l;

    iget-object v0, p0, Lcom/dotgears/p;->r:Lcom/dotgears/i;

    iget v0, v0, Lcom/dotgears/i;->b:I

    iput v0, p0, Lcom/dotgears/p;->c:I

    iget-object v0, p0, Lcom/dotgears/p;->r:Lcom/dotgears/i;

    iget v0, v0, Lcom/dotgears/i;->c:I

    iput v0, p0, Lcom/dotgears/p;->d:I

    iget v0, p0, Lcom/dotgears/p;->d:I

    rsub-int v0, v0, 0x200

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dotgears/p;->n:I

    new-instance v0, Lcom/dotgears/r;

    invoke-direct {v0}, Lcom/dotgears/r;-><init>()V

    iput-object v0, p0, Lcom/dotgears/p;->p:Lcom/dotgears/r;

    new-instance v0, Lcom/dotgears/k;

    invoke-direct {v0}, Lcom/dotgears/k;-><init>()V

    iput-object v0, p0, Lcom/dotgears/p;->o:Lcom/dotgears/k;

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget-boolean v0, p0, Lcom/dotgears/p;->F:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dotgears/p;->p:Lcom/dotgears/r;

    iget-boolean v0, v0, Lcom/dotgears/r;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/dotgears/p;->p:Lcom/dotgears/r;

    invoke-virtual {v0, p1}, Lcom/dotgears/r;->a(F)V

    :cond_2
    iget v0, p0, Lcom/dotgears/p;->k:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/dotgears/p;->p:Lcom/dotgears/r;

    iget v0, v0, Lcom/dotgears/r;->a:F

    float-to-int v0, v0

    iput v0, p0, Lcom/dotgears/p;->b:I

    iget-object v0, p0, Lcom/dotgears/p;->p:Lcom/dotgears/r;

    iget-boolean v0, v0, Lcom/dotgears/r;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/dotgears/p;->l:I

    if-lez v0, :cond_3

    iput v2, p0, Lcom/dotgears/p;->k:I

    iget-object v0, p0, Lcom/dotgears/p;->p:Lcom/dotgears/r;

    const/4 v1, 0x0

    iget v2, p0, Lcom/dotgears/p;->l:I

    int-to-float v2, v2

    const/high16 v3, 0x3f00

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/dotgears/r;->a(FFIF)V

    goto :goto_0

    :cond_3
    iput v3, p0, Lcom/dotgears/p;->k:I

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/dotgears/p;->p:Lcom/dotgears/r;

    iget v0, v0, Lcom/dotgears/r;->a:F

    float-to-int v0, v0

    iput v0, p0, Lcom/dotgears/p;->e:I

    iget-object v0, p0, Lcom/dotgears/p;->p:Lcom/dotgears/r;

    iget-boolean v0, v0, Lcom/dotgears/r;->g:Z

    if-eqz v0, :cond_0

    iput v3, p0, Lcom/dotgears/p;->k:I

    sget-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    iget v1, p0, Lcom/dotgears/p;->e:I

    invoke-virtual {v0, v1}, Lcom/dotgears/g;->a(I)V

    iget v0, p0, Lcom/dotgears/p;->e:I

    iget v1, p0, Lcom/dotgears/p;->f:I

    if-le v0, v1, :cond_4

    iget v0, p0, Lcom/dotgears/p;->e:I

    iput v0, p0, Lcom/dotgears/p;->f:I

    iput-boolean v2, p0, Lcom/dotgears/p;->m:Z

    :cond_4
    iget v0, p0, Lcom/dotgears/p;->e:I

    iget v1, p0, Lcom/dotgears/p;->j:I

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lcom/dotgears/p;->o:Lcom/dotgears/k;

    invoke-virtual {v0, v4}, Lcom/dotgears/k;->a(I)V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/dotgears/p;->o:Lcom/dotgears/k;

    iget v1, p0, Lcom/dotgears/p;->a:I

    add-int/lit8 v1, v1, 0x20

    iput v1, v0, Lcom/dotgears/k;->a:I

    iget-object v0, p0, Lcom/dotgears/p;->o:Lcom/dotgears/k;

    iget v1, p0, Lcom/dotgears/p;->b:I

    add-int/lit8 v1, v1, 0x2c

    iput v1, v0, Lcom/dotgears/k;->b:I

    goto :goto_0

    :cond_6
    iget v0, p0, Lcom/dotgears/p;->e:I

    iget v1, p0, Lcom/dotgears/p;->i:I

    if-lt v0, v1, :cond_7

    iget-object v0, p0, Lcom/dotgears/p;->o:Lcom/dotgears/k;

    invoke-virtual {v0, v2}, Lcom/dotgears/k;->a(I)V

    goto :goto_1

    :cond_7
    iget v0, p0, Lcom/dotgears/p;->e:I

    iget v1, p0, Lcom/dotgears/p;->h:I

    if-lt v0, v1, :cond_8

    iget-object v0, p0, Lcom/dotgears/p;->o:Lcom/dotgears/k;

    invoke-virtual {v0, v3}, Lcom/dotgears/k;->a(I)V

    goto :goto_1

    :cond_8
    iget v0, p0, Lcom/dotgears/p;->e:I

    iget v1, p0, Lcom/dotgears/p;->g:I

    if-lt v0, v1, :cond_5

    iget-object v0, p0, Lcom/dotgears/p;->o:Lcom/dotgears/k;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/dotgears/k;->a(I)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/dotgears/p;->o:Lcom/dotgears/k;

    invoke-virtual {v0, p1}, Lcom/dotgears/k;->a(F)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(IIIIII)V
    .locals 6

    const/4 v0, 0x1

    const/4 v5, 0x0

    iput p1, p0, Lcom/dotgears/p;->l:I

    iput p2, p0, Lcom/dotgears/p;->f:I

    iput v5, p0, Lcom/dotgears/p;->e:I

    iput p3, p0, Lcom/dotgears/p;->g:I

    iput p4, p0, Lcom/dotgears/p;->h:I

    iput p5, p0, Lcom/dotgears/p;->i:I

    iput p6, p0, Lcom/dotgears/p;->j:I

    iput-boolean v0, p0, Lcom/dotgears/p;->F:Z

    iput-boolean v0, p0, Lcom/dotgears/p;->G:Z

    iput-boolean v5, p0, Lcom/dotgears/p;->m:Z

    iget v0, p0, Lcom/dotgears/p;->c:I

    rsub-int v0, v0, 0x120

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dotgears/p;->a:I

    const/16 v0, 0x1f8

    iput v0, p0, Lcom/dotgears/p;->b:I

    iget-object v0, p0, Lcom/dotgears/p;->p:Lcom/dotgears/r;

    iget v1, p0, Lcom/dotgears/p;->b:I

    int-to-float v1, v1

    iget v2, p0, Lcom/dotgears/p;->n:I

    int-to-float v2, v2

    const/16 v3, 0xb

    const/high16 v4, 0x3f00

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/dotgears/r;->a(FFIF)V

    iput v5, p0, Lcom/dotgears/p;->k:I

    iget-object v0, p0, Lcom/dotgears/p;->o:Lcom/dotgears/k;

    iput-boolean v5, v0, Lcom/dotgears/k;->F:Z

    iget-object v0, p0, Lcom/dotgears/p;->o:Lcom/dotgears/k;

    iput-boolean v5, v0, Lcom/dotgears/k;->G:Z

    return-void
.end method

.method public a(Lcom/dotgears/g;)V
    .locals 12

    const/16 v11, 0xa

    const/4 v10, 0x0

    const/high16 v4, 0x3f80

    iget-boolean v0, p0, Lcom/dotgears/p;->G:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dotgears/p;->r:Lcom/dotgears/i;

    iget v1, v0, Lcom/dotgears/i;->i:I

    iget v2, p0, Lcom/dotgears/p;->a:I

    iget v3, p0, Lcom/dotgears/p;->b:I

    move-object v0, p1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/dotgears/g;->a(IIIFFF)V

    iget-object v5, p0, Lcom/dotgears/p;->s:Lcom/dotgears/l;

    iget v7, p0, Lcom/dotgears/p;->e:I

    iget v0, p0, Lcom/dotgears/p;->a:I

    add-int/lit16 v8, v0, 0xd2

    iget v0, p0, Lcom/dotgears/p;->b:I

    add-int/lit8 v9, v0, 0x24

    move-object v6, p1

    invoke-virtual/range {v5 .. v11}, Lcom/dotgears/l;->a(Lcom/dotgears/g;IIIZI)V

    iget-object v5, p0, Lcom/dotgears/p;->s:Lcom/dotgears/l;

    iget v7, p0, Lcom/dotgears/p;->f:I

    iget v0, p0, Lcom/dotgears/p;->a:I

    add-int/lit16 v8, v0, 0xd2

    iget v0, p0, Lcom/dotgears/p;->b:I

    add-int/lit8 v9, v0, 0x4e

    move-object v6, p1

    invoke-virtual/range {v5 .. v11}, Lcom/dotgears/l;->a(Lcom/dotgears/g;IIIZI)V

    iget-boolean v0, p0, Lcom/dotgears/p;->m:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/dotgears/p;->q:Lcom/dotgears/i;

    iget v1, v0, Lcom/dotgears/i;->i:I

    iget v0, p0, Lcom/dotgears/p;->a:I

    add-int/lit16 v2, v0, 0x8e

    iget v0, p0, Lcom/dotgears/p;->b:I

    add-int/lit8 v3, v0, 0x3c

    move-object v0, p1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/dotgears/g;->a(IIIFFF)V

    :cond_1
    iget-object v0, p0, Lcom/dotgears/p;->o:Lcom/dotgears/k;

    invoke-virtual {v0, p1}, Lcom/dotgears/k;->a(Lcom/dotgears/g;)V

    goto :goto_0
.end method
