.class public Lcom/google/analytics/tracking/android/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/google/analytics/tracking/android/a;


# direct methods
.method private static a()Lcom/google/analytics/tracking/android/c;
    .locals 1

    sget-object v0, Lcom/google/analytics/tracking/android/b;->a:Lcom/google/analytics/tracking/android/a;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/analytics/tracking/android/a;->a()Lcom/google/analytics/tracking/android/a;

    move-result-object v0

    sput-object v0, Lcom/google/analytics/tracking/android/b;->a:Lcom/google/analytics/tracking/android/a;

    :cond_0
    sget-object v0, Lcom/google/analytics/tracking/android/b;->a:Lcom/google/analytics/tracking/android/a;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/analytics/tracking/android/b;->a:Lcom/google/analytics/tracking/android/a;

    invoke-virtual {v0}, Lcom/google/analytics/tracking/android/a;->b()Lcom/google/analytics/tracking/android/c;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/google/analytics/tracking/android/b;->a()Lcom/google/analytics/tracking/android/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/analytics/tracking/android/c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
