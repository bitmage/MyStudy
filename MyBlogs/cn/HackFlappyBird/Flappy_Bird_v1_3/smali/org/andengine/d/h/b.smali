.class Lorg/andengine/d/h/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/andengine/d/h/a;Lorg/andengine/d/h/a;)I
    .locals 3

    invoke-interface {p1}, Lorg/andengine/d/h/a;->c()F

    move-result v0

    invoke-interface {p2}, Lorg/andengine/d/h/a;->c()F

    move-result v1

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/andengine/d/h/a;

    check-cast p2, Lorg/andengine/d/h/a;

    invoke-virtual {p0, p1, p2}, Lorg/andengine/d/h/b;->a(Lorg/andengine/d/h/a;Lorg/andengine/d/h/a;)I

    move-result v0

    return v0
.end method
