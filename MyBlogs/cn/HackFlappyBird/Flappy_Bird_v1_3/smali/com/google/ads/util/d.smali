.class public Lcom/google/ads/util/d;
.super Lcom/google/ads/util/r;


# direct methods
.method public constructor <init>(Lcom/google/ads/bt;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/ads/util/r;-><init>(Lcom/google/ads/bt;)V

    return-void
.end method


# virtual methods
.method public onShowCustomView(Landroid/view/View;ILandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    invoke-interface {p3}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    return-void
.end method
