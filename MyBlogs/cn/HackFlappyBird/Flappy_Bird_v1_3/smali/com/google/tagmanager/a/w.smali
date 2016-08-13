.class public abstract Lcom/google/tagmanager/a/w;
.super Lcom/google/tagmanager/a/v;

# interfaces
.implements Lcom/google/tagmanager/a/y;


# instance fields
.field private a:Lcom/google/tagmanager/a/q;

.field private b:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/tagmanager/a/v;-><init>()V

    invoke-static {}, Lcom/google/tagmanager/a/q;->b()Lcom/google/tagmanager/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/w;->a:Lcom/google/tagmanager/a/q;

    return-void
.end method

.method static synthetic a(Lcom/google/tagmanager/a/w;)Lcom/google/tagmanager/a/q;
    .locals 1

    invoke-direct {p0}, Lcom/google/tagmanager/a/w;->b()Lcom/google/tagmanager/a/q;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/tagmanager/a/w;->b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/tagmanager/a/w;->a:Lcom/google/tagmanager/a/q;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/q;->d()Lcom/google/tagmanager/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/w;->a:Lcom/google/tagmanager/a/q;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/a/w;->b:Z

    :cond_0
    return-void
.end method

.method private b()Lcom/google/tagmanager/a/q;
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/a/w;->a:Lcom/google/tagmanager/a/q;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/q;->c()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/tagmanager/a/w;->b:Z

    iget-object v0, p0, Lcom/google/tagmanager/a/w;->a:Lcom/google/tagmanager/a/q;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/google/tagmanager/a/x;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/tagmanager/a/w;->a()V

    iget-object v0, p0, Lcom/google/tagmanager/a/w;->a:Lcom/google/tagmanager/a/q;

    invoke-static {p1}, Lcom/google/tagmanager/a/x;->a(Lcom/google/tagmanager/a/x;)Lcom/google/tagmanager/a/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/tagmanager/a/q;->a(Lcom/google/tagmanager/a/q;)V

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/tagmanager/a/w;->o()Lcom/google/tagmanager/a/w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic f()Lcom/google/tagmanager/a/v;
    .locals 1

    invoke-virtual {p0}, Lcom/google/tagmanager/a/w;->o()Lcom/google/tagmanager/a/w;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()Lcom/google/tagmanager/a/b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/tagmanager/a/w;->o()Lcom/google/tagmanager/a/w;

    move-result-object v0

    return-object v0
.end method

.method public o()Lcom/google/tagmanager/a/w;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected s()Z
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/a/w;->a:Lcom/google/tagmanager/a/q;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/q;->e()Z

    move-result v0

    return v0
.end method
