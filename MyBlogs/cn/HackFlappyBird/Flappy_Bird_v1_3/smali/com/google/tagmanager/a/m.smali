.class public final Lcom/google/tagmanager/a/m;
.super Ljava/lang/Object;


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private d:I

.field private final e:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/google/tagmanager/a/m;->d:I

    iput-object p1, p0, Lcom/google/tagmanager/a/m;->e:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/google/tagmanager/a/m;->a:[B

    iput v0, p0, Lcom/google/tagmanager/a/m;->c:I

    array-length v0, p2

    iput v0, p0, Lcom/google/tagmanager/a/m;->b:I

    return-void
.end method

.method public static a(Ljava/io/OutputStream;)Lcom/google/tagmanager/a/m;
    .locals 1

    const/16 v0, 0x1000

    invoke-static {p0, v0}, Lcom/google/tagmanager/a/m;->a(Ljava/io/OutputStream;I)Lcom/google/tagmanager/a/m;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/OutputStream;I)Lcom/google/tagmanager/a/m;
    .locals 2

    new-instance v0, Lcom/google/tagmanager/a/m;

    new-array v1, p1, [B

    invoke-direct {v0, p0, v1}, Lcom/google/tagmanager/a/m;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method private b()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/tagmanager/a/m;->e:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/tagmanager/a/n;

    invoke-direct {v0}, Lcom/google/tagmanager/a/n;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/a/m;->e:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/google/tagmanager/a/m;->a:[B

    iget v2, p0, Lcom/google/tagmanager/a/m;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/google/tagmanager/a/m;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/a/m;->e:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/tagmanager/a/m;->b()V

    :cond_0
    return-void
.end method

.method public a(B)V
    .locals 3

    iget v0, p0, Lcom/google/tagmanager/a/m;->c:I

    iget v1, p0, Lcom/google/tagmanager/a/m;->b:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/google/tagmanager/a/m;->b()V

    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/a/m;->a:[B

    iget v1, p0, Lcom/google/tagmanager/a/m;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/tagmanager/a/m;->c:I

    aput-byte p1, v0, v1

    iget v0, p0, Lcom/google/tagmanager/a/m;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/tagmanager/a/m;->d:I

    return-void
.end method

.method public a(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/a/m;->e(I)V

    return-void
.end method

.method public a(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/a/m;->c(J)V

    return-void
.end method

.method public a(Lcom/google/tagmanager/a/h;)V
    .locals 1

    invoke-virtual {p1}, Lcom/google/tagmanager/a/h;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/m;->d(I)V

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/a/m;->b(Lcom/google/tagmanager/a/h;)V

    return-void
.end method

.method public a(Lcom/google/tagmanager/a/h;II)V
    .locals 4

    iget v0, p0, Lcom/google/tagmanager/a/m;->b:I

    iget v1, p0, Lcom/google/tagmanager/a/m;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_0

    iget-object v0, p0, Lcom/google/tagmanager/a/m;->a:[B

    iget v1, p0, Lcom/google/tagmanager/a/m;->c:I

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/google/tagmanager/a/h;->b([BIII)V

    iget v0, p0, Lcom/google/tagmanager/a/m;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/tagmanager/a/m;->c:I

    iget v0, p0, Lcom/google/tagmanager/a/m;->d:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/tagmanager/a/m;->d:I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/tagmanager/a/m;->b:I

    iget v1, p0, Lcom/google/tagmanager/a/m;->c:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/tagmanager/a/m;->a:[B

    iget v2, p0, Lcom/google/tagmanager/a/m;->c:I

    invoke-virtual {p1, v1, p2, v2, v0}, Lcom/google/tagmanager/a/h;->b([BIII)V

    add-int v1, p2, v0

    sub-int v2, p3, v0

    iget v3, p0, Lcom/google/tagmanager/a/m;->b:I

    iput v3, p0, Lcom/google/tagmanager/a/m;->c:I

    iget v3, p0, Lcom/google/tagmanager/a/m;->d:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/tagmanager/a/m;->d:I

    invoke-direct {p0}, Lcom/google/tagmanager/a/m;->b()V

    iget v0, p0, Lcom/google/tagmanager/a/m;->b:I

    if-gt v2, v0, :cond_1

    iget-object v0, p0, Lcom/google/tagmanager/a/m;->a:[B

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/google/tagmanager/a/h;->b([BIII)V

    iput v2, p0, Lcom/google/tagmanager/a/m;->c:I

    :goto_1
    iget v0, p0, Lcom/google/tagmanager/a/m;->d:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/google/tagmanager/a/m;->d:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/tagmanager/a/m;->e:Ljava/io/OutputStream;

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/tagmanager/a/h;->a(Ljava/io/OutputStream;II)V

    goto :goto_1
.end method

.method public b(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/a/m;->d(I)V

    return-void
.end method

.method public b(J)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/a/m;->d(J)V

    return-void
.end method

.method public b(Lcom/google/tagmanager/a/h;)V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/google/tagmanager/a/h;->a()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/tagmanager/a/m;->a(Lcom/google/tagmanager/a/h;II)V

    return-void
.end method

.method public c(I)V
    .locals 1

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/m;->a(B)V

    return-void
.end method

.method public c(J)V
    .locals 4

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/m;->c(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/m;->c(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public d(I)V
    .locals 1

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/a/m;->c(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/m;->c(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

.method public d(J)V
    .locals 2

    long-to-int v0, p1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/m;->c(I)V

    const/16 v0, 0x8

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/m;->c(I)V

    const/16 v0, 0x10

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/m;->c(I)V

    const/16 v0, 0x18

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/m;->c(I)V

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/m;->c(I)V

    const/16 v0, 0x28

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/m;->c(I)V

    const/16 v0, 0x30

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/m;->c(I)V

    const/16 v0, 0x38

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/m;->c(I)V

    return-void
.end method

.method public e(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/m;->c(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/m;->c(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/m;->c(I)V

    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Lcom/google/tagmanager/a/m;->c(I)V

    return-void
.end method
