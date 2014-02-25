.class Lcom/google/ads/a/r;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/ads/a/w;

.field private final b:Landroid/webkit/WebView;

.field private final c:Lcom/google/ads/a/y;

.field private final d:Lcom/google/ads/e;

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/google/ads/a/w;Landroid/webkit/WebView;Lcom/google/ads/a/y;Lcom/google/ads/e;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ads/a/r;->a:Lcom/google/ads/a/w;

    iput-object p2, p0, Lcom/google/ads/a/r;->b:Landroid/webkit/WebView;

    iput-object p3, p0, Lcom/google/ads/a/r;->c:Lcom/google/ads/a/y;

    iput-object p4, p0, Lcom/google/ads/a/r;->d:Lcom/google/ads/e;

    iput-boolean p5, p0, Lcom/google/ads/a/r;->e:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    iget-object v0, p0, Lcom/google/ads/a/r;->b:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    :cond_0
    iget-object v0, p0, Lcom/google/ads/a/r;->c:Lcom/google/ads/a/y;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/ads/a/r;->c:Lcom/google/ads/a/y;

    invoke-virtual {v0}, Lcom/google/ads/a/y;->a()V

    :cond_1
    iget-boolean v0, p0, Lcom/google/ads/a/r;->e:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/a/r;->a:Lcom/google/ads/a/w;

    invoke-virtual {v0}, Lcom/google/ads/a/w;->k()Lcom/google/ads/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/ads/a/e;->stopLoading()V

    iget-object v0, p0, Lcom/google/ads/a/r;->a:Lcom/google/ads/a/w;

    invoke-virtual {v0}, Lcom/google/ads/a/w;->h()Lcom/google/ads/bt;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bt;->i:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/ads/a/r;->a:Lcom/google/ads/a/w;

    invoke-virtual {v0}, Lcom/google/ads/a/w;->h()Lcom/google/ads/bt;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/bt;->i:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/google/ads/a/r;->a:Lcom/google/ads/a/w;

    iget-object v1, p0, Lcom/google/ads/a/r;->d:Lcom/google/ads/e;

    invoke-virtual {v0, v1}, Lcom/google/ads/a/w;->a(Lcom/google/ads/e;)V

    return-void
.end method
