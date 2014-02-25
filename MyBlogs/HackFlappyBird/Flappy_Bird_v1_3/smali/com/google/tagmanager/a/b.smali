.class public abstract Lcom/google/tagmanager/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/tagmanager/a/an;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lcom/google/tagmanager/a/am;)Lcom/google/tagmanager/a/bf;
    .locals 1

    new-instance v0, Lcom/google/tagmanager/a/bf;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/a/bf;-><init>(Lcom/google/tagmanager/a/am;)V

    return-object v0
.end method


# virtual methods
.method public abstract b(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/tagmanager/a/b;
.end method

.method public synthetic c(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/tagmanager/a/an;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/a/b;->b(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/tagmanager/a/b;

    move-result-object v0

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/tagmanager/a/b;->g()Lcom/google/tagmanager/a/b;

    move-result-object v0

    return-object v0
.end method

.method public abstract g()Lcom/google/tagmanager/a/b;
.end method
