.class public final enum Lorg/andengine/d/e/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/andengine/d/e/b;

.field public static final enum b:Lorg/andengine/d/e/b;

.field public static final enum c:Lorg/andengine/d/e/b;

.field public static final enum d:Lorg/andengine/d/e/b;

.field public static final enum e:Lorg/andengine/d/e/b;

.field public static final enum f:Lorg/andengine/d/e/b;

.field public static g:Lorg/andengine/d/e/b;

.field private static final synthetic h:[Lorg/andengine/d/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/andengine/d/e/b;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lorg/andengine/d/e/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/d/e/b;->a:Lorg/andengine/d/e/b;

    new-instance v0, Lorg/andengine/d/e/b;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lorg/andengine/d/e/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/d/e/b;->b:Lorg/andengine/d/e/b;

    new-instance v0, Lorg/andengine/d/e/b;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v5}, Lorg/andengine/d/e/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/d/e/b;->c:Lorg/andengine/d/e/b;

    new-instance v0, Lorg/andengine/d/e/b;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v6}, Lorg/andengine/d/e/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/d/e/b;->d:Lorg/andengine/d/e/b;

    new-instance v0, Lorg/andengine/d/e/b;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v7}, Lorg/andengine/d/e/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/d/e/b;->e:Lorg/andengine/d/e/b;

    new-instance v0, Lorg/andengine/d/e/b;

    const-string v1, "VERBOSE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/andengine/d/e/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/d/e/b;->f:Lorg/andengine/d/e/b;

    const/4 v0, 0x6

    new-array v0, v0, [Lorg/andengine/d/e/b;

    sget-object v1, Lorg/andengine/d/e/b;->a:Lorg/andengine/d/e/b;

    aput-object v1, v0, v3

    sget-object v1, Lorg/andengine/d/e/b;->b:Lorg/andengine/d/e/b;

    aput-object v1, v0, v4

    sget-object v1, Lorg/andengine/d/e/b;->c:Lorg/andengine/d/e/b;

    aput-object v1, v0, v5

    sget-object v1, Lorg/andengine/d/e/b;->d:Lorg/andengine/d/e/b;

    aput-object v1, v0, v6

    sget-object v1, Lorg/andengine/d/e/b;->e:Lorg/andengine/d/e/b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/andengine/d/e/b;->f:Lorg/andengine/d/e/b;

    aput-object v2, v0, v1

    sput-object v0, Lorg/andengine/d/e/b;->h:[Lorg/andengine/d/e/b;

    sget-object v0, Lorg/andengine/d/e/b;->f:Lorg/andengine/d/e/b;

    sput-object v0, Lorg/andengine/d/e/b;->g:Lorg/andengine/d/e/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/d/e/b;
    .locals 1

    const-class v0, Lorg/andengine/d/e/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/d/e/b;

    return-object v0
.end method

.method public static values()[Lorg/andengine/d/e/b;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/andengine/d/e/b;->h:[Lorg/andengine/d/e/b;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/d/e/b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a(Lorg/andengine/d/e/b;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/andengine/d/e/b;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
