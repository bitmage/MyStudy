.class public Lorg/andengine/b/c/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/andengine/b/c;

.field private final b:Z

.field private final c:Lorg/andengine/b/c/e;

.field private final d:Lorg/andengine/b/c/a/c;

.field private final e:Lorg/andengine/b/a/a;

.field private final f:Lorg/andengine/b/c/g;

.field private final g:Lorg/andengine/b/c/a;

.field private final h:Lorg/andengine/b/c/d;

.field private i:Lorg/andengine/b/c/h;

.field private j:Lorg/andengine/b/d;

.field private k:I


# direct methods
.method public constructor <init>(ZLorg/andengine/b/c/e;Lorg/andengine/b/c/a/c;Lorg/andengine/b/a/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/andengine/b/c/g;

    invoke-direct {v0}, Lorg/andengine/b/c/g;-><init>()V

    iput-object v0, p0, Lorg/andengine/b/c/b;->f:Lorg/andengine/b/c/g;

    new-instance v0, Lorg/andengine/b/c/a;

    invoke-direct {v0}, Lorg/andengine/b/c/a;-><init>()V

    iput-object v0, p0, Lorg/andengine/b/c/b;->g:Lorg/andengine/b/c/a;

    new-instance v0, Lorg/andengine/b/c/d;

    invoke-direct {v0}, Lorg/andengine/b/c/d;-><init>()V

    iput-object v0, p0, Lorg/andengine/b/c/b;->h:Lorg/andengine/b/c/d;

    sget-object v0, Lorg/andengine/b/c/h;->d:Lorg/andengine/b/c/h;

    iput-object v0, p0, Lorg/andengine/b/c/b;->i:Lorg/andengine/b/c/h;

    const/4 v0, 0x0

    iput v0, p0, Lorg/andengine/b/c/b;->k:I

    iput-boolean p1, p0, Lorg/andengine/b/c/b;->b:Z

    iput-object p2, p0, Lorg/andengine/b/c/b;->c:Lorg/andengine/b/c/e;

    iput-object p3, p0, Lorg/andengine/b/c/b;->d:Lorg/andengine/b/c/a/c;

    iput-object p4, p0, Lorg/andengine/b/c/b;->e:Lorg/andengine/b/a/a;

    return-void
.end method


# virtual methods
.method public a(Lorg/andengine/b/c/h;)Lorg/andengine/b/c/b;
    .locals 0

    iput-object p1, p0, Lorg/andengine/b/c/b;->i:Lorg/andengine/b/c/h;

    return-object p0
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/c/b;->a:Lorg/andengine/b/c;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Lorg/andengine/b/c;
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/c/b;->a:Lorg/andengine/b/c;

    return-object v0
.end method

.method public c()Lorg/andengine/b/c/g;
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/c/b;->f:Lorg/andengine/b/c/g;

    return-object v0
.end method

.method public d()Lorg/andengine/b/c/a;
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/c/b;->g:Lorg/andengine/b/c/a;

    return-object v0
.end method

.method public e()Lorg/andengine/b/c/d;
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/c/b;->h:Lorg/andengine/b/c/d;

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lorg/andengine/b/c/b;->b:Z

    return v0
.end method

.method public g()Lorg/andengine/b/c/e;
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/c/b;->c:Lorg/andengine/b/c/e;

    return-object v0
.end method

.method public h()Lorg/andengine/b/c/a/c;
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/c/b;->d:Lorg/andengine/b/c/a/c;

    return-object v0
.end method

.method public i()Lorg/andengine/b/a/a;
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/c/b;->e:Lorg/andengine/b/a/a;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/c/b;->j:Lorg/andengine/b/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public k()Lorg/andengine/b/d;
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/c/b;->j:Lorg/andengine/b/d;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lorg/andengine/b/c/b;->k:I

    return v0
.end method

.method public m()Lorg/andengine/b/c/h;
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/c/b;->i:Lorg/andengine/b/c/h;

    return-object v0
.end method
