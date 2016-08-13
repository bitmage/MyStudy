.class public final Lcom/google/android/gms/games/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/b;


# instance fields
.field private final a:Lcom/google/android/gms/internal/r;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;[Ljava/lang/String;ILandroid/view/View;)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/r;

    const/4 v9, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/internal/r;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;[Ljava/lang/String;ILandroid/view/View;Z)V

    iput-object v0, p0, Lcom/google/android/gms/games/c;->a:Lcom/google/android/gms/internal/r;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;[Ljava/lang/String;ILandroid/view/View;Lcom/google/android/gms/games/e;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/google/android/gms/games/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;[Ljava/lang/String;ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/c;->a:Lcom/google/android/gms/internal/r;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/r;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/c;->a:Lcom/google/android/gms/internal/r;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/r;->a()V

    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/games/c;->a:Lcom/google/android/gms/internal/r;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/r;->a(Lcom/google/android/gms/games/a/a;Ljava/lang/String;J)V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/c;->a:Lcom/google/android/gms/internal/r;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/r;->h()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/games/c;->a:Lcom/google/android/gms/internal/r;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/r;->b()V

    return-void
.end method
