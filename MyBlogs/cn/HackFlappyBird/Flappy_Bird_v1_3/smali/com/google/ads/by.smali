.class public Lcom/google/ads/by;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/ads/bu;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/a/w;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 1

    instance-of v0, p3, Lcom/google/ads/a/e;

    if-eqz v0, :cond_0

    check-cast p3, Lcom/google/ads/a/e;

    invoke-virtual {p3}, Lcom/google/ads/a/e;->f()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Trying to close WebView that isn\'t an AdWebView"

    invoke-static {v0}, Lcom/google/ads/util/g;->b(Ljava/lang/String;)V

    goto :goto_0
.end method
