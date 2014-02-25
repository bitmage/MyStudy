.class Lorg/andengine/input/sensor/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/andengine/input/sensor/a/f;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([F)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget v0, p1, v2

    aget v1, p1, v3

    neg-float v1, v1

    aput v0, p1, v2

    aput v1, p1, v3

    return-void
.end method
