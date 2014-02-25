.class public Lcom/dotgears/j;
.super Ljava/lang/Object;


# static fields
.field public static A:F

.field public static B:F

.field public static a:[F

.field public static b:[F

.field public static c:[F

.field public static d:[F

.field public static e:[F

.field public static f:[F

.field public static g:[F

.field public static h:[F

.field public static i:[F

.field public static j:[F

.field public static k:[F

.field public static l:[F

.field public static m:[F

.field public static n:[F

.field public static o:[F

.field public static p:[F

.field public static q:[F

.field public static r:[F

.field public static s:[F

.field public static t:[F

.field public static u:[F

.field public static v:[F

.field public static w:[F

.field public static x:Lcom/dotgears/j;

.field public static y:I

.field public static z:I


# direct methods
.method constructor <init>()V
    .locals 8

    const/4 v0, 0x0

    const/16 v7, 0x168

    const/16 v6, 0x65

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v7, [F

    sput-object v1, Lcom/dotgears/j;->a:[F

    new-array v1, v7, [F

    sput-object v1, Lcom/dotgears/j;->b:[F

    move v1, v0

    :goto_0
    if-lt v1, v7, :cond_0

    new-array v1, v6, [F

    sput-object v1, Lcom/dotgears/j;->c:[F

    new-array v1, v6, [F

    sput-object v1, Lcom/dotgears/j;->d:[F

    new-array v1, v6, [F

    sput-object v1, Lcom/dotgears/j;->e:[F

    new-array v1, v6, [F

    sput-object v1, Lcom/dotgears/j;->f:[F

    new-array v1, v6, [F

    sput-object v1, Lcom/dotgears/j;->g:[F

    new-array v1, v6, [F

    sput-object v1, Lcom/dotgears/j;->h:[F

    new-array v1, v6, [F

    sput-object v1, Lcom/dotgears/j;->i:[F

    new-array v1, v6, [F

    sput-object v1, Lcom/dotgears/j;->j:[F

    new-array v1, v6, [F

    sput-object v1, Lcom/dotgears/j;->k:[F

    new-array v1, v6, [F

    sput-object v1, Lcom/dotgears/j;->l:[F

    new-array v1, v6, [F

    sput-object v1, Lcom/dotgears/j;->m:[F

    new-array v1, v6, [F

    sput-object v1, Lcom/dotgears/j;->n:[F

    new-array v1, v6, [F

    sput-object v1, Lcom/dotgears/j;->o:[F

    new-array v1, v6, [F

    sput-object v1, Lcom/dotgears/j;->p:[F

    new-array v1, v6, [F

    sput-object v1, Lcom/dotgears/j;->q:[F

    new-array v1, v6, [F

    sput-object v1, Lcom/dotgears/j;->r:[F

    new-array v1, v6, [F

    sput-object v1, Lcom/dotgears/j;->s:[F

    new-array v1, v6, [F

    sput-object v1, Lcom/dotgears/j;->t:[F

    new-array v1, v6, [F

    sput-object v1, Lcom/dotgears/j;->u:[F

    new-array v1, v6, [F

    sput-object v1, Lcom/dotgears/j;->v:[F

    new-array v1, v6, [F

    sput-object v1, Lcom/dotgears/j;->w:[F

    :goto_1
    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    return-void

    :cond_0
    int-to-float v2, v1

    const v3, 0x40490fda

    mul-float/2addr v2, v3

    const/high16 v3, 0x4334

    div-float/2addr v2, v3

    sget-object v3, Lcom/dotgears/j;->a:[F

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v1

    sget-object v3, Lcom/dotgears/j;->b:[F

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v2, v4

    aput v2, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    int-to-double v1, v0

    const-wide/high16 v3, 0x4059

    div-double/2addr v1, v3

    sget-object v3, Lcom/dotgears/j;->c:[F

    invoke-virtual {p0, v1, v2}, Lcom/dotgears/j;->a(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v0

    sget-object v3, Lcom/dotgears/j;->d:[F

    invoke-virtual {p0, v1, v2}, Lcom/dotgears/j;->b(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v0

    sget-object v3, Lcom/dotgears/j;->e:[F

    invoke-static {v1, v2}, Lcom/dotgears/j;->c(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v0

    sget-object v3, Lcom/dotgears/j;->f:[F

    invoke-static {v1, v2}, Lcom/dotgears/j;->d(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v0

    sget-object v3, Lcom/dotgears/j;->g:[F

    invoke-static {v1, v2}, Lcom/dotgears/j;->e(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v0

    sget-object v3, Lcom/dotgears/j;->h:[F

    invoke-static {v1, v2}, Lcom/dotgears/j;->f(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v0

    sget-object v3, Lcom/dotgears/j;->i:[F

    invoke-static {v1, v2}, Lcom/dotgears/j;->g(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v0

    sget-object v3, Lcom/dotgears/j;->j:[F

    invoke-static {v1, v2}, Lcom/dotgears/j;->h(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v0

    sget-object v3, Lcom/dotgears/j;->k:[F

    invoke-static {v1, v2}, Lcom/dotgears/j;->i(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v0

    sget-object v3, Lcom/dotgears/j;->l:[F

    invoke-static {v1, v2}, Lcom/dotgears/j;->j(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v0

    sget-object v3, Lcom/dotgears/j;->m:[F

    invoke-static {v1, v2}, Lcom/dotgears/j;->k(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v0

    sget-object v3, Lcom/dotgears/j;->n:[F

    invoke-static {v1, v2}, Lcom/dotgears/j;->l(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v0

    sget-object v3, Lcom/dotgears/j;->o:[F

    invoke-virtual {p0, v1, v2}, Lcom/dotgears/j;->m(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v0

    sget-object v3, Lcom/dotgears/j;->p:[F

    invoke-virtual {p0, v1, v2}, Lcom/dotgears/j;->n(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v0

    sget-object v3, Lcom/dotgears/j;->q:[F

    invoke-virtual {p0, v1, v2}, Lcom/dotgears/j;->o(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v0

    sget-object v3, Lcom/dotgears/j;->r:[F

    invoke-virtual {p0, v1, v2}, Lcom/dotgears/j;->p(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v0

    sget-object v3, Lcom/dotgears/j;->s:[F

    invoke-virtual {p0, v1, v2}, Lcom/dotgears/j;->q(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v0

    sget-object v3, Lcom/dotgears/j;->t:[F

    invoke-virtual {p0, v1, v2}, Lcom/dotgears/j;->r(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v0

    sget-object v3, Lcom/dotgears/j;->u:[F

    invoke-virtual {p0, v1, v2}, Lcom/dotgears/j;->s(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v0

    sget-object v3, Lcom/dotgears/j;->v:[F

    invoke-virtual {p0, v1, v2}, Lcom/dotgears/j;->t(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v0

    sget-object v3, Lcom/dotgears/j;->w:[F

    invoke-virtual {p0, v1, v2}, Lcom/dotgears/j;->u(D)D

    move-result-wide v1

    double-to-float v1, v1

    aput v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public static a(F)F
    .locals 3

    const/high16 v2, 0x43b4

    move v0, p0

    :goto_0
    cmpl-float v1, v0, v2

    if-gtz v1, :cond_0

    :goto_1
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_1

    return v0

    :cond_0
    sub-float/2addr v0, v2

    goto :goto_0

    :cond_1
    add-float/2addr v0, v2

    goto :goto_1
.end method

.method public static a()I
    .locals 3

    const v2, 0xffff

    const v0, 0x9069

    sget v1, Lcom/dotgears/j;->z:I

    and-int/2addr v1, v2

    mul-int/2addr v0, v1

    sget v1, Lcom/dotgears/j;->z:I

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    sput v0, Lcom/dotgears/j;->z:I

    sget v0, Lcom/dotgears/j;->y:I

    and-int/2addr v0, v2

    mul-int/lit16 v0, v0, 0x4650

    sget v1, Lcom/dotgears/j;->y:I

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    sput v0, Lcom/dotgears/j;->y:I

    sget v0, Lcom/dotgears/j;->z:I

    shl-int/lit8 v0, v0, 0x10

    sget v1, Lcom/dotgears/j;->y:I

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public static a(II)I
    .locals 2

    invoke-static {}, Lcom/dotgears/j;->a()I

    move-result v0

    sub-int v1, p1, p0

    rem-int/2addr v0, v1

    add-int/2addr v0, p0

    return v0
.end method

.method public static a(FFFFF)V
    .locals 5

    sub-float v0, p0, p2

    sub-float v1, p1, p3

    invoke-static {p4}, Lcom/dotgears/j;->a(F)F

    move-result v2

    invoke-static {v2}, Lcom/dotgears/j;->c(F)F

    move-result v3

    mul-float/2addr v3, v0

    invoke-static {v2}, Lcom/dotgears/j;->b(F)F

    move-result v4

    mul-float/2addr v4, v1

    sub-float/2addr v3, v4

    add-float/2addr v3, p2

    sput v3, Lcom/dotgears/j;->A:F

    invoke-static {v2}, Lcom/dotgears/j;->b(F)F

    move-result v3

    mul-float/2addr v0, v3

    invoke-static {v2}, Lcom/dotgears/j;->c(F)F

    move-result v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    sput v0, Lcom/dotgears/j;->B:F

    return-void
.end method

.method public static a(I)V
    .locals 3

    const-string v0, "FlappyBird"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Engine: Randomize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    rem-int/lit16 v0, p0, 0x7d00

    sput v0, Lcom/dotgears/j;->y:I

    const v0, 0xffff

    rem-int v0, p0, v0

    sput v0, Lcom/dotgears/j;->z:I

    return-void
.end method

.method public static b(F)F
    .locals 2

    sget-object v0, Lcom/dotgears/j;->a:[F

    float-to-int v1, p0

    aget v0, v0, v1

    return v0
.end method

.method public static b(I)F
    .locals 1

    sget-object v0, Lcom/dotgears/j;->i:[F

    aget v0, v0, p0

    return v0
.end method

.method static c(D)D
    .locals 4

    const-wide/high16 v0, 0x3fe0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const-wide/high16 v0, 0x4000

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4000

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x4010

    mul-double/2addr v2, p0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0

    sub-double/2addr v0, v2

    goto :goto_0
.end method

.method public static c(F)F
    .locals 2

    sget-object v0, Lcom/dotgears/j;->b:[F

    float-to-int v1, p0

    aget v0, v0, v1

    return v0
.end method

.method public static c(I)F
    .locals 1

    sget-object v0, Lcom/dotgears/j;->d:[F

    aget v0, v0, p0

    return v0
.end method

.method static d(D)D
    .locals 2

    mul-double v0, p0, p0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static d(I)F
    .locals 1

    sget-object v0, Lcom/dotgears/j;->e:[F

    aget v0, v0, p0

    return v0
.end method

.method static e(D)D
    .locals 6

    const-wide/high16 v4, 0x3ff0

    sub-double v0, p0, v4

    mul-double v2, v0, v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public static e(I)F
    .locals 1

    sget-object v0, Lcom/dotgears/j;->f:[F

    aget v0, v0, p0

    return v0
.end method

.method static f(D)D
    .locals 6

    const-wide/high16 v4, 0x4000

    const-wide/high16 v2, 0x3fe0

    cmpg-double v0, p0, v2

    if-gez v0, :cond_0

    const-wide/high16 v0, 0x4010

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    :goto_0
    return-wide v0

    :cond_0
    mul-double v0, v4, p0

    sub-double/2addr v0, v4

    mul-double/2addr v2, v0

    mul-double/2addr v2, v0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method public static f(I)F
    .locals 1

    sget-object v0, Lcom/dotgears/j;->g:[F

    aget v0, v0, p0

    return v0
.end method

.method static g(D)D
    .locals 2

    mul-double v0, p0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static g(I)F
    .locals 1

    sget-object v0, Lcom/dotgears/j;->h:[F

    aget v0, v0, p0

    return v0
.end method

.method static h(D)D
    .locals 6

    const-wide/high16 v4, 0x3ff0

    sub-double v0, p0, v4

    mul-double v2, v0, v0

    mul-double/2addr v0, v2

    sub-double v2, v4, p0

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public static h(I)F
    .locals 1

    sget-object v0, Lcom/dotgears/j;->i:[F

    aget v0, v0, p0

    return v0
.end method

.method static i(D)D
    .locals 6

    const-wide/high16 v4, 0x3ff0

    const-wide/high16 v0, 0x3fe0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const-wide/high16 v0, 0x4020

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    :goto_0
    return-wide v0

    :cond_0
    sub-double v0, p0, v4

    const-wide/high16 v2, -0x3fe0

    mul-double/2addr v2, v0

    mul-double/2addr v2, v0

    mul-double/2addr v2, v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    goto :goto_0
.end method

.method public static i(I)F
    .locals 1

    sget-object v0, Lcom/dotgears/j;->j:[F

    aget v0, v0, p0

    return v0
.end method

.method static j(D)D
    .locals 2

    mul-double v0, p0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public static j(I)F
    .locals 1

    sget-object v0, Lcom/dotgears/j;->k:[F

    aget v0, v0, p0

    return v0
.end method

.method static k(D)D
    .locals 6

    const-wide/high16 v4, 0x3ff0

    sub-double v0, p0, v4

    mul-double v2, v0, v0

    mul-double/2addr v2, v0

    mul-double/2addr v2, v0

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public static k(I)F
    .locals 1

    sget-object v0, Lcom/dotgears/j;->l:[F

    aget v0, v0, p0

    return v0
.end method

.method static l(D)D
    .locals 6

    const-wide/high16 v4, 0x4000

    const-wide/high16 v2, 0x3fe0

    cmpg-double v0, p0, v2

    if-gez v0, :cond_0

    const-wide/high16 v0, 0x4030

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v0, p0

    :goto_0
    return-wide v0

    :cond_0
    mul-double v0, v4, p0

    sub-double/2addr v0, v4

    mul-double/2addr v2, v0

    mul-double/2addr v2, v0

    mul-double/2addr v2, v0

    mul-double/2addr v2, v0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method public static l(I)F
    .locals 1

    sget-object v0, Lcom/dotgears/j;->m:[F

    aget v0, v0, p0

    return v0
.end method

.method public static m(I)F
    .locals 1

    sget-object v0, Lcom/dotgears/j;->n:[F

    aget v0, v0, p0

    return v0
.end method

.method public static n(I)F
    .locals 1

    sget-object v0, Lcom/dotgears/j;->o:[F

    aget v0, v0, p0

    return v0
.end method

.method public static o(I)F
    .locals 1

    sget-object v0, Lcom/dotgears/j;->p:[F

    aget v0, v0, p0

    return v0
.end method

.method public static p(I)F
    .locals 1

    sget-object v0, Lcom/dotgears/j;->q:[F

    aget v0, v0, p0

    return v0
.end method

.method public static q(I)F
    .locals 1

    sget-object v0, Lcom/dotgears/j;->o:[F

    aget v0, v0, p0

    return v0
.end method

.method public static r(I)F
    .locals 1

    sget-object v0, Lcom/dotgears/j;->p:[F

    aget v0, v0, p0

    return v0
.end method

.method public static s(I)F
    .locals 1

    sget-object v0, Lcom/dotgears/j;->q:[F

    aget v0, v0, p0

    return v0
.end method

.method public static t(I)F
    .locals 1

    sget-object v0, Lcom/dotgears/j;->u:[F

    aget v0, v0, p0

    return v0
.end method

.method public static u(I)F
    .locals 1

    sget-object v0, Lcom/dotgears/j;->v:[F

    aget v0, v0, p0

    return v0
.end method

.method public static v(I)F
    .locals 1

    sget-object v0, Lcom/dotgears/j;->w:[F

    aget v0, v0, p0

    return v0
.end method


# virtual methods
.method a(D)D
    .locals 2

    mul-double v0, p1, p1

    return-wide v0
.end method

.method b(D)D
    .locals 2

    const-wide/high16 v0, 0x4000

    sub-double v0, p1, v0

    mul-double/2addr v0, p1

    neg-double v0, v0

    return-wide v0
.end method

.method m(D)D
    .locals 8

    const-wide v0, 0x40346b9c347764a4L

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000

    const-wide/high16 v4, 0x4024

    const-wide/high16 v6, 0x3ff0

    sub-double v6, p1, v6

    mul-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method n(D)D
    .locals 8

    const-wide/high16 v6, 0x3ff0

    const-wide v0, -0x3fcb9463cb889b5cL

    add-double v2, p1, v6

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000

    const-wide/high16 v4, -0x3fdc

    mul-double/2addr v4, p1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    return-wide v0
.end method

.method o(D)D
    .locals 12

    const-wide/high16 v10, 0x3fe0

    const-wide/high16 v8, 0x3ff0

    const-wide/high16 v6, 0x4000

    cmpg-double v0, p1, v10

    if-gez v0, :cond_0

    const-wide v0, 0x40346b9c347764a4L

    mul-double v2, v6, p1

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v10

    const-wide/high16 v2, 0x4024

    mul-double v4, v6, p1

    sub-double/2addr v4, v8

    mul-double/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, -0x3fcb9463cb889b5cL

    mul-double v2, v6, p1

    sub-double/2addr v2, v8

    add-double/2addr v2, v8

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    const-wide/high16 v2, -0x3fdc

    mul-double v4, v6, p1

    sub-double/2addr v4, v8

    mul-double/2addr v2, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    add-double/2addr v0, v6

    mul-double/2addr v0, v10

    goto :goto_0
.end method

.method p(D)D
    .locals 4

    mul-double v0, p1, p1

    mul-double/2addr v0, p1

    const-wide v2, 0x400921fb54442d18L

    mul-double/2addr v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v2, p1

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method q(D)D
    .locals 8

    const-wide/high16 v6, 0x3ff0

    sub-double v0, v6, p1

    mul-double v2, v0, v0

    mul-double/2addr v2, v0

    const-wide v4, 0x400921fb54442d18L

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    sub-double v0, v2, v0

    sub-double v0, v6, v0

    return-wide v0
.end method

.method r(D)D
    .locals 10

    const-wide v4, 0x400921fb54442d18L

    const-wide/high16 v1, 0x4000

    const-wide/high16 v8, 0x3ff0

    const-wide/high16 v6, 0x3fe0

    cmpg-double v0, p1, v6

    if-gez v0, :cond_0

    mul-double v0, v1, p1

    mul-double v2, v0, v0

    mul-double/2addr v2, v0

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    sub-double v0, v2, v0

    mul-double/2addr v0, v6

    :goto_0
    return-wide v0

    :cond_0
    mul-double v0, v1, p1

    sub-double/2addr v0, v8

    sub-double v0, v8, v0

    mul-double v2, v0, v0

    mul-double/2addr v2, v0

    mul-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    sub-double v0, v2, v0

    sub-double v0, v8, v0

    mul-double/2addr v0, v6

    add-double/2addr v0, v6

    goto :goto_0
.end method

.method s(D)D
    .locals 4

    const-wide/high16 v2, 0x3ff0

    sub-double v0, v2, p1

    invoke-virtual {p0, v0, v1}, Lcom/dotgears/j;->t(D)D

    move-result-wide v0

    sub-double v0, v2, v0

    return-wide v0
.end method

.method t(D)D
    .locals 4

    const-wide v0, 0x3fd745d1745d1746L

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    const-wide v0, 0x405e400000000000L

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    const-wide/high16 v2, 0x4030

    div-double/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x3fe745d1745d1746L

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    const-wide v0, 0x4022266666666666L

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    const-wide v2, 0x4023cccccccccccdL

    mul-double/2addr v2, p1

    sub-double/2addr v0, v2

    const-wide v2, 0x400b333333333333L

    add-double/2addr v0, v2

    goto :goto_0

    :cond_1
    const-wide v0, 0x3feccccccccccccdL

    cmpg-double v0, p1, v0

    if-gez v0, :cond_2

    const-wide v0, 0x40282209ed8ff4a7L

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    const-wide v2, 0x4033a2ad506aa7a4L

    mul-double/2addr v2, p1

    sub-double/2addr v0, v2

    const-wide v2, 0x4021cbcea4cdef44L

    add-double/2addr v0, v2

    goto :goto_0

    :cond_2
    const-wide v0, 0x402599999999999aL

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    const-wide v2, 0x4034851eb851eb85L

    mul-double/2addr v2, p1

    sub-double/2addr v0, v2

    const-wide v2, 0x402570a3d70a3d71L

    add-double/2addr v0, v2

    goto :goto_0
.end method

.method u(D)D
    .locals 6

    const-wide/high16 v1, 0x4000

    const-wide/high16 v4, 0x3fe0

    cmpg-double v0, p1, v4

    if-gez v0, :cond_0

    mul-double v0, p1, v1

    invoke-virtual {p0, v0, v1}, Lcom/dotgears/j;->s(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    :goto_0
    return-wide v0

    :cond_0
    mul-double v0, p1, v1

    const-wide/high16 v2, 0x3ff0

    sub-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/dotgears/j;->t(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    add-double/2addr v0, v4

    goto :goto_0
.end method
