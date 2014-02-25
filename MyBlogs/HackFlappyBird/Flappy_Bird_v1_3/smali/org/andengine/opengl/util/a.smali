.class public Lorg/andengine/opengl/util/a;
.super Ljava/lang/Object;


# static fields
.field private static synthetic a:[I


# direct methods
.method public static a(Landroid/graphics/Bitmap;Lorg/andengine/opengl/c/c;Ljava/nio/ByteOrder;)Ljava/nio/Buffer;
    .locals 3

    invoke-static {p0}, Lorg/andengine/opengl/util/a;->a(Landroid/graphics/Bitmap;)[I

    move-result-object v1

    invoke-static {}, Lorg/andengine/opengl/util/a;->a()[I

    move-result-object v0

    invoke-virtual {p1}, Lorg/andengine/opengl/c/c;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v2, Lorg/andengine/opengl/c/c;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    invoke-static {v1, p2}, Lorg/andengine/opengl/util/a;->b([ILjava/nio/ByteOrder;)[S

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_2
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p2, v0, :cond_0

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_1
    invoke-static {v1, v0}, Lorg/andengine/opengl/util/a;->a([ILjava/nio/ByteOrder;)[I

    move-result-object v0

    invoke-static {v0}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_1

    :pswitch_3
    invoke-static {v1, p2}, Lorg/andengine/opengl/util/a;->c([ILjava/nio/ByteOrder;)[S

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ShortBuffer;->wrap([S)Ljava/nio/ShortBuffer;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    invoke-static {v1}, Lorg/andengine/opengl/util/a;->a([I)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method public static a([I)[B
    .locals 3

    array-length v0, p0

    new-array v1, v0, [B

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-object v1

    :cond_0
    aget v2, p0, v0

    shr-int/lit8 v2, v2, 0x18

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method static synthetic a()[I
    .locals 3

    sget-object v0, Lorg/andengine/opengl/util/a;->a:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/andengine/opengl/c/c;->values()[Lorg/andengine/opengl/c/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lorg/andengine/opengl/c/c;->h:Lorg/andengine/opengl/c/c;

    invoke-virtual {v1}, Lorg/andengine/opengl/c/c;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lorg/andengine/opengl/c/c;->f:Lorg/andengine/opengl/c/c;

    invoke-virtual {v1}, Lorg/andengine/opengl/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lorg/andengine/opengl/c/c;->g:Lorg/andengine/opengl/c/c;

    invoke-virtual {v1}, Lorg/andengine/opengl/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lorg/andengine/opengl/c/c;->b:Lorg/andengine/opengl/c/c;

    invoke-virtual {v1}, Lorg/andengine/opengl/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lorg/andengine/opengl/c/c;->c:Lorg/andengine/opengl/c/c;

    invoke-virtual {v1}, Lorg/andengine/opengl/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lorg/andengine/opengl/c/c;->d:Lorg/andengine/opengl/c/c;

    invoke-virtual {v1}, Lorg/andengine/opengl/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lorg/andengine/opengl/c/c;->e:Lorg/andengine/opengl/c/c;

    invoke-virtual {v1}, Lorg/andengine/opengl/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lorg/andengine/opengl/c/c;->a:Lorg/andengine/opengl/c/c;

    invoke-virtual {v1}, Lorg/andengine/opengl/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lorg/andengine/opengl/util/a;->a:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method

.method public static a(Landroid/graphics/Bitmap;)[I
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    return-object v1
.end method

.method public static a([ILjava/nio/ByteOrder;)[I
    .locals 5

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    aget v1, p0, v0

    const v2, -0xff0100

    and-int/2addr v2, v1

    shl-int/lit8 v3, v1, 0x10

    const/high16 v4, 0xff

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_0

    aget v1, p0, v0

    shl-int/lit8 v2, v1, 0x8

    and-int/lit16 v2, v2, -0x100

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static b([ILjava/nio/ByteOrder;)[S
    .locals 6

    array-length v0, p0

    new-array v1, v0, [S

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    aget v2, p0, v0

    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xf8

    shr-int/lit8 v4, v2, 0xd

    and-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0x3

    const v5, 0xe000

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shl-int/lit8 v2, v2, 0x5

    and-int/lit16 v2, v2, 0x1f00

    or-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_0

    aget v2, p0, v0

    shr-int/lit8 v3, v2, 0x8

    const v4, 0xf800

    and-int/2addr v3, v4

    shr-int/lit8 v4, v2, 0x5

    and-int/lit16 v4, v4, 0x7e0

    or-int/2addr v3, v4

    shr-int/lit8 v2, v2, 0x3

    and-int/lit8 v2, v2, 0x1f

    or-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public static c([ILjava/nio/ByteOrder;)[S
    .locals 6

    const v5, 0xf000

    array-length v0, p0

    new-array v1, v0, [S

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p1, v0, :cond_2

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_1

    :cond_0
    return-object v1

    :cond_1
    aget v2, p0, v0

    shr-int/lit8 v3, v2, 0x10

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v4, v2, 0xc

    and-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    shl-int/lit8 v4, v2, 0x8

    and-int/2addr v4, v5

    or-int/2addr v3, v4

    shr-int/lit8 v2, v2, 0x14

    and-int/lit16 v2, v2, 0xf00

    or-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_0

    aget v2, p0, v0

    shr-int/lit8 v3, v2, 0x8

    and-int/2addr v3, v5

    shr-int/lit8 v4, v2, 0x4

    and-int/lit16 v4, v4, 0xf00

    or-int/2addr v3, v4

    and-int/lit16 v4, v2, 0xf0

    or-int/2addr v3, v4

    shr-int/lit8 v2, v2, 0x1c

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method
