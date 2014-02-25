.class final Lcom/google/android/gms/internal/s;
.super Lcom/google/android/gms/internal/q;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/r;

.field private final b:Lcom/google/android/gms/games/a/a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/r;Lcom/google/android/gms/games/a/a;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/s;->a:Lcom/google/android/gms/internal/r;

    invoke-direct {p0}, Lcom/google/android/gms/internal/q;-><init>()V

    const-string v0, "Listener must not be null"

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/do;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/a/a;

    iput-object v0, p0, Lcom/google/android/gms/internal/s;->b:Lcom/google/android/gms/games/a/a;

    return-void
.end method


# virtual methods
.method public c(Lcom/google/android/gms/common/data/d;)V
    .locals 5

    new-instance v0, Lcom/google/android/gms/games/a/b;

    invoke-direct {v0, p1}, Lcom/google/android/gms/games/a/b;-><init>(Lcom/google/android/gms/common/data/d;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/s;->a:Lcom/google/android/gms/internal/r;

    new-instance v2, Lcom/google/android/gms/internal/t;

    iget-object v3, p0, Lcom/google/android/gms/internal/s;->a:Lcom/google/android/gms/internal/r;

    iget-object v4, p0, Lcom/google/android/gms/internal/s;->b:Lcom/google/android/gms/games/a/a;

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/t;-><init>(Lcom/google/android/gms/internal/r;Lcom/google/android/gms/games/a/a;Lcom/google/android/gms/games/a/b;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/r;->a(Lcom/google/android/gms/internal/ct;)V

    return-void
.end method
