.class public Lorg/andengine/opengl/b/b;
.super Lorg/andengine/opengl/b/g;


# static fields
.field public static a:I

.field public static b:I

.field private static c:Lorg/andengine/opengl/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lorg/andengine/opengl/b/b;->a:I

    sput v0, Lorg/andengine/opengl/b/b;->b:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "uniform mat4 u_modelViewProjectionMatrix;\nattribute vec4 a_position;\nattribute vec4 a_color;\nattribute vec2 a_textureCoordinates;\nvarying vec4 v_color;\nvarying vec2 v_textureCoordinates;\nvoid main() {\n\tv_color = a_color;\n\tv_textureCoordinates = a_textureCoordinates;\n\tgl_Position = u_modelViewProjectionMatrix * a_position;\n}"

    const-string v1, "precision lowp float;\nuniform sampler2D u_texture_0;\nvarying lowp vec4 v_color;\nvarying mediump vec2 v_textureCoordinates;\nvoid main() {\n\tgl_FragColor = v_color * texture2D(u_texture_0, v_textureCoordinates);\n}"

    invoke-direct {p0, v0, v1}, Lorg/andengine/opengl/b/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lorg/andengine/opengl/b/b;
    .locals 1

    sget-object v0, Lorg/andengine/opengl/b/b;->c:Lorg/andengine/opengl/b/b;

    if-nez v0, :cond_0

    new-instance v0, Lorg/andengine/opengl/b/b;

    invoke-direct {v0}, Lorg/andengine/opengl/b/b;-><init>()V

    sput-object v0, Lorg/andengine/opengl/b/b;->c:Lorg/andengine/opengl/b/b;

    :cond_0
    sget-object v0, Lorg/andengine/opengl/b/b;->c:Lorg/andengine/opengl/b/b;

    return-object v0
.end method


# virtual methods
.method protected a(Lorg/andengine/opengl/util/e;)V
    .locals 3

    iget v0, p0, Lorg/andengine/opengl/b/b;->h:I

    const/4 v1, 0x0

    const-string v2, "a_position"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    iget v0, p0, Lorg/andengine/opengl/b/b;->h:I

    const/4 v1, 0x1

    const-string v2, "a_color"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    iget v0, p0, Lorg/andengine/opengl/b/b;->h:I

    const/4 v1, 0x3

    const-string v2, "a_textureCoordinates"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    invoke-super {p0, p1}, Lorg/andengine/opengl/b/g;->a(Lorg/andengine/opengl/util/e;)V

    const-string v0, "u_modelViewProjectionMatrix"

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/b/b;->a(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/andengine/opengl/b/b;->a:I

    const-string v0, "u_texture_0"

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/b/b;->a(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/andengine/opengl/b/b;->b:I

    return-void
.end method

.method public a(Lorg/andengine/opengl/util/e;Lorg/andengine/opengl/d/a/c;)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lorg/andengine/opengl/b/g;->a(Lorg/andengine/opengl/util/e;Lorg/andengine/opengl/d/a/c;)V

    sget v0, Lorg/andengine/opengl/b/b;->a:I

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/andengine/opengl/util/e;->p()[F

    move-result-object v2

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    sget v0, Lorg/andengine/opengl/b/b;->b:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method
