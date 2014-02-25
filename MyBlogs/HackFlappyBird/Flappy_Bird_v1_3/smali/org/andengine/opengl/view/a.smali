.class public Lorg/andengine/opengl/view/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/opengl/GLSurfaceView$EGLConfigChooser;


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I


# instance fields
.field private final e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x5

    new-array v0, v4, [I

    sput-object v0, Lorg/andengine/opengl/view/a;->a:[I

    const/16 v0, 0x13

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    aput v3, v0, v4

    const/16 v1, 0x3023

    aput v1, v0, v7

    const/4 v1, 0x3

    aput v6, v0, v1

    const/16 v1, 0x3022

    aput v1, v0, v5

    aput v3, v0, v3

    const/16 v1, 0x3021

    aput v1, v0, v6

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3040

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v5, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x3032

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v4, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x3031

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v7, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x3038

    aput v2, v0, v1

    sput-object v0, Lorg/andengine/opengl/view/a;->b:[I

    const/16 v0, 0x13

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    aput v3, v0, v4

    const/16 v1, 0x3023

    aput v1, v0, v7

    const/4 v1, 0x3

    aput v6, v0, v1

    const/16 v1, 0x3022

    aput v1, v0, v5

    aput v3, v0, v3

    const/16 v1, 0x3021

    aput v1, v0, v6

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3040

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v5, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x30e0

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v4, v0, v1

    const/16 v1, 0x10

    const/16 v2, 0x30e1

    aput v2, v0, v1

    const/16 v1, 0x11

    aput v7, v0, v1

    const/16 v1, 0x12

    const/16 v2, 0x3038

    aput v2, v0, v1

    sput-object v0, Lorg/andengine/opengl/view/a;->c:[I

    const/16 v0, 0xf

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x3024

    aput v2, v0, v1

    aput v3, v0, v4

    const/16 v1, 0x3023

    aput v1, v0, v7

    const/4 v1, 0x3

    aput v6, v0, v1

    const/16 v1, 0x3022

    aput v1, v0, v5

    aput v3, v0, v3

    const/16 v1, 0x3021

    aput v1, v0, v6

    const/16 v1, 0x8

    const/16 v2, 0x3025

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x3026

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x3040

    aput v2, v0, v1

    const/16 v1, 0xd

    aput v5, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0x3038

    aput v2, v0, v1

    sput-object v0, Lorg/andengine/opengl/view/a;->d:[I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/andengine/opengl/view/a;->h:I

    iput v0, p0, Lorg/andengine/opengl/view/a;->i:I

    iput v0, p0, Lorg/andengine/opengl/view/a;->j:I

    iput v0, p0, Lorg/andengine/opengl/view/a;->k:I

    iput v0, p0, Lorg/andengine/opengl/view/a;->l:I

    iput v0, p0, Lorg/andengine/opengl/view/a;->m:I

    iput-boolean p1, p0, Lorg/andengine/opengl/view/a;->e:Z

    return-void
.end method

.method private static a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I
    .locals 2

    sget-object v0, Lorg/andengine/opengl/view/a;->a:[I

    invoke-interface {p0, p1, p2, p3, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetConfigAttrib(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/andengine/opengl/view/a;->a:[I

    const/4 v1, 0x0

    aget p4, v0, v1

    :cond_0
    return p4
.end method

.method private static a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)I
    .locals 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    sget-object v5, Lorg/andengine/opengl/view/a;->a:[I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "EGLCONFIG_FALLBACK failed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lorg/andengine/opengl/view/a;->a:[I

    aget v0, v0, v4

    return v0
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Lorg/andengine/opengl/view/b;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lorg/andengine/opengl/view/a;->a:[I

    aput v1, v0, v1

    iget-boolean v0, p0, Lorg/andengine/opengl/view/a;->e:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/andengine/opengl/view/a;->b:[I

    invoke-static {p1, p2, v0}, Lorg/andengine/opengl/view/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)I

    move-result v4

    if-lez v4, :cond_0

    iput-boolean v2, p0, Lorg/andengine/opengl/view/a;->f:Z

    sget-object v3, Lorg/andengine/opengl/view/a;->b:[I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/view/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[IILorg/andengine/opengl/view/b;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/andengine/opengl/view/a;->c:[I

    invoke-static {p1, p2, v0}, Lorg/andengine/opengl/view/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)I

    move-result v4

    if-lez v4, :cond_1

    iput-boolean v2, p0, Lorg/andengine/opengl/view/a;->g:Z

    sget-object v3, Lorg/andengine/opengl/view/a;->c:[I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/view/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[IILorg/andengine/opengl/view/b;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/andengine/opengl/view/a;->d:[I

    invoke-static {p1, p2, v0}, Lorg/andengine/opengl/view/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[I)I

    move-result v4

    if-lez v4, :cond_2

    sget-object v3, Lorg/andengine/opengl/view/a;->d:[I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/view/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[IILorg/andengine/opengl/view/b;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Ljavax/microedition/khronos/egl/EGLConfig;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[IILorg/andengine/opengl/view/b;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 6

    new-array v3, p4, [Ljavax/microedition/khronos/egl/EGLConfig;

    sget-object v5, Lorg/andengine/opengl/view/a;->a:[I

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move v4, p4

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/egl/EGL10;->eglChooseConfig(Ljavax/microedition/khronos/egl/EGLDisplay;[I[Ljavax/microedition/khronos/egl/EGLConfig;I[I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "findEGLConfig failed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2, v3, p5}, Lorg/andengine/opengl/view/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;Lorg/andengine/opengl/view/b;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;[Ljavax/microedition/khronos/egl/EGLConfig;Lorg/andengine/opengl/view/b;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 10

    const/4 v8, 0x0

    move v7, v8

    :goto_0
    array-length v0, p3

    if-lt v7, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No EGLConfig found!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget-object v9, p3, v7

    if-eqz v9, :cond_1

    const/16 v0, 0x3024

    invoke-static {p1, p2, v9, v0, v8}, Lorg/andengine/opengl/view/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v1

    const/16 v0, 0x3023

    invoke-static {p1, p2, v9, v0, v8}, Lorg/andengine/opengl/view/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v2

    const/16 v0, 0x3022

    invoke-static {p1, p2, v9, v0, v8}, Lorg/andengine/opengl/view/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v3

    const/16 v0, 0x3021

    invoke-static {p1, p2, v9, v0, v8}, Lorg/andengine/opengl/view/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v4

    const/16 v0, 0x3025

    invoke-static {p1, p2, v9, v0, v8}, Lorg/andengine/opengl/view/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v5

    const/16 v0, 0x3026

    invoke-static {p1, p2, v9, v0, v8}, Lorg/andengine/opengl/view/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLConfig;II)I

    move-result v6

    move-object v0, p4

    invoke-virtual/range {v0 .. v6}, Lorg/andengine/opengl/view/b;->a(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    iput v1, p0, Lorg/andengine/opengl/view/a;->h:I

    iput v2, p0, Lorg/andengine/opengl/view/a;->i:I

    iput v3, p0, Lorg/andengine/opengl/view/a;->j:I

    iput v4, p0, Lorg/andengine/opengl/view/a;->k:I

    iput v5, p0, Lorg/andengine/opengl/view/a;->l:I

    iput v6, p0, Lorg/andengine/opengl/view/a;->m:I

    return-object v9

    :cond_1
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lorg/andengine/opengl/view/a;->g:Z

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/view/a;->h:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/view/a;->i:I

    return v0
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 1

    :try_start_0
    sget-object v0, Lorg/andengine/opengl/view/b;->a:Lorg/andengine/opengl/view/b;

    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/opengl/view/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Lorg/andengine/opengl/view/b;)Ljavax/microedition/khronos/egl/EGLConfig;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    sget-object v0, Lorg/andengine/opengl/view/b;->b:Lorg/andengine/opengl/view/b;

    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/opengl/view/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Lorg/andengine/opengl/view/b;)Ljavax/microedition/khronos/egl/EGLConfig;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    sget-object v0, Lorg/andengine/opengl/view/b;->c:Lorg/andengine/opengl/view/b;

    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/opengl/view/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Lorg/andengine/opengl/view/b;)Ljavax/microedition/khronos/egl/EGLConfig;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_0

    :catch_2
    move-exception v0

    sget-object v0, Lorg/andengine/opengl/view/b;->d:Lorg/andengine/opengl/view/b;

    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/opengl/view/a;->a(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;Lorg/andengine/opengl/view/b;)Ljavax/microedition/khronos/egl/EGLConfig;

    move-result-object v0

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/view/a;->j:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/view/a;->k:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/view/a;->l:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/view/a;->m:I

    return v0
.end method
