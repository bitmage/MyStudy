.class public Lorg/andengine/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Landroid/location/LocationListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lorg/andengine/input/a/a/e;


# static fields
.field private static final e:Lorg/andengine/input/sensor/b;


# instance fields
.field private final A:Lorg/andengine/b/b/d;

.field private final B:Lorg/andengine/b/b/a;

.field protected final a:Lorg/andengine/b/a/a;

.field protected b:Lorg/andengine/c/b/e;

.field protected c:I

.field protected d:I

.field private f:Z

.field private g:Z

.field private h:J

.field private i:F

.field private final j:Lorg/andengine/b/c;

.field private final k:Lorg/andengine/b/d;

.field private final l:Lorg/andengine/b/b/a/a;

.field private final m:Lorg/andengine/b/c/b;

.field private n:Lorg/andengine/input/a/a/d;

.field private final o:Lorg/andengine/opengl/d/e;

.field private final p:Lorg/andengine/opengl/c/e;

.field private final q:Lorg/andengine/opengl/a/c;

.field private final r:Lorg/andengine/opengl/b/h;

.field private final s:Lorg/andengine/a/c/c;

.field private final t:Lorg/andengine/a/b/b;

.field private u:Lorg/andengine/input/sensor/location/a;

.field private v:Landroid/location/Location;

.field private w:Lorg/andengine/input/sensor/a/g;

.field private x:Lorg/andengine/input/sensor/a/a;

.field private y:Lorg/andengine/input/sensor/b/a;

.field private z:Lorg/andengine/input/sensor/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/andengine/input/sensor/b;->c:Lorg/andengine/input/sensor/b;

    sput-object v0, Lorg/andengine/b/a;->e:Lorg/andengine/input/sensor/b;

    return-void
.end method

