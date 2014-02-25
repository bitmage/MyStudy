.class public Lcom/google/android/gms/internal/bd;
.super Lcom/google/android/gms/internal/cr;


# instance fields
.field private f:Lcom/google/android/gms/plus/a/b/a;

.field private g:Lcom/google/android/gms/plus/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/plus/a;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;)V
    .locals 1

    invoke-virtual {p2}, Lcom/google/android/gms/plus/a;->c()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p3, p4, v0}, Lcom/google/android/gms/internal/cr;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;[Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/bd;->g:Lcom/google/android/gms/plus/a;

    return-void
.end method


# virtual methods
.method protected a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ba;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/bb;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ba;

    move-result-object v0

    return-object v0
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    const-string v0, "loaded_person"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "loaded_person"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/cc;->a([B)Lcom/google/android/gms/internal/cc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bd;->f:Lcom/google/android/gms/plus/a/b/a;

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/cr;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/df;Lcom/google/android/gms/internal/cu;)V
    .locals 8

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const-string v0, "skip_oob"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "request_visible_actions"

    iget-object v1, p0, Lcom/google/android/gms/internal/bd;->g:Lcom/google/android/gms/plus/a;

    invoke-virtual {v1}, Lcom/google/android/gms/plus/a;->d()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->g:Lcom/google/android/gms/plus/a;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/a;->e()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "required_features"

    iget-object v1, p0, Lcom/google/android/gms/internal/bd;->g:Lcom/google/android/gms/plus/a;

    invoke-virtual {v1}, Lcom/google/android/gms/plus/a;->e()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->g:Lcom/google/android/gms/plus/a;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/a;->h()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "application_name"

    iget-object v1, p0, Lcom/google/android/gms/internal/bd;->g:Lcom/google/android/gms/plus/a;

    invoke-virtual {v1}, Lcom/google/android/gms/plus/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const v2, 0x31d24c

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->g:Lcom/google/android/gms/plus/a;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/a;->g()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->g:Lcom/google/android/gms/plus/a;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bd;->k()[Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/gms/internal/bd;->g:Lcom/google/android/gms/plus/a;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/a;->b()Ljava/lang/String;

    move-result-object v6

    move-object v0, p1

    move-object v1, p2

    invoke-interface/range {v0 .. v7}, Lcom/google/android/gms/internal/df;->a(Lcom/google/android/gms/internal/dc;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected synthetic b(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/bd;->a(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ba;

    move-result-object v0

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.plus.service.START"

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.plus.internal.IPlusService"

    return-object v0
.end method
