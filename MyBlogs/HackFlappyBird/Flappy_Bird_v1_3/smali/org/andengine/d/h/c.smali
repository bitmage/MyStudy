.class public Lorg/andengine/d/h/c;
.super Lorg/andengine/d/a/a/b;

# interfaces
.implements Lorg/andengine/b/b/c;


# instance fields
.field private final a:Ljava/lang/Object;


# virtual methods
.method public a(Lorg/andengine/d/h/a;)Z
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Supplied "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/andengine/d/h/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " must not be null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-super {p0, p1}, Lorg/andengine/d/a/a/b;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public a_(F)V
    .locals 3

    invoke-virtual {p0}, Lorg/andengine/d/h/c;->size()I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-gez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lorg/andengine/d/h/c;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/d/h/a;

    iget-object v2, p0, Lorg/andengine/d/h/c;->a:Ljava/lang/Object;

    invoke-interface {v0, p1, v2}, Lorg/andengine/d/h/a;->a(FLjava/lang/Object;)F

    invoke-interface {v0}, Lorg/andengine/d/h/a;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lorg/andengine/d/h/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lorg/andengine/d/h/c;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0
.end method

.method public synthetic add(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lorg/andengine/d/h/a;

    invoke-virtual {p0, p1}, Lorg/andengine/d/h/c;->a(Lorg/andengine/d/h/a;)Z

    move-result v0

    return v0
.end method
