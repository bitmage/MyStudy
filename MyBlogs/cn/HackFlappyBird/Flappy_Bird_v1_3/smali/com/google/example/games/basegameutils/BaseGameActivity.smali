.class public abstract Lcom/google/example/games/basegameutils/BaseGameActivity;
.super Landroid/support/v4/app/FragmentActivity;

# interfaces
.implements Lcom/google/example/games/basegameutils/b;


# instance fields
.field protected n:Lcom/google/example/games/basegameutils/a;

.field protected o:I

.field protected p:Ljava/lang/String;

.field protected q:Z

.field private r:[Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->o:I

    const-string v0, "BaseGameActivity"

    iput-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->p:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->q:Z

    new-instance v0, Lcom/google/example/games/basegameutils/a;

    invoke-direct {v0, p0}, Lcom/google/example/games/basegameutils/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->n:Lcom/google/example/games/basegameutils/a;

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->n:Lcom/google/example/games/basegameutils/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/example/games/basegameutils/a;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/google/example/games/basegameutils/a;

    invoke-direct {v0, p0}, Lcom/google/example/games/basegameutils/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->n:Lcom/google/example/games/basegameutils/a;

    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->n:Lcom/google/example/games/basegameutils/a;

    iget-boolean v1, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->q:Z

    iget-object v2, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/example/games/basegameutils/a;->a(ZLjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->n:Lcom/google/example/games/basegameutils/a;

    iget v1, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->o:I

    iget-object v2, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->r:[Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/example/games/basegameutils/a;->a(Lcom/google/example/games/basegameutils/b;I[Ljava/lang/String;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->n:Lcom/google/example/games/basegameutils/a;

    invoke-virtual {v0, p0}, Lcom/google/example/games/basegameutils/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    iget-object v0, p0, Lcom/google/example/games/basegameutils/BaseGameActivity;->n:Lcom/google/example/games/basegameutils/a;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/a;->d()V

    return-void
.end method
