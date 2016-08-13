.class public Lorg/andengine/opengl/c/a/a/a;
.super Lorg/andengine/opengl/c/a/c;


# instance fields
.field private final j:Lorg/andengine/opengl/c/b/a;


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/c/e;IILorg/andengine/opengl/c/b/a;Lorg/andengine/opengl/c/f;Lorg/andengine/opengl/c/a/b;)V
    .locals 7

    invoke-virtual {p4}, Lorg/andengine/opengl/c/b/a;->b()Lorg/andengine/opengl/c/c;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/c/a/c;-><init>(Lorg/andengine/opengl/c/e;IILorg/andengine/opengl/c/c;Lorg/andengine/opengl/c/f;Lorg/andengine/opengl/c/a/b;)V

    iput-object p4, p0, Lorg/andengine/opengl/c/a/a/a;->j:Lorg/andengine/opengl/c/b/a;

    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/c/e;IILorg/andengine/opengl/c/f;)V
    .locals 7

    sget-object v4, Lorg/andengine/opengl/c/b/a;->a:Lorg/andengine/opengl/c/b/a;

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/c/a/a/a;-><init>(Lorg/andengine/opengl/c/e;IILorg/andengine/opengl/c/b/a;Lorg/andengine/opengl/c/f;Lorg/andengine/opengl/c/a/b;)V

    return-void
.end method


# virtual methods
.method protected e(Lorg/andengine/opengl/util/e;)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/andengine/opengl/c/a/a/a;->j:Lorg/andengine/opengl/c/b/a;

    invoke-virtual {v2}, Lorg/andengine/opengl/c/b/a;->b()Lorg/andengine/opengl/c/c;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lorg/andengine/opengl/c/c;->a()I

    move-result v4

    invoke-virtual/range {v20 .. v20}, Lorg/andengine/opengl/c/c;->b()I

    move-result v8

    invoke-virtual/range {v20 .. v20}, Lorg/andengine/opengl/c/c;->c()I

    move-result v9

    const/16 v2, 0xde1

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lorg/andengine/opengl/c/a/a/a;->g:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/andengine/opengl/c/a/a/a;->h:I

    const/4 v7, 0x0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Landroid/opengl/GLES20;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/andengine/opengl/c/a/a/a;->c:Lorg/andengine/opengl/c/f;

    iget-boolean v0, v2, Lorg/andengine/opengl/c/f;->n:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/andengine/opengl/c/a/a/a;->j:Lorg/andengine/opengl/c/b/a;

    invoke-virtual {v2}, Lorg/andengine/opengl/c/b/a;->a()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    move-object/from16 v17, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/opengl/c/a/a/a;->i:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lorg/andengine/opengl/c/a/a/a;->k()Lorg/andengine/opengl/c/a/b;

    move-result-object v24

    const/4 v2, 0x0

    move/from16 v19, v2

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v23

    if-lt v0, v1, :cond_1

    return-void

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v17, v2

    goto :goto_0

    :cond_1
    move-object/from16 v0, v22

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/andengine/opengl/c/a/a/a/b;

    :try_start_0
    move-object/from16 v0, v17

    invoke-interface {v2, v0}, Lorg/andengine/opengl/c/a/a/a/b;->a(Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_3

    new-instance v3, Lorg/andengine/d/f/b;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Caused by: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " --> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " returned a null Bitmap."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/andengine/d/f/b;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/andengine/d/f/b; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    if-eqz v24, :cond_8

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v2, v3}, Lorg/andengine/opengl/c/a/b;->a(Lorg/andengine/opengl/c/a/a;Lorg/andengine/opengl/c/a/b/b;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    add-int/lit8 v2, v19, 0x1

    move/from16 v19, v2

    goto :goto_1

    :cond_3
    :try_start_1
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Lorg/andengine/d/g/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Lorg/andengine/d/g/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-object v3, Lorg/andengine/opengl/c/c;->d:Lorg/andengine/opengl/c/c;

    move-object/from16 v0, v20

    if-ne v0, v3, :cond_6

    const/4 v3, 0x1

    move/from16 v18, v3

    :goto_3
    if-nez v18, :cond_4

    const/16 v3, 0xcf5

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    :cond_4
    if-eqz v21, :cond_7

    const/16 v3, 0xde1

    const/4 v4, 0x0

    invoke-interface {v2}, Lorg/andengine/opengl/c/a/a/a/b;->a()I

    move-result v5

    invoke-interface {v2}, Lorg/andengine/opengl/c/a/a/a/b;->b()I

    move-result v6

    invoke-static/range {v3 .. v9}, Landroid/opengl/GLUtils;->texSubImage2D(IIIILandroid/graphics/Bitmap;II)V

    :goto_4
    if-nez v18, :cond_5

    const/16 v3, 0xcf5

    const/4 v4, 0x4

    invoke-static {v3, v4}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    :cond_5
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    if-eqz v24, :cond_2

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-interface {v0, v1, v2}, Lorg/andengine/opengl/c/a/b;->a(Lorg/andengine/opengl/c/a/a;Lorg/andengine/opengl/c/a/b/b;)V

    goto :goto_2

    :cond_6
    const/4 v3, 0x0

    move/from16 v18, v3

    goto :goto_3

    :cond_7
    const/16 v11, 0xde1

    const/4 v12, 0x0

    invoke-interface {v2}, Lorg/andengine/opengl/c/a/a/a/b;->a()I

    move-result v13

    invoke-interface {v2}, Lorg/andengine/opengl/c/a/a/a/b;->b()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/andengine/opengl/c/a/a/a;->b:Lorg/andengine/opengl/c/c;

    move-object/from16 v16, v0

    move-object/from16 v10, p1

    move-object v15, v7

    invoke-virtual/range {v10 .. v16}, Lorg/andengine/opengl/util/e;->a(IIIILandroid/graphics/Bitmap;Lorg/andengine/opengl/c/c;)V
    :try_end_1
    .catch Lorg/andengine/d/f/b; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_8
    throw v3
.end method
