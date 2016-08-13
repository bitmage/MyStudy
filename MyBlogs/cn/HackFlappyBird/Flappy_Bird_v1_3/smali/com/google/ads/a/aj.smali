.class Lcom/google/ads/a/aj;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/google/ads/a/ah;


# direct methods
.method constructor <init>(Lcom/google/ads/a/ah;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ads/a/aj;->a:Lcom/google/ads/a/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    new-instance v0, Lcom/google/ads/a/ae;

    iget-object v1, p0, Lcom/google/ads/a/aj;->a:Lcom/google/ads/a/ah;

    invoke-static {v1}, Lcom/google/ads/a/ah;->a(Lcom/google/ads/a/ah;)Lcom/google/ads/a/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/ads/a/w;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/ads/a/aj;->a:Lcom/google/ads/a/ah;

    invoke-static {v2}, Lcom/google/ads/a/ah;->b(Lcom/google/ads/a/ah;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/ads/a/ae;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method