.method public constructor <init>(Lorg/andengine/b/c/b;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/andengine/b/b/a/a;

    invoke-direct {v0}, Lorg/andengine/b/b/a/a;-><init>()V

    iput-object v0, p0, Lorg/andengine/b/a;->l:Lorg/andengine/b/b/a/a;

    new-instance v0, Lorg/andengine/opengl/d/e;

    invoke-direct {v0}, Lorg/andengine/opengl/d/e;-><init>()V

    iput-object v0, p0, Lorg/andengine/b/a;->o:Lorg/andengine/opengl/d/e;

    new-instance v0, Lorg/andengine/opengl/c/e;

    invoke-direct {v0}, Lorg/andengine/opengl/c/e;-><init>()V

    iput-object v0, p0, Lorg/andengine/b/a;->p:Lorg/andengine/opengl/c/e;

    new-instance v0, Lorg/andengine/opengl/a/c;

    invoke-direct {v0}, Lorg/andengine/opengl/a/c;-><init>()V

    iput-object v0, p0, Lorg/andengine/b/a;->q:Lorg/andengine/opengl/a/c;

    new-instance v0, Lorg/andengine/opengl/b/h;

    invoke-direct {v0}, Lorg/andengine/opengl/b/h;-><init>()V

    iput-object v0, p0, Lorg/andengine/b/a;->r:Lorg/andengine/opengl/b/h;

    new-instance v0, Lorg/andengine/b/b/d;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lorg/andengine/b/b/d;-><init>(I)V

    iput-object v0, p0, Lorg/andengine/b/a;->A:Lorg/andengine/b/b/d;

    new-instance v0, Lorg/andengine/b/b/a;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lorg/andengine/b/b/a;-><init>(I)V

    iput-object v0, p0, Lorg/andengine/b/a;->B:Lorg/andengine/b/b/a;

    iput v2, p0, Lorg/andengine/b/a;->c:I

    iput v2, p0, Lorg/andengine/b/a;->d:I

    invoke-static {}, Lorg/andengine/opengl/c/a/a/b;->a()V

    invoke-static {}, Lorg/andengine/a/c/b;->a()V

    invoke-static {}, Lorg/andengine/a/b/a;->a()V

    invoke-static {}, Lorg/andengine/opengl/a/b;->a()V

    iget-object v0, p0, Lorg/andengine/b/a;->o:Lorg/andengine/opengl/d/e;

    invoke-virtual {v0}, Lorg/andengine/opengl/d/e;->a()V

    iget-object v0, p0, Lorg/andengine/b/a;->p:Lorg/andengine/opengl/c/e;

    invoke-virtual {v0}, Lorg/andengine/opengl/c/e;->a()V

    iget-object v0, p0, Lorg/andengine/b/a;->q:Lorg/andengine/opengl/a/c;

    invoke-virtual {v0}, Lorg/andengine/opengl/a/c;->a()V

    iget-object v0, p0, Lorg/andengine/b/a;->r:Lorg/andengine/opengl/b/h;

    invoke-virtual {v0}, Lorg/andengine/opengl/b/h;->a()V

    iput-object p1, p0, Lorg/andengine/b/a;->m:Lorg/andengine/b/c/b;

    iget-object v0, p0, Lorg/andengine/b/a;->m:Lorg/andengine/b/c/b;

    invoke-virtual {v0}, Lorg/andengine/b/c/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/andengine/b/c/b;->b()Lorg/andengine/b/c;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/b/a;->j:Lorg/andengine/b/c;

    :goto_0
    invoke-virtual {p1}, Lorg/andengine/b/c/b;->i()Lorg/andengine/b/a/a;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/b/a;->a:Lorg/andengine/b/a/a;

    iget-object v0, p0, Lorg/andengine/b/a;->m:Lorg/andengine/b/c/b;

    invoke-virtual {v0}, Lorg/andengine/b/c/b;->c()Lorg/andengine/b/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/b/c/g;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/andengine/input/a/a/f;

    invoke-direct {v0}, Lorg/andengine/input/a/a/f;-><init>()V

    invoke-virtual {p0, v0}, Lorg/andengine/b/a;->a(Lorg/andengine/input/a/a/d;)V

    :goto_1
    iget-object v0, p0, Lorg/andengine/b/a;->m:Lorg/andengine/b/c/b;

    invoke-virtual {v0}, Lorg/andengine/b/c/b;->d()Lorg/andengine/b/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/b/c/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/andengine/a/c/c;

    iget-object v1, p0, Lorg/andengine/b/a;->m:Lorg/andengine/b/c/b;

    invoke-virtual {v1}, Lorg/andengine/b/c/b;->d()Lorg/andengine/b/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lorg/andengine/b/c/a;->a()Lorg/andengine/b/c/f;

    move-result-object v1

    invoke-virtual {v1}, Lorg/andengine/b/c/f;->b()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/andengine/a/c/c;-><init>(I)V

    iput-object v0, p0, Lorg/andengine/b/a;->s:Lorg/andengine/a/c/c;

    :goto_2
    iget-object v0, p0, Lorg/andengine/b/a;->m:Lorg/andengine/b/c/b;

    invoke-virtual {v0}, Lorg/andengine/b/c/b;->d()Lorg/andengine/b/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/b/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lorg/andengine/a/b/b;

    invoke-direct {v0}, Lorg/andengine/a/b/b;-><init>()V

    iput-object v0, p0, Lorg/andengine/b/a;->t:Lorg/andengine/a/b/b;

    :goto_3
    iget-object v0, p0, Lorg/andengine/b/a;->m:Lorg/andengine/b/c/b;

    invoke-virtual {v0}, Lorg/andengine/b/c/b;->j()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/andengine/b/a;->m:Lorg/andengine/b/c/b;

    invoke-virtual {v0}, Lorg/andengine/b/c/b;->k()Lorg/andengine/b/d;

    move-result-object v0

    iput-object v0, p0, Lorg/andengine/b/a;->k:Lorg/andengine/b/d;

    :goto_4
    iget-object v0, p0, Lorg/andengine/b/a;->k:Lorg/andengine/b/d;

    invoke-virtual {v0, p0}, Lorg/andengine/b/d;->a(Lorg/andengine/b/a;)V

    return-void

    :cond_0
    new-instance v0, Lorg/andengine/b/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/andengine/b/c;-><init>(Z)V

    iput-object v0, p0, Lorg/andengine/b/a;->j:Lorg/andengine/b/c;

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/andengine/input/a/a/g;

    invoke-direct {v0}, Lorg/andengine/input/a/a/g;-><init>()V

    invoke-virtual {p0, v0}, Lorg/andengine/b/a;->a(Lorg/andengine/input/a/a/d;)V

    goto :goto_1

    :cond_2
    iput-object v3, p0, Lorg/andengine/b/a;->s:Lorg/andengine/a/c/c;

    goto :goto_2

    :cond_3
    iput-object v3, p0, Lorg/andengine/b/a;->t:Lorg/andengine/a/b/b;

    goto :goto_3

    :cond_4
    new-instance v0, Lorg/andengine/b/d;

    invoke-direct {v0}, Lorg/andengine/b/d;-><init>()V

    iput-object v0, p0, Lorg/andengine/b/a;->k:Lorg/andengine/b/d;

    goto :goto_4
.end method

.method private n()V
    .locals 1

    iget-boolean v0, p0, Lorg/andengine/b/a;->g:Z

    if-eqz v0, :cond_0

    new-instance v0, Lorg/andengine/b/b;

    invoke-direct {v0, p0}, Lorg/andengine/b/b;-><init>(Lorg/andengine/b/a;)V

    throw v0

    :cond_0
    return-void
.end method

.method private o()J
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/andengine/b/a;->h:J

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/a;->k:Lorg/andengine/b/d;

    invoke-virtual {v0}, Lorg/andengine/b/d;->start()V

    return-void
.end method

.method protected a(F)V
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/a;->b:Lorg/andengine/c/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/b/a;->b:Lorg/andengine/c/b/e;

    invoke-virtual {v0, p1}, Lorg/andengine/c/b/e;->a_(F)V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 0

    iput p1, p0, Lorg/andengine/b/a;->c:I

    iput p2, p0, Lorg/andengine/b/a;->d:I

    invoke-virtual {p0}, Lorg/andengine/b/a;->f()V

    return-void
.end method

.method public a(J)V
    .locals 3

    long-to-float v0, p1

    const v1, 0x3089705f

    mul-float/2addr v0, v1

    iget v1, p0, Lorg/andengine/b/a;->i:F

    add-float/2addr v1, v0

    iput v1, p0, Lorg/andengine/b/a;->i:F

    iget-wide v1, p0, Lorg/andengine/b/a;->h:J

    add-long/2addr v1, p1

    iput-wide v1, p0, Lorg/andengine/b/a;->h:J

    iget-object v1, p0, Lorg/andengine/b/a;->n:Lorg/andengine/input/a/a/d;

    invoke-interface {v1, v0}, Lorg/andengine/input/a/a/d;->a_(F)V

    invoke-virtual {p0, v0}, Lorg/andengine/b/a;->b(F)V

    invoke-virtual {p0, v0}, Lorg/andengine/b/a;->a(F)V

    return-void
.end method

.method public a(Lorg/andengine/c/b/e;)V
    .locals 0

    iput-object p1, p0, Lorg/andengine/b/a;->b:Lorg/andengine/c/b/e;

    return-void
.end method

.method public a(Lorg/andengine/input/a/a/d;)V
    .locals 1

    iput-object p1, p0, Lorg/andengine/b/a;->n:Lorg/andengine/input/a/a/d;

    iget-object v0, p0, Lorg/andengine/b/a;->n:Lorg/andengine/input/a/a/d;

    invoke-interface {v0, p0}, Lorg/andengine/input/a/a/d;->a(Lorg/andengine/input/a/a/e;)V

    return-void
.end method

.method public a(Lorg/andengine/opengl/util/e;)V
    .locals 2

    iget-object v1, p0, Lorg/andengine/b/a;->j:Lorg/andengine/b/c;

    invoke-virtual {v1}, Lorg/andengine/b/c;->lock()V

    :try_start_0
    invoke-virtual {v1}, Lorg/andengine/b/c;->c()V

    iget-object v0, p0, Lorg/andengine/b/a;->o:Lorg/andengine/opengl/d/e;

    invoke-virtual {v0, p1}, Lorg/andengine/opengl/d/e;->a(Lorg/andengine/opengl/util/e;)V

    iget-object v0, p0, Lorg/andengine/b/a;->p:Lorg/andengine/opengl/c/e;

    invoke-virtual {v0, p1}, Lorg/andengine/opengl/c/e;->a(Lorg/andengine/opengl/util/e;)V

    iget-object v0, p0, Lorg/andengine/b/a;->q:Lorg/andengine/opengl/a/c;

    invoke-virtual {v0, p1}, Lorg/andengine/opengl/a/c;->a(Lorg/andengine/opengl/util/e;)V

    iget-object v0, p0, Lorg/andengine/b/a;->a:Lorg/andengine/b/a/a;

    invoke-virtual {p0, p1, v0}, Lorg/andengine/b/a;->a(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V

    iget-object v0, p0, Lorg/andengine/b/a;->a:Lorg/andengine/b/a/a;

    invoke-virtual {p0, p1, v0}, Lorg/andengine/b/a;->b(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V

    invoke-virtual {v1}, Lorg/andengine/b/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lorg/andengine/b/c;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lorg/andengine/b/c;->unlock()V

    throw v0
.end method

.method protected a(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/a;->B:Lorg/andengine/b/b/a;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/b/b/a;->a(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V

    return-void
.end method

.method protected a(Lorg/andengine/b/a/a;Lorg/andengine/input/a/a;)Z
    .locals 1

    invoke-virtual {p1}, Lorg/andengine/b/a/a;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/andengine/b/a/a;->i()Lorg/andengine/b/a/a/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/andengine/b/a/a/a;->a(Lorg/andengine/input/a/a;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lorg/andengine/c/b/e;Lorg/andengine/input/a/a;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lorg/andengine/c/b/e;->a(Lorg/andengine/input/a/a;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/andengine/input/a/a;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lorg/andengine/b/a;->c(Lorg/andengine/input/a/a;)Lorg/andengine/c/b/e;

    move-result-object v0

    invoke-virtual {p0, p1}, Lorg/andengine/b/a;->b(Lorg/andengine/input/a/a;)Lorg/andengine/b/a/a;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lorg/andengine/b/a;->b(Lorg/andengine/b/a/a;Lorg/andengine/input/a/a;)V

    invoke-virtual {p0, v1, p1}, Lorg/andengine/b/a;->a(Lorg/andengine/b/a/a;Lorg/andengine/input/a/a;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, v0, p1}, Lorg/andengine/b/a;->a(Lorg/andengine/c/b/e;Lorg/andengine/input/a/a;)Z

    move-result v0

    goto :goto_0
.end method

.method protected b(Lorg/andengine/input/a/a;)Lorg/andengine/b/a/a;
    .locals 1

    invoke-virtual {p0}, Lorg/andengine/b/a;->e()Lorg/andengine/b/a/a;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/andengine/b/a;->f:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/andengine/b/a;->h:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/andengine/b/a;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b(F)V
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/a;->l:Lorg/andengine/b/b/a/a;

    invoke-virtual {v0, p1}, Lorg/andengine/b/b/a/a;->a_(F)V

    iget-object v0, p0, Lorg/andengine/b/a;->A:Lorg/andengine/b/b/d;

    invoke-virtual {v0, p1}, Lorg/andengine/b/b/d;->a_(F)V

    invoke-virtual {p0}, Lorg/andengine/b/a;->e()Lorg/andengine/b/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/andengine/b/a/a;->a_(F)V

    return-void
.end method

.method protected b(Lorg/andengine/b/a/a;Lorg/andengine/input/a/a;)V
    .locals 2

    iget v0, p0, Lorg/andengine/b/a;->c:I

    iget v1, p0, Lorg/andengine/b/a;->d:I

    invoke-virtual {p1, p2, v0, v1}, Lorg/andengine/b/a/a;->a(Lorg/andengine/input/a/a;II)V

    return-void
.end method

.method protected b(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/a;->b:Lorg/andengine/c/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/b/a;->b:Lorg/andengine/c/b/e;

    invoke-virtual {v0, p1, p2}, Lorg/andengine/c/b/e;->a(Lorg/andengine/opengl/util/e;Lorg/andengine/b/a/a;)V

    :cond_0
    invoke-virtual {p2, p1}, Lorg/andengine/b/a/a;->a(Lorg/andengine/opengl/util/e;)V

    return-void
.end method

.method protected c(Lorg/andengine/input/a/a;)Lorg/andengine/c/b/e;
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/a;->b:Lorg/andengine/c/b/e;

    return-object v0
.end method

.method public declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/andengine/b/a;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/andengine/b/a;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public d()Lorg/andengine/b/c/b;
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/a;->m:Lorg/andengine/b/c/b;

    return-object v0
.end method

.method public e()Lorg/andengine/b/a/a;
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/a;->a:Lorg/andengine/b/a/a;

    return-object v0
.end method

.method protected f()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/andengine/b/a;->a:Lorg/andengine/b/a/a;

    iget v1, p0, Lorg/andengine/b/a;->c:I

    iget v2, p0, Lorg/andengine/b/a;->d:I

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/andengine/b/a/a;->a(IIII)V

    return-void
.end method

.method public g()Lorg/andengine/opengl/d/e;
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/a;->o:Lorg/andengine/opengl/d/e;

    return-object v0
.end method

.method public h()Lorg/andengine/opengl/c/e;
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/a;->p:Lorg/andengine/opengl/c/e;

    return-object v0
.end method

.method public i()Lorg/andengine/a/c/c;
    .locals 2

    iget-object v0, p0, Lorg/andengine/b/a;->s:Lorg/andengine/a/c/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/b/a;->s:Lorg/andengine/a/c/c;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "To enable the SoundManager, check the EngineOptions!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public j()Lorg/andengine/a/b/b;
    .locals 2

    iget-object v0, p0, Lorg/andengine/b/a;->t:Lorg/andengine/a/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/b/a;->t:Lorg/andengine/a/b/b;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "To enable the MusicManager, check the EngineOptions!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public k()V
    .locals 2

    iget-object v0, p0, Lorg/andengine/b/a;->j:Lorg/andengine/b/c;

    invoke-virtual {v0}, Lorg/andengine/b/c;->lock()V

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lorg/andengine/b/a;->g:Z

    iget-object v0, p0, Lorg/andengine/b/a;->j:Lorg/andengine/b/c;

    invoke-virtual {v0}, Lorg/andengine/b/c;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/andengine/b/a;->j:Lorg/andengine/b/c;

    invoke-virtual {v0}, Lorg/andengine/b/c;->unlock()V

    :try_start_1
    iget-object v0, p0, Lorg/andengine/b/a;->k:Lorg/andengine/b/d;

    invoke-virtual {v0}, Lorg/andengine/b/d;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    iget-object v0, p0, Lorg/andengine/b/a;->o:Lorg/andengine/opengl/d/e;

    invoke-virtual {v0}, Lorg/andengine/opengl/d/e;->b()V

    iget-object v0, p0, Lorg/andengine/b/a;->p:Lorg/andengine/opengl/c/e;

    invoke-virtual {v0}, Lorg/andengine/opengl/c/e;->c()V

    iget-object v0, p0, Lorg/andengine/b/a;->q:Lorg/andengine/opengl/a/c;

    invoke-virtual {v0}, Lorg/andengine/opengl/a/c;->b()V

    iget-object v0, p0, Lorg/andengine/b/a;->r:Lorg/andengine/opengl/b/h;

    invoke-virtual {v0}, Lorg/andengine/opengl/b/h;->b()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/andengine/b/a;->j:Lorg/andengine/b/c;

    invoke-virtual {v1}, Lorg/andengine/b/c;->unlock()V

    throw v0

    :catch_0
    move-exception v0

    const-string v1, "Could not join UpdateThread."

    invoke-static {v1, v0}, Lorg/andengine/d/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "Trying to manually interrupt UpdateThread."

    invoke-static {v0}, Lorg/andengine/d/e/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/andengine/b/a;->k:Lorg/andengine/b/d;

    invoke-virtual {v0}, Lorg/andengine/b/d;->interrupt()V

    goto :goto_0
.end method

.method public l()V
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/a;->o:Lorg/andengine/opengl/d/e;

    invoke-virtual {v0}, Lorg/andengine/opengl/d/e;->c()V

    iget-object v0, p0, Lorg/andengine/b/a;->p:Lorg/andengine/opengl/c/e;

    invoke-virtual {v0}, Lorg/andengine/opengl/c/e;->b()V

    iget-object v0, p0, Lorg/andengine/b/a;->q:Lorg/andengine/opengl/a/c;

    invoke-virtual {v0}, Lorg/andengine/opengl/a/c;->c()V

    iget-object v0, p0, Lorg/andengine/b/a;->r:Lorg/andengine/opengl/b/h;

    invoke-virtual {v0}, Lorg/andengine/opengl/b/h;->c()V

    return-void
.end method

.method m()V
    .locals 3

    iget-boolean v0, p0, Lorg/andengine/b/a;->f:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/andengine/b/a;->o()J

    move-result-wide v0

    iget-object v2, p0, Lorg/andengine/b/a;->j:Lorg/andengine/b/c;

    invoke-virtual {v2}, Lorg/andengine/b/c;->lock()V

    :try_start_0
    invoke-direct {p0}, Lorg/andengine/b/a;->n()V

    invoke-virtual {p0, v0, v1}, Lorg/andengine/b/a;->a(J)V

    invoke-direct {p0}, Lorg/andengine/b/a;->n()V

    iget-object v0, p0, Lorg/andengine/b/a;->j:Lorg/andengine/b/c;

    invoke-virtual {v0}, Lorg/andengine/b/c;->a()V

    iget-object v0, p0, Lorg/andengine/b/a;->j:Lorg/andengine/b/c;

    invoke-virtual {v0}, Lorg/andengine/b/c;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lorg/andengine/b/a;->j:Lorg/andengine/b/c;

    invoke-virtual {v0}, Lorg/andengine/b/c;->unlock()V

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/andengine/b/a;->j:Lorg/andengine/b/c;

    invoke-virtual {v1}, Lorg/andengine/b/c;->unlock()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/andengine/b/a;->j:Lorg/andengine/b/c;

    invoke-virtual {v0}, Lorg/andengine/b/c;->lock()V

    :try_start_1
    invoke-direct {p0}, Lorg/andengine/b/a;->n()V

    iget-object v0, p0, Lorg/andengine/b/a;->j:Lorg/andengine/b/c;

    invoke-virtual {v0}, Lorg/andengine/b/c;->a()V

    iget-object v0, p0, Lorg/andengine/b/a;->j:Lorg/andengine/b/c;

    invoke-virtual {v0}, Lorg/andengine/b/c;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v0, p0, Lorg/andengine/b/a;->j:Lorg/andengine/b/c;

    invoke-virtual {v0}, Lorg/andengine/b/c;->unlock()V

    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/andengine/b/a;->j:Lorg/andengine/b/c;

    invoke-virtual {v1}, Lorg/andengine/b/c;->unlock()V

    throw v0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 2

    iget-boolean v0, p0, Lorg/andengine/b/a;->f:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/andengine/b/a;->x:Lorg/andengine/input/sensor/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/andengine/b/a;->x:Lorg/andengine/input/sensor/a/a;

    invoke-virtual {v0, p2}, Lorg/andengine/input/sensor/a/a;->a(I)V

    iget-object v0, p0, Lorg/andengine/b/a;->w:Lorg/andengine/input/sensor/a/g;

    iget-object v1, p0, Lorg/andengine/b/a;->x:Lorg/andengine/input/sensor/a/a;

    invoke-interface {v0, v1}, Lorg/andengine/input/sensor/a/g;->a(Lorg/andengine/input/sensor/a/a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/andengine/b/a;->z:Lorg/andengine/input/sensor/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/b/a;->z:Lorg/andengine/input/sensor/b/b;

    invoke-virtual {v0, p2}, Lorg/andengine/input/sensor/b/b;->b(I)V

    iget-object v0, p0, Lorg/andengine/b/a;->y:Lorg/andengine/input/sensor/b/a;

    iget-object v1, p0, Lorg/andengine/b/a;->z:Lorg/andengine/input/sensor/b/b;

    invoke-interface {v0, v1}, Lorg/andengine/input/sensor/b/a;->a(Lorg/andengine/input/sensor/b/b;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/andengine/b/a;->z:Lorg/andengine/input/sensor/b/b;

    invoke-virtual {v0, p2}, Lorg/andengine/input/sensor/b/b;->c(I)V

    iget-object v0, p0, Lorg/andengine/b/a;->y:Lorg/andengine/input/sensor/b/a;

    iget-object v1, p0, Lorg/andengine/b/a;->z:Lorg/andengine/input/sensor/b/b;

    invoke-interface {v0, v1}, Lorg/andengine/input/sensor/b/a;->a(Lorg/andengine/input/sensor/b/b;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/a;->v:Landroid/location/Location;

    if-nez v0, :cond_0

    iput-object p1, p0, Lorg/andengine/b/a;->v:Landroid/location/Location;

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/andengine/b/a;->u:Lorg/andengine/input/sensor/location/a;

    invoke-interface {v0}, Lorg/andengine/input/sensor/location/a;->b()V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lorg/andengine/b/a;->v:Landroid/location/Location;

    iget-object v0, p0, Lorg/andengine/b/a;->u:Lorg/andengine/input/sensor/location/a;

    invoke-interface {v0, p1}, Lorg/andengine/input/sensor/location/a;->a(Landroid/location/Location;)V

    goto :goto_0
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/a;->u:Lorg/andengine/input/sensor/location/a;

    invoke-interface {v0}, Lorg/andengine/input/sensor/location/a;->c()V

    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/andengine/b/a;->u:Lorg/andengine/input/sensor/location/a;

    invoke-interface {v0}, Lorg/andengine/input/sensor/location/a;->a()V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    iget-boolean v0, p0, Lorg/andengine/b/a;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/andengine/b/a;->x:Lorg/andengine/input/sensor/a/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/andengine/b/a;->x:Lorg/andengine/input/sensor/a/a;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0, v1}, Lorg/andengine/input/sensor/a/a;->a([F)V

    iget-object v0, p0, Lorg/andengine/b/a;->w:Lorg/andengine/input/sensor/a/g;

    iget-object v1, p0, Lorg/andengine/b/a;->x:Lorg/andengine/input/sensor/a/a;

    invoke-interface {v0, v1}, Lorg/andengine/input/sensor/a/g;->b(Lorg/andengine/input/sensor/a/a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/andengine/b/a;->z:Lorg/andengine/input/sensor/b/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/b/a;->z:Lorg/andengine/input/sensor/b/b;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0, v1}, Lorg/andengine/input/sensor/b/b;->b([F)V

    iget-object v0, p0, Lorg/andengine/b/a;->y:Lorg/andengine/input/sensor/b/a;

    iget-object v1, p0, Lorg/andengine/b/a;->z:Lorg/andengine/input/sensor/b/b;

    invoke-interface {v0, v1}, Lorg/andengine/input/sensor/b/a;->b(Lorg/andengine/input/sensor/b/b;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/andengine/b/a;->z:Lorg/andengine/input/sensor/b/b;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-virtual {v0, v1}, Lorg/andengine/input/sensor/b/b;->c([F)V

    iget-object v0, p0, Lorg/andengine/b/a;->y:Lorg/andengine/input/sensor/b/a;

    iget-object v1, p0, Lorg/andengine/b/a;->z:Lorg/andengine/input/sensor/b/b;

    invoke-interface {v0, v1}, Lorg/andengine/input/sensor/b/a;->b(Lorg/andengine/input/sensor/b/b;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 2

    packed-switch p2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/andengine/b/a;->u:Lorg/andengine/input/sensor/location/a;

    sget-object v1, Lorg/andengine/input/sensor/location/b;->a:Lorg/andengine/input/sensor/location/b;

    invoke-interface {v0, v1, p3}, Lorg/andengine/input/sensor/location/a;->a(Lorg/andengine/input/sensor/location/b;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lorg/andengine/b/a;->u:Lorg/andengine/input/sensor/location/a;

    sget-object v1, Lorg/andengine/input/sensor/location/b;->b:Lorg/andengine/input/sensor/location/b;

    invoke-interface {v0, v1, p3}, Lorg/andengine/input/sensor/location/a;->a(Lorg/andengine/input/sensor/location/b;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lorg/andengine/b/a;->u:Lorg/andengine/input/sensor/location/a;

    sget-object v1, Lorg/andengine/input/sensor/location/b;->c:Lorg/andengine/input/sensor/location/b;

    invoke-interface {v0, v1, p3}, Lorg/andengine/input/sensor/location/a;->a(Lorg/andengine/input/sensor/location/b;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-boolean v0, p0, Lorg/andengine/b/a;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/andengine/b/a;->n:Lorg/andengine/input/a/a/d;

    invoke-interface {v0, p2}, Lorg/andengine/input/a/a/d;->a(Landroid/view/MotionEvent;)V

    :try_start_0
    iget-object v0, p0, Lorg/andengine/b/a;->m:Lorg/andengine/b/c/b;

    invoke-virtual {v0}, Lorg/andengine/b/c/b;->c()Lorg/andengine/b/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/b/c/g;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lorg/andengine/d/e/a;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1
.end method
