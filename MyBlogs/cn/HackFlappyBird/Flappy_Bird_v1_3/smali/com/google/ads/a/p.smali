.class Lcom/google/ads/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/ba;

.field final synthetic b:Lcom/google/ads/a/n;


# direct methods
.method constructor <init>(Lcom/google/ads/a/n;Lcom/google/ads/ba;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/a/p;->b:Lcom/google/ads/a/n;

    iput-object p2, p0, Lcom/google/ads/a/p;->a:Lcom/google/ads/ba;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/a/p;->b:Lcom/google/ads/a/n;

    invoke-static {v0}, Lcom/google/ads/a/n;->d(Lcom/google/ads/a/n;)Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/a/p;->b:Lcom/google/ads/a/n;

    invoke-static {v0}, Lcom/google/ads/a/n;->d(Lcom/google/ads/a/n;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/google/ads/a/p;->b:Lcom/google/ads/a/n;

    invoke-static {v0}, Lcom/google/ads/a/n;->d(Lcom/google/ads/a/n;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/a/p;->b:Lcom/google/ads/a/n;

    invoke-static {v0}, Lcom/google/ads/a/n;->b(Lcom/google/ads/a/n;)Lcom/google/ads/bq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bq;->a:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bt;

    iget-object v0, v0, Lcom/google/ads/bt;->b:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/a/w;

    iget-object v1, p0, Lcom/google/ads/a/p;->b:Lcom/google/ads/a/n;

    invoke-static {v1}, Lcom/google/ads/a/n;->e(Lcom/google/ads/a/n;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/a/w;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/ads/a/p;->b:Lcom/google/ads/a/n;

    invoke-static {v0}, Lcom/google/ads/a/n;->f(Lcom/google/ads/a/n;)Lcom/google/ads/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/a/p;->b:Lcom/google/ads/a/n;

    invoke-static {v0}, Lcom/google/ads/a/n;->b(Lcom/google/ads/a/n;)Lcom/google/ads/bq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bq;->a:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bt;

    iget-object v0, v0, Lcom/google/ads/bt;->g:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/a/ac;

    iget-object v1, p0, Lcom/google/ads/a/p;->b:Lcom/google/ads/a/n;

    invoke-static {v1}, Lcom/google/ads/a/n;->f(Lcom/google/ads/a/n;)Lcom/google/ads/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/ads/a/ac;->b(Lcom/google/ads/g;)V

    :cond_1
    iget-object v0, p0, Lcom/google/ads/a/p;->b:Lcom/google/ads/a/n;

    invoke-static {v0}, Lcom/google/ads/a/n;->b(Lcom/google/ads/a/n;)Lcom/google/ads/bq;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bq;->a:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/bt;

    iget-object v0, v0, Lcom/google/ads/bt;->b:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/a/w;

    iget-object v1, p0, Lcom/google/ads/a/p;->a:Lcom/google/ads/ba;

    invoke-virtual {v0, v1}, Lcom/google/ads/a/w;->a(Lcom/google/ads/ba;)V

    return-void
.end method
