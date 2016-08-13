.class public Lorg/andengine/b/c/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lorg/andengine/b/c/f;->b:I

    return-void
.end method


# virtual methods
.method public a(Z)Lorg/andengine/b/c/f;
    .locals 0

    iput-boolean p1, p0, Lorg/andengine/b/c/f;->a:Z

    return-object p0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lorg/andengine/b/c/f;->a:Z

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lorg/andengine/b/c/f;->b:I

    return v0
.end method
