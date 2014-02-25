.class public abstract Lcom/google/android/gms/b/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/google/android/gms/b/a;

.field private b:Landroid/os/Bundle;

.field private c:Ljava/util/LinkedList;

.field private final d:Lcom/google/android/gms/b/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/b/c;

    invoke-direct {v0, p0}, Lcom/google/android/gms/b/c;-><init>(Lcom/google/android/gms/b/b;)V

    iput-object v0, p0, Lcom/google/android/gms/b/b;->d:Lcom/google/android/gms/b/i;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/b/b;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/b;->b:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/b/b;Lcom/google/android/gms/b/a;)Lcom/google/android/gms/b/a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/b/b;->a:Lcom/google/android/gms/b/a;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/b/b;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/b;->c:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/b/b;)Lcom/google/android/gms/b/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/b;->a:Lcom/google/android/gms/b/a;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/google/android/gms/b/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/b/b;->a:Lcom/google/android/gms/b/a;

    return-object v0
.end method
