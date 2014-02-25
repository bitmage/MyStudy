.class public final Lcom/google/android/gms/internal/cu;
.super Lcom/google/android/gms/internal/dd;


# instance fields
.field private a:Lcom/google/android/gms/internal/cr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/cr;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/dd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/cu;->a:Lcom/google/android/gms/internal/cr;

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "onPostInitComplete can be called only once per call to getServiceFromBroker"

    iget-object v1, p0, Lcom/google/android/gms/internal/cu;->a:Lcom/google/android/gms/internal/cr;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/do;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/cu;->a:Lcom/google/android/gms/internal/cr;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/cr;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/cu;->a:Lcom/google/android/gms/internal/cr;

    return-void
.end method
