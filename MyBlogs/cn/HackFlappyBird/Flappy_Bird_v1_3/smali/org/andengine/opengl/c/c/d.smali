.class public Lorg/andengine/opengl/c/c/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lorg/andengine/opengl/c/a/a;Lorg/andengine/opengl/c/a/b/b;II)Lorg/andengine/opengl/c/c/c;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lorg/andengine/opengl/c/c/d;->a(Lorg/andengine/opengl/c/a/a;Lorg/andengine/opengl/c/a/b/b;IIZ)Lorg/andengine/opengl/c/c/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/andengine/opengl/c/a/a;Lorg/andengine/opengl/c/a/b/b;IIZ)Lorg/andengine/opengl/c/c/c;
    .locals 7

    new-instance v0, Lorg/andengine/opengl/c/c/c;

    int-to-float v2, p2

    int-to-float v3, p3

    invoke-interface {p1}, Lorg/andengine/opengl/c/a/b/b;->c()I

    move-result v1

    int-to-float v4, v1

    invoke-interface {p1}, Lorg/andengine/opengl/c/a/b/b;->d()I

    move-result v1

    int-to-float v5, v1

    move-object v1, p0

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/c/c/c;-><init>(Lorg/andengine/opengl/c/a;FFFFZ)V

    invoke-interface {p0, p1, p2, p3}, Lorg/andengine/opengl/c/a/a;->a(Lorg/andengine/opengl/c/a/b/b;II)V

    return-object v0
.end method
