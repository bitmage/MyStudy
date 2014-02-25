.class public Lorg/andengine/b/c/a/b;
.super Lorg/andengine/b/c/a/a;


# instance fields
.field private final a:F

.field private final b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Lorg/andengine/b/c/a/a;-><init>()V

    iput p1, p0, Lorg/andengine/b/c/a/b;->a:F

    iput p2, p0, Lorg/andengine/b/c/a/b;->b:F

    return-void
.end method


# virtual methods
.method public a(Lorg/andengine/opengl/view/RenderSurfaceView;II)V
    .locals 6

    const/high16 v5, 0x4000

    invoke-static {p2, p3}, Lorg/andengine/b/c/a/a;->a(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    iget v0, p0, Lorg/andengine/b/c/a/b;->a:F

    iget v1, p0, Lorg/andengine/b/c/a/b;->b:F

    div-float/2addr v0, v1

    int-to-float v1, v3

    int-to-float v2, v4

    div-float/2addr v1, v2

    cmpg-float v1, v1, v0

    if-gez v1, :cond_0

    int-to-float v1, v4

    mul-float/2addr v1, v0

    int-to-float v0, v4

    iget v2, p0, Lorg/andengine/b/c/a/b;->b:F

    div-float/2addr v2, v0

    :goto_0
    int-to-float v3, v3

    mul-float/2addr v3, v2

    iput v3, p0, Lorg/andengine/b/c/a/b;->c:F

    int-to-float v3, v4

    mul-float/2addr v2, v3

    iput v2, p0, Lorg/andengine/b/c/a/b;->d:F

    iget v2, p0, Lorg/andengine/b/c/a/b;->a:F

    iget v3, p0, Lorg/andengine/b/c/a/b;->c:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    iput v2, p0, Lorg/andengine/b/c/a/b;->e:F

    iget v2, p0, Lorg/andengine/b/c/a/b;->c:F

    iget v3, p0, Lorg/andengine/b/c/a/b;->e:F

    add-float/2addr v2, v3

    iput v2, p0, Lorg/andengine/b/c/a/b;->f:F

    iget v2, p0, Lorg/andengine/b/c/a/b;->b:F

    iget v3, p0, Lorg/andengine/b/c/a/b;->d:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    iput v2, p0, Lorg/andengine/b/c/a/b;->h:F

    iget v2, p0, Lorg/andengine/b/c/a/b;->d:F

    iget v3, p0, Lorg/andengine/b/c/a/b;->h:F

    add-float/2addr v2, v3

    iput v2, p0, Lorg/andengine/b/c/a/b;->g:F

    float-to-int v1, v1

    float-to-int v0, v0

    invoke-virtual {p1, v1, v0}, Lorg/andengine/opengl/view/RenderSurfaceView;->a(II)V

    return-void

    :cond_0
    int-to-float v1, v3

    div-float v0, v1, v0

    int-to-float v1, v3

    iget v2, p0, Lorg/andengine/b/c/a/b;->a:F

    div-float/2addr v2, v1

    goto :goto_0
.end method
