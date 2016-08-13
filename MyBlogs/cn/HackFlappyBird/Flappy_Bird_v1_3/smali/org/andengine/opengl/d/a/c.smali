.class public Lorg/andengine/opengl/d/a/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:[Lorg/andengine/opengl/d/a/a;


# direct methods
.method public varargs constructor <init>(I[Lorg/andengine/opengl/d/a/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/andengine/opengl/d/a/c;->b:[Lorg/andengine/opengl/d/a/a;

    iput p1, p0, Lorg/andengine/opengl/d/a/c;->a:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v1, p0, Lorg/andengine/opengl/d/a/c;->b:[Lorg/andengine/opengl/d/a/a;

    iget v2, p0, Lorg/andengine/opengl/d/a/c;->a:I

    array-length v3, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_0

    return-void

    :cond_0
    aget-object v4, v1, v0

    invoke-virtual {v4, v2}, Lorg/andengine/opengl/d/a/a;->a(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
