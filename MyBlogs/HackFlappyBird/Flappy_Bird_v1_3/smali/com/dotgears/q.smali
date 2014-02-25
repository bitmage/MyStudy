.class public Lcom/dotgears/q;
.super Lcom/dotgears/m;


# instance fields
.field a:[Lcom/dotgears/d;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:F

.field public j:Lcom/dotgears/d;

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:I

.field public p:[Lcom/dotgears/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/dotgears/m;-><init>()V

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/dotgears/d;

    iput-object v0, p0, Lcom/dotgears/q;->a:[Lcom/dotgears/d;

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/dotgears/q;->i:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dotgears/q;->j:Lcom/dotgears/d;

    iput-boolean v1, p0, Lcom/dotgears/q;->m:Z

    iput-boolean v1, p0, Lcom/dotgears/q;->n:Z

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 1

    iget-boolean v0, p0, Lcom/dotgears/q;->m:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/dotgears/q;->j:Lcom/dotgears/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dotgears/q;->j:Lcom/dotgears/d;

    invoke-virtual {v0, p1}, Lcom/dotgears/d;->a(F)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput p1, p0, Lcom/dotgears/q;->b:I

    iput p2, p0, Lcom/dotgears/q;->c:I

    iput v0, p0, Lcom/dotgears/q;->d:I

    iput-boolean v1, p0, Lcom/dotgears/q;->m:Z

    iput-boolean v1, p0, Lcom/dotgears/q;->n:Z

    iput-boolean v0, p0, Lcom/dotgears/q;->k:Z

    iput-boolean v0, p0, Lcom/dotgears/q;->l:Z

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/dotgears/q;->i:F

    return-void
.end method

.method public a(ILjava/lang/String;[IIIZ)V
    .locals 7

    new-instance v0, Lcom/dotgears/d;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/dotgears/d;-><init>(ILjava/lang/String;[IIIZ)V

    iget-object v1, p0, Lcom/dotgears/q;->a:[Lcom/dotgears/d;

    aput-object v0, v1, p1

    return-void
.end method

.method public a(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/dotgears/q;->a:[Lcom/dotgears/d;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/dotgears/d;->a()V

    :cond_0
    iget-object v0, p0, Lcom/dotgears/q;->a:[Lcom/dotgears/d;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/dotgears/d;->b()V

    iget-object v0, p0, Lcom/dotgears/q;->a:[Lcom/dotgears/d;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/dotgears/q;->j:Lcom/dotgears/d;

    return-void
.end method

.method public a(Lcom/dotgears/g;)V
    .locals 7

    const/high16 v4, 0x3f80

    iget-boolean v0, p0, Lcom/dotgears/q;->n:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dotgears/q;->p:[Lcom/dotgears/i;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/dotgears/q;->j:Lcom/dotgears/d;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/dotgears/q;->p:[Lcom/dotgears/i;

    iget-object v1, p0, Lcom/dotgears/q;->j:Lcom/dotgears/d;

    iget v1, v1, Lcom/dotgears/d;->j:I

    aget-object v0, v0, v1

    :cond_1
    iget v1, v0, Lcom/dotgears/i;->i:I

    iget v0, p0, Lcom/dotgears/q;->b:I

    iget v2, p0, Lcom/dotgears/q;->g:I

    sub-int v2, v0, v2

    iget v0, p0, Lcom/dotgears/q;->c:I

    iget v3, p0, Lcom/dotgears/q;->h:I

    sub-int v3, v0, v3

    iget v6, p0, Lcom/dotgears/q;->i:F

    move-object v0, p1

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/dotgears/g;->a(IIIFFF)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;IIII)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    invoke-virtual {v0, p1}, Lcom/dotgears/g;->a(Ljava/lang/String;)[Lcom/dotgears/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dotgears/q;->p:[Lcom/dotgears/i;

    iget-object v0, p0, Lcom/dotgears/q;->p:[Lcom/dotgears/i;

    array-length v0, v0

    iput v0, p0, Lcom/dotgears/q;->o:I

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    iput p2, p0, Lcom/dotgears/q;->e:I

    iput p3, p0, Lcom/dotgears/q;->f:I

    :goto_0
    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    iput p4, p0, Lcom/dotgears/q;->g:I

    iput p5, p0, Lcom/dotgears/q;->h:I

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dotgears/q;->p:[Lcom/dotgears/i;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/dotgears/i;->b:I

    iput v0, p0, Lcom/dotgears/q;->e:I

    iget-object v0, p0, Lcom/dotgears/q;->p:[Lcom/dotgears/i;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/dotgears/i;->c:I

    iput v0, p0, Lcom/dotgears/q;->f:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/dotgears/q;->p:[Lcom/dotgears/i;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/dotgears/i;->b:I

    iget v1, p0, Lcom/dotgears/q;->e:I

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dotgears/q;->g:I

    iget-object v0, p0, Lcom/dotgears/q;->p:[Lcom/dotgears/i;

    aget-object v0, v0, v2

    iget v0, v0, Lcom/dotgears/i;->c:I

    iget v1, p0, Lcom/dotgears/q;->f:I

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dotgears/q;->h:I

    goto :goto_1
.end method
