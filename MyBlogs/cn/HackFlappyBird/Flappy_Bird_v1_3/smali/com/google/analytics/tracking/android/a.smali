.class public Lcom/google/analytics/tracking/android/a;
.super Lcom/google/analytics/tracking/android/d;


# static fields
.field private static b:Lcom/google/analytics/tracking/android/a;


# instance fields
.field private a:Lcom/google/analytics/tracking/android/c;


# direct methods
.method static a()Lcom/google/analytics/tracking/android/a;
    .locals 2

    const-class v1, Lcom/google/analytics/tracking/android/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/analytics/tracking/android/a;->b:Lcom/google/analytics/tracking/android/a;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public b()Lcom/google/analytics/tracking/android/c;
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/a;->a:Lcom/google/analytics/tracking/android/c;

    return-object v0
.end method
