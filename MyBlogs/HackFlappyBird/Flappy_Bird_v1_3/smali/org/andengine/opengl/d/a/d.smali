.class public Lorg/andengine/opengl/d/a/d;
.super Ljava/lang/Object;


# static fields
.field private static final a:Z


# instance fields
.field private b:I

.field private final c:[Lorg/andengine/opengl/d/a/a;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    invoke-static {v0}, Lorg/andengine/d/i/a;->a(I)Z

    move-result v0

    sput-boolean v0, Lorg/andengine/opengl/d/a/d;->a:Z

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Lorg/andengine/opengl/d/a/a;

    iput-object v0, p0, Lorg/andengine/opengl/d/a/d;->c:[Lorg/andengine/opengl/d/a/a;

    return-void
.end method


# virtual methods
.method public a()Lorg/andengine/opengl/d/a/c;
    .locals 3

    iget v0, p0, Lorg/andengine/opengl/d/a/d;->b:I

    iget-object v1, p0, Lorg/andengine/opengl/d/a/d;->c:[Lorg/andengine/opengl/d/a/a;

    array-length v1, v1

    if-eq v0, v1, :cond_0

    new-instance v0, Lorg/andengine/d/f/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not enough "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/andengine/opengl/d/a/a;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s added to this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/andengine/d/f/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/andengine/opengl/d/a/c;

    iget v1, p0, Lorg/andengine/opengl/d/a/d;->d:I

    iget-object v2, p0, Lorg/andengine/opengl/d/a/d;->c:[Lorg/andengine/opengl/d/a/a;

    invoke-direct {v0, v1, v2}, Lorg/andengine/opengl/d/a/c;-><init>(I[Lorg/andengine/opengl/d/a/a;)V

    return-object v0
.end method

.method public a(ILjava/lang/String;IIZ)Lorg/andengine/opengl/d/a/d;
    .locals 9

    sget-boolean v0, Lorg/andengine/opengl/d/a/d;->a:Z

    if-eqz v0, :cond_0

    iget-object v7, p0, Lorg/andengine/opengl/d/a/d;->c:[Lorg/andengine/opengl/d/a/a;

    iget v8, p0, Lorg/andengine/opengl/d/a/d;->b:I

    new-instance v0, Lorg/andengine/opengl/d/a/b;

    iget v6, p0, Lorg/andengine/opengl/d/a/d;->d:I

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/d/a/b;-><init>(ILjava/lang/String;IIZI)V

    aput-object v0, v7, v8

    :goto_0
    sparse-switch p4, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected pType: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v7, p0, Lorg/andengine/opengl/d/a/d;->c:[Lorg/andengine/opengl/d/a/a;

    iget v8, p0, Lorg/andengine/opengl/d/a/d;->b:I

    new-instance v0, Lorg/andengine/opengl/d/a/a;

    iget v6, p0, Lorg/andengine/opengl/d/a/d;->d:I

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/d/a/a;-><init>(ILjava/lang/String;IIZI)V

    aput-object v0, v7, v8

    goto :goto_0

    :sswitch_0
    iget v0, p0, Lorg/andengine/opengl/d/a/d;->d:I

    mul-int/lit8 v1, p3, 0x4

    add-int/2addr v0, v1

    iput v0, p0, Lorg/andengine/opengl/d/a/d;->d:I

    :goto_1
    iget v0, p0, Lorg/andengine/opengl/d/a/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/andengine/opengl/d/a/d;->b:I

    return-object p0

    :sswitch_1
    iget v0, p0, Lorg/andengine/opengl/d/a/d;->d:I

    mul-int/lit8 v1, p3, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/andengine/opengl/d/a/d;->d:I

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1401 -> :sswitch_1
        0x1406 -> :sswitch_0
    .end sparse-switch
.end method
