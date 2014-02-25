.class public abstract Lorg/andengine/ui/activity/SimpleBaseGameActivity;
.super Lorg/andengine/ui/activity/BaseGameActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/andengine/ui/activity/BaseGameActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/andengine/c/b/e;Lorg/andengine/ui/d;)V
    .locals 0

    invoke-interface {p2}, Lorg/andengine/ui/d;->a()V

    return-void
.end method

.method public final a(Lorg/andengine/ui/b;)V
    .locals 0

    invoke-virtual {p0}, Lorg/andengine/ui/activity/SimpleBaseGameActivity;->l()V

    invoke-interface {p1}, Lorg/andengine/ui/b;->a()V

    return-void
.end method

.method public final a(Lorg/andengine/ui/c;)V
    .locals 1

    invoke-virtual {p0}, Lorg/andengine/ui/activity/SimpleBaseGameActivity;->m()Lorg/andengine/c/b/e;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/andengine/ui/c;->a(Lorg/andengine/c/b/e;)V

    return-void
.end method

.method protected abstract l()V
.end method

.method protected abstract m()Lorg/andengine/c/b/e;
.end method
