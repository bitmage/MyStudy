.class public Lcom/google/ads/br;
.super Lcom/google/ads/util/aa;


# static fields
.field private static final d:Lcom/google/ads/br;


# instance fields
.field public final a:Lcom/google/ads/util/ae;

.field public final b:Lcom/google/ads/util/ad;

.field public final c:Lcom/google/ads/util/ad;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/ads/br;

    invoke-direct {v0}, Lcom/google/ads/br;-><init>()V

    sput-object v0, Lcom/google/ads/br;->d:Lcom/google/ads/br;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Lcom/google/ads/util/aa;-><init>()V

    new-instance v0, Lcom/google/ads/util/ae;

    const-string v1, "marketPackages"

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/ae;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/br;->a:Lcom/google/ads/util/ae;

    new-instance v0, Lcom/google/ads/util/ad;

    const-string v1, "constants"

    new-instance v2, Lcom/google/ads/bs;

    invoke-direct {v2}, Lcom/google/ads/bs;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/ad;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/br;->b:Lcom/google/ads/util/ad;

    new-instance v0, Lcom/google/ads/util/ad;

    const-string v1, "uiHandler"

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/google/ads/util/ad;-><init>(Lcom/google/ads/util/aa;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/ads/br;->c:Lcom/google/ads/util/ad;

    return-void
.end method

.method public static a()Lcom/google/ads/br;
    .locals 1

    sget-object v0, Lcom/google/ads/br;->d:Lcom/google/ads/br;

    return-object v0
.end method
