.class public final Lcom/google/android/gms/internal/r;
.super Lcom/google/android/gms/internal/cr;


# instance fields
.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/util/Map;

.field private i:Lcom/google/android/gms/games/PlayerEntity;

.field private final j:Lcom/google/android/gms/internal/ai;

.field private k:Z

.field private final l:Landroid/os/Binder;

.field private final m:J

.field private final n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;[Ljava/lang/String;ILandroid/view/View;Z)V
    .locals 2

    invoke-direct {p0, p1, p4, p5, p6}, Lcom/google/android/gms/internal/cr;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;[Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/r;->k:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/r;->f:Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/internal/do;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/r;->g:Ljava/lang/String;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/r;->l:Landroid/os/Binder;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/r;->h:Ljava/util/Map;

    invoke-static {p0, p7}, Lcom/google/android/gms/internal/ai;->a(Lcom/google/android/gms/internal/r;I)Lcom/google/android/gms/internal/ai;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/r;->j:Lcom/google/android/gms/internal/ai;

    invoke-virtual {p0, p8}, Lcom/google/android/gms/internal/r;->a(Landroid/view/View;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/r;->m:J

    iput-boolean p9, p0, Lcom/google/android/gms/internal/r;->n:Z

    return-void
.end method

.method private o()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/r;->i:Lcom/google/android/gms/games/PlayerEntity;

    return-void
.end method

.method private p()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/an;

    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/an;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "GamesClient"

    const-string v3, "IOException:"

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/w;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/r;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/r;->m()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.gms.games.VIEW_LEADERBOARD_SCORES"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gms.games.LEADERBOARD_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/internal/v;->a(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ad;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/af;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ad;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/r;->o()V

    invoke-super {p0}, Lcom/google/android/gms/internal/cr;->a()V

    return-void
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "show_welcome_popup"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/r;->k:Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/cr;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/r;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/r;->n()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ad;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ad;->a(Landroid/os/IBinder;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->j:Lcom/google/android/gms/internal/ai;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ai;->a(Landroid/view/View;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/common/a;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/cr;->a(Lcom/google/android/gms/common/a;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/r;->k:Z

    return-void
.end method

.method public a(Lcom/google/android/gms/games/a/a;Ljava/lang/String;J)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/r;->n()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ad;

    invoke-interface {v0, v1, p2, p3, p4}, Lcom/google/android/gms/internal/ad;->a(Lcom/google/android/gms/internal/y;Ljava/lang/String;J)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/s;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/s;-><init>(Lcom/google/android/gms/internal/r;Lcom/google/android/gms/games/a/a;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "GamesClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected a(Lcom/google/android/gms/internal/df;Lcom/google/android/gms/internal/cu;)V
    .locals 10

    invoke-virtual {p0}, Lcom/google/android/gms/internal/r;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v0, "com.google.android.gms.games.key.isHeadless"

    iget-boolean v1, p0, Lcom/google/android/gms/internal/r;->n:Z

    invoke-virtual {v9, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const v2, 0x31d24c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/r;->j()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/r;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/r;->k()[Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/r;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->j:Lcom/google/android/gms/internal/ai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ai;->b()Landroid/os/IBinder;

    move-result-object v7

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v9}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/internal/dc;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected varargs a([Ljava/lang/String;)V
    .locals 7

    const/4 v4, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_2

    aget-object v5, p1, v0

    const-string v6, "https://www.googleapis.com/auth/games"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v3, v4

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v6, "https://www.googleapis.com/auth/games.firstparty"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v4

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_4

    if-nez v3, :cond_3

    move v0, v4

    :goto_2
    const-string v2, "Cannot have both %s and %s!"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "https://www.googleapis.com/auth/games"

    aput-object v5, v3, v1

    const-string v1, "https://www.googleapis.com/auth/games.firstparty"

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/do;->a(ZLjava/lang/Object;)V

    :goto_3
    return-void

    :cond_3
    move v0, v1

    goto :goto_2

    :cond_4
    const-string v0, "GamesClient requires %s to function."

    new-array v2, v4, [Ljava/lang/Object;

    const-string v4, "https://www.googleapis.com/auth/games"

    aput-object v4, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/do;->a(ZLjava/lang/Object;)V

    goto :goto_3
.end method

.method protected synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/r;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ad;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/r;->k:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/r;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/r;->n()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ad;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ad;->c()V

    iget-wide v1, p0, Lcom/google/android/gms/internal/r;->m:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ad;->b(J)V

    iget-wide v1, p0, Lcom/google/android/gms/internal/r;->m:J

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ad;->a(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/r;->p()V

    invoke-super {p0}, Lcom/google/android/gms/internal/cr;->b()V

    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClient"

    const-string v1, "Failed to notify client disconnect."

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.games.service.START"

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.games.internal.IGamesService"

    return-object v0
.end method

.method protected e()Landroid/os/Bundle;
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/r;->n()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ad;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ad;->b()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-class v1, Lcom/google/android/gms/internal/r;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string v0, "GamesClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f()V
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/cr;->f()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/r;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/r;->j:Lcom/google/android/gms/internal/ai;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ai;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/r;->k:Z

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/r;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/r;->n()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ad;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ad;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v0, "GamesClient"

    const-string v1, "service died"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
