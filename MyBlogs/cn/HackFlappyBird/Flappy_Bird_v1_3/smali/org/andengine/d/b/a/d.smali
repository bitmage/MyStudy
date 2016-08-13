.class public Lorg/andengine/d/b/a/d;
.super Lorg/andengine/d/b/a/a;


# direct methods
.method public static a([FIFF)Z
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    move-object v0, p0

    move v1, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v0 .. v6}, Lorg/andengine/d/b/a/d;->a([FIIIIFF)Z

    move-result v0

    return v0
.end method

.method public static a([FIIIIFF)Z
    .locals 9

    const/4 v1, 0x0

    add-int/lit8 v3, p1, -0x1

    move v0, v3

    move v2, v1

    move v3, v1

    :goto_0
    if-lt v3, p1, :cond_0

    return v2

    :cond_0
    invoke-static {p0, p2, p4, v3}, Lorg/andengine/opengl/util/f;->a([FIII)F

    move-result v4

    invoke-static {p0, p3, p4, v3}, Lorg/andengine/opengl/util/f;->a([FIII)F

    move-result v5

    invoke-static {p0, p2, p4, v0}, Lorg/andengine/opengl/util/f;->a([FIII)F

    move-result v6

    invoke-static {p0, p3, p4, v0}, Lorg/andengine/opengl/util/f;->a([FIII)F

    move-result v0

    cmpg-float v7, v5, p6

    if-gez v7, :cond_1

    cmpl-float v7, v0, p6

    if-gez v7, :cond_2

    :cond_1
    cmpg-float v7, v0, p6

    if-gez v7, :cond_5

    cmpl-float v7, v5, p6

    if-ltz v7, :cond_5

    :cond_2
    cmpg-float v7, v4, p5

    if-lez v7, :cond_3

    cmpg-float v7, v6, p5

    if-gtz v7, :cond_5

    :cond_3
    sub-float v7, p6, v5

    sub-float/2addr v0, v5

    div-float v0, v7, v0

    sub-float v5, v6, v4

    mul-float/2addr v0, v5

    add-float/2addr v0, v4

    cmpg-float v0, v0, p5

    if-gez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    xor-int/2addr v0, v2

    :goto_2
    add-int/lit8 v2, v3, 0x1

    move v8, v2

    move v2, v0

    move v0, v3

    move v3, v8

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method private static a([FIIIII[FIIII)Z
    .locals 12

    move/from16 v0, p4

    invoke-static {p0, p1, p3, v0}, Lorg/andengine/opengl/util/f;->a([FIII)F

    move-result v3

    move/from16 v0, p4

    invoke-static {p0, p2, p3, v0}, Lorg/andengine/opengl/util/f;->a([FIII)F

    move-result v4

    move/from16 v0, p5

    invoke-static {p0, p1, p3, v0}, Lorg/andengine/opengl/util/f;->a([FIII)F

    move-result v5

    move/from16 v0, p5

    invoke-static {p0, p2, p3, v0}, Lorg/andengine/opengl/util/f;->a([FIII)F

    move-result v6

    add-int/lit8 v7, p7, -0x2

    move v11, v7

    :goto_0
    if-gez v11, :cond_0

    add-int/lit8 v7, p7, -0x1

    move-object/from16 v0, p6

    move/from16 v1, p8

    move/from16 v2, p10

    invoke-static {v0, v1, v2, v7}, Lorg/andengine/opengl/util/f;->a([FIII)F

    move-result v7

    add-int/lit8 v8, p7, -0x1

    move-object/from16 v0, p6

    move/from16 v1, p9

    move/from16 v2, p10

    invoke-static {v0, v1, v2, v8}, Lorg/andengine/opengl/util/f;->a([FIII)F

    move-result v8

    const/4 v9, 0x0

    move-object/from16 v0, p6

    move/from16 v1, p8

    move/from16 v2, p10

    invoke-static {v0, v1, v2, v9}, Lorg/andengine/opengl/util/f;->a([FIII)F

    move-result v9

    const/4 v10, 0x0

    move-object/from16 v0, p6

    move/from16 v1, p9

    move/from16 v2, p10

    invoke-static {v0, v1, v2, v10}, Lorg/andengine/opengl/util/f;->a([FIII)F

    move-result v10

    invoke-static/range {v3 .. v10}, Lorg/andengine/d/b/a/b;->a(FFFFFFFF)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    move-object/from16 v0, p6

    move/from16 v1, p8

    move/from16 v2, p10

    invoke-static {v0, v1, v2, v11}, Lorg/andengine/opengl/util/f;->a([FIII)F

    move-result v7

    move-object/from16 v0, p6

    move/from16 v1, p9

    move/from16 v2, p10

    invoke-static {v0, v1, v2, v11}, Lorg/andengine/opengl/util/f;->a([FIII)F

    move-result v8

    add-int/lit8 v9, v11, 0x1

    move-object/from16 v0, p6

    move/from16 v1, p8

    move/from16 v2, p10

    invoke-static {v0, v1, v2, v9}, Lorg/andengine/opengl/util/f;->a([FIII)F

    move-result v9

    add-int/lit8 v10, v11, 0x1

    move-object/from16 v0, p6

    move/from16 v1, p9

    move/from16 v2, p10

    invoke-static {v0, v1, v2, v10}, Lorg/andengine/opengl/util/f;->a([FIII)F

    move-result v10

    invoke-static/range {v3 .. v10}, Lorg/andengine/d/b/a/b;->a(FFFFFFFF)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v11, -0x1

    move v11, v7

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static a([FIIII[FIIII)Z
    .locals 14

    add-int/lit8 v7, p1, -0x2

    :goto_0
    if-gez v7, :cond_0

    add-int/lit8 v7, p1, -0x1

    const/4 v8, 0x0

    move-object v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-static/range {v3 .. v13}, Lorg/andengine/d/b/a/d;->a([FIIIII[FIIII)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v8, v7, 0x1

    move-object v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    invoke-static/range {v3 .. v13}, Lorg/andengine/d/b/a/d;->a([FIIIII[FIIII)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p7

    move/from16 v2, p9

    invoke-static {v0, v1, v2, v3}, Lorg/andengine/opengl/util/f;->a([FIII)F

    move-result v3

    const/4 v4, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p8

    move/from16 v2, p9

    invoke-static {v0, v1, v2, v4}, Lorg/andengine/opengl/util/f;->a([FIII)F

    move-result v4

    invoke-static {p0, p1, v3, v4}, Lorg/andengine/d/b/a/d;->a([FIFF)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    move/from16 v0, p2

    move/from16 v1, p4

    invoke-static {p0, v0, v1, v3}, Lorg/andengine/opengl/util/f;->a([FIII)F

    move-result v3

    const/4 v4, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {p0, v0, v1, v4}, Lorg/andengine/opengl/util/f;->a([FIII)F

    move-result v4

    move-object/from16 v0, p5

    move/from16 v1, p6

    invoke-static {v0, v1, v3, v4}, Lorg/andengine/d/b/a/d;->a([FIFF)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static a([FI[FI)Z
    .locals 10

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v5, p2

    move v6, p3

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-static/range {v0 .. v9}, Lorg/andengine/d/b/a/d;->a([FIIII[FIIII)Z

    move-result v0

    return v0
.end method
