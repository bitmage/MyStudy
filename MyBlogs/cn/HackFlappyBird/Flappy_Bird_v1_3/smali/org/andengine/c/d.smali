.class public Lorg/andengine/c/d;
.super Lorg/andengine/d/b/b/a;


# static fields
.field private static a:Lorg/andengine/c/d;


# instance fields
.field private final b:Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/andengine/d/b/b/a;-><init>()V

    new-instance v0, Lorg/andengine/c/e;

    invoke-direct {v0, p0}, Lorg/andengine/c/e;-><init>(Lorg/andengine/c/d;)V

    iput-object v0, p0, Lorg/andengine/c/d;->b:Ljava/util/Comparator;

    return-void
.end method

.method public static a()Lorg/andengine/c/d;
    .locals 1

    sget-object v0, Lorg/andengine/c/d;->a:Lorg/andengine/c/d;

    if-nez v0, :cond_0

    new-instance v0, Lorg/andengine/c/d;

    invoke-direct {v0}, Lorg/andengine/c/d;-><init>()V

    sput-object v0, Lorg/andengine/c/d;->a:Lorg/andengine/c/d;

    :cond_0
    sget-object v0, Lorg/andengine/c/d;->a:Lorg/andengine/c/d;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lorg/andengine/c/d;->b:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Lorg/andengine/c/d;->a(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method
