.class public Lcom/dotgears/d;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:I

.field public d:[I

.field public e:F

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(ILjava/lang/String;[IIIZ)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/dotgears/d;->b:Ljava/lang/String;

    iput p4, p0, Lcom/dotgears/d;->c:I

    iget v0, p0, Lcom/dotgears/d;->c:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/dotgears/d;->d:[I

    iget-object v0, p0, Lcom/dotgears/d;->d:[I

    iget v1, p0, Lcom/dotgears/d;->c:I

    invoke-static {p3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x3e8

    div-int/2addr v0, p5

    int-to-float v0, v0

    iput v0, p0, Lcom/dotgears/d;->e:F

    iput-boolean p6, p0, Lcom/dotgears/d;->f:Z

    iput p1, p0, Lcom/dotgears/d;->g:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lcom/dotgears/d;->h:I

    iput v1, p0, Lcom/dotgears/d;->i:I

    iget-object v0, p0, Lcom/dotgears/d;->d:[I

    aget v0, v0, v1

    iput v0, p0, Lcom/dotgears/d;->j:I

    return-void
.end method

.method public a(F)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/dotgears/d;->a:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/dotgears/d;->h:I

    add-int/lit8 v0, v0, 0xf

    iput v0, p0, Lcom/dotgears/d;->h:I

    iget v0, p0, Lcom/dotgears/d;->h:I

    int-to-float v0, v0

    iget v1, p0, Lcom/dotgears/d;->e:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iput v2, p0, Lcom/dotgears/d;->h:I

    iget v0, p0, Lcom/dotgears/d;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/dotgears/d;->i:I

    iget v0, p0, Lcom/dotgears/d;->i:I

    iget v1, p0, Lcom/dotgears/d;->c:I

    if-lt v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/dotgears/d;->f:Z

    if-eqz v0, :cond_3

    iput v2, p0, Lcom/dotgears/d;->i:I

    :goto_1
    iput v2, p0, Lcom/dotgears/d;->i:I

    :cond_2
    iget-object v0, p0, Lcom/dotgears/d;->d:[I

    iget v1, p0, Lcom/dotgears/d;->i:I

    aget v0, v0, v1

    iput v0, p0, Lcom/dotgears/d;->j:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dotgears/d;->a:Z

    goto :goto_1
.end method

.method b()V
    .locals 1

    iget-boolean v0, p0, Lcom/dotgears/d;->f:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/dotgears/d;->a:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/dotgears/d;->a()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dotgears/d;->a:Z

    return-void
.end method
