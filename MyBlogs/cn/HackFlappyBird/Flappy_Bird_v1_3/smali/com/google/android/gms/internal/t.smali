.class final Lcom/google/android/gms/internal/t;
.super Lcom/google/android/gms/internal/ct;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/r;

.field private final c:Lcom/google/android/gms/games/a/b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/r;Lcom/google/android/gms/games/a/a;Lcom/google/android/gms/games/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/t;->a:Lcom/google/android/gms/internal/r;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ct;-><init>(Lcom/google/android/gms/internal/cr;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/google/android/gms/internal/t;->c:Lcom/google/android/gms/games/a/b;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/android/gms/games/a/a;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/t;->c:Lcom/google/android/gms/games/a/b;

    invoke-virtual {v0}, Lcom/google/android/gms/games/a/b;->a()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/t;->c:Lcom/google/android/gms/games/a/b;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/games/a/a;->a(ILcom/google/android/gms/games/a/b;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/games/a/a;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/t;->a(Lcom/google/android/gms/games/a/a;)V

    return-void
.end method
