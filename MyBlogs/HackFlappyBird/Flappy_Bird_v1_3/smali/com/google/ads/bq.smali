.class public final Lcom/google/ads/bq;
.super Lcom/google/ads/util/aa;


# instance fields
.field public final a:Lcom/google/ads/util/ad;

.field public final b:Lcom/google/ads/util/ae;

.field public final c:Lcom/google/ads/util/ae;


# direct methods
.method public constructor <init>(Lcom/google/ads/bt;)V
    .locals 3

    invoke-direct {p0}, Lcom/google/ads/util/aa;-><init>()V

    new-instance v0, Lcom/google/ads/util/ae;

    const-string v1, "disableNativeScroll"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/ae;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/bq;->c:Lcom/google/ads/util/ae;

    new-instance v0, Lcom/google/ads/util/ad;

    const-string v1, "slotState"

    invoke-direct {v0, p0, v1, p1}, Lcom/google/ads/util/ad;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/bq;->a:Lcom/google/ads/util/ad;

    new-instance v0, Lcom/google/ads/util/ae;

    const-string v1, "adLoader"

    new-instance v2, Lcom/google/ads/a/n;

    invoke-direct {v2, p0}, Lcom/google/ads/a/n;-><init>(Lcom/google/ads/bq;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/ae;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/bq;->b:Lcom/google/ads/util/ae;

    return-void
.end method
