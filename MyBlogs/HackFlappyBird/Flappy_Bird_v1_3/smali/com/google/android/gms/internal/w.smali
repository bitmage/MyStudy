.class public final Lcom/google/android/gms/internal/w;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/gms/internal/db;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/db;

    const-string v1, "Games"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/db;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/w;->a:Lcom/google/android/gms/internal/db;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/w;->a:Lcom/google/android/gms/internal/db;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/db;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/w;->a:Lcom/google/android/gms/internal/db;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/android/gms/internal/db;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/w;->a:Lcom/google/android/gms/internal/db;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/gms/internal/db;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
