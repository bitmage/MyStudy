.class public abstract Lcom/google/tagmanager/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/tagmanager/a/aq;


# static fields
.field private static final a:Lcom/google/tagmanager/a/o;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/tagmanager/a/o;->a()Lcom/google/tagmanager/a/o;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/a/d;->a:Lcom/google/tagmanager/a/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/tagmanager/a/am;)Lcom/google/tagmanager/a/bf;
    .locals 1

    instance-of v0, p1, Lcom/google/tagmanager/a/a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/tagmanager/a/a;

    invoke-virtual {p1}, Lcom/google/tagmanager/a/a;->Q()Lcom/google/tagmanager/a/bf;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/google/tagmanager/a/c;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/tagmanager/a/c;

    invoke-virtual {p1}, Lcom/google/tagmanager/a/c;->b()Lcom/google/tagmanager/a/bf;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/tagmanager/a/bf;

    invoke-direct {v0, p1}, Lcom/google/tagmanager/a/bf;-><init>(Lcom/google/tagmanager/a/am;)V

    goto :goto_0
.end method

.method private b(Lcom/google/tagmanager/a/am;)Lcom/google/tagmanager/a/am;
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/google/tagmanager/a/am;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/google/tagmanager/a/d;->a(Lcom/google/tagmanager/a/am;)Lcom/google/tagmanager/a/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/tagmanager/a/bf;->a()Lcom/google/tagmanager/a/af;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/tagmanager/a/af;->a(Lcom/google/tagmanager/a/am;)Lcom/google/tagmanager/a/af;

    move-result-object v0

    throw v0

    :cond_0
    return-object p1
.end method


# virtual methods
.method public a(Lcom/google/tagmanager/a/h;Lcom/google/tagmanager/a/o;)Lcom/google/tagmanager/a/am;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/google/tagmanager/a/h;->h()Lcom/google/tagmanager/a/k;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/google/tagmanager/a/d;->b(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/a/am;
    :try_end_0
    .catch Lcom/google/tagmanager/a/af; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Lcom/google/tagmanager/a/k;->a(I)V
    :try_end_1
    .catch Lcom/google/tagmanager/a/af; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1, v0}, Lcom/google/tagmanager/a/af;->a(Lcom/google/tagmanager/a/am;)Lcom/google/tagmanager/a/af;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Lcom/google/tagmanager/a/af; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_1
    move-exception v0

    throw v0

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Reading from a ByteString threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public b(Lcom/google/tagmanager/a/h;Lcom/google/tagmanager/a/o;)Lcom/google/tagmanager/a/am;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/a/d;->a(Lcom/google/tagmanager/a/h;Lcom/google/tagmanager/a/o;)Lcom/google/tagmanager/a/am;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/tagmanager/a/d;->b(Lcom/google/tagmanager/a/am;)Lcom/google/tagmanager/a/am;

    move-result-object v0

    return-object v0
.end method

.method public synthetic c(Lcom/google/tagmanager/a/h;Lcom/google/tagmanager/a/o;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/tagmanager/a/d;->b(Lcom/google/tagmanager/a/h;Lcom/google/tagmanager/a/o;)Lcom/google/tagmanager/a/am;

    move-result-object v0

    return-object v0
.end method
