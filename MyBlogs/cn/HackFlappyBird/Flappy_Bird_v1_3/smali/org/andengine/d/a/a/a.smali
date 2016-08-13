.class public Lorg/andengine/d/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/andengine/d/a/c/a;


# instance fields
.field protected a:[Ljava/lang/Object;

.field protected b:I

.field protected c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/andengine/d/a/a/a;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/andengine/d/a/a/a;->a:[Ljava/lang/Object;

    return-void
.end method

.method private c()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/andengine/d/a/a/a;->a:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lorg/andengine/d/a/a/a;->c:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lorg/andengine/d/a/a/a;->c:I

    iget v2, p0, Lorg/andengine/d/a/a/a;->b:I

    sub-int/2addr v1, v2

    if-eq v1, v0, :cond_1

    invoke-virtual {p0}, Lorg/andengine/d/a/a/a;->b()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    mul-int/lit8 v1, v0, 0x3

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lorg/andengine/d/a/a/a;->a:[Ljava/lang/Object;

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lorg/andengine/d/a/a/a;->a:[Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    const/4 v4, 0x0

    iget v1, p0, Lorg/andengine/d/a/a/a;->b:I

    iget v2, p0, Lorg/andengine/d/a/a/a;->c:I

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/andengine/d/a/a/a;->a:[Ljava/lang/Object;

    iget v2, p0, Lorg/andengine/d/a/a/a;->b:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/andengine/d/a/a/a;->a:[Ljava/lang/Object;

    iget v3, p0, Lorg/andengine/d/a/a/a;->b:I

    aput-object v0, v2, v3

    iget v0, p0, Lorg/andengine/d/a/a/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/d/a/a/a;->b:I

    iget v0, p0, Lorg/andengine/d/a/a/a;->b:I

    iget v2, p0, Lorg/andengine/d/a/a/a;->c:I

    if-ne v0, v2, :cond_1

    iput v4, p0, Lorg/andengine/d/a/a/a;->b:I

    iput v4, p0, Lorg/andengine/d/a/a/a;->c:I

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Lorg/andengine/d/a/a/a;->c()V

    iget-object v0, p0, Lorg/andengine/d/a/a/a;->a:[Ljava/lang/Object;

    iget v1, p0, Lorg/andengine/d/a/a/a;->c:I

    aput-object p1, v0, v1

    iget v0, p0, Lorg/andengine/d/a/a/a;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/d/a/a/a;->c:I

    return-void
.end method

.method public b()V
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lorg/andengine/d/a/a/a;->c:I

    iget v1, p0, Lorg/andengine/d/a/a/a;->b:I

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    iput v5, p0, Lorg/andengine/d/a/a/a;->b:I

    iput v5, p0, Lorg/andengine/d/a/a/a;->c:I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lorg/andengine/d/a/a/a;->a:[Ljava/lang/Object;

    iget v2, p0, Lorg/andengine/d/a/a/a;->b:I

    iget-object v3, p0, Lorg/andengine/d/a/a/a;->a:[Ljava/lang/Object;

    invoke-static {v1, v2, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/andengine/d/a/a/a;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget v2, p0, Lorg/andengine/d/a/a/a;->c:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lorg/andengine/d/a/a/a;->a:[Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    :cond_1
    iput v5, p0, Lorg/andengine/d/a/a/a;->b:I

    iput v0, p0, Lorg/andengine/d/a/a/a;->c:I

    goto :goto_0
.end method
