.class public Lcom/dotgears/n;
.super Lcom/dotgears/m;


# instance fields
.field public a:[Lcom/dotgears/m;

.field b:I

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/dotgears/m;-><init>()V

    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/dotgears/m;

    iput-object v0, p0, Lcom/dotgears/n;->a:[Lcom/dotgears/m;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/dotgears/n;->c:I

    return v0
.end method

.method public a(F)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/dotgears/n;->a()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/dotgears/n;->a:[Lcom/dotgears/m;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/dotgears/m;->a(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/dotgears/g;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/dotgears/n;->a()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/dotgears/n;->a:[Lcom/dotgears/m;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/dotgears/m;->a(Lcom/dotgears/g;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/dotgears/m;)V
    .locals 2

    iget-object v0, p0, Lcom/dotgears/n;->a:[Lcom/dotgears/m;

    iget v1, p0, Lcom/dotgears/n;->c:I

    aput-object p1, v0, v1

    const/4 v0, 0x0

    iput v0, p0, Lcom/dotgears/n;->b:I

    iget v0, p0, Lcom/dotgears/n;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dotgears/n;->c:I

    return-void
.end method

.method public b()V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/dotgears/n;->a()I

    move-result v2

    if-lt v0, v2, :cond_0

    iput v1, p0, Lcom/dotgears/n;->b:I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/dotgears/n;->a:[Lcom/dotgears/m;

    aget-object v2, v2, v0

    iput-boolean v1, v2, Lcom/dotgears/m;->F:Z

    iget-object v2, p0, Lcom/dotgears/n;->a:[Lcom/dotgears/m;

    aget-object v2, v2, v0

    iput-boolean v1, v2, Lcom/dotgears/m;->G:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method c()Lcom/dotgears/m;
    .locals 3

    iget-object v0, p0, Lcom/dotgears/n;->a:[Lcom/dotgears/m;

    iget v1, p0, Lcom/dotgears/n;->b:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/dotgears/n;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/dotgears/n;->b:I

    iget v1, p0, Lcom/dotgears/n;->b:I

    invoke-virtual {p0}, Lcom/dotgears/n;->a()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/dotgears/n;->b:I

    :cond_0
    return-object v0
.end method
