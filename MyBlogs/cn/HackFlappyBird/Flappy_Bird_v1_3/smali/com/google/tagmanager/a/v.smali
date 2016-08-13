.class public abstract Lcom/google/tagmanager/a/v;
.super Lcom/google/tagmanager/a/b;


# instance fields
.field private a:Lcom/google/tagmanager/a/h;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/tagmanager/a/b;-><init>()V

    sget-object v0, Lcom/google/tagmanager/a/h;->a:Lcom/google/tagmanager/a/h;

    iput-object v0, p0, Lcom/google/tagmanager/a/v;->a:Lcom/google/tagmanager/a/h;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/tagmanager/a/h;)Lcom/google/tagmanager/a/v;
    .locals 0

    iput-object p1, p0, Lcom/google/tagmanager/a/v;->a:Lcom/google/tagmanager/a/h;

    return-object p0
.end method

.method public abstract a(Lcom/google/tagmanager/a/t;)Lcom/google/tagmanager/a/v;
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/tagmanager/a/v;->f()Lcom/google/tagmanager/a/v;

    move-result-object v0

    return-object v0
.end method

.method public abstract e()Lcom/google/tagmanager/a/t;
.end method

.method public f()Lcom/google/tagmanager/a/v;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic g()Lcom/google/tagmanager/a/b;
    .locals 1

    invoke-virtual {p0}, Lcom/google/tagmanager/a/v;->f()Lcom/google/tagmanager/a/v;

    move-result-object v0

    return-object v0
.end method

.method public synthetic p()Lcom/google/tagmanager/a/am;
    .locals 1

    invoke-virtual {p0}, Lcom/google/tagmanager/a/v;->e()Lcom/google/tagmanager/a/t;

    move-result-object v0

    return-object v0
.end method

.method public final r()Lcom/google/tagmanager/a/h;
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/a/v;->a:Lcom/google/tagmanager/a/h;

    return-object v0
.end method
