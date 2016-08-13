.class public final enum Lorg/andengine/opengl/d/a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/andengine/opengl/d/a;

.field public static final enum b:Lorg/andengine/opengl/d/a;

.field public static final enum c:Lorg/andengine/opengl/d/a;

.field private static final synthetic e:[Lorg/andengine/opengl/d/a;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/andengine/opengl/d/a;

    const-string v1, "STATIC"

    const v2, 0x88e4

    invoke-direct {v0, v1, v3, v2}, Lorg/andengine/opengl/d/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/opengl/d/a;->a:Lorg/andengine/opengl/d/a;

    new-instance v0, Lorg/andengine/opengl/d/a;

    const-string v1, "DYNAMIC"

    const v2, 0x88e8

    invoke-direct {v0, v1, v4, v2}, Lorg/andengine/opengl/d/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/opengl/d/a;->b:Lorg/andengine/opengl/d/a;

    new-instance v0, Lorg/andengine/opengl/d/a;

    const-string v1, "STREAM"

    const v2, 0x88e0

    invoke-direct {v0, v1, v5, v2}, Lorg/andengine/opengl/d/a;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/andengine/opengl/d/a;->c:Lorg/andengine/opengl/d/a;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/andengine/opengl/d/a;

    sget-object v1, Lorg/andengine/opengl/d/a;->a:Lorg/andengine/opengl/d/a;

    aput-object v1, v0, v3

    sget-object v1, Lorg/andengine/opengl/d/a;->b:Lorg/andengine/opengl/d/a;

    aput-object v1, v0, v4

    sget-object v1, Lorg/andengine/opengl/d/a;->c:Lorg/andengine/opengl/d/a;

    aput-object v1, v0, v5

    sput-object v0, Lorg/andengine/opengl/d/a;->e:[Lorg/andengine/opengl/d/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/andengine/opengl/d/a;->d:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/opengl/d/a;
    .locals 1

    const-class v0, Lorg/andengine/opengl/d/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/opengl/d/a;

    return-object v0
.end method

.method public static values()[Lorg/andengine/opengl/d/a;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/andengine/opengl/d/a;->e:[Lorg/andengine/opengl/d/a;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/opengl/d/a;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/d/a;->d:I

    return v0
.end method
