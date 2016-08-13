.class public final Lcom/google/android/gms/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/b;


# instance fields
.field private final a:Lcom/google/android/gms/internal/bj;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/bj;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/bj;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/a/a;->a:Lcom/google/android/gms/internal/bj;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/a/b;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/a/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/a/a;->a:Lcom/google/android/gms/internal/bj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bj;->a()V

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/a/a;->a:Lcom/google/android/gms/internal/bj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bj;->h()Z

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/a/a;->a:Lcom/google/android/gms/internal/bj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bj;->b()V

    return-void
.end method
