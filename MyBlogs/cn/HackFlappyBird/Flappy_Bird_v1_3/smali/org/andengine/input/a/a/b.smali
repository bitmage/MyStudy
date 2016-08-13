.class Lorg/andengine/input/a/a/b;
.super Lorg/andengine/d/a/b/g;


# instance fields
.field final synthetic a:Lorg/andengine/input/a/a/a;


# direct methods
.method constructor <init>(Lorg/andengine/input/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lorg/andengine/input/a/a/b;->a:Lorg/andengine/input/a/a/a;

    invoke-direct {p0}, Lorg/andengine/d/a/b/g;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lorg/andengine/input/a/a/c;
    .locals 2

    new-instance v0, Lorg/andengine/input/a/a/c;

    iget-object v1, p0, Lorg/andengine/input/a/a/b;->a:Lorg/andengine/input/a/a/a;

    invoke-direct {v0, v1}, Lorg/andengine/input/a/a/c;-><init>(Lorg/andengine/input/a/a/a;)V

    return-object v0
.end method

.method protected synthetic b()Lorg/andengine/d/a/b/f;
    .locals 1

    invoke-virtual {p0}, Lorg/andengine/input/a/a/b;->a()Lorg/andengine/input/a/a/c;

    move-result-object v0

    return-object v0
.end method
