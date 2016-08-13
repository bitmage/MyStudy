.class public Lorg/andengine/d/b/a/b;
.super Lorg/andengine/d/b/a/d;


# direct methods
.method public static a(FFFFFFFF)Z
    .locals 7

    invoke-static/range {p0 .. p5}, Lorg/andengine/d/b/a/a;->a(FFFFFF)I

    move-result v6

    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p6

    move v5, p7

    invoke-static/range {v0 .. v5}, Lorg/andengine/d/b/a/a;->a(FFFFFF)I

    move-result v0

    mul-int/2addr v0, v6

    if-gtz v0, :cond_0

    move v0, p4

    move v1, p5

    move v2, p6

    move v3, p7

    move v4, p0

    move v5, p1

    invoke-static/range {v0 .. v5}, Lorg/andengine/d/b/a/a;->a(FFFFFF)I

    move-result v6

    move v0, p4

    move v1, p5

    move v2, p6

    move v3, p7

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/andengine/d/b/a/a;->a(FFFFFF)I

    move-result v0

    mul-int/2addr v0, v6

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
