.class Lorg/andengine/d/a/b/e;
.super Lorg/andengine/d/a/b/b;


# instance fields
.field final synthetic a:Lorg/andengine/d/a/b/d;


# direct methods
.method constructor <init>(Lorg/andengine/d/a/b/d;)V
    .locals 0

    iput-object p1, p0, Lorg/andengine/d/a/b/e;->a:Lorg/andengine/d/a/b/d;

    invoke-direct {p0}, Lorg/andengine/d/a/b/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/andengine/d/a/b/e;->e()Lorg/andengine/d/a/b/c;

    move-result-object v0

    return-object v0
.end method

.method protected e()Lorg/andengine/d/a/b/c;
    .locals 1

    iget-object v0, p0, Lorg/andengine/d/a/b/e;->a:Lorg/andengine/d/a/b/d;

    invoke-virtual {v0}, Lorg/andengine/d/a/b/d;->c()Lorg/andengine/d/a/b/c;

    move-result-object v0

    return-object v0
.end method
