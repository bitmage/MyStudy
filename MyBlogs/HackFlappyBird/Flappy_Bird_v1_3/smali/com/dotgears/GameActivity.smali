.class public Lcom/dotgears/GameActivity;
.super Lorg/andengine/ui/activity/SimpleBaseGameActivity;

# interfaces
.implements Lcom/google/example/games/basegameutils/b;


# instance fields
.field public a:Lcom/google/ads/AdView;

.field public b:Lorg/andengine/a/c/a;

.field public c:Lorg/andengine/a/c/a;

.field public d:Lorg/andengine/a/c/a;

.field public e:Lorg/andengine/a/c/a;

.field public f:Lorg/andengine/a/c/a;

.field protected g:Lcom/google/example/games/basegameutils/a;

.field protected h:I

.field protected i:Ljava/lang/String;

.field protected j:Z

.field private m:Lorg/andengine/b/a/a;

.field private n:Lorg/andengine/opengl/c/c/c;

.field private o:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/andengine/ui/activity/SimpleBaseGameActivity;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/dotgears/GameActivity;->h:I

    const-string v0, "BaseGameActivity"

    iput-object v0, p0, Lcom/dotgears/GameActivity;->i:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dotgears/GameActivity;->j:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/andengine/b/c/b;)Lorg/andengine/b/a;
    .locals 2

    new-instance v0, Lorg/andengine/b/e;

    const/16 v1, 0x3c

    invoke-direct {v0, p1, v1}, Lorg/andengine/b/e;-><init>(Lorg/andengine/b/c/b;I)V

    return-object v0
.end method

.method public a()Lorg/andengine/b/c/b;
    .locals 6

    const/high16 v5, 0x4400

    const/high16 v3, 0x4390

    const/4 v1, 0x0

    const/4 v4, 0x1

    new-instance v0, Lorg/andengine/b/a/a;

    invoke-direct {v0, v1, v1, v3, v5}, Lorg/andengine/b/a/a;-><init>(FFFF)V

    iput-object v0, p0, Lcom/dotgears/GameActivity;->m:Lorg/andengine/b/a/a;

    new-instance v0, Lorg/andengine/b/c/b;

    sget-object v1, Lorg/andengine/b/c/e;->c:Lorg/andengine/b/c/e;

    new-instance v2, Lorg/andengine/b/c/a/b;

    invoke-direct {v2, v3, v5}, Lorg/andengine/b/c/a/b;-><init>(FF)V

    iget-object v3, p0, Lcom/dotgears/GameActivity;->m:Lorg/andengine/b/a/a;

    invoke-direct {v0, v4, v1, v2, v3}, Lorg/andengine/b/c/b;-><init>(ZLorg/andengine/b/c/e;Lorg/andengine/b/c/a/c;Lorg/andengine/b/a/a;)V

    invoke-virtual {v0}, Lorg/andengine/b/c/b;->d()Lorg/andengine/b/c/a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/andengine/b/c/a;->b(Z)Lorg/andengine/b/c/a;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/andengine/b/c/a;->a(Z)Lorg/andengine/b/c/a;

    invoke-virtual {v0}, Lorg/andengine/b/c/b;->e()Lorg/andengine/b/c/d;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/andengine/b/c/d;->a(Z)V

    invoke-virtual {v0}, Lorg/andengine/b/c/b;->c()Lorg/andengine/b/c/g;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/andengine/b/c/g;->a(Z)Lorg/andengine/b/c/g;

    sget-object v1, Lorg/andengine/b/c/h;->d:Lorg/andengine/b/c/h;

    invoke-virtual {v0, v1}, Lorg/andengine/b/c/b;->a(Lorg/andengine/b/c/h;)Lorg/andengine/b/c/b;

    return-object v0
.end method

