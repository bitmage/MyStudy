.class final Lcom/google/android/gms/internal/cv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/cr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/cv;->a:Lcom/google/android/gms/internal/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/cv;->a:Lcom/google/android/gms/internal/cr;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/cr;->c(Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/cv;->a:Lcom/google/android/gms/internal/cr;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cr;->a(Lcom/google/android/gms/internal/cr;Landroid/os/IInterface;)Landroid/os/IInterface;

    iget-object v0, p0, Lcom/google/android/gms/internal/cv;->a:Lcom/google/android/gms/internal/cr;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/cr;->l()V

    return-void
.end method
