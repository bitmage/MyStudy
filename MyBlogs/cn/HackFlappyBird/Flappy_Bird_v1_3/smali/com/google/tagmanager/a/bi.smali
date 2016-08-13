.class Lcom/google/tagmanager/a/bi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field a:Ljava/util/Iterator;

.field final synthetic b:Lcom/google/tagmanager/a/bg;


# direct methods
.method constructor <init>(Lcom/google/tagmanager/a/bg;)V
    .locals 1

    iput-object p1, p0, Lcom/google/tagmanager/a/bi;->b:Lcom/google/tagmanager/a/bg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/google/tagmanager/a/bi;->b:Lcom/google/tagmanager/a/bg;

    invoke-static {v0}, Lcom/google/tagmanager/a/bg;->a(Lcom/google/tagmanager/a/bg;)Lcom/google/tagmanager/a/ai;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/tagmanager/a/ai;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/bi;->a:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/a/bi;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/a/bi;->a:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/tagmanager/a/bi;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
