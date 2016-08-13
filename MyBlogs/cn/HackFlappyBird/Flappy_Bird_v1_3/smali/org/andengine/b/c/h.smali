.class public final enum Lorg/andengine/b/c/h;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/andengine/b/c/h;

.field public static final enum b:Lorg/andengine/b/c/h;

.field public static final enum c:Lorg/andengine/b/c/h;

.field public static final enum d:Lorg/andengine/b/c/h;

.field private static final synthetic f:[Lorg/andengine/b/c/h;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/andengine/b/c/h;

    const-string v1, "BRIGHT"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v3, v2}, Lorg/andengine/b/c/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/b/c/h;->a:Lorg/andengine/b/c/h;

    new-instance v0, Lorg/andengine/b/c/h;

    const-string v1, "SCREEN_BRIGHT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v4, v2}, Lorg/andengine/b/c/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/b/c/h;->b:Lorg/andengine/b/c/h;

    new-instance v0, Lorg/andengine/b/c/h;

    const-string v1, "SCREEN_DIM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v5, v2}, Lorg/andengine/b/c/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/b/c/h;->c:Lorg/andengine/b/c/h;

    new-instance v0, Lorg/andengine/b/c/h;

    const-string v1, "SCREEN_ON"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v6, v2}, Lorg/andengine/b/c/h;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/b/c/h;->d:Lorg/andengine/b/c/h;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/andengine/b/c/h;

    sget-object v1, Lorg/andengine/b/c/h;->a:Lorg/andengine/b/c/h;

    aput-object v1, v0, v3

    sget-object v1, Lorg/andengine/b/c/h;->b:Lorg/andengine/b/c/h;

    aput-object v1, v0, v4

    sget-object v1, Lorg/andengine/b/c/h;->c:Lorg/andengine/b/c/h;

    aput-object v1, v0, v5

    sget-object v1, Lorg/andengine/b/c/h;->d:Lorg/andengine/b/c/h;

    aput-object v1, v0, v6

    sput-object v0, Lorg/andengine/b/c/h;->f:[Lorg/andengine/b/c/h;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/andengine/b/c/h;->e:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/b/c/h;
    .locals 1

    const-class v0, Lorg/andengine/b/c/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/b/c/h;

    return-object v0
.end method

.method public static values()[Lorg/andengine/b/c/h;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/andengine/b/c/h;->f:[Lorg/andengine/b/c/h;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/b/c/h;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lorg/andengine/b/c/h;->e:I

    return v0
.end method
