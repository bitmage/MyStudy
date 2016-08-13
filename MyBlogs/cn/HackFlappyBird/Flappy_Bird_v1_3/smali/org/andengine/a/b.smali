.class public abstract Lorg/andengine/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/andengine/a/d;


# instance fields
.field protected final a:Ljava/util/ArrayList;

.field protected b:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andengine/a/b;->a:Ljava/util/ArrayList;

    const/high16 v0, 0x3f80

    iput v0, p0, Lorg/andengine/a/b;->b:F

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lorg/andengine/a/b;->b:F

    return v0
.end method

.method public a(Lorg/andengine/a/c;)V
    .locals 1

    iget-object v0, p0, Lorg/andengine/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b()V
    .locals 3

    iget-object v2, p0, Lorg/andengine/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/a/c;

    invoke-interface {v0}, Lorg/andengine/a/c;->e()V

    invoke-interface {v0}, Lorg/andengine/a/c;->f()V

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public b(Lorg/andengine/a/c;)Z
    .locals 1

    iget-object v0, p0, Lorg/andengine/a/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
