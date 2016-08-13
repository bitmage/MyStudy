.class public Lcom/dotgears/flappy/e;
.super Lcom/dotgears/m;


# instance fields
.field public a:Lcom/dotgears/r;

.field public b:Lcom/dotgears/i;

.field public c:I

.field public d:F

.field public e:F

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/dotgears/m;-><init>()V

    sget-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    const-string v1, "text_game_over"

    invoke-virtual {v0, v1}, Lcom/dotgears/g;->b(Ljava/lang/String;)Lcom/dotgears/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dotgears/flappy/e;->b:Lcom/dotgears/i;

    new-instance v0, Lcom/dotgears/r;

    invoke-direct {v0}, Lcom/dotgears/r;-><init>()V

    iput-object v0, p0, Lcom/dotgears/flappy/e;->a:Lcom/dotgears/r;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v0, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    iput-boolean v0, p0, Lcom/dotgears/flappy/e;->F:Z

    iput-boolean v0, p0, Lcom/dotgears/flappy/e;->G:Z

    iget-object v0, p0, Lcom/dotgears/flappy/e;->a:Lcom/dotgears/r;

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v3, v2, v3}, Lcom/dotgears/r;->a(FFIF)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/dotgears/flappy/e;->c:I

    const/high16 v0, -0x4000

    iput v0, p0, Lcom/dotgears/flappy/e;->d:F

    const/high16 v0, 0x3e80

    iput v0, p0, Lcom/dotgears/flappy/e;->e:F

    iput v4, p0, Lcom/dotgears/flappy/e;->f:I

    sget-object v0, Lcom/dotgears/flappy/c;->D:Lcom/dotgears/g;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v4}, Lcom/dotgears/g;->c(II)V

    return-void
.end method

.method public a(F)V
    .locals 8

    const/16 v3, 0xa

    const/4 v2, 0x2

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/dotgears/flappy/e;->a:Lcom/dotgears/r;

    invoke-virtual {v0, p1}, Lcom/dotgears/r;->a(F)V

    iget v0, p0, Lcom/dotgears/flappy/e;->c:I

    if-gez v0, :cond_1

    iget v0, p0, Lcom/dotgears/flappy/e;->c:I

    int-to-float v0, v0

    iget v1, p0, Lcom/dotgears/flappy/e;->d:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/dotgears/flappy/e;->c:I

    iget v0, p0, Lcom/dotgears/flappy/e;->d:F

    iget v1, p0, Lcom/dotgears/flappy/e;->e:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/dotgears/flappy/e;->d:F

    :goto_0
    iget v0, p0, Lcom/dotgears/flappy/e;->f:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_1
    return-void

    :cond_1
    iput v7, p0, Lcom/dotgears/flappy/e;->c:I

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/dotgears/flappy/e;->a:Lcom/dotgears/r;

    iget-boolean v0, v0, Lcom/dotgears/r;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/dotgears/flappy/e;->f:I

    sget-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    iget-object v0, v0, Lcom/dotgears/g;->C:Lcom/dotgears/p;

    sget-object v1, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    iget v1, v1, Lcom/dotgears/g;->y:I

    sget-object v2, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    iget v2, v2, Lcom/dotgears/g;->z:I

    const/16 v4, 0x14

    const/16 v5, 0x1e

    const/16 v6, 0x28

    invoke-virtual/range {v0 .. v6}, Lcom/dotgears/p;->a(IIIIII)V

    sget-object v0, Lcom/dotgears/flappy/c;->D:Lcom/dotgears/g;

    invoke-virtual {v0, v3, v7}, Lcom/dotgears/g;->c(II)V

    goto :goto_1

    :pswitch_1
    sget-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    iget-object v0, v0, Lcom/dotgears/g;->C:Lcom/dotgears/p;

    iget v0, v0, Lcom/dotgears/p;->k:I

    if-ne v0, v2, :cond_0

    iput v2, p0, Lcom/dotgears/flappy/e;->f:I

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Lcom/dotgears/g;)V
    .locals 4

    iget-object v0, p0, Lcom/dotgears/flappy/e;->b:Lcom/dotgears/i;

    iget-object v1, p0, Lcom/dotgears/flappy/e;->b:Lcom/dotgears/i;

    iget v1, v1, Lcom/dotgears/i;->b:I

    rsub-int v1, v1, 0x120

    shr-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/dotgears/flappy/e;->c:I

    add-int/lit16 v2, v2, 0x82

    iget-object v3, p0, Lcom/dotgears/flappy/e;->a:Lcom/dotgears/r;

    iget v3, v3, Lcom/dotgears/r;->a:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/dotgears/g;->a(Lcom/dotgears/i;IIF)V

    return-void
.end method
