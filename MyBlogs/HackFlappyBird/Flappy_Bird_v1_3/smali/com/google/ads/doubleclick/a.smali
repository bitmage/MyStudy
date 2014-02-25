.class public Lcom/google/ads/doubleclick/a;
.super Lcom/google/ads/b/a/a;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/ads/b/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/ads/doubleclick/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Lcom/google/ads/doubleclick/a;
    .locals 0

    invoke-super {p0}, Lcom/google/ads/b/a/a;->c()Lcom/google/ads/b/a/a;

    return-object p0
.end method

.method public synthetic c()Lcom/google/ads/b/a/a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/ads/doubleclick/a;->b()Lcom/google/ads/doubleclick/a;

    move-result-object v0

    return-object v0
.end method
