.class public Lorg/andengine/a/c/c;
.super Lorg/andengine/a/b;

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# instance fields
.field private final c:Landroid/media/SoundPool;

.field private final d:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lorg/andengine/a/c/c;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Lorg/andengine/a/b;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/andengine/a/c/c;->d:Landroid/util/SparseArray;

    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lorg/andengine/a/c/c;->c:Landroid/media/SoundPool;

    iget-object v0, p0, Lorg/andengine/a/c/c;->c:Landroid/media/SoundPool;

    invoke-virtual {v0, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/andengine/a/c/a;)V
    .locals 2

    invoke-super {p0, p1}, Lorg/andengine/a/b;->a(Lorg/andengine/a/c;)V

    iget-object v0, p0, Lorg/andengine/a/c/c;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/andengine/a/c/a;->h()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Lorg/andengine/a/c;)V
    .locals 0

    check-cast p1, Lorg/andengine/a/c/a;

    invoke-virtual {p0, p1}, Lorg/andengine/a/c/c;->a(Lorg/andengine/a/c/a;)V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-super {p0}, Lorg/andengine/a/b;->b()V

    iget-object v0, p0, Lorg/andengine/a/c/c;->c:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    return-void
.end method

.method public b(Lorg/andengine/a/c/a;)Z
    .locals 3

    invoke-super {p0, p1}, Lorg/andengine/a/b;->b(Lorg/andengine/a/c;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/andengine/a/c/c;->d:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lorg/andengine/a/c/a;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    return v0
.end method

.method public bridge synthetic b(Lorg/andengine/a/c;)Z
    .locals 1

    check-cast p1, Lorg/andengine/a/c/a;

    invoke-virtual {p0, p1}, Lorg/andengine/a/c/c;->b(Lorg/andengine/a/c/a;)Z

    move-result v0

    return v0
.end method

.method c()Landroid/media/SoundPool;
    .locals 1

    iget-object v0, p0, Lorg/andengine/a/c/c;->c:Landroid/media/SoundPool;

    return-object v0
.end method

.method public declared-synchronized onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 3

    monitor-enter p0

    if-nez p3, :cond_1

    :try_start_0
    iget-object v0, p0, Lorg/andengine/a/c/c;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/andengine/a/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lorg/andengine/a/c/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected soundID: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/andengine/a/c/a/a;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    const/4 v1, 0x1

    :try_start_1
    invoke-virtual {v0, v1}, Lorg/andengine/a/c/a;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void
.end method
