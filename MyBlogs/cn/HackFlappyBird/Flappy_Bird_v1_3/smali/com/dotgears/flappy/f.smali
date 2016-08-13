.class public Lcom/dotgears/flappy/f;
.super Lcom/dotgears/m;


# instance fields
.field public a:Lcom/dotgears/r;

.field public b:Lcom/dotgears/i;

.field public c:Lcom/dotgears/i;

.field d:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/dotgears/m;-><init>()V

    sget-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    const-string v1, "text_ready"

    invoke-virtual {v0, v1}, Lcom/dotgears/g;->b(Ljava/lang/String;)Lcom/dotgears/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dotgears/flappy/f;->b:Lcom/dotgears/i;

    sget-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    const-string v1, "tutorial"

    invoke-virtual {v0, v1}, Lcom/dotgears/g;->b(Ljava/lang/String;)Lcom/dotgears/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dotgears/flappy/f;->c:Lcom/dotgears/i;

    new-instance v0, Lcom/dotgears/r;

    invoke-direct {v0}, Lcom/dotgears/r;-><init>()V

    iput-object v0, p0, Lcom/dotgears/flappy/f;->a:Lcom/dotgears/r;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    const/4 v0, 0x1

    const/4 v4, 0x0

    iput-boolean v0, p0, Lcom/dotgears/flappy/f;->F:Z

    iput-boolean v0, p0, Lcom/dotgears/flappy/f;->G:Z

    iget-object v0, p0, Lcom/dotgears/flappy/f;->a:Lcom/dotgears/r;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    const/high16 v3, 0x3f00

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/dotgears/r;->a(FFIF)V

    iput v4, p0, Lcom/dotgears/flappy/f;->d:I

    return-void
.end method

.method public a(F)V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/dotgears/flappy/f;->a:Lcom/dotgears/r;

    invoke-virtual {v0, p1}, Lcom/dotgears/r;->a(F)V

    iget v0, p0, Lcom/dotgears/flappy/f;->d:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/dotgears/flappy/f;->a:Lcom/dotgears/r;

    iget-boolean v0, v0, Lcom/dotgears/r;->g:Z

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/dotgears/flappy/f;->d:I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/dotgears/flappy/f;->a:Lcom/dotgears/r;

    iget-boolean v0, v0, Lcom/dotgears/r;->g:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/dotgears/flappy/f;->F:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dotgears/flappy/f;->G:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public a(Lcom/dotgears/g;)V
    .locals 4

    iget-object v0, p0, Lcom/dotgears/flappy/f;->b:Lcom/dotgears/i;

    iget-object v1, p0, Lcom/dotgears/flappy/f;->b:Lcom/dotgears/i;

    iget v1, v1, Lcom/dotgears/i;->b:I

    rsub-int v1, v1, 0x120

    shr-int/lit8 v1, v1, 0x1

    const/16 v2, 0x92

    iget-object v3, p0, Lcom/dotgears/flappy/f;->a:Lcom/dotgears/r;

    iget v3, v3, Lcom/dotgears/r;->a:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/dotgears/g;->a(Lcom/dotgears/i;IIF)V

    iget-object v0, p0, Lcom/dotgears/flappy/f;->c:Lcom/dotgears/i;

    iget-object v1, p0, Lcom/dotgears/flappy/f;->c:Lcom/dotgears/i;

    iget v1, v1, Lcom/dotgears/i;->b:I

    rsub-int v1, v1, 0x120

    shr-int/lit8 v1, v1, 0x1

    const/16 v2, 0xdc

    iget-object v3, p0, Lcom/dotgears/flappy/f;->a:Lcom/dotgears/r;

    iget v3, v3, Lcom/dotgears/r;->a:F

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/dotgears/g;->a(Lcom/dotgears/i;IIF)V

    return-void
.end method
