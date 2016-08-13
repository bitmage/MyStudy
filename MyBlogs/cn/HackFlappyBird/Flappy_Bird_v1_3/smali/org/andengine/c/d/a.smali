.class public Lorg/andengine/c/d/a;
.super Lorg/andengine/c/c/c;


# static fields
.field public static final g:Lorg/andengine/opengl/d/a/c;


# instance fields
.field protected I:Z

.field public h:Lorg/andengine/opengl/c/c/b;

.field protected final i:Lorg/andengine/c/d/a/b;

.field protected j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/16 v4, 0x1406

    const/4 v11, 0x3

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    new-instance v0, Lorg/andengine/opengl/d/a/d;

    invoke-direct {v0, v11}, Lorg/andengine/opengl/d/a/d;-><init>(I)V

    const-string v2, "a_position"

    move v5, v1

    invoke-virtual/range {v0 .. v5}, Lorg/andengine/opengl/d/a/d;->a(ILjava/lang/String;IIZ)Lorg/andengine/opengl/d/a/d;

    move-result-object v5

    const-string v7, "a_color"

    const/4 v8, 0x4

    const/16 v9, 0x1401

    move v10, v6

    invoke-virtual/range {v5 .. v10}, Lorg/andengine/opengl/d/a/d;->a(ILjava/lang/String;IIZ)Lorg/andengine/opengl/d/a/d;

    move-result-object v5

    const-string v7, "a_textureCoordinates"

    move v6, v11

    move v8, v3

    move v9, v4

    move v10, v1

    invoke-virtual/range {v5 .. v10}, Lorg/andengine/opengl/d/a/d;->a(ILjava/lang/String;IIZ)Lorg/andengine/opengl/d/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/opengl/d/a/d;->a()Lorg/andengine/opengl/d/a/c;

    move-result-object v0

    sput-object v0, Lorg/andengine/c/d/a;->g:Lorg/andengine/opengl/d/a/c;

    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/c/c/b;Lorg/andengine/c/d/a/b;Lorg/andengine/opengl/b/g;)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lorg/andengine/c/c/c;-><init>(FFFFLorg/andengine/opengl/b/g;)V

    iput-object p5, p0, Lorg/andengine/c/d/a;->h:Lorg/andengine/opengl/c/c/b;

    iput-object p6, p0, Lorg/andengine/c/d/a;->i:Lorg/andengine/c/d/a/b;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/andengine/c/d/a;->b(Z)V

    invoke-virtual {p0, p5}, Lorg/andengine/c/d/a;->a(Lorg/andengine/opengl/c/c/b;)V

    invoke-virtual {p0}, Lorg/andengine/c/d/a;->x()V

    invoke-virtual {p0}, Lorg/andengine/c/d/a;->b()V

    invoke-virtual {p0}, Lorg/andengine/c/d/a;->y()V

    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/c/c/b;Lorg/andengine/opengl/d/e;Lorg/andengine/opengl/d/a;)V
    .locals 9

    invoke-static {}, Lorg/andengine/opengl/b/b;->a()Lorg/andengine/opengl/b/b;

    move-result-object v8

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lorg/andengine/c/d/a;-><init>(FFFFLorg/andengine/opengl/c/c/b;Lorg/andengine/opengl/d/e;Lorg/andengine/opengl/d/a;Lorg/andengine/opengl/b/g;)V

    return-void
.end method

.method public constructor <init>(FFFFLorg/andengine/opengl/c/c/b;Lorg/andengine/opengl/d/e;Lorg/andengine/opengl/d/a;Lorg/andengine/opengl/b/g;)V
    .locals 9

    new-instance v0, Lorg/andengine/c/d/a/a;

    const/16 v2, 0x14

    const/4 v4, 0x1

    sget-object v5, Lorg/andengine/c/d/a;->g:Lorg/andengine/opengl/d/a/c;

    move-object v1, p6

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lorg/andengine/c/d/a/a;-><init>(Lorg/andengine/opengl/d/e;ILorg/andengine/opengl/d/a;ZLorg/andengine/opengl/d/a/c;)V

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, v0

    move-object/from16 v8, p8

    invoke-direct/range {v1 .. v8}, Lorg/andengine/c/d/a;-><init>(FFFFLorg/andengine/opengl/c/c/b;Lorg/andengine/c/d/a/b;Lorg/andengine/opengl/b/g;)V

    return-void
.end method

