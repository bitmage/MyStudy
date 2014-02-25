.class public abstract Lcom/google/tagmanager/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/tagmanager/a/ap;


# instance fields
.field protected a:I

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/tagmanager/a/c;->b:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/tagmanager/a/c;->a:I

    return-void
.end method


# virtual methods
.method public a()Lcom/google/tagmanager/a/ap;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "clone() should be implemented by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method b()Lcom/google/tagmanager/a/bf;
    .locals 1

    new-instance v0, Lcom/google/tagmanager/a/bf;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/a/bf;-><init>(Lcom/google/tagmanager/a/am;)V

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/tagmanager/a/c;->a()Lcom/google/tagmanager/a/ap;

    move-result-object v0

    return-object v0
.end method

.method public n()Lcom/google/tagmanager/a/an;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "toBuilder() is not supported in mutable messages."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public o()Lcom/google/tagmanager/a/an;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "newBuilderForType() is not supported in mutable messages."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
