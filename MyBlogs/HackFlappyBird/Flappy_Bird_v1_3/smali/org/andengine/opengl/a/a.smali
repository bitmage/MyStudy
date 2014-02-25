.class public Lorg/andengine/opengl/a/a;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Landroid/graphics/Paint;

.field protected final b:Landroid/graphics/Paint$FontMetrics;

.field protected final c:Landroid/graphics/Canvas;

.field private final d:Lorg/andengine/opengl/c/a;

.field private final e:Landroid/util/SparseArray;

.field private final f:Ljava/util/ArrayList;

.field private final g:Landroid/graphics/Paint;


# virtual methods
.method public a()F
    .locals 1

    iget-object v0, p0, Lorg/andengine/opengl/a/a;->b:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    return v0
.end method

.method protected a(Lorg/andengine/opengl/a/d;)Landroid/graphics/Bitmap;
    .locals 8

    const/4 v1, 0x0

    iget-char v0, p1, Lorg/andengine/opengl/a/d;->a:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    iget v0, p1, Lorg/andengine/opengl/a/d;->d:I

    add-int/lit8 v0, v0, 0x2

    iget v2, p1, Lorg/andengine/opengl/a/d;->e:I

    add-int/lit8 v2, v2, 0x2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    iget-object v0, p0, Lorg/andengine/opengl/a/a;->c:Landroid/graphics/Canvas;

    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lorg/andengine/opengl/a/a;->c:Landroid/graphics/Canvas;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v3, v2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v4, v2

    iget-object v5, p0, Lorg/andengine/opengl/a/a;->g:Landroid/graphics/Paint;

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget v0, p1, Lorg/andengine/opengl/a/d;->f:F

    neg-float v0, v0

    iget v1, p1, Lorg/andengine/opengl/a/d;->g:F

    invoke-virtual {p0}, Lorg/andengine/opengl/a/a;->a()F

    move-result v2

    add-float/2addr v1, v2

    neg-float v1, v1

    invoke-virtual {p0, v6, v0, v1}, Lorg/andengine/opengl/a/a;->a(Ljava/lang/String;FF)V

    return-object v7
.end method

.method protected a(Ljava/lang/String;FF)V
    .locals 4

    const/high16 v2, 0x3f80

    iget-object v0, p0, Lorg/andengine/opengl/a/a;->c:Landroid/graphics/Canvas;

    add-float v1, p2, v2

    add-float/2addr v2, p3

    iget-object v3, p0, Lorg/andengine/opengl/a/a;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public declared-synchronized a(Lorg/andengine/opengl/util/e;)V
    .locals 13

    const/4 v8, 0x1

    const/4 v9, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/opengl/a/a;->d:Lorg/andengine/opengl/c/a;

    invoke-interface {v0}, Lorg/andengine/opengl/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v11, p0, Lorg/andengine/opengl/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/andengine/opengl/a/a;->d:Lorg/andengine/opengl/c/a;

    invoke-interface {v0, p1}, Lorg/andengine/opengl/c/a;->d(Lorg/andengine/opengl/util/e;)V

    iget-object v0, p0, Lorg/andengine/opengl/a/a;->d:Lorg/andengine/opengl/c/a;

    invoke-interface {v0}, Lorg/andengine/opengl/c/a;->f()Lorg/andengine/opengl/c/c;

    move-result-object v6

    iget-object v0, p0, Lorg/andengine/opengl/a/a;->d:Lorg/andengine/opengl/c/a;

    invoke-interface {v0}, Lorg/andengine/opengl/c/a;->g()Lorg/andengine/opengl/c/f;

    move-result-object v0

    iget-boolean v12, v0, Lorg/andengine/opengl/c/f;->n:Z

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v10, v0

    :goto_0
    if-gez v10, :cond_1

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/opengl/a/d;

    invoke-virtual {v0}, Lorg/andengine/opengl/a/d;->a()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/a/a;->a(Lorg/andengine/opengl/a/d;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Lorg/andengine/d/g/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v1}, Lorg/andengine/d/g/a;->a(I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lorg/andengine/opengl/c/c;->d:Lorg/andengine/opengl/c/c;

    if-ne v6, v1, :cond_5

    move v7, v8

    :goto_1
    if-nez v7, :cond_2

    const/16 v1, 0xcf5

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    :cond_2
    if-eqz v12, :cond_6

    const/16 v1, 0xde1

    const/4 v2, 0x0

    iget v3, v0, Lorg/andengine/opengl/a/d;->b:I

    iget v0, v0, Lorg/andengine/opengl/a/d;->c:I

    invoke-static {v1, v2, v3, v0, v5}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;)V

    :goto_2
    if-nez v7, :cond_3

    const/16 v0, 0xcf5

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    :cond_3
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    add-int/lit8 v0, v10, -0x1

    move v10, v0

    goto :goto_0

    :cond_5
    move v7, v9

    goto :goto_1

    :cond_6
    const/16 v1, 0xde1

    const/4 v2, 0x0

    iget v3, v0, Lorg/andengine/opengl/a/d;->b:I

    iget v4, v0, Lorg/andengine/opengl/a/d;->c:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lorg/andengine/opengl/util/e;->a(IIIILandroid/graphics/Bitmap;Lorg/andengine/opengl/c/c;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lorg/andengine/opengl/a/a;->f:Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/andengine/opengl/a/a;->e:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/opengl/a/d;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
