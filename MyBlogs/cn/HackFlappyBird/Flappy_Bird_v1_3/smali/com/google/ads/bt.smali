.class public Lcom/google/ads/bt;
.super Lcom/google/ads/util/aa;


# instance fields
.field public final a:Lcom/google/ads/util/ad;

.field public final b:Lcom/google/ads/util/ad;

.field public final c:Lcom/google/ads/util/af;

.field public final d:Lcom/google/ads/util/ad;

.field public final e:Lcom/google/ads/util/ad;

.field public final f:Lcom/google/ads/util/ad;

.field public final g:Lcom/google/ads/util/ad;

.field public final h:Lcom/google/ads/util/ad;

.field public final i:Lcom/google/ads/util/ad;

.field public final j:Lcom/google/ads/util/ad;

.field public final k:Lcom/google/ads/util/ad;

.field public final l:Lcom/google/ads/util/ae;

.field public final m:Lcom/google/ads/util/ae;

.field public final n:Lcom/google/ads/util/ae;

.field public final o:Lcom/google/ads/util/ae;

.field public final p:Lcom/google/ads/util/ae;

.field public final q:Lcom/google/ads/util/ae;

.field public final r:Lcom/google/ads/util/ae;

.field public final s:Lcom/google/ads/util/ae;

.field public final t:Lcom/google/ads/util/ae;


# direct methods
.method public constructor <init>(Lcom/google/ads/br;Lcom/google/ads/a;Lcom/google/ads/AdView;Lcom/google/ads/i;Ljava/lang/String;Landroid/app/Activity;Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/ads/a/ac;Lcom/google/ads/a/w;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/google/ads/util/aa;-><init>()V

    new-instance v1, Lcom/google/ads/util/ae;

    const-string v2, "currentAd"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/util/ae;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bt;->l:Lcom/google/ads/util/ae;

    new-instance v1, Lcom/google/ads/util/ae;

    const-string v2, "nextAd"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/util/ae;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bt;->m:Lcom/google/ads/util/ae;

    new-instance v1, Lcom/google/ads/util/ae;

    const-string v2, "adListener"

    invoke-direct {v1, p0, v2}, Lcom/google/ads/util/ae;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/ads/bt;->o:Lcom/google/ads/util/ae;

    new-instance v1, Lcom/google/ads/util/ae;

    const-string v2, "appEventListener"

    invoke-direct {v1, p0, v2}, Lcom/google/ads/util/ae;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/ads/bt;->p:Lcom/google/ads/util/ae;

    new-instance v1, Lcom/google/ads/util/ae;

    const-string v2, "swipeableEventListener"

    invoke-direct {v1, p0, v2}, Lcom/google/ads/util/ae;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/google/ads/bt;->q:Lcom/google/ads/util/ae;

    new-instance v1, Lcom/google/ads/util/ae;

    const-string v2, "spamSignals"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/util/ae;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bt;->r:Lcom/google/ads/util/ae;

    new-instance v1, Lcom/google/ads/util/ae;

    const-string v2, "spamSignalsUtil"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/util/ae;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bt;->s:Lcom/google/ads/util/ae;

    new-instance v1, Lcom/google/ads/util/ae;

    const-string v2, "usesManualImpressions"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/google/ads/util/ae;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bt;->t:Lcom/google/ads/util/ae;

    new-instance v1, Lcom/google/ads/util/ad;

    const-string v2, "appState"

    invoke-direct {v1, p0, v2, p1}, Lcom/google/ads/util/ad;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bt;->d:Lcom/google/ads/util/ad;

    new-instance v1, Lcom/google/ads/util/ad;

    const-string v2, "ad"

    invoke-direct {v1, p0, v2, p2}, Lcom/google/ads/util/ad;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bt;->a:Lcom/google/ads/util/ad;

    new-instance v1, Lcom/google/ads/util/ad;

    const-string v2, "adView"

    invoke-direct {v1, p0, v2, p3}, Lcom/google/ads/util/ad;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bt;->j:Lcom/google/ads/util/ad;

    new-instance v1, Lcom/google/ads/util/ad;

    const-string v2, "adType"

    invoke-direct {v1, p0, v2, p9}, Lcom/google/ads/util/ad;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bt;->g:Lcom/google/ads/util/ad;

    new-instance v1, Lcom/google/ads/util/ad;

    const-string v2, "adUnitId"

    invoke-direct {v1, p0, v2, p5}, Lcom/google/ads/util/ad;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bt;->h:Lcom/google/ads/util/ad;

    new-instance v1, Lcom/google/ads/util/af;

    const-string v2, "activity"

    invoke-direct {v1, p0, v2, p6}, Lcom/google/ads/util/af;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bt;->c:Lcom/google/ads/util/af;

    new-instance v1, Lcom/google/ads/util/ad;

    const-string v2, "interstitialAd"

    invoke-direct {v1, p0, v2, p4}, Lcom/google/ads/util/ad;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bt;->k:Lcom/google/ads/util/ad;

    new-instance v1, Lcom/google/ads/util/ad;

    const-string v2, "bannerContainer"

    invoke-direct {v1, p0, v2, p8}, Lcom/google/ads/util/ad;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bt;->i:Lcom/google/ads/util/ad;

    new-instance v1, Lcom/google/ads/util/ad;

    const-string v2, "applicationContext"

    invoke-direct {v1, p0, v2, p7}, Lcom/google/ads/util/ad;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bt;->f:Lcom/google/ads/util/ad;

    new-instance v1, Lcom/google/ads/util/ae;

    const-string v2, "adSizes"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/util/ae;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bt;->n:Lcom/google/ads/util/ae;

    new-instance v1, Lcom/google/ads/util/ad;

    const-string v2, "adManager"

    invoke-direct {v1, p0, v2, p10}, Lcom/google/ads/util/ad;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bt;->b:Lcom/google/ads/util/ad;

    if-eqz p9, :cond_0

    invoke-virtual {p9}, Lcom/google/ads/a/ac;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/google/ads/a/a;

    invoke-direct {v0, p0}, Lcom/google/ads/a/a;-><init>(Lcom/google/ads/bt;)V

    :cond_0
    new-instance v1, Lcom/google/ads/util/ad;

    const-string v2, "activationOverlay"

    invoke-direct {v1, p0, v2, v0}, Lcom/google/ads/util/ad;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/google/ads/bt;->e:Lcom/google/ads/util/ad;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/bt;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/google/ads/bt;->g:Lcom/google/ads/util/ad;

    invoke-virtual {v0}, Lcom/google/ads/util/ad;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/a/ac;

    invoke-virtual {v0}, Lcom/google/ads/a/ac;->a()Z

    move-result v0

    return v0
.end method
