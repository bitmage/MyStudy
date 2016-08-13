.class public Lcom/dotgears/h;
.super Ljava/lang/Object;


# static fields
.field public static l:Ljava/lang/String;


# instance fields
.field public a:[Lcom/dotgears/i;

.field protected b:[I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:F

.field public i:[C

.field public j:[C

.field public k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0123456789"

    sput-object v0, Lcom/dotgears/h;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6

    const/4 v0, 0x0

    const/16 v2, 0x100

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v2, [Lcom/dotgears/i;

    iput-object v1, p0, Lcom/dotgears/h;->a:[Lcom/dotgears/i;

    new-array v1, v2, [I

    iput-object v1, p0, Lcom/dotgears/h;->b:[I

    new-array v1, v2, [C

    iput-object v1, p0, Lcom/dotgears/h;->i:[C

    new-array v1, v2, [C

    iput-object v1, p0, Lcom/dotgears/h;->j:[C

    iput v0, p0, Lcom/dotgears/h;->k:I

    sget-object v1, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    invoke-virtual {v1, p1}, Lcom/dotgears/g;->a(Ljava/lang/String;)[Lcom/dotgears/i;

    move-result-object v2

    :goto_0
    array-length v1, v2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/dotgears/h;->b:[I

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/dotgears/h;->b:[I

    const/16 v3, 0x30

    aget v2, v2, v3

    aput v2, v0, v1

    iput p2, p0, Lcom/dotgears/h;->d:I

    return-void

    :cond_0
    aget-object v1, v2, v0

    iget-object v1, v1, Lcom/dotgears/i;->a:Ljava/lang/String;

    const-string v3, "_"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget-object v1, p0, Lcom/dotgears/h;->a:[Lcom/dotgears/i;

    aget-object v4, v2, v0

    aput-object v4, v1, v3

    iget-object v1, p0, Lcom/dotgears/h;->b:[I

    aget-object v4, v2, v0

    iget v4, v4, Lcom/dotgears/i;->b:I

    aput v4, v1, v3

    iget v1, p0, Lcom/dotgears/h;->c:I

    aget-object v4, v2, v0

    iget v4, v4, Lcom/dotgears/i;->c:I

    if-le v1, v4, :cond_1

    iget v1, p0, Lcom/dotgears/h;->c:I

    :goto_1
    iput v1, p0, Lcom/dotgears/h;->c:I

    const-string v1, "FlappyBird"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Number: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v2, v0

    iget-object v5, v5, Lcom/dotgears/i;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-object v1, v2, v0

    iget v1, v1, Lcom/dotgears/i;->c:I

    goto :goto_1
.end method


# virtual methods
.method public a(II)V
    .locals 6

    const/4 v1, 0x0

    iput v1, p0, Lcom/dotgears/h;->k:I

    move v0, p1

    :goto_0
    if-gtz p2, :cond_1

    move v0, v1

    :goto_1
    iget v2, p0, Lcom/dotgears/h;->k:I

    if-lt v0, v2, :cond_3

    iget v0, p0, Lcom/dotgears/h;->k:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dotgears/h;->i:[C

    const/16 v2, 0x30

    aput-char v2, v0, v1

    const/4 v0, 0x1

    iput v0, p0, Lcom/dotgears/h;->k:I

    :cond_0
    return-void

    :cond_1
    if-gtz v0, :cond_2

    :goto_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    rem-int/lit8 v2, v0, 0xa

    div-int/lit8 v0, v0, 0xa

    iget-object v3, p0, Lcom/dotgears/h;->j:[C

    iget v4, p0, Lcom/dotgears/h;->k:I

    sget-object v5, Lcom/dotgears/h;->l:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aput-char v2, v3, v4

    iget v2, p0, Lcom/dotgears/h;->k:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/dotgears/h;->k:I

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/dotgears/h;->i:[C

    iget-object v3, p0, Lcom/dotgears/h;->j:[C

    iget v4, p0, Lcom/dotgears/h;->k:I

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    aget-char v3, v3, v4

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public a(IIIF)V
    .locals 0

    iput p1, p0, Lcom/dotgears/h;->f:I

    iput p2, p0, Lcom/dotgears/h;->g:I

    iput p3, p0, Lcom/dotgears/h;->e:I

    iput p4, p0, Lcom/dotgears/h;->h:F

    return-void
.end method

.method public a(Lcom/dotgears/g;)V
    .locals 6

    const/4 v0, 0x0

    iget v3, p0, Lcom/dotgears/h;->k:I

    move v1, v0

    move v2, v0

    :goto_0
    if-lt v1, v3, :cond_2

    add-int/lit8 v1, v2, 0x2

    iget v2, p0, Lcom/dotgears/h;->c:I

    iget v4, p0, Lcom/dotgears/h;->e:I

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/dotgears/h;->f:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v4, v1

    iput v1, p0, Lcom/dotgears/h;->f:I

    :cond_0
    :goto_1
    iget v1, p0, Lcom/dotgears/h;->e:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/dotgears/h;->g:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/dotgears/h;->g:I

    :cond_1
    :goto_2
    iget v1, p0, Lcom/dotgears/h;->f:I

    iget v2, p0, Lcom/dotgears/h;->g:I

    :goto_3
    if-lt v0, v3, :cond_5

    return-void

    :cond_2
    iget-object v4, p0, Lcom/dotgears/h;->b:[I

    iget-object v5, p0, Lcom/dotgears/h;->i:[C

    aget-char v5, v5, v1

    aget v4, v4, v5

    add-int/2addr v2, v4

    iget v4, p0, Lcom/dotgears/h;->d:I

    sub-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v4, p0, Lcom/dotgears/h;->e:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/dotgears/h;->f:I

    sub-int v1, v4, v1

    iput v1, p0, Lcom/dotgears/h;->f:I

    goto :goto_1

    :cond_4
    iget v1, p0, Lcom/dotgears/h;->e:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/dotgears/h;->g:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/dotgears/h;->g:I

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/dotgears/h;->a:[Lcom/dotgears/i;

    iget-object v5, p0, Lcom/dotgears/h;->i:[C

    aget-char v5, v5, v0

    aget-object v4, v4, v5

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/dotgears/h;->a:[Lcom/dotgears/i;

    iget-object v5, p0, Lcom/dotgears/h;->i:[C

    aget-char v5, v5, v0

    aget-object v4, v4, v5

    iget v5, p0, Lcom/dotgears/h;->h:F

    invoke-virtual {p1, v4, v1, v2, v5}, Lcom/dotgears/g;->a(Lcom/dotgears/i;IIF)V

    :cond_6
    iget-object v4, p0, Lcom/dotgears/h;->b:[I

    iget-object v5, p0, Lcom/dotgears/h;->i:[C

    aget-char v5, v5, v0

    aget v4, v4, v5

    add-int/2addr v1, v4

    iget v4, p0, Lcom/dotgears/h;->d:I

    sub-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method
