.class public final Lcom/google/android/gms/games/a/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Z


# direct methods
.method public constructor <init>(JLjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/games/a/c;->a:J

    iput-object p3, p0, Lcom/google/android/gms/games/a/c;->b:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/google/android/gms/games/a/c;->c:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/android/gms/internal/dl;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/dn;

    move-result-object v0

    const-string v1, "RawScore"

    iget-wide v2, p0, Lcom/google/android/gms/games/a/c;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/dn;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/dn;

    move-result-object v0

    const-string v1, "FormattedScore"

    iget-object v2, p0, Lcom/google/android/gms/games/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/dn;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/dn;

    move-result-object v0

    const-string v1, "NewBest"

    iget-boolean v2, p0, Lcom/google/android/gms/games/a/c;->c:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/dn;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/dn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dn;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
