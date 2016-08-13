.class public abstract Lcom/google/tagmanager/a/ab;
.super Lcom/google/tagmanager/a/c;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected b:Lcom/google/tagmanager/a/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/tagmanager/a/c;-><init>()V

    sget-object v0, Lcom/google/tagmanager/a/h;->a:Lcom/google/tagmanager/a/h;

    iput-object v0, p0, Lcom/google/tagmanager/a/ab;->b:Lcom/google/tagmanager/a/h;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/tagmanager/a/ab;)Lcom/google/tagmanager/a/ab;
.end method

.method public c()Lcom/google/tagmanager/a/aq;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract d()Lcom/google/tagmanager/a/ab;
.end method

.method public synthetic p()Lcom/google/tagmanager/a/am;
    .locals 1

    invoke-virtual {p0}, Lcom/google/tagmanager/a/ab;->d()Lcom/google/tagmanager/a/ab;

    move-result-object v0

    return-object v0
.end method
