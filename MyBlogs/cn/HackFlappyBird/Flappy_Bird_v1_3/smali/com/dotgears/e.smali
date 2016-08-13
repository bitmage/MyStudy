.class public Lcom/dotgears/e;
.super Lcom/dotgears/q;


# direct methods
.method public constructor <init>()V
    .locals 12

    const/4 v4, 0x4

    const/4 v7, 0x2

    const/16 v2, 0xa

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Lcom/dotgears/q;-><init>()V

    const-string v1, "blink"

    move-object v0, p0

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/dotgears/e;->a(Ljava/lang/String;IIII)V

    const/4 v0, 0x5

    new-array v6, v0, [I

    aput v11, v6, v11

    aput v7, v6, v7

    const/4 v0, 0x3

    aput v11, v6, v0

    const-string v5, "blink"

    const/4 v7, 0x5

    move-object v3, p0

    move v4, v10

    move v8, v2

    move v9, v10

    invoke-virtual/range {v3 .. v9}, Lcom/dotgears/e;->a(ILjava/lang/String;[IIIZ)V

    iput-boolean v10, p0, Lcom/dotgears/e;->m:Z

    iput-boolean v10, p0, Lcom/dotgears/e;->n:Z

    invoke-virtual {p0, v10, v11}, Lcom/dotgears/e;->a(IZ)V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/dotgears/e;->m:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/dotgears/q;->a(F)V

    iget-object v0, p0, Lcom/dotgears/e;->j:Lcom/dotgears/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dotgears/e;->j:Lcom/dotgears/d;

    iget-boolean v0, v0, Lcom/dotgears/d;->a:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/dotgears/e;->m:Z

    iput-boolean v1, p0, Lcom/dotgears/e;->n:Z

    goto :goto_0
.end method

.method public a(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/dotgears/q;->a(II)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/dotgears/e;->a(IZ)V

    return-void
.end method

.method public a(Lcom/dotgears/g;)V
    .locals 1

    iget-boolean v0, p0, Lcom/dotgears/e;->n:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/dotgears/q;->a(Lcom/dotgears/g;)V

    goto :goto_0
.end method
