.class public Lorg/andengine/opengl/b/a;
.super Lorg/andengine/opengl/b/g;


# static fields
.field public static a:I

.field private static b:Lorg/andengine/opengl/b/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lorg/andengine/opengl/b/a;->a:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "uniform mat4 u_modelViewProjectionMatrix;\nattribute vec4 a_position;\nattribute vec4 a_color;\nvarying vec4 v_color;\nvoid main() {\n\tgl_Position = u_modelViewProjectionMatrix * a_position;\n\tv_color = a_color;\n}"

    const-string v1, "precision lowp float;\nvarying vec4 v_color;\nvoid main() {\n\tgl_FragColor = v_color;\n}"

    invoke-direct {p0, v0, v1}, Lorg/andengine/opengl/b/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a()Lorg/andengine/opengl/b/a;
    .locals 1

    sget-object v0, Lorg/andengine/opengl/b/a;->b:Lorg/andengine/opengl/b/a;

    if-nez v0, :cond_0

    new-instance v0, Lorg/andengine/opengl/b/a;

    invoke-direct {v0}, Lorg/andengine/opengl/b/a;-><init>()V

    sput-object v0, Lorg/andengine/opengl/b/a;->b:Lorg/andengine/opengl/b/a;

    :cond_0
    sget-object v0, Lorg/andengine/opengl/b/a;->b:Lorg/andengine/opengl/b/a;

    return-object v0
.end method


# virtual methods
.method protected a(Lorg/andengine/opengl/util/e;)V
    .locals 3

    iget v0, p0, Lorg/andengine/opengl/b/a;->h:I

    const/4 v1, 0x0

    const-string v2, "a_position"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    iget v0, p0, Lorg/andengine/opengl/b/a;->h:I

    const/4 v1, 0x1

    const-string v2, "a_color"

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    invoke-super {p0, p1}, Lorg/andengine/opengl/b/g;->a(Lorg/andengine/opengl/util/e;)V

    const-string v0, "u_modelViewProjectionMatrix"

    invoke-virtual {p0, v0}, Lorg/andengine/opengl/b/a;->a(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/andengine/opengl/b/a;->a:I

    return-void
.end method

.method public a(Lorg/andengine/opengl/util/e;Lorg/andengine/opengl/d/a/c;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    invoke-super {p0, p1, p2}, Lorg/andengine/opengl/b/g;->a(Lorg/andengine/opengl/util/e;Lorg/andengine/opengl/d/a/c;)V

    sget v0, Lorg/andengine/opengl/b/a;->a:I

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/andengine/opengl/util/e;->p()[F

    move-result-object v2

    invoke-static {v0, v1, v3, v2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    return-void
.end method

.method public b(Lorg/andengine/opengl/util/e;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    invoke-super {p0, p1}, Lorg/andengine/opengl/b/g;->b(Lorg/andengine/opengl/util/e;)V

    return-void
.end method
