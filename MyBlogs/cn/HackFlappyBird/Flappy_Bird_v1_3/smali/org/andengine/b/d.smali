.class public Lorg/andengine/b/d;
.super Ljava/lang/Thread;


# instance fields
.field private a:Lorg/andengine/b/a;

.field private final b:Lorg/andengine/b/b/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-class v0, Lorg/andengine/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Lorg/andengine/b/b/a/a;

    invoke-direct {v0}, Lorg/andengine/b/b/a/a;-><init>()V

    iput-object v0, p0, Lorg/andengine/b/d;->b:Lorg/andengine/b/b/a/a;

    return-void
.end method


# virtual methods
.method public a(Lorg/andengine/b/a;)V
    .locals 0

    iput-object p1, p0, Lorg/andengine/b/d;->a:Lorg/andengine/b/a;

    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/andengine/b/d;->a:Lorg/andengine/b/a;

    invoke-virtual {v0}, Lorg/andengine/b/a;->d()Lorg/andengine/b/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lorg/andengine/b/c/b;->l()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    :goto_0
    :try_start_0
    iget-object v0, p0, Lorg/andengine/b/d;->b:Lorg/andengine/b/b/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/andengine/b/b/a/a;->a_(F)V

    iget-object v0, p0, Lorg/andengine/b/d;->a:Lorg/andengine/b/a;

    invoke-virtual {v0}, Lorg/andengine/b/a;->m()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " interrupted. Don\'t worry - this "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is most likely expected!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/andengine/d/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lorg/andengine/b/d;->interrupt()V

    return-void
.end method
