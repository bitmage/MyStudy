.class public Lcom/dotgears/k;
.super Lcom/dotgears/m;


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field private g:[Lcom/dotgears/i;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/dotgears/m;-><init>()V

    sget-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    const-string v1, "medals"

    invoke-virtual {v0, v1}, Lcom/dotgears/g;->a(Ljava/lang/String;)[Lcom/dotgears/i;

    move-result-object v0

    iput-object v0, p0, Lcom/dotgears/k;->g:[Lcom/dotgears/i;

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/dotgears/k;->F:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/dotgears/k;->f:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/dotgears/k;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/dotgears/k;->f:I

    iget v0, p0, Lcom/dotgears/k;->f:I

    if-gtz v0, :cond_0

    const/16 v0, 0x1e

    iput v0, p0, Lcom/dotgears/k;->f:I

    sget-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    iget v1, p0, Lcom/dotgears/k;->a:I

    add-int/lit8 v1, v1, -0x3

    iget v2, p0, Lcom/dotgears/k;->c:I

    add-int/lit8 v2, v2, 0x6

    invoke-static {v4, v2}, Lcom/dotgears/j;->a(II)I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/dotgears/k;->b:I

    add-int/lit8 v2, v2, -0x3

    iget v3, p0, Lcom/dotgears/k;->d:I

    add-int/lit8 v3, v3, 0x6

    invoke-static {v4, v3}, Lcom/dotgears/j;->a(II)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/dotgears/g;->b(II)V

    goto :goto_0
.end method

.method a(I)V
    .locals 3

    const/16 v2, 0x2c

    const/4 v1, 0x1

    const/4 v0, 0x0

    iput v0, p0, Lcom/dotgears/k;->a:I

    iput v0, p0, Lcom/dotgears/k;->b:I

    iput v2, p0, Lcom/dotgears/k;->c:I

    iput v2, p0, Lcom/dotgears/k;->d:I

    iput p1, p0, Lcom/dotgears/k;->e:I

    const/16 v0, 0x1e

    iput v0, p0, Lcom/dotgears/k;->f:I

    iput-boolean v1, p0, Lcom/dotgears/k;->F:Z

    iput-boolean v1, p0, Lcom/dotgears/k;->G:Z

    return-void
.end method

.method public a(Lcom/dotgears/g;)V
    .locals 7

    const/high16 v4, 0x3f80

    iget-boolean v0, p0, Lcom/dotgears/k;->G:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/dotgears/k;->g:[Lcom/dotgears/i;

    iget v1, p0, Lcom/dotgears/k;->e:I

    aget-object v0, v0, v1

    iget v1, v0, Lcom/dotgears/i;->i:I

    iget v2, p0, Lcom/dotgears/k;->a:I

    iget v3, p0, Lcom/dotgears/k;->b:I

    move-object v0, p1

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Lcom/dotgears/g;->a(IIIFFF)V

    goto :goto_0
.end method
