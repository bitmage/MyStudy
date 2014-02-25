.class public Lcom/google/tagmanager/a/bg;
.super Ljava/util/AbstractList;

# interfaces
.implements Lcom/google/tagmanager/a/ai;
.implements Ljava/util/RandomAccess;


# instance fields
.field private final a:Lcom/google/tagmanager/a/ai;


# direct methods
.method public constructor <init>(Lcom/google/tagmanager/a/ai;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/google/tagmanager/a/bg;->a:Lcom/google/tagmanager/a/ai;

    return-void
.end method

.method static synthetic a(Lcom/google/tagmanager/a/bg;)Lcom/google/tagmanager/a/ai;
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/a/bg;->a:Lcom/google/tagmanager/a/ai;

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/a/bg;->a:Lcom/google/tagmanager/a/ai;

    invoke-interface {v0, p1}, Lcom/google/tagmanager/a/ai;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/a/bg;->a:Lcom/google/tagmanager/a/ai;

    invoke-interface {v0}, Lcom/google/tagmanager/a/ai;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/google/tagmanager/a/h;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/tagmanager/a/bg;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lcom/google/tagmanager/a/bi;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/a/bi;-><init>(Lcom/google/tagmanager/a/bg;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lcom/google/tagmanager/a/bh;

    invoke-direct {v0, p0, p1}, Lcom/google/tagmanager/a/bh;-><init>(Lcom/google/tagmanager/a/bg;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/a/bg;->a:Lcom/google/tagmanager/a/ai;

    invoke-interface {v0}, Lcom/google/tagmanager/a/ai;->size()I

    move-result v0

    return v0
.end method
