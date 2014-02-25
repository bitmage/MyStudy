.class Lcom/google/ads/a/o;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/a/n;


# direct methods
.method constructor <init>(Lcom/google/ads/a/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/a/o;->a:Lcom/google/ads/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/a/o;->a:Lcom/google/ads/a/n;

    invoke-static {v0}, Lcom/google/ads/a/n;->b(Lcom/google/ads/a/n;)Lcom/google/ads/bq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bq;->a:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bt;

    iget-object v0, v0, Lcom/google/ads/bt;->e:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/a/a;

    iget-object v1, p0, Lcom/google/ads/a/o;->a:Lcom/google/ads/a/n;

    invoke-static {v1}, Lcom/google/ads/a/n;->c(Lcom/google/ads/a/n;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/a/a;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
