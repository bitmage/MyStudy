.class Lcom/dotgears/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dotgears/GameActivity;


# direct methods
.method constructor <init>(Lcom/dotgears/GameActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/dotgears/a;->a:Lcom/dotgears/GameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/dotgears/a;->a:Lcom/dotgears/GameActivity;

    iget-object v0, v0, Lcom/dotgears/GameActivity;->a:Lcom/google/ads/AdView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/ads/AdView;->setVisibility(I)V

    return-void
.end method
