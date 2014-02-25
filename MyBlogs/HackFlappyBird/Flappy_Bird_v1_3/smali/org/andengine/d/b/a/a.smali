.class public Lorg/andengine/d/b/a/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(FFFFFF)I
    .locals 7

    const/4 v1, 0x0

    sub-float v2, p2, p0

    sub-float v3, p3, p1

    sub-float v4, p4, p0

    sub-float v5, p5, p1

    mul-float v0, v4, v3

    mul-float v6, v5, v2

    sub-float/2addr v0, v6

    cmpl-float v6, v0, v1

    if-nez v6, :cond_0

    mul-float v0, v4, v2

    mul-float v6, v5, v3

    add-float/2addr v0, v6

    cmpl-float v6, v0, v1

    if-lez v6, :cond_0

    sub-float v0, v4, v2

    sub-float v4, v5, v3

    mul-float/2addr v0, v2

    mul-float v2, v4, v3

    add-float/2addr v0, v2

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    move v0, v1

    :cond_0
    cmpg-float v2, v0, v1

    if-gez v2, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
