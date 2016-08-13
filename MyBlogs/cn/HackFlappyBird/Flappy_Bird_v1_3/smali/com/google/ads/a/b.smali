.class Lcom/google/ads/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/google/ads/a/a;

.field final synthetic b:Lcom/google/ads/a/a;


# direct methods
.method constructor <init>(Lcom/google/ads/a/a;Lcom/google/ads/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/a/b;->b:Lcom/google/ads/a/a;

    iput-object p2, p0, Lcom/google/ads/a/b;->a:Lcom/google/ads/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/ads/a/b;->b:Lcom/google/ads/a/a;

    iget-object v0, v0, Lcom/google/ads/a/a;->a:Lcom/google/ads/bt;

    iget-object v0, v0, Lcom/google/ads/bt;->j:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/AdView;

    iget-object v1, p0, Lcom/google/ads/a/b;->a:Lcom/google/ads/a/a;

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->removeView(Landroid/view/View;)V

    return-void
.end method
