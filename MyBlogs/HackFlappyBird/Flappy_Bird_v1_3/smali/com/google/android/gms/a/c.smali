.class public final Lcom/google/android/gms/a/c;
.super Ljava/lang/Object;


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/google/android/gms/common/c;

.field private d:Lcom/google/android/gms/common/d;

.field private e:[Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "https://www.googleapis.com/auth/appstate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/gms/a/c;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/a/c;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/a/c;->c:Lcom/google/android/gms/common/c;

    iput-object p3, p0, Lcom/google/android/gms/a/c;->d:Lcom/google/android/gms/common/d;

    sget-object v0, Lcom/google/android/gms/a/c;->a:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/a/c;->e:[Ljava/lang/String;

    const-string v0, "<<default account>>"

    iput-object v0, p0, Lcom/google/android/gms/a/c;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/gms/a/a;
    .locals 7

    new-instance v0, Lcom/google/android/gms/a/a;

    iget-object v1, p0, Lcom/google/android/gms/a/c;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/a/c;->c:Lcom/google/android/gms/common/c;

    iget-object v3, p0, Lcom/google/android/gms/a/c;->d:Lcom/google/android/gms/common/d;

    iget-object v4, p0, Lcom/google/android/gms/a/c;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/a/c;->e:[Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/a/a;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/gms/a/b;)V

    return-object v0
.end method

.method public varargs a([Ljava/lang/String;)Lcom/google/android/gms/a/c;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/a/c;->e:[Ljava/lang/String;

    return-object p0
.end method
