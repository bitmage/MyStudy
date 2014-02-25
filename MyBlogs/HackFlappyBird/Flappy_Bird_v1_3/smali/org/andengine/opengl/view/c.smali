.class enum Lorg/andengine/opengl/view/c;
.super Lorg/andengine/opengl/view/b;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/andengine/opengl/view/b;-><init>(Ljava/lang/String;ILorg/andengine/opengl/view/b;)V

    return-void
.end method


# virtual methods
.method public a(IIIIII)Z
    .locals 2

    const/4 v1, 0x5

    if-nez p5, :cond_0

    if-nez p6, :cond_0

    if-ne p1, v1, :cond_0

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    if-ne p3, v1, :cond_0

    if-nez p4, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
