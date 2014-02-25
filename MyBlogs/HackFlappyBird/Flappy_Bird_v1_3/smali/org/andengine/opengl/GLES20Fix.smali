.class public Lorg/andengine/opengl/GLES20Fix;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "andengine"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/andengine/opengl/GLES20Fix;->a:Z

    const/16 v3, 0x8

    invoke-static {v3}, Lorg/andengine/d/i/a;->a(I)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_0

    sput-boolean v1, Lorg/andengine/opengl/GLES20Fix;->b:Z

    :goto_1
    return-void

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/andengine/d/f/a;

    const-string v1, "Inherently incompatible device detected."

    invoke-direct {v0, v1}, Lorg/andengine/d/f/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    sput-boolean v2, Lorg/andengine/opengl/GLES20Fix;->b:Z

    goto :goto_1
.end method

.method public static native glVertexAttribPointer(IIIZII)V
.end method
