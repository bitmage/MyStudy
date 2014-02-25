.class public Lorg/andengine/opengl/c/a/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lorg/andengine/opengl/c/a/a/b;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lorg/andengine/opengl/c/a/a/a;Landroid/content/Context;Ljava/lang/String;II)Lorg/andengine/opengl/c/c/c;
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {p0, v0, p2, p3, p4}, Lorg/andengine/opengl/c/a/a/b;->a(Lorg/andengine/opengl/c/a/a/a;Landroid/content/res/AssetManager;Ljava/lang/String;II)Lorg/andengine/opengl/c/c/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/andengine/opengl/c/a/a/a;Landroid/content/res/AssetManager;Ljava/lang/String;II)Lorg/andengine/opengl/c/c/c;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lorg/andengine/opengl/c/a/a/b;->a:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/andengine/opengl/c/a/a/a/a;->a(Landroid/content/res/AssetManager;Ljava/lang/String;)Lorg/andengine/opengl/c/a/a/a/a;

    move-result-object v0

    invoke-static {p0, v0, p3, p4}, Lorg/andengine/opengl/c/a/a/b;->a(Lorg/andengine/opengl/c/a/a/a;Lorg/andengine/opengl/c/a/a/a/b;II)Lorg/andengine/opengl/c/c/c;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lorg/andengine/opengl/c/a/a/a;Lorg/andengine/opengl/c/a/a/a/b;II)Lorg/andengine/opengl/c/c/c;
    .locals 1

    invoke-static {p0, p1, p2, p3}, Lorg/andengine/opengl/c/c/d;->a(Lorg/andengine/opengl/c/a/a;Lorg/andengine/opengl/c/a/b/b;II)Lorg/andengine/opengl/c/c/c;

    move-result-object v0

    return-object v0
.end method

.method public static a()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lorg/andengine/opengl/c/a/a/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sput-object p0, Lorg/andengine/opengl/c/a/a/b;->a:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pAssetBasePath must end with \'/\' or be lenght zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
