.class public final Lcom/google/android/gms/games/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/common/c;

.field private final e:Lcom/google/android/gms/common/d;

.field private f:[Ljava/lang/String;

.field private g:I

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "<<default account>>"

    iput-object v0, p0, Lcom/google/android/gms/games/f;->c:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "https://www.googleapis.com/auth/games"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/gms/games/f;->f:[Ljava/lang/String;

    const/16 v0, 0x31

    iput v0, p0, Lcom/google/android/gms/games/f;->g:I

    iput-object p1, p0, Lcom/google/android/gms/games/f;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/games/f;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/games/f;->d:Lcom/google/android/gms/common/c;

    iput-object p3, p0, Lcom/google/android/gms/games/f;->e:Lcom/google/android/gms/common/d;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/games/c;
    .locals 10

    new-instance v0, Lcom/google/android/gms/games/c;

    iget-object v1, p0, Lcom/google/android/gms/games/f;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/games/f;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/gms/games/f;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/games/f;->d:Lcom/google/android/gms/common/c;

    iget-object v5, p0, Lcom/google/android/gms/games/f;->e:Lcom/google/android/gms/common/d;

    iget-object v6, p0, Lcom/google/android/gms/games/f;->f:[Ljava/lang/String;

    iget v7, p0, Lcom/google/android/gms/games/f;->g:I

    iget-object v8, p0, Lcom/google/android/gms/games/f;->h:Landroid/view/View;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/games/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;[Ljava/lang/String;ILandroid/view/View;Lcom/google/android/gms/games/e;)V

    return-object v0
.end method

.method public a(I)Lcom/google/android/gms/games/f;
    .locals 0

    iput p1, p0, Lcom/google/android/gms/games/f;->g:I

    return-object p0
.end method

.method public varargs a([Ljava/lang/String;)Lcom/google/android/gms/games/f;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/games/f;->f:[Ljava/lang/String;

    return-object p0
.end method
