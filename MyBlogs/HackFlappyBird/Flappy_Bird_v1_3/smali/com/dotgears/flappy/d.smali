.class Lcom/dotgears/flappy/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/dotgears/flappy/SplashScreen;


# direct methods
.method constructor <init>(Lcom/dotgears/flappy/SplashScreen;)V
    .locals 0

    iput-object p1, p0, Lcom/dotgears/flappy/d;->a:Lcom/dotgears/flappy/SplashScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/dotgears/flappy/d;->a:Lcom/dotgears/flappy/SplashScreen;

    const-class v2, Lcom/dotgears/GameActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/dotgears/flappy/d;->a:Lcom/dotgears/flappy/SplashScreen;

    invoke-virtual {v1, v0}, Lcom/dotgears/flappy/SplashScreen;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/dotgears/flappy/d;->a:Lcom/dotgears/flappy/SplashScreen;

    invoke-virtual {v0}, Lcom/dotgears/flappy/SplashScreen;->finish()V

    return-void
.end method
