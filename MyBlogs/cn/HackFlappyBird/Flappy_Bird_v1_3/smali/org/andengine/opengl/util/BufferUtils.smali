.class public Lorg/andengine/opengl/util/BufferUtils;
.super Ljava/lang/Object;


# static fields
.field private static final a:Z

.field private static final b:Z

.field private static final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v4, 0xd

    const/16 v3, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "andengine"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/andengine/opengl/util/BufferUtils;->a:Z

    sget-boolean v0, Lorg/andengine/opengl/util/BufferUtils;->a:Z

    if-eqz v0, :cond_2

    invoke-static {v3, v4}, Lorg/andengine/d/i/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-boolean v1, Lorg/andengine/opengl/util/BufferUtils;->c:Z

    :goto_1
    const/16 v0, 0x8

    invoke-static {v0}, Lorg/andengine/d/i/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sput-boolean v1, Lorg/andengine/opengl/util/BufferUtils;->b:Z

    :goto_2
    return-void

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0

    :cond_0
    sput-boolean v2, Lorg/andengine/opengl/util/BufferUtils;->c:Z

    goto :goto_1

    :cond_1
    sput-boolean v2, Lorg/andengine/opengl/util/BufferUtils;->b:Z

    goto :goto_2

    :cond_2
    sput-boolean v2, Lorg/andengine/opengl/util/BufferUtils;->c:Z

    invoke-static {v3, v4}, Lorg/andengine/d/i/a;->a(II)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Creating a "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " will actually allocate 4x the memory than requested!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/andengine/d/e/a;->c(Ljava/lang/String;)V

    :cond_3
    sput-boolean v2, Lorg/andengine/opengl/util/BufferUtils;->b:Z

    goto :goto_2
.end method

.method public static a(I)Ljava/nio/ByteBuffer;
    .locals 1

    sget-boolean v0, Lorg/andengine/opengl/util/BufferUtils;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/andengine/opengl/util/BufferUtils;->jniAllocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0
.end method

.method public static a(Ljava/nio/ByteBuffer;)V
    .locals 1

    sget-boolean v0, Lorg/andengine/opengl/util/BufferUtils;->c:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lorg/andengine/opengl/util/BufferUtils;->jniFreeDirect(Ljava/nio/ByteBuffer;)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;[FII)V
    .locals 2

    sget-boolean v0, Lorg/andengine/opengl/util/BufferUtils;->b:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p1, p2, p3}, Lorg/andengine/opengl/util/BufferUtils;->jniPut(Ljava/nio/ByteBuffer;[FII)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    shl-int/lit8 v0, p2, 0x2

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void

    :cond_1
    move v0, p3

    :goto_0
    add-int v1, p3, p2

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->putFloat(F)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static native jniAllocateDirect(I)Ljava/nio/ByteBuffer;
.end method

.method private static native jniFreeDirect(Ljava/nio/ByteBuffer;)V
.end method

.method private static native jniPut(Ljava/nio/ByteBuffer;[FII)V
.end method
