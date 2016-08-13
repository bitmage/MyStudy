.class public Lorg/andengine/d/b/a/c;
.super Lorg/andengine/d/b/a/d;


# static fields
.field private static final a:[F

.field private static final b:[F

.field private static final c:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x8

    new-array v0, v1, [F

    sput-object v0, Lorg/andengine/d/b/a/c;->a:[F

    new-array v0, v1, [F

    sput-object v0, Lorg/andengine/d/b/a/c;->b:[F

    new-array v0, v1, [F

    sput-object v0, Lorg/andengine/d/b/a/c;->c:[F

    return-void
.end method

.method public static a(FFFFLorg/andengine/d/a/d/a;[F)V
    .locals 3

    add-float v0, p0, p2

    add-float v1, p1, p3

    const/4 v2, 0x0

    aput p0, p5, v2

    const/4 v2, 0x1

    aput p1, p5, v2

    const/4 v2, 0x2

    aput v0, p5, v2

    const/4 v2, 0x3

    aput p1, p5, v2

    const/4 v2, 0x4

    aput v0, p5, v2

    const/4 v0, 0x5

    aput v1, p5, v0

    const/4 v0, 0x6

    aput p0, p5, v0

    const/4 v0, 0x7

    aput v1, p5, v0

    invoke-virtual {p4, p5}, Lorg/andengine/d/a/d/a;->a([F)V

    return-void
.end method

.method private static a(Lorg/andengine/b/a/a;[F)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->a()F

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->c()F

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->b()F

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x3

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->c()F

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x4

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->b()F

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x5

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->d()F

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x6

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->a()F

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x7

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->d()F

    move-result v1

    aput v1, p1, v0

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->k()F

    move-result v0

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->g()F

    move-result v1

    invoke-virtual {p0}, Lorg/andengine/b/a/a;->h()F

    move-result v2

    invoke-static {p1, v0, v1, v2}, Lorg/andengine/d/g/a;->a([FFFF)[F

    return-void
.end method

.method public static a(Lorg/andengine/c/c/c;[F)V
    .locals 6

    const/4 v0, 0x0

    invoke-virtual {p0}, Lorg/andengine/c/c/c;->o()F

    move-result v2

    invoke-virtual {p0}, Lorg/andengine/c/c/c;->p()F

    move-result v3

    invoke-virtual {p0}, Lorg/andengine/c/c/c;->k()Lorg/andengine/d/a/d/a;

    move-result-object v4

    move v1, v0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/andengine/d/b/a/c;->a(FFFFLorg/andengine/d/a/d/a;[F)V

    return-void
.end method

.method public static a(Lorg/andengine/b/a/a;Lorg/andengine/c/c/c;)Z
    .locals 3

    const/4 v2, 0x4

    sget-object v0, Lorg/andengine/d/b/a/c;->b:[F

    invoke-static {p0, v0}, Lorg/andengine/d/b/a/c;->a(Lorg/andengine/b/a/a;[F)V

    sget-object v0, Lorg/andengine/d/b/a/c;->c:[F

    invoke-static {p1, v0}, Lorg/andengine/d/b/a/c;->a(Lorg/andengine/c/c/c;[F)V

    sget-object v0, Lorg/andengine/d/b/a/c;->b:[F

    sget-object v1, Lorg/andengine/d/b/a/c;->c:[F

    invoke-static {v0, v2, v1, v2}, Lorg/andengine/d/b/a/d;->a([FI[FI)Z

    move-result v0

    return v0
.end method

.method public static a(Lorg/andengine/c/c/c;FF)Z
    .locals 2

    sget-object v0, Lorg/andengine/d/b/a/c;->a:[F

    invoke-static {p0, v0}, Lorg/andengine/d/b/a/c;->a(Lorg/andengine/c/c/c;[F)V

    sget-object v0, Lorg/andengine/d/b/a/c;->a:[F

    const/4 v1, 0x4

    invoke-static {v0, v1, p1, p2}, Lorg/andengine/d/b/a/d;->a([FIFF)Z

    move-result v0

    return v0
.end method
