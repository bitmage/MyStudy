.class public Lorg/andengine/opengl/c/f;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lorg/andengine/opengl/c/f;

.field public static final b:Lorg/andengine/opengl/c/f;

.field public static final c:Lorg/andengine/opengl/c/f;

.field public static final d:Lorg/andengine/opengl/c/f;

.field public static final e:Lorg/andengine/opengl/c/f;

.field public static final f:Lorg/andengine/opengl/c/f;

.field public static final g:Lorg/andengine/opengl/c/f;

.field public static final h:Lorg/andengine/opengl/c/f;

.field public static final i:Lorg/andengine/opengl/c/f;


# instance fields
.field public final j:I

.field public final k:I

.field public final l:F

.field public final m:F

.field public final n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v5, 0x0

    const v3, 0x812f

    const/16 v14, 0x2901

    const/16 v7, 0x2601

    const/16 v1, 0x2600

    new-instance v0, Lorg/andengine/opengl/c/f;

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/c/f;-><init>(IIIIZ)V

    sput-object v0, Lorg/andengine/opengl/c/f;->a:Lorg/andengine/opengl/c/f;

    new-instance v6, Lorg/andengine/opengl/c/f;

    move v8, v7

    move v9, v3

    move v10, v3

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lorg/andengine/opengl/c/f;-><init>(IIIIZ)V

    sput-object v6, Lorg/andengine/opengl/c/f;->b:Lorg/andengine/opengl/c/f;

    new-instance v8, Lorg/andengine/opengl/c/f;

    move v9, v1

    move v10, v1

    move v11, v14

    move v12, v14

    move v13, v5

    invoke-direct/range {v8 .. v13}, Lorg/andengine/opengl/c/f;-><init>(IIIIZ)V

    sput-object v8, Lorg/andengine/opengl/c/f;->c:Lorg/andengine/opengl/c/f;

    new-instance v6, Lorg/andengine/opengl/c/f;

    move v8, v7

    move v9, v14

    move v10, v14

    move v11, v5

    invoke-direct/range {v6 .. v11}, Lorg/andengine/opengl/c/f;-><init>(IIIIZ)V

    sput-object v6, Lorg/andengine/opengl/c/f;->d:Lorg/andengine/opengl/c/f;

    new-instance v0, Lorg/andengine/opengl/c/f;

    const/4 v5, 0x1

    move v2, v1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/c/f;-><init>(IIIIZ)V

    sput-object v0, Lorg/andengine/opengl/c/f;->e:Lorg/andengine/opengl/c/f;

    new-instance v6, Lorg/andengine/opengl/c/f;

    const/4 v11, 0x1

    move v8, v7

    move v9, v3

    move v10, v3

    invoke-direct/range {v6 .. v11}, Lorg/andengine/opengl/c/f;-><init>(IIIIZ)V

    sput-object v6, Lorg/andengine/opengl/c/f;->f:Lorg/andengine/opengl/c/f;

    new-instance v0, Lorg/andengine/opengl/c/f;

    const/4 v5, 0x1

    move v2, v1

    move v3, v14

    move v4, v14

    invoke-direct/range {v0 .. v5}, Lorg/andengine/opengl/c/f;-><init>(IIIIZ)V

    sput-object v0, Lorg/andengine/opengl/c/f;->g:Lorg/andengine/opengl/c/f;

    new-instance v6, Lorg/andengine/opengl/c/f;

    const/4 v11, 0x1

    move v8, v7

    move v9, v14

    move v10, v14

    invoke-direct/range {v6 .. v11}, Lorg/andengine/opengl/c/f;-><init>(IIIIZ)V

    sput-object v6, Lorg/andengine/opengl/c/f;->h:Lorg/andengine/opengl/c/f;

    sget-object v0, Lorg/andengine/opengl/c/f;->a:Lorg/andengine/opengl/c/f;

    sput-object v0, Lorg/andengine/opengl/c/f;->i:Lorg/andengine/opengl/c/f;

    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/andengine/opengl/c/f;->k:I

    iput p2, p0, Lorg/andengine/opengl/c/f;->j:I

    int-to-float v0, p3

    iput v0, p0, Lorg/andengine/opengl/c/f;->l:F

    int-to-float v0, p4

    iput v0, p0, Lorg/andengine/opengl/c/f;->m:F

    iput-boolean p5, p0, Lorg/andengine/opengl/c/f;->n:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/16 v2, 0xde1

    const/16 v0, 0x2801

    iget v1, p0, Lorg/andengine/opengl/c/f;->k:I

    int-to-float v1, v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2800

    iget v1, p0, Lorg/andengine/opengl/c/f;->j:I

    int-to-float v1, v1

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2802

    iget v1, p0, Lorg/andengine/opengl/c/f;->m:F

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    const/16 v0, 0x2803

    iget v1, p0, Lorg/andengine/opengl/c/f;->l:F

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    return-void
.end method
