.class public Lcom/google/android/gms/plus/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Lcom/google/android/gms/common/c;

.field private d:Lcom/google/android/gms/common/d;

.field private e:Ljava/util/ArrayList;

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/plus/c;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/plus/c;->c:Lcom/google/android/gms/common/c;

    iput-object p3, p0, Lcom/google/android/gms/plus/c;->d:Lcom/google/android/gms/common/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/plus/c;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/gms/plus/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/plus/c;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/plus/c;->h:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/plus/c;->e:Ljava/util/ArrayList;

    const-string v1, "https://www.googleapis.com/auth/plus.login"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/plus/b;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/plus/c;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "<<default account>>"

    iput-object v0, p0, Lcom/google/android/gms/plus/c;->b:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/plus/c;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/android/gms/plus/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/plus/a;

    iget-object v1, p0, Lcom/google/android/gms/plus/c;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/plus/c;->f:[Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/plus/c;->g:[Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/plus/c;->h:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/plus/c;->i:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/gms/plus/c;->j:Ljava/lang/String;

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/plus/a;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/google/android/gms/plus/b;

    new-instance v2, Lcom/google/android/gms/internal/bd;

    iget-object v3, p0, Lcom/google/android/gms/plus/c;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/google/android/gms/plus/c;->c:Lcom/google/android/gms/common/c;

    iget-object v5, p0, Lcom/google/android/gms/plus/c;->d:Lcom/google/android/gms/common/d;

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/google/android/gms/internal/bd;-><init>(Landroid/content/Context;Lcom/google/android/gms/plus/a;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/plus/b;-><init>(Lcom/google/android/gms/internal/bd;)V

    return-object v1
.end method

.method public varargs a([Ljava/lang/String;)Lcom/google/android/gms/plus/c;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/plus/c;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/plus/c;->e:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method
