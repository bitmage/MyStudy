.class public abstract enum Lorg/andengine/opengl/view/b;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/andengine/opengl/view/b;

.field public static final enum b:Lorg/andengine/opengl/view/b;

.field public static final enum c:Lorg/andengine/opengl/view/b;

.field public static final enum d:Lorg/andengine/opengl/view/b;

.field private static final synthetic e:[Lorg/andengine/opengl/view/b;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/andengine/opengl/view/c;

    const-string v1, "STRICT"

    invoke-direct {v0, v1, v2}, Lorg/andengine/opengl/view/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/opengl/view/b;->a:Lorg/andengine/opengl/view/b;

    new-instance v0, Lorg/andengine/opengl/view/d;

    const-string v1, "LOOSE_STENCIL"

    invoke-direct {v0, v1, v3}, Lorg/andengine/opengl/view/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/opengl/view/b;->b:Lorg/andengine/opengl/view/b;

    new-instance v0, Lorg/andengine/opengl/view/e;

    const-string v1, "LOOSE_DEPTH_AND_STENCIL"

    invoke-direct {v0, v1, v4}, Lorg/andengine/opengl/view/e;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/opengl/view/b;->c:Lorg/andengine/opengl/view/b;

    new-instance v0, Lorg/andengine/opengl/view/f;

    const-string v1, "ANY"

    invoke-direct {v0, v1, v5}, Lorg/andengine/opengl/view/f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/andengine/opengl/view/b;->d:Lorg/andengine/opengl/view/b;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/andengine/opengl/view/b;

    sget-object v1, Lorg/andengine/opengl/view/b;->a:Lorg/andengine/opengl/view/b;

    aput-object v1, v0, v2

    sget-object v1, Lorg/andengine/opengl/view/b;->b:Lorg/andengine/opengl/view/b;

    aput-object v1, v0, v3

    sget-object v1, Lorg/andengine/opengl/view/b;->c:Lorg/andengine/opengl/view/b;

    aput-object v1, v0, v4

    sget-object v1, Lorg/andengine/opengl/view/b;->d:Lorg/andengine/opengl/view/b;

    aput-object v1, v0, v5

    sput-object v0, Lorg/andengine/opengl/view/b;->e:[Lorg/andengine/opengl/view/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/andengine/opengl/view/b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/andengine/opengl/view/b;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/opengl/view/b;
    .locals 1

    const-class v0, Lorg/andengine/opengl/view/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/opengl/view/b;

    return-object v0
.end method

.method public static values()[Lorg/andengine/opengl/view/b;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/andengine/opengl/view/b;->e:[Lorg/andengine/opengl/view/b;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/opengl/view/b;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public abstract a(IIIIII)Z
.end method
