.class final Lcom/google/analytics/a/a/v;
.super Lcom/google/tagmanager/a/d;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/tagmanager/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/analytics/a/a/u;
    .locals 2

    new-instance v0, Lcom/google/analytics/a/a/u;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/analytics/a/a/u;-><init>(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;Lcom/google/analytics/a/a/b;)V

    return-object v0
.end method

.method public synthetic b(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/a/a/v;->a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/o;)Lcom/google/analytics/a/a/u;

    move-result-object v0

    return-object v0
.end method
