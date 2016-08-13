.class public Lcom/google/android/gms/internal/ai;
.super Ljava/lang/Object;


# instance fields
.field protected a:Lcom/google/android/gms/internal/r;

.field protected b:Lcom/google/android/gms/internal/al;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/r;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ai;->a:Lcom/google/android/gms/internal/r;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ai;->a(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/r;ILcom/google/android/gms/internal/aj;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ai;-><init>(Lcom/google/android/gms/internal/r;I)V

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/r;I)Lcom/google/android/gms/internal/ai;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/p;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/am;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/am;-><init>(Lcom/google/android/gms/internal/r;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ai;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ai;-><init>(Lcom/google/android/gms/internal/r;I)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->a:Lcom/google/android/gms/internal/r;

    iget-object v1, p0, Lcom/google/android/gms/internal/ai;->b:Lcom/google/android/gms/internal/al;

    iget-object v1, v1, Lcom/google/android/gms/internal/al;->a:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/google/android/gms/internal/ai;->b:Lcom/google/android/gms/internal/al;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/al;->a()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/r;->a(Landroid/os/IBinder;Landroid/os/Bundle;)V

    return-void
.end method

.method protected a(I)V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/al;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/al;-><init>(ILandroid/os/IBinder;Lcom/google/android/gms/internal/aj;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ai;->b:Lcom/google/android/gms/internal/al;

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public b()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ai;->b:Lcom/google/android/gms/internal/al;

    iget-object v0, v0, Lcom/google/android/gms/internal/al;->a:Landroid/os/IBinder;

    return-object v0
.end method
