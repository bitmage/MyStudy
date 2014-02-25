.class public Lcom/google/android/gms/internal/co;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/internal/bw;


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/List;

.field private final d:Ljava/util/List;

.field private final e:Landroid/net/Uri;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Landroid/os/Bundle;

.field private final j:Landroid/os/Bundle;

.field private final k:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/bw;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bw;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/co;->CREATOR:Lcom/google/android/gms/internal/bw;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/util/List;Ljava/util/List;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/co;->a:I

    iput-object p2, p0, Lcom/google/android/gms/internal/co;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/co;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/google/android/gms/internal/co;->d:Ljava/util/List;

    iput-object p5, p0, Lcom/google/android/gms/internal/co;->e:Landroid/net/Uri;

    iput-object p6, p0, Lcom/google/android/gms/internal/co;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/internal/co;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/internal/co;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/internal/co;->i:Landroid/os/Bundle;

    iput-object p10, p0, Lcom/google/android/gms/internal/co;->j:Landroid/os/Bundle;

    iput p11, p0, Lcom/google/android/gms/internal/co;->k:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->c:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->d:Ljava/util/List;

    return-object v0
.end method

.method public c()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->e:Landroid/net/Uri;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->f:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->g:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/co;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/co;

    iget v1, p0, Lcom/google/android/gms/internal/co;->a:I

    iget v2, p1, Lcom/google/android/gms/internal/co;->a:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/co;->c:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/co;->c:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/dl;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/co;->d:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/co;->d:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/dl;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/co;->e:Landroid/net/Uri;

    iget-object v2, p1, Lcom/google/android/gms/internal/co;->e:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/dl;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/co;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/co;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/dl;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/co;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/co;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/dl;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/co;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/co;->h:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/dl;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->h:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->i:Landroid/os/Bundle;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/co;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/internal/co;->c:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/co;->d:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/co;->e:Landroid/net/Uri;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/co;->f:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/internal/co;->g:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/android/gms/internal/co;->h:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/internal/dl;->a([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public i()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/co;->j:Landroid/os/Bundle;

    return-object v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/co;->k:I

    return v0
.end method

.method public k()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/co;->a:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/bw;->a(Lcom/google/android/gms/internal/co;Landroid/os/Parcel;I)V

    return-void
.end method
