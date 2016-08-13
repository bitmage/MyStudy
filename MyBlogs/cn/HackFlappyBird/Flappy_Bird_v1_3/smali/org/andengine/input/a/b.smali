.class final Lorg/andengine/input/a/b;
.super Lorg/andengine/d/a/b/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/andengine/d/a/b/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/andengine/input/a/b;)V
    .locals 0

    invoke-direct {p0}, Lorg/andengine/input/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lorg/andengine/input/a/a;
    .locals 1

    new-instance v0, Lorg/andengine/input/a/a;

    invoke-direct {v0}, Lorg/andengine/input/a/a;-><init>()V

    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/andengine/input/a/b;->a()Lorg/andengine/input/a/a;

    move-result-object v0

    return-object v0
.end method
