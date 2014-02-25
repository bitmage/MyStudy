.class public Lorg/andengine/b/c/g;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x14

    iput-wide v0, p0, Lorg/andengine/b/c/g;->b:J

    return-void
.end method


# virtual methods
.method public a(Z)Lorg/andengine/b/c/g;
    .locals 0

    iput-boolean p1, p0, Lorg/andengine/b/c/g;->a:Z

    return-object p0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lorg/andengine/b/c/g;->a:Z

    return v0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lorg/andengine/b/c/g;->b:J

    return-wide v0
.end method
