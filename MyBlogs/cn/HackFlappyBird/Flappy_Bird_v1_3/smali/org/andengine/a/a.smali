.class public abstract Lorg/andengine/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/andengine/a/c;


# instance fields
.field protected a:F

.field protected b:F

.field private final c:Lorg/andengine/a/d;

.field private d:Z


# direct methods
.method public constructor <init>(Lorg/andengine/a/d;)V
    .locals 1

    const/high16 v0, 0x3f80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/andengine/a/a;->a:F

    iput v0, p0, Lorg/andengine/a/a;->b:F

    iput-object p1, p0, Lorg/andengine/a/a;->c:Lorg/andengine/a/d;

    return-void
.end method


# virtual methods
.method protected a()Lorg/andengine/a/d;
    .locals 1

    invoke-virtual {p0}, Lorg/andengine/a/a;->g()V

    iget-object v0, p0, Lorg/andengine/a/a;->c:Lorg/andengine/a/d;

    return-object v0
.end method

.method protected b()F
    .locals 1

    invoke-virtual {p0}, Lorg/andengine/a/a;->g()V

    iget-object v0, p0, Lorg/andengine/a/a;->c:Lorg/andengine/a/d;

    invoke-interface {v0}, Lorg/andengine/a/d;->a()F

    move-result v0

    return v0
.end method

.method protected abstract c()V
.end method

.method public d()V
    .locals 0

    invoke-virtual {p0}, Lorg/andengine/a/a;->g()V

    return-void
.end method

.method public e()V
    .locals 0

    invoke-virtual {p0}, Lorg/andengine/a/a;->g()V

    return-void
.end method

.method public f()V
    .locals 1

    invoke-virtual {p0}, Lorg/andengine/a/a;->g()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/a/a;->d:Z

    return-void
.end method

.method protected g()V
    .locals 1

    iget-boolean v0, p0, Lorg/andengine/a/a;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/andengine/a/a;->c()V

    :cond_0
    return-void
.end method
