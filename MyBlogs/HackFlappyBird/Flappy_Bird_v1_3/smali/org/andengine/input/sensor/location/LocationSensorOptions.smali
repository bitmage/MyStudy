.class public Lorg/andengine/input/sensor/location/LocationSensorOptions;
.super Landroid/location/Criteria;


# instance fields
.field private a:Z

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/location/Criteria;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/input/sensor/location/LocationSensorOptions;->a:Z

    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lorg/andengine/input/sensor/location/LocationSensorOptions;->b:J

    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lorg/andengine/input/sensor/location/LocationSensorOptions;->c:J

    return-void
.end method
