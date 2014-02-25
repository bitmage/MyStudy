.class public Lorg/andengine/opengl/a/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:I

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lorg/andengine/d/d/a;->C:I

    sput v0, Lorg/andengine/opengl/a/b;->a:I

    const-string v0, ""

    sput-object v0, Lorg/andengine/opengl/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method public static a()V
    .locals 1

    const-string v0, ""

    invoke-static {v0}, Lorg/andengine/opengl/a/b;->a(Ljava/lang/String;)V

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
    sput-object p0, Lorg/andengine/opengl/a/b;->b:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "pAssetBasePath must end with \'/\' or be lenght zero."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
