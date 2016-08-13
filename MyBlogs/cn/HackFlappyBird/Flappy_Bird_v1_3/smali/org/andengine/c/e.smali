.class Lorg/andengine/c/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic a:Lorg/andengine/c/d;


# direct methods
.method constructor <init>(Lorg/andengine/c/d;)V
    .locals 0

    iput-object p1, p0, Lorg/andengine/c/e;->a:Lorg/andengine/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/andengine/c/c;Lorg/andengine/c/c;)I
    .locals 2

    invoke-interface {p1}, Lorg/andengine/c/c;->f()I

    move-result v0

    invoke-interface {p2}, Lorg/andengine/c/c;->f()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/andengine/c/c;

    check-cast p2, Lorg/andengine/c/c;

    invoke-virtual {p0, p1, p2}, Lorg/andengine/c/e;->a(Lorg/andengine/c/c;Lorg/andengine/c/c;)I

    move-result v0

    return v0
.end method
