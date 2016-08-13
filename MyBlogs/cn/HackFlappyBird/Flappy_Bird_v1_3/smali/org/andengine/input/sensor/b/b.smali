.class public Lorg/andengine/input/sensor/b/b;
.super Lorg/andengine/input/sensor/a;


# instance fields
.field private final d:[F

.field private final e:[F

.field private final f:[F

.field private g:I


# direct methods
.method private a()V
    .locals 4

    iget-object v0, p0, Lorg/andengine/input/sensor/b/b;->f:[F

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/andengine/input/sensor/b/b;->d:[F

    iget-object v3, p0, Lorg/andengine/input/sensor/b/b;->e:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    iget v0, p0, Lorg/andengine/input/sensor/b/b;->c:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v1, p0, Lorg/andengine/input/sensor/b/b;->a:[F

    iget-object v0, p0, Lorg/andengine/input/sensor/b/b;->f:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-gez v0, :cond_0

    return-void

    :pswitch_1
    iget-object v0, p0, Lorg/andengine/input/sensor/b/b;->f:[F

    const/4 v1, 0x2

    const/16 v2, 0x81

    iget-object v3, p0, Lorg/andengine/input/sensor/b/b;->f:[F

    invoke-static {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->remapCoordinateSystem([FII[F)Z

    goto :goto_0

    :cond_0
    aget v2, v1, v0

    const v3, 0x42652ee0

    mul-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lorg/andengine/input/sensor/a;->a(I)V

    return-void
.end method

.method public a([F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-super {p0, p1}, Lorg/andengine/input/sensor/a;->a([F)V

    return-void
.end method

.method public b(I)V
    .locals 0

    invoke-super {p0, p1}, Lorg/andengine/input/sensor/a;->a(I)V

    return-void
.end method

.method public b([F)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/andengine/input/sensor/b/b;->d:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lorg/andengine/input/sensor/b/b;->a()V

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lorg/andengine/input/sensor/b/b;->g:I

    return-void
.end method

.method public c([F)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/andengine/input/sensor/b/b;->e:[F

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lorg/andengine/input/sensor/b/b;->a()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Orientation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/andengine/input/sensor/b/b;->a:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
