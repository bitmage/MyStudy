.class public Lorg/andengine/input/sensor/a;
.super Ljava/lang/Object;


# instance fields
.field protected final a:[F

.field protected b:I

.field protected c:I


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lorg/andengine/input/sensor/a;->b:I

    return-void
.end method

.method public a([F)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/andengine/input/sensor/a;->a:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Values: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/andengine/input/sensor/a;->a:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