.method public constructor <init>(FFLorg/andengine/opengl/c/c/b;Lorg/andengine/opengl/d/e;)V
    .locals 8

    invoke-interface {p3}, Lorg/andengine/opengl/c/c/b;->b()F

    move-result v3

    invoke-interface {p3}, Lorg/andengine/opengl/c/c/b;->c()F

    move-result v4

    sget-object v7, Lorg/andengine/opengl/d/a;->a:Lorg/andengine/opengl/d/a;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Lorg/andengine/c/d/a;-><init>(FFFFLorg/andengine/opengl/c/c/b;Lorg/andengine/opengl/d/e;Lorg/andengine/opengl/d/a;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Lorg/andengine/opengl/d/c;
    .locals 1

    invoke-virtual {p0}, Lorg/andengine/c/d/a;->w()Lorg/andengine/c/d/a/b;

    move-result-object v0

    return-object v0
.end method

.method protected a(FFFFFFFF)V
    .locals 10

    iget-object v0, p0, Lorg/andengine/c/d/a;->i:Lorg/andengine/c/d/a/b;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Lorg/andengine/c/d/a/b;->a(Lorg/andengine/c/d/a;FFFFFFFF)V

    return-void
.end method

.method public a(FFFFFFFFFFFFFFFF)V
    .locals 13

    iput p1, p0, Lorg/andengine/c/d/a;->v:F

    iput p2, p0, Lorg/andengine/c/d/a;->w:F

    sub-float v4, p3, p1

    iput v4, p0, Lorg/andengine/c/d/a;->a:F

    sub-float v4, p4, p2

    iput v4, p0, Lorg/andengine/c/d/a;->b:F

    move-object v4, p0

    move/from16 v5, p9

    move/from16 v6, p10

    move/from16 v7, p11

    move/from16 v8, p12

    move/from16 v9, p13

    move/from16 v10, p14

    move/from16 v11, p15

    move/from16 v12, p16

    invoke-virtual/range {v4 .. v12}, Lorg/andengine/c/d/a;->a(FFFFFFFF)V

    iget-object v4, p0, Lorg/andengine/c/d/a;->h:Lorg/andengine/opengl/c/c/b;

    move/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-interface {v4, v0, v1, v2, v3}, Lorg/andengine/opengl/c/c/b;->a(FFFF)V

    invoke-virtual {p0}, Lorg/andengine/c/d/a;->y()V

    return-void
.end method

.method protected b()V
    .locals 1

    iget-object v0, p0, Lorg/andengine/c/d/a;->i:Lorg/andengine/c/d/a/b;

    invoke-interface {v0, p0}, Lorg/andengine/c/d/a/b;->a(Lorg/andengine/c/d/a;)V

    return-void
.end method

.method public b(FFFFFFFF)V
    .locals 1

    iput p1, p0, Lorg/andengine/c/d/a;->v:F

    iput p2, p0, Lorg/andengine/c/d/a;->w:F

    sub-float v0, p3, p1

    iput v0, p0, Lorg/andengine/c/d/a;->a:F

    sub-float v0, p4, p2

    iput v0, p0, Lorg/andengine/c/d/a;->b:F

    invoke-virtual {p0}, Lorg/andengine/c/d/a;->x()V

    iget-object v0, p0, Lorg/andengine/c/d/a;->h:Lorg/andengine/opengl/c/c/b;

    invoke-interface {v0, p5, p6, p7, p8}, Lorg/andengine/opengl/c/c/b;->a(FFFF)V

    invoke-virtual {p0}, Lorg/andengine/c/d/a;->y()V

    return-void
.end method

.method protected b(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lorg/andengine/c/c/c;->b(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V

    invoke-virtual {p0}, Lorg/andengine/c/d/a;->t()Lorg/andengine/opengl/c/c/b;

    move-result-object v0

    invoke-interface {v0}, Lorg/andengine/opengl/c/c/b;->a()Lorg/andengine/opengl/c/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/andengine/opengl/c/a;->d(Lorg/andengine/opengl/util/e;)V

    iget-object v0, p0, Lorg/andengine/c/d/a;->i:Lorg/andengine/c/d/a/b;

    iget-object v1, p0, Lorg/andengine/c/d/a;->f:Lorg/andengine/opengl/b/g;

    invoke-interface {v0, p1, v1}, Lorg/andengine/c/d/a/b;->a(Lorg/andengine/opengl/util/e;Lorg/andengine/opengl/b/g;)V

    return-void
.end method

.method protected c(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V
    .locals 3

    iget-object v0, p0, Lorg/andengine/c/d/a;->i:Lorg/andengine/c/d/a/b;

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lorg/andengine/c/d/a/b;->a(II)V

    return-void
.end method

.method protected d(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V
    .locals 2

    iget-object v0, p0, Lorg/andengine/c/d/a;->i:Lorg/andengine/c/d/a/b;

    iget-object v1, p0, Lorg/andengine/c/d/a;->f:Lorg/andengine/opengl/b/g;

    invoke-interface {v0, p1, v1}, Lorg/andengine/c/d/a/b;->b(Lorg/andengine/opengl/util/e;Lorg/andengine/opengl/b/g;)V

    invoke-super {p0, p1, p2}, Lorg/andengine/c/c/c;->d(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V

    return-void
.end method

.method public t()Lorg/andengine/opengl/c/c/b;
    .locals 1

    iget-object v0, p0, Lorg/andengine/c/d/a;->h:Lorg/andengine/opengl/c/c/b;

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget-boolean v0, p0, Lorg/andengine/c/d/a;->I:Z

    return v0
.end method

.method public v()Z
    .locals 1

    iget-boolean v0, p0, Lorg/andengine/c/d/a;->j:Z

    return v0
.end method

.method public w()Lorg/andengine/c/d/a/b;
    .locals 1

    iget-object v0, p0, Lorg/andengine/c/d/a;->i:Lorg/andengine/c/d/a/b;

    return-object v0
.end method

.method protected x()V
    .locals 1

    iget-object v0, p0, Lorg/andengine/c/d/a;->i:Lorg/andengine/c/d/a/b;

    invoke-interface {v0, p0}, Lorg/andengine/c/d/a/b;->b(Lorg/andengine/c/d/a;)V

    return-void
.end method

.method protected y()V
    .locals 1

    iget-object v0, p0, Lorg/andengine/c/d/a;->i:Lorg/andengine/c/d/a/b;

    invoke-interface {v0, p0}, Lorg/andengine/c/d/a/b;->c(Lorg/andengine/c/d/a;)V

    return-void
.end method
