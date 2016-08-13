.class public abstract Lorg/andengine/input/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/andengine/input/a/a/d;


# instance fields
.field private a:Lorg/andengine/input/a/a/e;

.field private final b:Lorg/andengine/d/a/b/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/andengine/input/a/a/b;

    invoke-direct {v0, p0}, Lorg/andengine/input/a/a/b;-><init>(Lorg/andengine/input/a/a/a;)V

    iput-object v0, p0, Lorg/andengine/input/a/a/a;->b:Lorg/andengine/d/a/b/g;

    return-void
.end method

.method static synthetic a(Lorg/andengine/input/a/a/a;)Lorg/andengine/input/a/a/e;
    .locals 1

    iget-object v0, p0, Lorg/andengine/input/a/a/a;->a:Lorg/andengine/input/a/a/e;

    return-object v0
.end method


# virtual methods
.method protected a(FFIILandroid/view/MotionEvent;)V
    .locals 2

    invoke-static {p5}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-static {p1, p2, p3, p4, v0}, Lorg/andengine/input/a/a;->a(FFIILandroid/view/MotionEvent;)Lorg/andengine/input/a/a;

    move-result-object v1

    iget-object v0, p0, Lorg/andengine/input/a/a/a;->b:Lorg/andengine/d/a/b/g;

    invoke-virtual {v0}, Lorg/andengine/d/a/b/g;->d()Lorg/andengine/d/a/b/c;

    move-result-object v0

    check-cast v0, Lorg/andengine/input/a/a/c;

    invoke-virtual {v0, v1}, Lorg/andengine/input/a/a/c;->a(Lorg/andengine/input/a/a;)V

    iget-object v1, p0, Lorg/andengine/input/a/a/a;->b:Lorg/andengine/d/a/b/g;

    invoke-virtual {v1, v0}, Lorg/andengine/d/a/b/g;->b(Lorg/andengine/d/a/b/c;)V

    return-void
.end method

.method public a(Lorg/andengine/input/a/a/e;)V
    .locals 0

    iput-object p1, p0, Lorg/andengine/input/a/a/a;->a:Lorg/andengine/input/a/a/e;

    return-void
.end method

.method public a_(F)V
    .locals 1

    iget-object v0, p0, Lorg/andengine/input/a/a/a;->b:Lorg/andengine/d/a/b/g;

    invoke-virtual {v0, p1}, Lorg/andengine/d/a/b/g;->a_(F)V

    return-void
.end method
