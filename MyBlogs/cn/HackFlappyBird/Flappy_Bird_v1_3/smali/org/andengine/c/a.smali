.class public Lorg/andengine/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/andengine/c/c;


# static fields
.field private static final a:[F

.field private static final b:[F

.field private static final c:Lorg/andengine/d/c/a;


# instance fields
.field protected A:F

.field protected B:F

.field protected C:F

.field protected D:F

.field protected E:F

.field protected F:F

.field protected G:F

.field protected H:F

.field private I:Lorg/andengine/d/a/d/a;

.field private J:Lorg/andengine/d/a/d/a;

.field private d:Lorg/andengine/c/c;

.field private e:Lorg/andengine/c/a/a;

.field private f:Lorg/andengine/b/b/d;

.field private g:Z

.field private h:Z

.field private i:Lorg/andengine/d/a/d/a;

.field private j:Lorg/andengine/d/a/d/a;

.field protected k:Z

.field protected l:Z

.field protected m:Z

.field protected n:Z

.field protected o:Z

.field protected p:Z

.field protected q:Z

.field protected r:I

.field protected s:I

.field protected t:Lorg/andengine/d/a/a/b;

.field protected u:Lorg/andengine/d/d/a;

.field protected v:F

.field protected w:F

.field protected x:F

.field protected y:F

.field protected z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    new-array v0, v1, [F

    sput-object v0, Lorg/andengine/c/a;->a:[F

    new-array v0, v1, [F

    sput-object v0, Lorg/andengine/c/a;->b:[F

    new-instance v0, Lorg/andengine/c/b;

    invoke-direct {v0}, Lorg/andengine/c/b;-><init>()V

    sput-object v0, Lorg/andengine/c/a;->c:Lorg/andengine/d/c/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lorg/andengine/c/a;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lorg/andengine/c/a;->l:Z

    iput-boolean v3, p0, Lorg/andengine/c/a;->o:Z

    const/high16 v0, -0x8000

    iput v0, p0, Lorg/andengine/c/a;->r:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/andengine/c/a;->s:I

    new-instance v0, Lorg/andengine/d/d/a;

    invoke-direct {v0, v2, v2, v2, v2}, Lorg/andengine/d/d/a;-><init>(FFFF)V

    iput-object v0, p0, Lorg/andengine/c/a;->u:Lorg/andengine/d/d/a;

    iput v1, p0, Lorg/andengine/c/a;->x:F

    iput v1, p0, Lorg/andengine/c/a;->y:F

    iput v1, p0, Lorg/andengine/c/a;->z:F

    iput v2, p0, Lorg/andengine/c/a;->A:F

    iput v2, p0, Lorg/andengine/c/a;->B:F

    iput v1, p0, Lorg/andengine/c/a;->C:F

    iput v1, p0, Lorg/andengine/c/a;->D:F

    iput v1, p0, Lorg/andengine/c/a;->E:F

    iput v1, p0, Lorg/andengine/c/a;->F:F

    iput v1, p0, Lorg/andengine/c/a;->G:F

    iput v1, p0, Lorg/andengine/c/a;->H:F

    iput-boolean v3, p0, Lorg/andengine/c/a;->g:Z

    iput-boolean v3, p0, Lorg/andengine/c/a;->h:Z

    iput p1, p0, Lorg/andengine/c/a;->v:F

    iput p2, p0, Lorg/andengine/c/a;->w:F

    return-void
.end method

.method private a()V
    .locals 2

    new-instance v0, Lorg/andengine/d/a/a/b;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/andengine/d/a/a/b;-><init>(I)V

    iput-object v0, p0, Lorg/andengine/c/a;->t:Lorg/andengine/d/a/a/b;

    return-void
.end method

.method private c(Lorg/andengine/c/c;)V
    .locals 6

    invoke-interface {p1}, Lorg/andengine/c/c;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/andengine/c/c;->e()Lorg/andengine/c/c;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "pEntity \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\' already has a parent: \'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'. New parent: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(F)V
    .locals 4

    iget-object v0, p0, Lorg/andengine/c/a;->e:Lorg/andengine/c/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/c/a;->e:Lorg/andengine/c/a/a;

    invoke-virtual {v0, p1}, Lorg/andengine/c/a/a;->a_(F)V

    :cond_0
    iget-object v0, p0, Lorg/andengine/c/a;->f:Lorg/andengine/b/b/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/andengine/c/a;->f:Lorg/andengine/b/b/d;

    invoke-virtual {v0, p1}, Lorg/andengine/b/b/d;->a_(F)V

    :cond_1
    iget-object v0, p0, Lorg/andengine/c/a;->t:Lorg/andengine/d/a/a/b;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/andengine/c/a;->p:Z

    if-nez v0, :cond_2

    iget-object v2, p0, Lorg/andengine/c/a;->t:Lorg/andengine/d/a/a/b;

    invoke-virtual {v2}, Lorg/andengine/d/a/a/b;->size()I

    move-result v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-virtual {v2, v1}, Lorg/andengine/d/a/a/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/c/c;

    invoke-interface {v0, p1}, Lorg/andengine/c/c;->a_(F)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(Ljava/lang/StringBuilder;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/andengine/c/a;->t:Lorg/andengine/d/a/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/c/a;->t:Lorg/andengine/d/a/a/b;

    invoke-virtual {v0}, Lorg/andengine/d/a/a/b;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, " ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/andengine/c/a;->t:Lorg/andengine/d/a/a/b;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v2}, Lorg/andengine/d/a/a/b;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v2, v1}, Lorg/andengine/d/a/a/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/c/c;

    invoke-interface {v0, p1}, Lorg/andengine/c/c;->a(Ljava/lang/StringBuilder;)V

    invoke-virtual {v2}, Lorg/andengine/d/a/a/b;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public a(Lorg/andengine/c/c;)V
    .locals 0

    iput-object p1, p0, Lorg/andengine/c/a;->d:Lorg/andengine/c/c;

    return-void
.end method

.method protected a(Lorg/andengine/opengl/util/e;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/andengine/c/a;->b(Lorg/andengine/opengl/util/e;)V

    invoke-virtual {p0, p1}, Lorg/andengine/c/a;->c(Lorg/andengine/opengl/util/e;)V

    invoke-virtual {p0, p1}, Lorg/andengine/c/a;->d(Lorg/andengine/opengl/util/e;)V

    invoke-virtual {p0, p1}, Lorg/andengine/c/a;->e(Lorg/andengine/opengl/util/e;)V

    return-void
.end method

.method public final a(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V
    .locals 1

    iget-boolean v0, p0, Lorg/andengine/c/a;->l:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/andengine/c/a;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lorg/andengine/c/a;->a(Lorg/andengine/b/a/a;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/andengine/c/a;->e(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V

    :cond_1
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/andengine/c/a;->l:Z

    return-void
.end method

.method public a(Lorg/andengine/b/a/a;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(FF[F)[F
    .locals 2

    invoke-virtual {p0}, Lorg/andengine/c/a;->k()Lorg/andengine/d/a/d/a;

    move-result-object v0

    const/4 v1, 0x0

    aput p1, p3, v1

    const/4 v1, 0x1

    aput p2, p3, v1

    invoke-virtual {v0, p3}, Lorg/andengine/d/a/d/a;->a([F)V

    return-object p3
.end method

.method public final a_(F)V
    .locals 1

    iget-boolean v0, p0, Lorg/andengine/c/a;->n:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/andengine/c/a;->a(F)V

    :cond_0
    return-void
.end method

.method public a_(FF)[F
    .locals 1

    sget-object v0, Lorg/andengine/c/a;->b:[F

    invoke-virtual {p0, p1, p2, v0}, Lorg/andengine/c/a;->a(FF[F)[F

    move-result-object v0

    return-object v0
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method public b(F)V
    .locals 1

    iget-object v0, p0, Lorg/andengine/c/a;->u:Lorg/andengine/d/d/a;

    invoke-virtual {v0, p1}, Lorg/andengine/d/d/a;->a(F)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/andengine/c/a;->b()V

    :cond_0
    return-void
.end method

.method public b(Lorg/andengine/c/c;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/andengine/c/a;->c(Lorg/andengine/c/c;)V

    iget-object v0, p0, Lorg/andengine/c/a;->t:Lorg/andengine/d/a/a/b;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/andengine/c/a;->a()V

    :cond_0
    iget-object v0, p0, Lorg/andengine/c/a;->t:Lorg/andengine/d/a/a/b;

    invoke-virtual {v0, p1}, Lorg/andengine/d/a/a/b;->add(Ljava/lang/Object;)Z

    invoke-interface {p1, p0}, Lorg/andengine/c/c;->a(Lorg/andengine/c/c;)V

    invoke-interface {p1}, Lorg/andengine/c/c;->m()V

    return-void
.end method

.method protected b(Lorg/andengine/opengl/util/e;)V
    .locals 3

    iget v0, p0, Lorg/andengine/c/a;->v:F

    iget v1, p0, Lorg/andengine/c/a;->w:F

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lorg/andengine/opengl/util/e;->a(FFF)V

    return-void
.end method

.method protected b(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V
    .locals 0

    return-void
.end method

.method public b(FF)[F
    .locals 1

    sget-object v0, Lorg/andengine/c/a;->a:[F

    invoke-virtual {p0, p1, p2, v0}, Lorg/andengine/c/a;->b(FF[F)[F

    move-result-object v0

    return-object v0
.end method

.method public b(FF[F)[F
    .locals 1

    const/4 v0, 0x0

    aput p1, p3, v0

    const/4 v0, 0x1

    aput p2, p3, v0

    invoke-virtual {p0}, Lorg/andengine/c/a;->l()Lorg/andengine/d/a/d/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/andengine/d/a/d/a;->a([F)V

    return-object p3
.end method

.method protected c(Lorg/andengine/opengl/util/e;)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lorg/andengine/c/a;->x:F

    cmpl-float v1, v0, v4

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/andengine/c/a;->y:F

    iget v2, p0, Lorg/andengine/c/a;->z:F

    invoke-virtual {p1, v1, v2, v4}, Lorg/andengine/opengl/util/e;->a(FFF)V

    const/high16 v3, 0x3f80

    invoke-virtual {p1, v0, v4, v4, v3}, Lorg/andengine/opengl/util/e;->a(FFFF)V

    neg-float v0, v1

    neg-float v1, v2

    invoke-virtual {p1, v0, v1, v4}, Lorg/andengine/opengl/util/e;->a(FFF)V

    :cond_0
    return-void
.end method

.method protected c(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lorg/andengine/c/a;->k:Z

    return v0
.end method

.method protected d(Lorg/andengine/opengl/util/e;)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lorg/andengine/c/a;->E:F

    iget v1, p0, Lorg/andengine/c/a;->F:F

    cmpl-float v2, v0, v4

    if-nez v2, :cond_0

    cmpl-float v2, v1, v4

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, Lorg/andengine/c/a;->G:F

    iget v3, p0, Lorg/andengine/c/a;->H:F

    invoke-virtual {p1, v2, v3, v4}, Lorg/andengine/opengl/util/e;->a(FFF)V

    invoke-virtual {p1, v0, v1}, Lorg/andengine/opengl/util/e;->a(FF)V

    neg-float v0, v2

    neg-float v1, v3

    invoke-virtual {p1, v0, v1, v4}, Lorg/andengine/opengl/util/e;->a(FFF)V

    :cond_1
    return-void
.end method

.method protected d(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lorg/andengine/c/a;->d:Lorg/andengine/c/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Lorg/andengine/c/c;
    .locals 1

    iget-object v0, p0, Lorg/andengine/c/a;->d:Lorg/andengine/c/c;

    return-object v0
.end method

.method protected e(Lorg/andengine/opengl/util/e;)V
    .locals 6

    const/high16 v3, 0x3f80

    const/4 v5, 0x0

    iget v0, p0, Lorg/andengine/c/a;->A:F

    iget v1, p0, Lorg/andengine/c/a;->B:F

    cmpl-float v2, v0, v3

    if-nez v2, :cond_0

    cmpl-float v2, v1, v3

    if-eqz v2, :cond_1

    :cond_0
    iget v2, p0, Lorg/andengine/c/a;->C:F

    iget v3, p0, Lorg/andengine/c/a;->D:F

    invoke-virtual {p1, v2, v3, v5}, Lorg/andengine/opengl/util/e;->a(FFF)V

    const/4 v4, 0x1

    invoke-virtual {p1, v0, v1, v4}, Lorg/andengine/opengl/util/e;->a(FFI)V

    neg-float v0, v2

    neg-float v1, v3

    invoke-virtual {p1, v0, v1, v5}, Lorg/andengine/opengl/util/e;->a(FFF)V

    :cond_1
    return-void
.end method

.method protected e(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/andengine/opengl/util/e;->j()V

    invoke-virtual {p0, p1}, Lorg/andengine/c/a;->a(Lorg/andengine/opengl/util/e;)V

    iget-object v2, p0, Lorg/andengine/c/a;->t:Lorg/andengine/d/a/a/b;

    if-eqz v2, :cond_0

    iget-boolean v0, p0, Lorg/andengine/c/a;->o:Z

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/andengine/c/a;->b(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V

    invoke-virtual {p0, p1, p2}, Lorg/andengine/c/a;->c(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V

    invoke-virtual {p0, p1, p2}, Lorg/andengine/c/a;->d(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V

    :cond_1
    invoke-virtual {p1}, Lorg/andengine/opengl/util/e;->k()V

    return-void

    :cond_2
    iget-boolean v0, p0, Lorg/andengine/c/a;->q:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lorg/andengine/c/d;->a()Lorg/andengine/c/d;

    move-result-object v0

    iget-object v3, p0, Lorg/andengine/c/a;->t:Lorg/andengine/d/a/a/b;

    invoke-virtual {v0, v3}, Lorg/andengine/c/d;->a(Ljava/util/List;)V

    iput-boolean v1, p0, Lorg/andengine/c/a;->q:Z

    :cond_3
    invoke-virtual {v2}, Lorg/andengine/d/a/a/b;->size()I

    move-result v3

    :goto_0
    if-lt v1, v3, :cond_5

    :cond_4
    invoke-virtual {p0, p1, p2}, Lorg/andengine/c/a;->b(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V

    invoke-virtual {p0, p1, p2}, Lorg/andengine/c/a;->c(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V

    invoke-virtual {p0, p1, p2}, Lorg/andengine/c/a;->d(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V

    :goto_1
    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Lorg/andengine/d/a/a/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/c/c;

    invoke-interface {v0, p1, p2}, Lorg/andengine/c/c;->a(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v1}, Lorg/andengine/d/a/a/b;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/c/c;

    invoke-interface {v0}, Lorg/andengine/c/c;->f()I

    move-result v4

    if-gez v4, :cond_4

    invoke-interface {v0, p1, p2}, Lorg/andengine/c/c;->a(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lorg/andengine/c/a;->s:I

    return v0
.end method

.method protected finalize()V
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-boolean v0, p0, Lorg/andengine/c/a;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/andengine/c/a;->n()V

    :cond_0
    return-void
.end method

.method public g()Lorg/andengine/d/d/a;
    .locals 1

    iget-object v0, p0, Lorg/andengine/c/a;->u:Lorg/andengine/d/d/a;

    return-object v0
.end method

.method public h()[F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/andengine/c/a;->a_(FF)[F

    move-result-object v0

    return-object v0
.end method

.method public i()Lorg/andengine/d/a/d/a;
    .locals 8

    const/high16 v4, 0x3f80

    const/4 v7, 0x0

    iget-object v0, p0, Lorg/andengine/c/a;->i:Lorg/andengine/d/a/d/a;

    if-nez v0, :cond_0

    new-instance v0, Lorg/andengine/d/a/d/a;

    invoke-direct {v0}, Lorg/andengine/d/a/d/a;-><init>()V

    iput-object v0, p0, Lorg/andengine/c/a;->i:Lorg/andengine/d/a/d/a;

    :cond_0
    iget-object v0, p0, Lorg/andengine/c/a;->i:Lorg/andengine/d/a/d/a;

    iget-boolean v1, p0, Lorg/andengine/c/a;->g:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lorg/andengine/d/a/d/a;->a()V

    iget v1, p0, Lorg/andengine/c/a;->A:F

    iget v2, p0, Lorg/andengine/c/a;->B:F

    cmpl-float v3, v1, v4

    if-nez v3, :cond_1

    cmpl-float v3, v2, v4

    if-eqz v3, :cond_2

    :cond_1
    iget v3, p0, Lorg/andengine/c/a;->C:F

    iget v4, p0, Lorg/andengine/c/a;->D:F

    neg-float v5, v3

    neg-float v6, v4

    invoke-virtual {v0, v5, v6}, Lorg/andengine/d/a/d/a;->a(FF)V

    invoke-virtual {v0, v1, v2}, Lorg/andengine/d/a/d/a;->b(FF)V

    invoke-virtual {v0, v3, v4}, Lorg/andengine/d/a/d/a;->a(FF)V

    :cond_2
    iget v1, p0, Lorg/andengine/c/a;->E:F

    iget v2, p0, Lorg/andengine/c/a;->F:F

    cmpl-float v3, v1, v7

    if-nez v3, :cond_3

    cmpl-float v3, v2, v7

    if-eqz v3, :cond_4

    :cond_3
    iget v3, p0, Lorg/andengine/c/a;->G:F

    iget v4, p0, Lorg/andengine/c/a;->H:F

    neg-float v5, v3

    neg-float v6, v4

    invoke-virtual {v0, v5, v6}, Lorg/andengine/d/a/d/a;->a(FF)V

    invoke-virtual {v0, v1, v2}, Lorg/andengine/d/a/d/a;->c(FF)V

    invoke-virtual {v0, v3, v4}, Lorg/andengine/d/a/d/a;->a(FF)V

    :cond_4
    iget v1, p0, Lorg/andengine/c/a;->x:F

    cmpl-float v2, v1, v7

    if-eqz v2, :cond_5

    iget v2, p0, Lorg/andengine/c/a;->y:F

    iget v3, p0, Lorg/andengine/c/a;->z:F

    neg-float v4, v2

    neg-float v5, v3

    invoke-virtual {v0, v4, v5}, Lorg/andengine/d/a/d/a;->a(FF)V

    invoke-virtual {v0, v1}, Lorg/andengine/d/a/d/a;->a(F)V

    invoke-virtual {v0, v2, v3}, Lorg/andengine/d/a/d/a;->a(FF)V

    :cond_5
    iget v1, p0, Lorg/andengine/c/a;->v:F

    iget v2, p0, Lorg/andengine/c/a;->w:F

    invoke-virtual {v0, v1, v2}, Lorg/andengine/d/a/d/a;->a(FF)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/andengine/c/a;->g:Z

    :cond_6
    return-object v0
.end method

.method public j()Lorg/andengine/d/a/d/a;
    .locals 8

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    iget-object v0, p0, Lorg/andengine/c/a;->j:Lorg/andengine/d/a/d/a;

    if-nez v0, :cond_0

    new-instance v0, Lorg/andengine/d/a/d/a;

    invoke-direct {v0}, Lorg/andengine/d/a/d/a;-><init>()V

    iput-object v0, p0, Lorg/andengine/c/a;->j:Lorg/andengine/d/a/d/a;

    :cond_0
    iget-object v0, p0, Lorg/andengine/c/a;->j:Lorg/andengine/d/a/d/a;

    iget-boolean v1, p0, Lorg/andengine/c/a;->h:Z

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lorg/andengine/d/a/d/a;->a()V

    iget v1, p0, Lorg/andengine/c/a;->v:F

    neg-float v1, v1

    iget v2, p0, Lorg/andengine/c/a;->w:F

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/andengine/d/a/d/a;->a(FF)V

    iget v1, p0, Lorg/andengine/c/a;->x:F

    cmpl-float v2, v1, v6

    if-eqz v2, :cond_1

    iget v2, p0, Lorg/andengine/c/a;->y:F

    iget v3, p0, Lorg/andengine/c/a;->z:F

    neg-float v4, v2

    neg-float v5, v3

    invoke-virtual {v0, v4, v5}, Lorg/andengine/d/a/d/a;->a(FF)V

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lorg/andengine/d/a/d/a;->a(F)V

    invoke-virtual {v0, v2, v3}, Lorg/andengine/d/a/d/a;->a(FF)V

    :cond_1
    iget v1, p0, Lorg/andengine/c/a;->E:F

    iget v2, p0, Lorg/andengine/c/a;->F:F

    cmpl-float v3, v1, v6

    if-nez v3, :cond_2

    cmpl-float v3, v2, v6

    if-eqz v3, :cond_3

    :cond_2
    iget v3, p0, Lorg/andengine/c/a;->G:F

    iget v4, p0, Lorg/andengine/c/a;->H:F

    neg-float v5, v3

    neg-float v6, v4

    invoke-virtual {v0, v5, v6}, Lorg/andengine/d/a/d/a;->a(FF)V

    neg-float v1, v1

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Lorg/andengine/d/a/d/a;->c(FF)V

    invoke-virtual {v0, v3, v4}, Lorg/andengine/d/a/d/a;->a(FF)V

    :cond_3
    iget v1, p0, Lorg/andengine/c/a;->A:F

    iget v2, p0, Lorg/andengine/c/a;->B:F

    cmpl-float v3, v1, v7

    if-nez v3, :cond_4

    cmpl-float v3, v2, v7

    if-eqz v3, :cond_5

    :cond_4
    iget v3, p0, Lorg/andengine/c/a;->C:F

    iget v4, p0, Lorg/andengine/c/a;->D:F

    neg-float v5, v3

    neg-float v6, v4

    invoke-virtual {v0, v5, v6}, Lorg/andengine/d/a/d/a;->a(FF)V

    div-float v1, v7, v1

    div-float v2, v7, v2

    invoke-virtual {v0, v1, v2}, Lorg/andengine/d/a/d/a;->b(FF)V

    invoke-virtual {v0, v3, v4}, Lorg/andengine/d/a/d/a;->a(FF)V

    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/andengine/c/a;->h:Z

    :cond_6
    return-object v0
.end method

.method public k()Lorg/andengine/d/a/d/a;
    .locals 2

    iget-object v0, p0, Lorg/andengine/c/a;->I:Lorg/andengine/d/a/d/a;

    if-nez v0, :cond_0

    new-instance v0, Lorg/andengine/d/a/d/a;

    invoke-direct {v0}, Lorg/andengine/d/a/d/a;-><init>()V

    iput-object v0, p0, Lorg/andengine/c/a;->I:Lorg/andengine/d/a/d/a;

    :cond_0
    iget-object v0, p0, Lorg/andengine/c/a;->I:Lorg/andengine/d/a/d/a;

    invoke-virtual {p0}, Lorg/andengine/c/a;->i()Lorg/andengine/d/a/d/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/andengine/d/a/d/a;->a(Lorg/andengine/d/a/d/a;)V

    iget-object v1, p0, Lorg/andengine/c/a;->d:Lorg/andengine/c/c;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/andengine/c/c;->k()Lorg/andengine/d/a/d/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/andengine/d/a/d/a;->b(Lorg/andengine/d/a/d/a;)V

    :cond_1
    return-object v0
.end method

.method public l()Lorg/andengine/d/a/d/a;
    .locals 2

    iget-object v0, p0, Lorg/andengine/c/a;->J:Lorg/andengine/d/a/d/a;

    if-nez v0, :cond_0

    new-instance v0, Lorg/andengine/d/a/d/a;

    invoke-direct {v0}, Lorg/andengine/d/a/d/a;-><init>()V

    iput-object v0, p0, Lorg/andengine/c/a;->J:Lorg/andengine/d/a/d/a;

    :cond_0
    iget-object v0, p0, Lorg/andengine/c/a;->J:Lorg/andengine/d/a/d/a;

    invoke-virtual {p0}, Lorg/andengine/c/a;->j()Lorg/andengine/d/a/d/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/andengine/d/a/d/a;->a(Lorg/andengine/d/a/d/a;)V

    iget-object v1, p0, Lorg/andengine/c/a;->d:Lorg/andengine/c/c;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/andengine/c/c;->l()Lorg/andengine/d/a/d/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/andengine/d/a/d/a;->c(Lorg/andengine/d/a/d/a;)V

    :cond_1
    return-object v0
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public n()V
    .locals 1

    iget-boolean v0, p0, Lorg/andengine/c/a;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/c/a;->k:Z

    return-void

    :cond_0
    new-instance v0, Lorg/andengine/d/c;

    invoke-direct {v0}, Lorg/andengine/d/c;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lorg/andengine/c/a;->a(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
