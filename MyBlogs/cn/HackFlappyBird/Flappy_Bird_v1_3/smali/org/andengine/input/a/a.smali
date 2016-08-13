.class public Lorg/andengine/input/a/a;
.super Ljava/lang/Object;


# static fields
.field private static final f:Lorg/andengine/input/a/b;


# instance fields
.field protected a:I

.field protected b:F

.field protected c:F

.field protected d:I

.field protected e:Landroid/view/MotionEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/andengine/input/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/andengine/input/a/b;-><init>(Lorg/andengine/input/a/b;)V

    sput-object v0, Lorg/andengine/input/a/a;->f:Lorg/andengine/input/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(FFIILandroid/view/MotionEvent;)Lorg/andengine/input/a/a;
    .locals 6

    sget-object v0, Lorg/andengine/input/a/a;->f:Lorg/andengine/input/a/b;

    invoke-virtual {v0}, Lorg/andengine/input/a/b;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/input/a/a;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/andengine/input/a/a;->b(FFIILandroid/view/MotionEvent;)V

    return-object v0
.end method

.method private b(FFIILandroid/view/MotionEvent;)V
    .locals 0

    iput p1, p0, Lorg/andengine/input/a/a;->b:F

    iput p2, p0, Lorg/andengine/input/a/a;->c:F

    iput p3, p0, Lorg/andengine/input/a/a;->d:I

    iput p4, p0, Lorg/andengine/input/a/a;->a:I

    iput-object p5, p0, Lorg/andengine/input/a/a;->e:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    sget-object v0, Lorg/andengine/input/a/a;->f:Lorg/andengine/input/a/b;

    invoke-virtual {v0, p0}, Lorg/andengine/input/a/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(FF)V
    .locals 0

    iput p1, p0, Lorg/andengine/input/a/a;->b:F

    iput p2, p0, Lorg/andengine/input/a/a;->c:F

    return-void
.end method

.method public b()F
    .locals 1

    iget v0, p0, Lorg/andengine/input/a/a;->b:F

    return v0
.end method

.method public b(FF)V
    .locals 1

    iget v0, p0, Lorg/andengine/input/a/a;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lorg/andengine/input/a/a;->b:F

    iget v0, p0, Lorg/andengine/input/a/a;->c:F

    add-float/2addr v0, p2

    iput v0, p0, Lorg/andengine/input/a/a;->c:F

    return-void
.end method

.method public c()F
    .locals 1

    iget v0, p0, Lorg/andengine/input/a/a;->c:F

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lorg/andengine/input/a/a;->a:I

    return v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lorg/andengine/input/a/a;->d:I

    return v0
.end method

.method public f()Z
    .locals 1

    iget v0, p0, Lorg/andengine/input/a/a;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lorg/andengine/input/a/a;->d:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 2

    iget v0, p0, Lorg/andengine/input/a/a;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Z
    .locals 2

    iget v0, p0, Lorg/andengine/input/a/a;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()Z
    .locals 2

    iget v0, p0, Lorg/andengine/input/a/a;->d:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Landroid/view/MotionEvent;
    .locals 1

    iget-object v0, p0, Lorg/andengine/input/a/a;->e:Landroid/view/MotionEvent;

    return-object v0
.end method
