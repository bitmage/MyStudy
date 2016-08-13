.class public final enum Lorg/andengine/opengl/c/c;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/andengine/opengl/c/c;

.field public static final enum b:Lorg/andengine/opengl/c/c;

.field public static final enum c:Lorg/andengine/opengl/c/c;

.field public static final enum d:Lorg/andengine/opengl/c/c;

.field public static final enum e:Lorg/andengine/opengl/c/c;

.field public static final enum f:Lorg/andengine/opengl/c/c;

.field public static final enum g:Lorg/andengine/opengl/c/c;

.field public static final enum h:Lorg/andengine/opengl/c/c;

.field private static final synthetic m:[Lorg/andengine/opengl/c/c;


# instance fields
.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v10, 0x8

    const/16 v9, 0x1401

    const/16 v8, 0x10

    const/4 v3, -0x1

    const/16 v7, 0x1908

    new-instance v0, Lorg/andengine/opengl/c/c;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    move v4, v3

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/c/c;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/andengine/opengl/c/c;->a:Lorg/andengine/opengl/c/c;

    new-instance v0, Lorg/andengine/opengl/c/c;

    const-string v1, "RGBA_4444"

    const/4 v2, 0x1

    const v5, 0x8033

    move v3, v7

    move v4, v7

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/c/c;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/andengine/opengl/c/c;->b:Lorg/andengine/opengl/c/c;

    new-instance v0, Lorg/andengine/opengl/c/c;

    const-string v1, "RGBA_5551"

    const/4 v2, 0x2

    const/16 v3, 0x1907

    const v5, 0x8034

    move v4, v7

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/c/c;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/andengine/opengl/c/c;->c:Lorg/andengine/opengl/c/c;

    new-instance v0, Lorg/andengine/opengl/c/c;

    const-string v1, "RGBA_8888"

    const/4 v2, 0x3

    const/16 v6, 0x20

    move v3, v7

    move v4, v7

    move v5, v9

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/c/c;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/andengine/opengl/c/c;->d:Lorg/andengine/opengl/c/c;

    new-instance v0, Lorg/andengine/opengl/c/c;

    const-string v1, "RGB_565"

    const/4 v2, 0x4

    const/16 v3, 0x1907

    const/16 v4, 0x1907

    const v5, 0x8363

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/c/c;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/andengine/opengl/c/c;->e:Lorg/andengine/opengl/c/c;

    new-instance v0, Lorg/andengine/opengl/c/c;

    const-string v1, "A_8"

    const/4 v2, 0x5

    const/16 v3, 0x1906

    const/16 v4, 0x1906

    move v5, v9

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/c/c;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/andengine/opengl/c/c;->f:Lorg/andengine/opengl/c/c;

    new-instance v0, Lorg/andengine/opengl/c/c;

    const-string v1, "I_8"

    const/4 v2, 0x6

    const/16 v3, 0x1909

    const/16 v4, 0x1909

    move v5, v9

    move v6, v10

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/c/c;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/andengine/opengl/c/c;->g:Lorg/andengine/opengl/c/c;

    new-instance v0, Lorg/andengine/opengl/c/c;

    const-string v1, "AI_88"

    const/4 v2, 0x7

    const/16 v3, 0x190a

    const/16 v4, 0x190a

    move v5, v9

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/andengine/opengl/c/c;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lorg/andengine/opengl/c/c;->h:Lorg/andengine/opengl/c/c;

    new-array v0, v10, [Lorg/andengine/opengl/c/c;

    const/4 v1, 0x0

    sget-object v2, Lorg/andengine/opengl/c/c;->a:Lorg/andengine/opengl/c/c;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/andengine/opengl/c/c;->b:Lorg/andengine/opengl/c/c;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/andengine/opengl/c/c;->c:Lorg/andengine/opengl/c/c;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/andengine/opengl/c/c;->d:Lorg/andengine/opengl/c/c;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/andengine/opengl/c/c;->e:Lorg/andengine/opengl/c/c;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/andengine/opengl/c/c;->f:Lorg/andengine/opengl/c/c;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/andengine/opengl/c/c;->g:Lorg/andengine/opengl/c/c;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/andengine/opengl/c/c;->h:Lorg/andengine/opengl/c/c;

    aput-object v2, v0, v1

    sput-object v0, Lorg/andengine/opengl/c/c;->m:[Lorg/andengine/opengl/c/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/andengine/opengl/c/c;->i:I

    iput p4, p0, Lorg/andengine/opengl/c/c;->j:I

    iput p5, p0, Lorg/andengine/opengl/c/c;->k:I

    iput p6, p0, Lorg/andengine/opengl/c/c;->l:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/andengine/opengl/c/c;
    .locals 1

    const-class v0, Lorg/andengine/opengl/c/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/andengine/opengl/c/c;

    return-object v0
.end method

.method public static values()[Lorg/andengine/opengl/c/c;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lorg/andengine/opengl/c/c;->m:[Lorg/andengine/opengl/c/c;

    array-length v1, v0

    new-array v2, v1, [Lorg/andengine/opengl/c/c;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/c/c;->i:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/c/c;->j:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lorg/andengine/opengl/c/c;->k:I

    return v0
.end method
