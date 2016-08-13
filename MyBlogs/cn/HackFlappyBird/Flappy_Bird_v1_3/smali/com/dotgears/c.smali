.class public Lcom/dotgears/c;
.super Lorg/andengine/c/b/e;

# interfaces
.implements Lorg/andengine/c/b/c;


# static fields
.field public static a:[Lorg/andengine/c/d/a;

.field static c:I


# instance fields
.field public final b:I

.field public d:Lcom/dotgears/GameActivity;

.field public e:I

.field f:[F

.field g:[F

.field h:Z

.field i:I

.field j:I


# direct methods
.method public constructor <init>(Lcom/dotgears/GameActivity;Lorg/andengine/opengl/c/c/c;)V
    .locals 8

    const/16 v2, 0xa

    const/4 v7, 0x0

    const/16 v6, 0x32

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/andengine/c/b/e;-><init>()V

    iput v6, p0, Lcom/dotgears/c;->b:I

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/dotgears/c;->f:[F

    new-array v0, v2, [F

    iput-object v0, p0, Lcom/dotgears/c;->g:[F

    iput-boolean v1, p0, Lcom/dotgears/c;->h:Z

    iput v1, p0, Lcom/dotgears/c;->i:I

    iput v1, p0, Lcom/dotgears/c;->j:I

    iput-object p1, p0, Lcom/dotgears/c;->d:Lcom/dotgears/GameActivity;

    const-string v0, "FlappyBird"

    invoke-virtual {p1, v0, v1}, Lcom/dotgears/GameActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "score"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/dotgears/c;->e:I

    new-instance v0, Lcom/dotgears/flappy/c;

    iget v2, p0, Lcom/dotgears/c;->e:I

    invoke-virtual {p1}, Lcom/dotgears/GameActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f04

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcom/dotgears/flappy/c;-><init>(IILjava/io/InputStream;)V

    sput-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    sget-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    invoke-virtual {v0}, Lcom/dotgears/g;->a()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    long-to-int v0, v2

    invoke-static {v0}, Lcom/dotgears/j;->a(I)V

    new-array v0, v6, [Lorg/andengine/c/d/a;

    sput-object v0, Lcom/dotgears/c;->a:[Lorg/andengine/c/d/a;

    move v0, v1

    :goto_0
    if-lt v0, v6, :cond_0

    invoke-virtual {p0, p0}, Lcom/dotgears/c;->a(Lorg/andengine/c/b/c;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lorg/andengine/opengl/c/c/c;->i()Lorg/andengine/opengl/c/c/c;

    move-result-object v2

    sget-object v3, Lcom/dotgears/c;->a:[Lorg/andengine/c/d/a;

    new-instance v4, Lorg/andengine/c/d/a;

    invoke-virtual {p1}, Lcom/dotgears/GameActivity;->x()Lorg/andengine/b/a;

    move-result-object v5

    invoke-virtual {v5}, Lorg/andengine/b/a;->g()Lorg/andengine/opengl/d/e;

    move-result-object v5

    invoke-direct {v4, v7, v7, v2, v5}, Lorg/andengine/c/d/a;-><init>(FFLorg/andengine/opengl/c/c/b;Lorg/andengine/opengl/d/e;)V

    aput-object v4, v3, v0

    sget-object v2, Lcom/dotgears/c;->a:[Lorg/andengine/c/d/a;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lorg/andengine/c/d/a;->a(Z)V

    sget-object v2, Lcom/dotgears/c;->a:[Lorg/andengine/c/d/a;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/dotgears/c;->b(Lorg/andengine/c/c;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static a(IIIIFFFFF)V
    .locals 10

    sget-object v1, Lcom/dotgears/c;->a:[Lorg/andengine/c/d/a;

    sget v2, Lcom/dotgears/c;->c:I

    aget-object v1, v1, v2

    int-to-float v2, p0

    int-to-float v3, p1

    int-to-float v4, p2

    int-to-float v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lorg/andengine/c/d/a;->b(FFFFFFFF)V

    move/from16 v0, p8

    invoke-virtual {v1, v0}, Lorg/andengine/c/d/a;->b(F)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/andengine/c/d/a;->a(Z)V

    sget v1, Lcom/dotgears/c;->c:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/dotgears/c;->c:I

    return-void
.end method

.method public static a(IIIIFFFFFF)V
    .locals 18

    sget-object v1, Lcom/dotgears/c;->a:[Lorg/andengine/c/d/a;

    sget v2, Lcom/dotgears/c;->c:I

    aget-object v1, v1, v2

    move/from16 v0, p0

    int-to-float v2, v0

    move/from16 v0, p1

    int-to-float v3, v0

    add-int v4, p0, p2

    int-to-float v4, v4

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-int v5, p1, p3

    int-to-float v5, v5

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    move/from16 v0, p9

    invoke-static {v2, v3, v4, v5, v0}, Lcom/dotgears/j;->a(FFFFF)V

    sget v2, Lcom/dotgears/j;->A:F

    move/from16 v0, p0

    int-to-float v3, v0

    sub-float v10, v2, v3

    sget v2, Lcom/dotgears/j;->B:F

    move/from16 v0, p1

    int-to-float v3, v0

    sub-float v11, v2, v3

    move/from16 v0, p0

    int-to-float v2, v0

    move/from16 v0, p3

    int-to-float v3, v0

    add-int v4, p0, p2

    int-to-float v4, v4

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-int v5, p1, p3

    int-to-float v5, v5

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    move/from16 v0, p9

    invoke-static {v2, v3, v4, v5, v0}, Lcom/dotgears/j;->a(FFFFF)V

    sget v2, Lcom/dotgears/j;->A:F

    move/from16 v0, p0

    int-to-float v3, v0

    sub-float v12, v2, v3

    sget v2, Lcom/dotgears/j;->B:F

    move/from16 v0, p1

    int-to-float v3, v0

    sub-float v13, v2, v3

    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p1

    int-to-float v3, v0

    add-int v4, p0, p2

    int-to-float v4, v4

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-int v5, p1, p3

    int-to-float v5, v5

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    move/from16 v0, p9

    invoke-static {v2, v3, v4, v5, v0}, Lcom/dotgears/j;->a(FFFFF)V

    sget v2, Lcom/dotgears/j;->A:F

    move/from16 v0, p0

    int-to-float v3, v0

    sub-float v14, v2, v3

    sget v2, Lcom/dotgears/j;->B:F

    move/from16 v0, p1

    int-to-float v3, v0

    sub-float v15, v2, v3

    move/from16 v0, p2

    int-to-float v2, v0

    move/from16 v0, p3

    int-to-float v3, v0

    add-int v4, p0, p2

    int-to-float v4, v4

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-int v5, p1, p3

    int-to-float v5, v5

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    move/from16 v0, p9

    invoke-static {v2, v3, v4, v5, v0}, Lcom/dotgears/j;->a(FFFFF)V

    sget v2, Lcom/dotgears/j;->A:F

    move/from16 v0, p0

    int-to-float v3, v0

    sub-float v16, v2, v3

    sget v2, Lcom/dotgears/j;->B:F

    move/from16 v0, p1

    int-to-float v3, v0

    sub-float v17, v2, v3

    move/from16 v0, p0

    int-to-float v2, v0

    move/from16 v0, p1

    int-to-float v3, v0

    move/from16 v0, p2

    int-to-float v4, v0

    move/from16 v0, p3

    int-to-float v5, v0

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v17}, Lorg/andengine/c/d/a;->a(FFFFFFFFFFFFFFFF)V

    move/from16 v0, p8

    invoke-virtual {v1, v0}, Lorg/andengine/c/d/a;->b(F)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/andengine/c/d/a;->a(Z)V

    sget v1, Lcom/dotgears/c;->c:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/dotgears/c;->c:I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const/16 v2, 0x32

    if-lt v0, v2, :cond_0

    sput v1, Lcom/dotgears/c;->c:I

    return-void

    :cond_0
    sget-object v2, Lcom/dotgears/c;->a:[Lorg/andengine/c/d/a;

    aget-object v2, v2, v0

    invoke-virtual {v2, v1}, Lorg/andengine/c/d/a;->a(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected a(F)V
    .locals 7

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lorg/andengine/c/b/e;->a(F)V

    invoke-virtual {p0}, Lcom/dotgears/c;->a()V

    sget-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    iget-object v2, p0, Lcom/dotgears/c;->f:[F

    iget-object v3, p0, Lcom/dotgears/c;->g:[F

    invoke-virtual {v0, v2, v3}, Lcom/dotgears/g;->a([F[F)V

    iget-boolean v0, p0, Lcom/dotgears/c;->h:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    iget v2, p0, Lcom/dotgears/c;->i:I

    iget v3, p0, Lcom/dotgears/c;->j:I

    invoke-virtual {v0, v2, v3}, Lcom/dotgears/g;->a(II)V

    sget-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    iget v2, p0, Lcom/dotgears/c;->i:I

    iget v3, p0, Lcom/dotgears/c;->j:I

    iget v4, p0, Lcom/dotgears/c;->i:I

    iget v5, p0, Lcom/dotgears/c;->j:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/dotgears/g;->a(IIII)V

    iput-boolean v1, p0, Lcom/dotgears/c;->h:Z

    :cond_0
    sget-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    invoke-virtual {v0}, Lcom/dotgears/g;->b()V

    move v0, v1

    :goto_0
    sget-object v2, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    iget v2, v2, Lcom/dotgears/g;->v:I

    if-lt v0, v2, :cond_1

    return-void

    :cond_1
    sget-object v2, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    iget-object v2, v2, Lcom/dotgears/g;->w:[I

    aget v2, v2, v0

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/dotgears/c;->d:Lcom/dotgears/GameActivity;

    invoke-virtual {v2}, Lcom/dotgears/GameActivity;->d()V

    goto :goto_1

    :pswitch_2
    iget-object v2, p0, Lcom/dotgears/c;->d:Lcom/dotgears/GameActivity;

    invoke-virtual {v2}, Lcom/dotgears/GameActivity;->c()V

    goto :goto_1

    :pswitch_3
    iget-object v2, p0, Lcom/dotgears/c;->d:Lcom/dotgears/GameActivity;

    invoke-virtual {v2}, Lcom/dotgears/GameActivity;->d()V

    goto :goto_1

    :pswitch_4
    sget-object v2, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    iget-object v2, v2, Lcom/dotgears/g;->x:[D

    aget-wide v2, v2, v0

    double-to-int v2, v2

    iget-object v3, p0, Lcom/dotgears/c;->d:Lcom/dotgears/GameActivity;

    invoke-virtual {v3}, Lcom/dotgears/GameActivity;->o()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dotgears/c;->d:Lcom/dotgears/GameActivity;

    iget-object v3, v3, Lcom/dotgears/GameActivity;->g:Lcom/google/example/games/basegameutils/a;

    invoke-virtual {v3}, Lcom/google/example/games/basegameutils/a;->b()Lcom/google/android/gms/games/c;

    move-result-object v3

    const-string v4, "CgkI5J2sk6QXEAIQAA"

    int-to-long v5, v2

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/gms/games/c;->a(Ljava/lang/String;J)V

    :cond_3
    iget v3, p0, Lcom/dotgears/c;->e:I

    if-le v2, v3, :cond_2

    iget-object v3, p0, Lcom/dotgears/c;->d:Lcom/dotgears/GameActivity;

    const-string v4, "FlappyBird"

    invoke-virtual {v3, v4, v1}, Lcom/dotgears/GameActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    const-string v4, "score"

    sget-object v5, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    iget-object v5, v5, Lcom/dotgears/g;->x:[D

    aget-wide v5, v5, v0

    double-to-int v5, v5

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput v2, p0, Lcom/dotgears/c;->e:I

    goto :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/dotgears/c;->d:Lcom/dotgears/GameActivity;

    invoke-virtual {v2}, Lcom/dotgears/GameActivity;->o()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/dotgears/c;->d:Lcom/dotgears/GameActivity;

    iget-object v3, p0, Lcom/dotgears/c;->d:Lcom/dotgears/GameActivity;

    invoke-virtual {v3}, Lcom/dotgears/GameActivity;->n()Lcom/google/android/gms/games/c;

    move-result-object v3

    const-string v4, "CgkI5J2sk6QXEAIQAA"

    invoke-virtual {v3, v4}, Lcom/google/android/gms/games/c;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/dotgears/GameActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/dotgears/c;->d:Lcom/dotgears/GameActivity;

    invoke-virtual {v2}, Lcom/dotgears/GameActivity;->p()V

    goto :goto_1

    :pswitch_6
    iget-object v2, p0, Lcom/dotgears/c;->d:Lcom/dotgears/GameActivity;

    invoke-virtual {v2}, Lcom/dotgears/GameActivity;->e()V

    goto :goto_1

    :pswitch_7
    iget-object v2, p0, Lcom/dotgears/c;->d:Lcom/dotgears/GameActivity;

    invoke-virtual {v2}, Lcom/dotgears/GameActivity;->h()V

    goto/16 :goto_1

    :pswitch_8
    iget-object v2, p0, Lcom/dotgears/c;->d:Lcom/dotgears/GameActivity;

    invoke-virtual {v2}, Lcom/dotgears/GameActivity;->f()V

    goto/16 :goto_1

    :pswitch_9
    iget-object v2, p0, Lcom/dotgears/c;->d:Lcom/dotgears/GameActivity;

    invoke-virtual {v2}, Lcom/dotgears/GameActivity;->i()V

    goto/16 :goto_1

    :pswitch_a
    iget-object v2, p0, Lcom/dotgears/c;->d:Lcom/dotgears/GameActivity;

    invoke-virtual {v2}, Lcom/dotgears/GameActivity;->g()V

    goto/16 :goto_1

    :pswitch_b
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "http://www.amazon.com/gp/mas/dl/android?p=com.dotgears.flappybird"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/dotgears/c;->d:Lcom/dotgears/GameActivity;

    invoke-virtual {v3, v2}, Lcom/dotgears/GameActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method public a(Lorg/andengine/c/b/e;Lorg/andengine/input/a/a;)Z
    .locals 4

    const/4 v3, 0x1

    const/high16 v2, -0x3d38

    invoke-virtual {p2}, Lorg/andengine/input/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    if-eqz v0, :cond_0

    iput-boolean v3, p0, Lcom/dotgears/c;->h:Z

    invoke-virtual {p2}, Lorg/andengine/input/a/a;->b()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dotgears/c;->i:I

    invoke-virtual {p2}, Lorg/andengine/input/a/a;->c()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dotgears/c;->j:I

    :cond_0
    iget-object v0, p0, Lcom/dotgears/c;->f:[F

    invoke-virtual {p2}, Lorg/andengine/input/a/a;->d()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {p2}, Lorg/andengine/input/a/a;->b()F

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/dotgears/c;->g:[F

    invoke-virtual {p2}, Lorg/andengine/input/a/a;->d()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    invoke-virtual {p2}, Lorg/andengine/input/a/a;->c()F

    move-result v2

    aput v2, v0, v1

    :cond_1
    :goto_0
    return v3

    :cond_2
    invoke-virtual {p2}, Lorg/andengine/input/a/a;->g()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lorg/andengine/input/a/a;->j()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lorg/andengine/input/a/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_3
    sget-object v0, Lcom/dotgears/g;->D:Lcom/dotgears/g;

    iget-object v0, p0, Lcom/dotgears/c;->f:[F

    invoke-virtual {p2}, Lorg/andengine/input/a/a;->d()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    aput v2, v0, v1

    iget-object v0, p0, Lcom/dotgears/c;->g:[F

    invoke-virtual {p2}, Lorg/andengine/input/a/a;->d()I

    move-result v1

    rem-int/lit8 v1, v1, 0xa

    aput v2, v0, v1

    goto :goto_0
.end method
