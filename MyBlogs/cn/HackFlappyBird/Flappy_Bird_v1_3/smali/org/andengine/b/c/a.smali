.class public Lorg/andengine/b/c/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/andengine/b/c/f;

.field private b:Lorg/andengine/b/c/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/andengine/b/c/f;

    invoke-direct {v0}, Lorg/andengine/b/c/f;-><init>()V

    iput-object v0, p0, Lorg/andengine/b/c/a;->a:Lorg/andengine/b/c/f;

    new-instance v0, Lorg/andengine/b/c/c;

    invoke-direct {v0}, Lorg/andengine/b/c/c;-><init>()V

    iput-object v0, p0, Lorg/andengine/b/c/a;->b:Lorg/andengine/b/c/c;

    return-void
.end method


# virtual methods
.method public a(Z)Lorg/andengine/b/c/a;
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/c/a;->a:Lorg/andengine/b/c/f;

    invoke-virtual {v0, p1}, Lorg/andengine/b/c/f;->a(Z)Lorg/andengine/b/c/f;

    return-object p0
.end method

.method public a()Lorg/andengine/b/c/f;
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/c/a;->a:Lorg/andengine/b/c/f;

    return-object v0
.end method

.method public b(Z)Lorg/andengine/b/c/a;
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/c/a;->b:Lorg/andengine/b/c/c;

    invoke-virtual {v0, p1}, Lorg/andengine/b/c/c;->a(Z)Lorg/andengine/b/c/c;

    return-object p0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/c/a;->a:Lorg/andengine/b/c/f;

    invoke-virtual {v0}, Lorg/andengine/b/c/f;->a()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/c/a;->b:Lorg/andengine/b/c/c;

    invoke-virtual {v0}, Lorg/andengine/b/c/c;->a()Z

    move-result v0

    return v0
.end method
