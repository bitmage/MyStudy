.class public final enum Lorg/andengine/opengl/c/b/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/andengine/opengl/c/b/a;

.field public static final enum b:Lorg/andengine/opengl/c/b/a;

.field public static final enum c:Lorg/andengine/opengl/c/b/a;

.field public static final enum d:Lorg/andengine/opengl/c/b/a;

.field private static final synthetic g:[Lorg/andengine/opengl/c/b/a;


# instance fields
.field private final e:Landroid/graphics/Bitmap$Config;

.field private final f:Lorg/andengine/opengl/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lorg/andengine/opengl/c/b/a;

    const-string v1, "RGBA_8888"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    sget-object v3, Lorg/andengine/opengl/c/c;->d:Lorg/andengine/opengl/c/c;

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/andengine/opengl/c/b/a;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap$Config;Lorg/andengine/opengl/c/c;)V

    sput-object v0, Lorg/andengine/opengl/c/b/a;->a:Lorg/andengine/opengl/c/b/a;

    new-instance v0, Lorg/andengine/opengl/c/b/a;

    const-string v1, "RGB_565"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sget-object v3, Lorg/andengine/opengl/c/c;->e:Lorg/andengine/opengl/c/c;

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/andengine/opengl/c/b/a;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap$Config;Lorg/andengine/opengl/c/c;)V

    sput-object v0, Lorg/andengine/opengl/c/b/a;->b:Lorg/andengine/opengl/c/b/a;

    new-instance v0, Lorg/andengine/opengl/c/b/a;

    const-string v1, "RGBA_4444"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    sget-object v3, Lorg/andengine/opengl/c/c;->b:Lorg/andengine/opengl/c/c;

    invoke-direct {v0, v1, v6, v2, v3}, Lorg/andengine/opengl/c/b/a;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap$Config;Lorg/andengine/opengl/c/c;)V

    sput-object v0, Lorg/andengine/opengl/c/b/a;->c:Lorg/andengine/opengl/c/b/a;

    new-instance v0, Lorg/andengine/opengl/c/b/a;

    const-string v1, "A_8"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    sget-object v3, Lorg/andengine/opengl/c/c;->f:Lorg/andengine/opengl/c/c;

    invoke-direct {v0, v1, v7, v2, v3}, Lorg/andengine/opengl/c/b/a;-><init>(Ljava/lang/String;ILandroid/graphics/Bitmap$Config;Lorg/andengine/opengl/c/c;)V

    sput-object v0, Lorg/andengine/opengl/c/b/a;->d:Lorg/andengine/opengl/c/b/a;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/andengine/opengl/c/b/a;

    sget-object v1, Lorg/andengine/opengl/c/b/a;->a:Lorg/andengine/opengl/c/b/a;

    aput-object v1, v0, v4

    sget-object v1, Lorg/andengine/opengl/c/b/a;->b:Lorg/andengine/opengl/c/b/a;

    aput-object v1, v0, v5

    sget-object v1, Lorg/andengine/opengl/c/b/a;->c:Lorg/andengine/opengl/c/b/a;

    aput-object v1, v0, v6

    sget-object v1, Lorg/andengine/opengl/c/b/a;->d:Lorg/andengine/opengl/c/b/a;

    aput-object v1, v0, v7

    sput-object v0, Lorg/andengine/opengl/c/b/a;->g:[Lorg/andengine/opengl/c/b/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/graphics/Bitmap$Config;Lorg/andengine/opengl/c/c;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/andengine/opengl/c/b/a;->e:Landroid/graphics/Bitmap$Config;

    iput-object p4, p0, Lorg/andengine/opengl/c/b/a;->f:Lorg/andengine/opengl/c/c;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/opengl/c/b/a;
    .locals 1

    const-class v0, Lorg/andengine/opengl/c/b/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/opengl/c/b/a;

    return-object v0
.end method

.method public static values()[Lorg/andengine/opengl/c/b/a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/andengine/opengl/c/b/a;->g:[Lorg/andengine/opengl/c/b/a;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/opengl/c/b/a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()Landroid/graphics/Bitmap$Config;
    .locals 1

    iget-object v0, p0, Lorg/andengine/opengl/c/b/a;->e:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public b()Lorg/andengine/opengl/c/c;
    .locals 1

    iget-object v0, p0, Lorg/andengine/opengl/c/b/a;->f:Lorg/andengine/opengl/c/c;

    return-object v0
.end method
