.class public abstract Lorg/andengine/d/a/b/g;
.super Lorg/andengine/d/a/b/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/andengine/d/a/b/d;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lorg/andengine/d/a/b/c;)V
    .locals 0

    check-cast p1, Lorg/andengine/d/a/b/f;

    invoke-virtual {p0, p1}, Lorg/andengine/d/a/b/g;->a(Lorg/andengine/d/a/b/f;)V

    return-void
.end method

.method protected a(Lorg/andengine/d/a/b/f;)V
    .locals 0

    invoke-virtual {p1}, Lorg/andengine/d/a/b/f;->run()V

    return-void
.end method

.method protected abstract b()Lorg/andengine/d/a/b/f;
.end method

.method protected synthetic c()Lorg/andengine/d/a/b/c;
    .locals 1

    invoke-virtual {p0}, Lorg/andengine/d/a/b/g;->b()Lorg/andengine/d/a/b/f;

    move-result-object v0

    return-object v0
.end method
