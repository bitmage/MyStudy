.class public abstract Lorg/andengine/opengl/c/a/c;
.super Lorg/andengine/opengl/c/d;

# interfaces
.implements Lorg/andengine/opengl/c/a/a;


# instance fields
.field protected final g:I

.field protected final h:I

.field protected final i:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lorg/andengine/opengl/c/e;IILorg/andengine/opengl/c/c;Lorg/andengine/opengl/c/f;Lorg/andengine/opengl/c/a/b;)V
    .locals 1

    invoke-direct {p0, p1, p4, p5, p6}, Lorg/andengine/opengl/c/d;-><init>(Lorg/andengine/opengl/c/e;Lorg/andengine/opengl/c/c;Lorg/andengine/opengl/c/f;Lorg/andengine/opengl/c/b;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/andengine/opengl/c/a/c;->i:Ljava/util/ArrayList;

    iput p2, p0, Lorg/andengine/opengl/c/a/c;->g:I

    iput p3, p0, Lorg/andengine/opengl/c/a/c;->h:I

    return-void
.end method

.method private b(Lorg/andengine/opengl/c/a/b/b;II)V
    .locals 3

    if-gez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal negative pTextureX supplied: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal negative pTextureY supplied: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-interface {p1}, Lorg/andengine/opengl/c/a/b/b;->c()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p0}, Lorg/andengine/opengl/c/a/c;->a()I

    move-result v1

    if-gt v0, v1, :cond_2

    invoke-interface {p1}, Lorg/andengine/opengl/c/a/b/b;->d()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p0}, Lorg/andengine/opengl/c/a/c;->b()I

    move-result v1

    if-le v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Supplied pTextureAtlasSource must not exceed bounds of Texture."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/c/a/c;->g:I

    return v0
.end method

.method public a(Lorg/andengine/opengl/c/a/b/b;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lorg/andengine/opengl/c/a/c;->b(Lorg/andengine/opengl/c/a/b/b;II)V

    invoke-interface {p1, p2}, Lorg/andengine/opengl/c/a/b/b;->a(I)V

    invoke-interface {p1, p3}, Lorg/andengine/opengl/c/a/b/b;->b(I)V

    iget-object v0, p0, Lorg/andengine/opengl/c/a/c;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/opengl/c/a/c;->e:Z

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/c/a/c;->h:I

    return v0
.end method

.method public synthetic h()Lorg/andengine/opengl/c/b;
    .locals 1

    invoke-virtual {p0}, Lorg/andengine/opengl/c/a/c;->j()Lorg/andengine/opengl/c/a/b;

    move-result-object v0

    return-object v0
.end method

.method public j()Lorg/andengine/opengl/c/a/b;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/andengine/opengl/c/a/c;->k()Lorg/andengine/opengl/c/a/b;

    move-result-object v0

    return-object v0
.end method

.method public k()Lorg/andengine/opengl/c/a/b;
    .locals 1

    invoke-super {p0}, Lorg/andengine/opengl/c/d;->h()Lorg/andengine/opengl/c/b;

    move-result-object v0

    check-cast v0, Lorg/andengine/opengl/c/a/b;

    return-object v0
.end method
