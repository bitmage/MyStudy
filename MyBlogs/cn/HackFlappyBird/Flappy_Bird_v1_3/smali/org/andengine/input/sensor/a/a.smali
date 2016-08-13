.class public Lorg/andengine/input/sensor/a/a;
.super Lorg/andengine/input/sensor/a;


# static fields
.field private static final d:[Lorg/andengine/input/sensor/a/f;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/andengine/input/sensor/a/f;

    sput-object v0, Lorg/andengine/input/sensor/a/a;->d:[Lorg/andengine/input/sensor/a/f;

    sget-object v0, Lorg/andengine/input/sensor/a/a;->d:[Lorg/andengine/input/sensor/a/f;

    const/4 v1, 0x0

    new-instance v2, Lorg/andengine/input/sensor/a/b;

    invoke-direct {v2}, Lorg/andengine/input/sensor/a/b;-><init>()V

    aput-object v2, v0, v1

    sget-object v0, Lorg/andengine/input/sensor/a/a;->d:[Lorg/andengine/input/sensor/a/f;

    const/4 v1, 0x1

    new-instance v2, Lorg/andengine/input/sensor/a/c;

    invoke-direct {v2}, Lorg/andengine/input/sensor/a/c;-><init>()V

    aput-object v2, v0, v1

    sget-object v0, Lorg/andengine/input/sensor/a/a;->d:[Lorg/andengine/input/sensor/a/f;

    const/4 v1, 0x2

    new-instance v2, Lorg/andengine/input/sensor/a/d;

    invoke-direct {v2}, Lorg/andengine/input/sensor/a/d;-><init>()V

    aput-object v2, v0, v1

    sget-object v0, Lorg/andengine/input/sensor/a/a;->d:[Lorg/andengine/input/sensor/a/f;

    const/4 v1, 0x3

    new-instance v2, Lorg/andengine/input/sensor/a/e;

    invoke-direct {v2}, Lorg/andengine/input/sensor/a/e;-><init>()V

    aput-object v2, v0, v1

    return-void
.end method


# virtual methods
.method public a([F)V
    .locals 2

    invoke-super {p0, p1}, Lorg/andengine/input/sensor/a;->a([F)V

    sget-object v0, Lorg/andengine/input/sensor/a/a;->d:[Lorg/andengine/input/sensor/a/f;

    iget v1, p0, Lorg/andengine/input/sensor/a/a;->c:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lorg/andengine/input/sensor/a/a;->a:[F

    invoke-interface {v0, v1}, Lorg/andengine/input/sensor/a/f;->a([F)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Acceleration: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/andengine/input/sensor/a/a;->a:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
