.class public Lcom/dotgears/f;
.super Lcom/dotgears/m;


# instance fields
.field public a:Lcom/dotgears/i;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dotgears/m;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    iget v2, v0, Lcom/dotgears/g;->u:I

    sget-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    iget-object v3, v0, Lcom/dotgears/g;->s:[I

    sget-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    iget-object v4, v0, Lcom/dotgears/g;->t:[I

    iput-boolean v1, p0, Lcom/dotgears/f;->i:Z

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_1

    :goto_1
    iput-boolean v1, p0, Lcom/dotgears/f;->g:Z

    iput-boolean v1, p0, Lcom/dotgears/f;->h:Z

    iget-boolean v0, p0, Lcom/dotgears/f;->i:Z

    iget-boolean v2, p0, Lcom/dotgears/f;->f:Z

    if-eq v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/dotgears/f;->f:Z

    if-eqz v0, :cond_3

    iput-boolean v8, p0, Lcom/dotgears/f;->h:Z

    iput-boolean v1, p0, Lcom/dotgears/f;->f:Z

    :cond_0
    :goto_2
    return-void

    :cond_1
    aget v5, v3, v0

    iget v6, p0, Lcom/dotgears/f;->b:I

    if-le v5, v6, :cond_2

    aget v5, v3, v0

    iget v6, p0, Lcom/dotgears/f;->b:I

    iget v7, p0, Lcom/dotgears/f;->d:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_2

    aget v5, v4, v0

    iget v6, p0, Lcom/dotgears/f;->c:I

    if-le v5, v6, :cond_2

    aget v5, v4, v0

    iget v6, p0, Lcom/dotgears/f;->c:I

    iget v7, p0, Lcom/dotgears/f;->e:I

    add-int/2addr v6, v7

    if-ge v5, v6, :cond_2

    iput-boolean v8, p0, Lcom/dotgears/f;->i:Z

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput-boolean v8, p0, Lcom/dotgears/f;->g:Z

    iput-boolean v8, p0, Lcom/dotgears/f;->f:Z

    goto :goto_2
.end method

.method public a(II)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput p1, p0, Lcom/dotgears/f;->b:I

    iput p2, p0, Lcom/dotgears/f;->c:I

    iput-boolean v1, p0, Lcom/dotgears/f;->F:Z

    iput-boolean v1, p0, Lcom/dotgears/f;->G:Z

    iput-boolean v0, p0, Lcom/dotgears/f;->i:Z

    iput-boolean v0, p0, Lcom/dotgears/f;->g:Z

    iput-boolean v0, p0, Lcom/dotgears/f;->h:Z

    iput-boolean v0, p0, Lcom/dotgears/f;->f:Z

    return-void
.end method

.method public a(Lcom/dotgears/g;)V
    .locals 7

    const/high16 v4, 0x3f80

    iget-boolean v0, p0, Lcom/dotgears/f;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dotgears/f;->a:Lcom/dotgears/i;

    iget v1, v0, Lcom/dotgears/i;->i:I

    iget v2, p0, Lcom/dotgears/f;->b:I

    iget v0, p0, Lcom/dotgears/f;->c:I

    add-int/lit8 v3, v0, 0x2

    move-object v0, p1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/dotgears/g;->a(IIIFFF)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dotgears/f;->a:Lcom/dotgears/i;

    iget v1, v0, Lcom/dotgears/i;->i:I

    iget v2, p0, Lcom/dotgears/f;->b:I

    iget v3, p0, Lcom/dotgears/f;->c:I

    move-object v0, p1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/dotgears/g;->a(IIIFFF)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    invoke-virtual {v0, p1}, Lcom/dotgears/g;->b(Ljava/lang/String;)Lcom/dotgears/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dotgears/f;->a:Lcom/dotgears/i;

    iget-object v0, p0, Lcom/dotgears/f;->a:Lcom/dotgears/i;

    iget v0, v0, Lcom/dotgears/i;->b:I

    iput v0, p0, Lcom/dotgears/f;->d:I

    iget-object v0, p0, Lcom/dotgears/f;->a:Lcom/dotgears/i;

    iget v0, v0, Lcom/dotgears/i;->c:I

    iput v0, p0, Lcom/dotgears/f;->e:I

    return-void
.end method
