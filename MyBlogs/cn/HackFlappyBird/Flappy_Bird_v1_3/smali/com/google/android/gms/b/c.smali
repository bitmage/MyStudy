.class Lcom/google/android/gms/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/b/i;


# instance fields
.field final synthetic a:Lcom/google/android/gms/b/b;


# direct methods
.method constructor <init>(Lcom/google/android/gms/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/c;->a:Lcom/google/android/gms/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/b/a;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/b/c;->a:Lcom/google/android/gms/b/b;

    invoke-static {v0, p1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/b;Lcom/google/android/gms/b/a;)Lcom/google/android/gms/b/a;

    iget-object v0, p0, Lcom/google/android/gms/b/c;->a:Lcom/google/android/gms/b/b;

    invoke-static {v0}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/b;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/d;

    iget-object v2, p0, Lcom/google/android/gms/b/c;->a:Lcom/google/android/gms/b/b;

    invoke-static {v2}, Lcom/google/android/gms/b/b;->b(Lcom/google/android/gms/b/b;)Lcom/google/android/gms/b/a;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/google/android/gms/b/d;->a(Lcom/google/android/gms/b/a;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/c;->a:Lcom/google/android/gms/b/b;

    invoke-static {v0}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/b;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/b/c;->a:Lcom/google/android/gms/b/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/b/b;->a(Lcom/google/android/gms/b/b;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method
