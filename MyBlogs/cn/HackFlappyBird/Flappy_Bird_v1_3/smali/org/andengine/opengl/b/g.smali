.class public Lorg/andengine/opengl/b/g;
.super Ljava/lang/Object;


# static fields
.field private static final a:[I

.field private static final b:[I

.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field private static final l:[B


# instance fields
.field protected final f:Lorg/andengine/opengl/b/b/a;

.field protected final g:Lorg/andengine/opengl/b/b/a;

.field protected h:I

.field protected i:Z

.field protected final j:Ljava/util/HashMap;

.field protected final k:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x1

    new-array v0, v1, [I

    sput-object v0, Lorg/andengine/opengl/b/g;->a:[I

    new-array v0, v1, [I

    sput-object v0, Lorg/andengine/opengl/b/g;->b:[I

    new-array v0, v1, [I

    sput-object v0, Lorg/andengine/opengl/b/g;->c:[I

    new-array v0, v1, [I

    sput-object v0, Lorg/andengine/opengl/b/g;->d:[I

    new-array v0, v1, [I

    sput-object v0, Lorg/andengine/opengl/b/g;->e:[I

    const/16 v0, 0x40

    new-array v0, v0, [B

    sput-object v0, Lorg/andengine/opengl/b/g;->l:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/andengine/opengl/b/b/b;

    invoke-direct {v0, p1}, Lorg/andengine/opengl/b/b/b;-><init>(Ljava/lang/String;)V

    new-instance v1, Lorg/andengine/opengl/b/b/b;

    invoke-direct {v1, p2}, Lorg/andengine/opengl/b/b/b;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lorg/andengine/opengl/b/g;-><init>(Lorg/andengine/opengl/b/b/a;Lorg/andengine/opengl/b/b/a;)V

    return-void
.end method

.method public constructor <init>(Lorg/andengine/opengl/b/b/a;Lorg/andengine/opengl/b/b/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/andengine/opengl/b/g;->h:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/b/g;->j:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/b/g;->k:Ljava/util/HashMap;

    iput-object p1, p0, Lorg/andengine/opengl/b/g;->f:Lorg/andengine/opengl/b/b/a;

    iput-object p2, p0, Lorg/andengine/opengl/b/g;->g:Lorg/andengine/opengl/b/b/a;

    return-void
.end method

.method private static a(Ljava/lang/String;I)I
    .locals 4

    const/4 v3, 0x0

    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/andengine/opengl/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not create Shader of type: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/andengine/opengl/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const v1, 0x8b81

    sget-object v2, Lorg/andengine/opengl/b/g;->a:[I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    sget-object v1, Lorg/andengine/opengl/b/g;->a:[I

    aget v1, v1, v3

    if-nez v1, :cond_1

    new-instance v1, Lorg/andengine/opengl/b/a/a;

    invoke-static {v0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lorg/andengine/opengl/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_1
    return v0
.end method

.method private a()V
    .locals 13

    const/4 v12, -0x1

    const/16 v2, 0x40

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/andengine/opengl/b/g;->j:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lorg/andengine/opengl/b/g;->b:[I

    aput v4, v0, v4

    iget v0, p0, Lorg/andengine/opengl/b/g;->h:I

    const v1, 0x8b86

    sget-object v3, Lorg/andengine/opengl/b/g;->b:[I

    invoke-static {v0, v1, v3, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    sget-object v0, Lorg/andengine/opengl/b/g;->b:[I

    aget v11, v0, v4

    move v1, v4

    :goto_0
    if-lt v1, v11, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/andengine/opengl/b/g;->h:I

    sget-object v3, Lorg/andengine/opengl/b/g;->c:[I

    sget-object v5, Lorg/andengine/opengl/b/g;->d:[I

    sget-object v7, Lorg/andengine/opengl/b/g;->e:[I

    sget-object v9, Lorg/andengine/opengl/b/g;->l:[B

    move v6, v4

    move v8, v4

    move v10, v4

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveUniform(III[II[II[II[BI)V

    sget-object v0, Lorg/andengine/opengl/b/g;->c:[I

    aget v0, v0, v4

    if-nez v0, :cond_1

    :goto_1
    if-ge v0, v2, :cond_1

    sget-object v3, Lorg/andengine/opengl/b/g;->l:[B

    aget-byte v3, v3, v0

    if-nez v3, :cond_3

    :cond_1
    new-instance v3, Ljava/lang/String;

    sget-object v5, Lorg/andengine/opengl/b/g;->l:[B

    invoke-direct {v3, v5, v4, v0}, Ljava/lang/String;-><init>([BII)V

    iget v0, p0, Lorg/andengine/opengl/b/g;->h:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v12, :cond_5

    move v0, v4

    :goto_2
    if-ge v0, v2, :cond_2

    sget-object v3, Lorg/andengine/opengl/b/g;->l:[B

    aget-byte v3, v3, v0

    if-nez v3, :cond_4

    :cond_2
    new-instance v3, Ljava/lang/String;

    sget-object v5, Lorg/andengine/opengl/b/g;->l:[B

    invoke-direct {v3, v5, v4, v0}, Ljava/lang/String;-><init>([BII)V

    iget v0, p0, Lorg/andengine/opengl/b/g;->h:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v12, :cond_5

    new-instance v0, Lorg/andengine/opengl/b/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid location for uniform: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/andengine/opengl/b/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lorg/andengine/opengl/b/g;->j:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v12, -0x1

    const/16 v2, 0x40

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/andengine/opengl/b/g;->k:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lorg/andengine/opengl/b/g;->b:[I

    aput v4, v0, v4

    iget v0, p0, Lorg/andengine/opengl/b/g;->h:I

    const v1, 0x8b89

    sget-object v3, Lorg/andengine/opengl/b/g;->b:[I

    invoke-static {v0, v1, v3, v4}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    sget-object v0, Lorg/andengine/opengl/b/g;->b:[I

    aget v11, v0, v4

    move v1, v4

    :goto_0
    if-lt v1, v11, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lorg/andengine/opengl/b/g;->h:I

    sget-object v3, Lorg/andengine/opengl/b/g;->c:[I

    sget-object v5, Lorg/andengine/opengl/b/g;->d:[I

    sget-object v7, Lorg/andengine/opengl/b/g;->e:[I

    sget-object v9, Lorg/andengine/opengl/b/g;->l:[B

    move v6, v4

    move v8, v4

    move v10, v4

    invoke-static/range {v0 .. v10}, Landroid/opengl/GLES20;->glGetActiveAttrib(III[II[II[II[BI)V

    sget-object v0, Lorg/andengine/opengl/b/g;->c:[I

    aget v0, v0, v4

    if-nez v0, :cond_1

    :goto_1
    if-ge v0, v2, :cond_1

    sget-object v3, Lorg/andengine/opengl/b/g;->l:[B

    aget-byte v3, v3, v0

    if-nez v3, :cond_3

    :cond_1
    new-instance v3, Ljava/lang/String;

    sget-object v5, Lorg/andengine/opengl/b/g;->l:[B

    invoke-direct {v3, v5, v4, v0}, Ljava/lang/String;-><init>([BII)V

    iget v0, p0, Lorg/andengine/opengl/b/g;->h:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v12, :cond_5

    move v0, v4

    :goto_2
    if-ge v0, v2, :cond_2

    sget-object v3, Lorg/andengine/opengl/b/g;->l:[B

    aget-byte v3, v3, v0

    if-nez v3, :cond_4

    :cond_2
    new-instance v3, Ljava/lang/String;

    sget-object v5, Lorg/andengine/opengl/b/g;->l:[B

    invoke-direct {v3, v5, v4, v0}, Ljava/lang/String;-><init>([BII)V

    iget v0, p0, Lorg/andengine/opengl/b/g;->h:I

    invoke-static {v0, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    if-ne v0, v12, :cond_5

    new-instance v0, Lorg/andengine/opengl/b/a/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid location for attribute: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/andengine/opengl/b/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v5, p0, Lorg/andengine/opengl/b/g;->k:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lorg/andengine/opengl/b/g;->j:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Lorg/andengine/opengl/b/a/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected uniform: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. Existing uniforms: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/andengine/opengl/b/g;->j:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/andengine/opengl/b/a/b;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Lorg/andengine/opengl/util/e;)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/andengine/opengl/b/g;->h:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    iget v0, p0, Lorg/andengine/opengl/b/g;->h:I

    const v1, 0x8b82

    sget-object v2, Lorg/andengine/opengl/b/g;->a:[I

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    sget-object v0, Lorg/andengine/opengl/b/g;->a:[I

    aget v0, v0, v3

    if-nez v0, :cond_0

    new-instance v0, Lorg/andengine/opengl/b/a/c;

    iget v1, p0, Lorg/andengine/opengl/b/g;->h:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/andengine/opengl/b/a/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/andengine/opengl/b/g;->c()V

    invoke-direct {p0}, Lorg/andengine/opengl/b/g;->a()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/opengl/b/g;->i:Z

    return-void
.end method

.method public a(Lorg/andengine/opengl/util/e;Lorg/andengine/opengl/d/a/c;)V
    .locals 1

    iget-boolean v0, p0, Lorg/andengine/opengl/b/g;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/andengine/opengl/b/g;->c(Lorg/andengine/opengl/util/e;)V

    :cond_0
    iget v0, p0, Lorg/andengine/opengl/b/g;->h:I

    invoke-virtual {p1, v0}, Lorg/andengine/opengl/util/e;->c(I)V

    invoke-virtual {p2}, Lorg/andengine/opengl/d/a/c;->a()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/andengine/opengl/b/g;->i:Z

    return-void
.end method

.method public b(Lorg/andengine/opengl/util/e;)V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lorg/andengine/opengl/b/g;->i:Z

    return v0
.end method

.method protected c(Lorg/andengine/opengl/util/e;)V
    .locals 6

    iget-object v0, p0, Lorg/andengine/opengl/b/g;->f:Lorg/andengine/opengl/b/b/a;

    invoke-interface {v0, p1}, Lorg/andengine/opengl/b/b/a;->a(Lorg/andengine/opengl/util/e;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x8b31

    invoke-static {v0, v1}, Lorg/andengine/opengl/b/g;->a(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lorg/andengine/opengl/b/g;->g:Lorg/andengine/opengl/b/b/a;

    invoke-interface {v2, p1}, Lorg/andengine/opengl/b/b/a;->a(Lorg/andengine/opengl/util/e;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x8b30

    invoke-static {v2, v3}, Lorg/andengine/opengl/b/g;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v4

    iput v4, p0, Lorg/andengine/opengl/b/g;->h:I

    iget v4, p0, Lorg/andengine/opengl/b/g;->h:I

    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v4, p0, Lorg/andengine/opengl/b/g;->h:I

    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/andengine/opengl/b/g;->a(Lorg/andengine/opengl/util/e;)V
    :try_end_0
    .catch Lorg/andengine/opengl/b/a/c; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    invoke-static {v3}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    return-void

    :catch_0
    move-exception v1

    new-instance v3, Lorg/andengine/opengl/b/a/c;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "VertexShaderSource:\n##########################\n"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n##########################"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n\nFragmentShaderSource:\n##########################\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n##########################"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v1}, Lorg/andengine/opengl/b/a/c;-><init>(Ljava/lang/String;Lorg/andengine/opengl/b/a/b;)V

    throw v3
.end method
