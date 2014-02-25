.class public Lorg/andengine/d/a/c/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/andengine/d/a/c/a;


# instance fields
.field private final a:Lorg/andengine/d/a/c/a;


# direct methods
.method public constructor <init>(Lorg/andengine/d/a/c/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/andengine/d/a/c/a/a;->a:Lorg/andengine/d/a/c/a;

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/d/a/c/a/a;->a:Lorg/andengine/d/a/c/a;

    invoke-interface {v0}, Lorg/andengine/d/a/c/a;->a()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/andengine/d/a/c/a/a;->a:Lorg/andengine/d/a/c/a;

    invoke-interface {v0, p1}, Lorg/andengine/d/a/c/a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