.method protected b()V
    .locals 7

    const/4 v2, -0x1

    const/4 v6, -0x2

    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v2, Lorg/andengine/opengl/view/RenderSurfaceView;

    invoke-direct {v2, p0}, Lorg/andengine/opengl/view/RenderSurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/dotgears/GameActivity;->l:Lorg/andengine/opengl/view/RenderSurfaceView;

    iget-object v2, p0, Lcom/dotgears/GameActivity;->l:Lorg/andengine/opengl/view/RenderSurfaceView;

    iget-object v3, p0, Lcom/dotgears/GameActivity;->k:Lorg/andengine/b/a;

    invoke-virtual {v2, v3, p0}, Lorg/andengine/opengl/view/RenderSurfaceView;->a(Lorg/andengine/b/a;Lorg/andengine/opengl/view/h;)V

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lorg/andengine/ui/activity/BaseGameActivity;->B()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v3, p0, Lcom/dotgears/GameActivity;->l:Lorg/andengine/opengl/view/RenderSurfaceView;

    invoke-virtual {v0, v3, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/google/ads/AdView;

    sget-object v4, Lcom/google/ads/g;->a:Lcom/google/ads/g;

    const-string v5, "a152df006159b75"

    invoke-direct {v3, p0, v4, v5}, Lcom/google/ads/AdView;-><init>(Landroid/app/Activity;Lcom/google/ads/g;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/dotgears/GameActivity;->a:Lcom/google/ads/AdView;

    iget-object v3, p0, Lcom/dotgears/GameActivity;->a:Lcom/google/ads/AdView;

    invoke-virtual {v3}, Lcom/google/ads/AdView;->refreshDrawableState()V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v4, 0x31

    invoke-direct {v3, v6, v6, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    iget-object v4, p0, Lcom/dotgears/GameActivity;->a:Lcom/google/ads/AdView;

    invoke-virtual {v2, v4, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v2, Lcom/google/ads/d;

    invoke-direct {v2}, Lcom/google/ads/d;-><init>()V

    iget-object v3, p0, Lcom/dotgears/GameActivity;->a:Lcom/google/ads/AdView;

    invoke-virtual {v3, v2}, Lcom/google/ads/AdView;->a(Lcom/google/ads/d;)V

    invoke-virtual {p0, v0, v1}, Lcom/dotgears/GameActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public c()V
    .locals 1

    new-instance v0, Lcom/dotgears/a;

    invoke-direct {v0, p0}, Lcom/dotgears/a;-><init>(Lcom/dotgears/GameActivity;)V

    invoke-virtual {p0, v0}, Lcom/dotgears/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()V
    .locals 1

    new-instance v0, Lcom/dotgears/b;

    invoke-direct {v0, p0}, Lcom/dotgears/b;-><init>(Lcom/dotgears/GameActivity;)V

    invoke-virtual {p0, v0}, Lcom/dotgears/GameActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/dotgears/GameActivity;->b:Lorg/andengine/a/c/a;

    invoke-virtual {v0}, Lorg/andengine/a/c/a;->d()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/dotgears/GameActivity;->c:Lorg/andengine/a/c/a;

    invoke-virtual {v0}, Lorg/andengine/a/c/a;->d()V

    return-void
.end method

.method public g()V
    .locals 1

    iget-object v0, p0, Lcom/dotgears/GameActivity;->d:Lorg/andengine/a/c/a;

    invoke-virtual {v0}, Lorg/andengine/a/c/a;->d()V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/dotgears/GameActivity;->e:Lorg/andengine/a/c/a;

    invoke-virtual {v0}, Lorg/andengine/a/c/a;->d()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/dotgears/GameActivity;->f:Lorg/andengine/a/c/a;

    invoke-virtual {v0}, Lorg/andengine/a/c/a;->d()V

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 0

    return-void
.end method

.method protected l()V
    .locals 5

    const/16 v4, 0x400

    const/4 v3, 0x0

    const-string v0, "gfx/"

    invoke-static {v0}, Lorg/andengine/opengl/c/a/a/b;->a(Ljava/lang/String;)V

    new-instance v0, Lorg/andengine/opengl/c/a/a/a;

    invoke-virtual {p0}, Lcom/dotgears/GameActivity;->y()Lorg/andengine/opengl/c/e;

    move-result-object v1

    sget-object v2, Lorg/andengine/opengl/c/f;->i:Lorg/andengine/opengl/c/f;

    invoke-direct {v0, v1, v4, v4, v2}, Lorg/andengine/opengl/c/a/a/a;-><init>(Lorg/andengine/opengl/c/e;IILorg/andengine/opengl/c/f;)V

    const-string v1, "atlas.png"

    invoke-static {v0, p0, v1, v3, v3}, Lorg/andengine/opengl/c/a/a/b;->a(Lorg/andengine/opengl/c/a/a/a;Landroid/content/Context;Ljava/lang/String;II)Lorg/andengine/opengl/c/c/c;

    move-result-object v1

    iput-object v1, p0, Lcom/dotgears/GameActivity;->n:Lorg/andengine/opengl/c/c/c;

    invoke-virtual {v0}, Lorg/andengine/opengl/c/a/a/a;->i()V

    const-string v0, "sounds/"

    invoke-static {v0}, Lorg/andengine/a/c/b;->a(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/dotgears/GameActivity;->k:Lorg/andengine/b/a;

    invoke-virtual {v0}, Lorg/andengine/b/a;->i()Lorg/andengine/a/c/c;

    move-result-object v0

    const-string v1, "sfx_point.ogg"

    invoke-static {v0, p0, v1}, Lorg/andengine/a/c/b;->a(Lorg/andengine/a/c/c;Landroid/content/Context;Ljava/lang/String;)Lorg/andengine/a/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dotgears/GameActivity;->b:Lorg/andengine/a/c/a;

    iget-object v0, p0, Lcom/dotgears/GameActivity;->k:Lorg/andengine/b/a;

    invoke-virtual {v0}, Lorg/andengine/b/a;->i()Lorg/andengine/a/c/c;

    move-result-object v0

    const-string v1, "sfx_die.ogg"

    invoke-static {v0, p0, v1}, Lorg/andengine/a/c/b;->a(Lorg/andengine/a/c/c;Landroid/content/Context;Ljava/lang/String;)Lorg/andengine/a/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dotgears/GameActivity;->c:Lorg/andengine/a/c/a;

    iget-object v0, p0, Lcom/dotgears/GameActivity;->k:Lorg/andengine/b/a;

    invoke-virtual {v0}, Lorg/andengine/b/a;->i()Lorg/andengine/a/c/c;

    move-result-object v0

    const-string v1, "sfx_hit.ogg"

    invoke-static {v0, p0, v1}, Lorg/andengine/a/c/b;->a(Lorg/andengine/a/c/c;Landroid/content/Context;Ljava/lang/String;)Lorg/andengine/a/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dotgears/GameActivity;->d:Lorg/andengine/a/c/a;

    iget-object v0, p0, Lcom/dotgears/GameActivity;->k:Lorg/andengine/b/a;

    invoke-virtual {v0}, Lorg/andengine/b/a;->i()Lorg/andengine/a/c/c;

    move-result-object v0

    const-string v1, "sfx_swooshing.ogg"

    invoke-static {v0, p0, v1}, Lorg/andengine/a/c/b;->a(Lorg/andengine/a/c/c;Landroid/content/Context;Ljava/lang/String;)Lorg/andengine/a/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dotgears/GameActivity;->e:Lorg/andengine/a/c/a;

    iget-object v0, p0, Lcom/dotgears/GameActivity;->k:Lorg/andengine/b/a;

    invoke-virtual {v0}, Lorg/andengine/b/a;->i()Lorg/andengine/a/c/c;

    move-result-object v0

    const-string v1, "sfx_wing.ogg"

    invoke-static {v0, p0, v1}, Lorg/andengine/a/c/b;->a(Lorg/andengine/a/c/c;Landroid/content/Context;Ljava/lang/String;)Lorg/andengine/a/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/dotgears/GameActivity;->f:Lorg/andengine/a/c/a;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected m()Lorg/andengine/c/b/e;
    .locals 2

    new-instance v0, Lcom/dotgears/c;

    iget-object v1, p0, Lcom/dotgears/GameActivity;->n:Lorg/andengine/opengl/c/c/c;

    invoke-direct {v0, p0, v1}, Lcom/dotgears/c;-><init>(Lcom/dotgears/GameActivity;Lorg/andengine/opengl/c/c/c;)V

    return-object v0
.end method

.method protected n()Lcom/google/android/gms/games/c;
    .locals 1

    iget-object v0, p0, Lcom/dotgears/GameActivity;->g:Lcom/google/example/games/basegameutils/a;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/a;->b()Lcom/google/android/gms/games/c;

    move-result-object v0

    return-object v0
.end method

.method public o()Z
    .locals 1

    iget-object v0, p0, Lcom/dotgears/GameActivity;->g:Lcom/google/example/games/basegameutils/a;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/a;->c()Z

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lorg/andengine/ui/activity/SimpleBaseGameActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/dotgears/GameActivity;->g:Lcom/google/example/games/basegameutils/a;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/example/games/basegameutils/a;->a(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lorg/andengine/ui/activity/SimpleBaseGameActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Lcom/google/example/games/basegameutils/a;

    invoke-direct {v0, p0}, Lcom/google/example/games/basegameutils/a;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/dotgears/GameActivity;->g:Lcom/google/example/games/basegameutils/a;

    iget-boolean v0, p0, Lcom/dotgears/GameActivity;->j:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dotgears/GameActivity;->g:Lcom/google/example/games/basegameutils/a;

    iget-boolean v1, p0, Lcom/dotgears/GameActivity;->j:Z

    iget-object v2, p0, Lcom/dotgears/GameActivity;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/example/games/basegameutils/a;->a(ZLjava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/dotgears/GameActivity;->g:Lcom/google/example/games/basegameutils/a;

    iget v1, p0, Lcom/dotgears/GameActivity;->h:I

    iget-object v2, p0, Lcom/dotgears/GameActivity;->o:[Ljava/lang/String;

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/example/games/basegameutils/a;->a(Lcom/google/example/games/basegameutils/b;I[Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Lorg/andengine/ui/activity/SimpleBaseGameActivity;->onDestroy()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const-string v0, "FlappyBird"

    const-string v1, "Back key pressed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 1

    invoke-super {p0}, Lorg/andengine/ui/activity/SimpleBaseGameActivity;->onStart()V

    iget-object v0, p0, Lcom/dotgears/GameActivity;->g:Lcom/google/example/games/basegameutils/a;

    invoke-virtual {v0, p0}, Lcom/google/example/games/basegameutils/a;->a(Landroid/app/Activity;)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Lorg/andengine/ui/activity/SimpleBaseGameActivity;->onStop()V

    iget-object v0, p0, Lcom/dotgears/GameActivity;->g:Lcom/google/example/games/basegameutils/a;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/a;->d()V

    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/dotgears/GameActivity;->g:Lcom/google/example/games/basegameutils/a;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/a;->f()V

    return-void
.end method
