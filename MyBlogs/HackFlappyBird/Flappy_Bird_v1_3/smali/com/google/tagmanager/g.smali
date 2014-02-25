.class Lcom/google/tagmanager/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/tagmanager/j;


# instance fields
.field private a:Lcom/google/tagmanager/k;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/tagmanager/k;->d:Lcom/google/tagmanager/k;

    iput-object v0, p0, Lcom/google/tagmanager/g;->a:Lcom/google/tagmanager/k;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/tagmanager/g;->a:Lcom/google/tagmanager/k;

    invoke-virtual {v0}, Lcom/google/tagmanager/k;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/k;->e:Lcom/google/tagmanager/k;

    invoke-virtual {v1}, Lcom/google/tagmanager/k;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/tagmanager/g;->a:Lcom/google/tagmanager/k;

    invoke-virtual {v0}, Lcom/google/tagmanager/k;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/k;->d:Lcom/google/tagmanager/k;

    invoke-virtual {v1}, Lcom/google/tagmanager/k;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/tagmanager/g;->a:Lcom/google/tagmanager/k;

    invoke-virtual {v0}, Lcom/google/tagmanager/k;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/k;->c:Lcom/google/tagmanager/k;

    invoke-virtual {v1}, Lcom/google/tagmanager/k;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/google/tagmanager/g;->a:Lcom/google/tagmanager/k;

    invoke-virtual {v0}, Lcom/google/tagmanager/k;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/tagmanager/k;->a:Lcom/google/tagmanager/k;

    invoke-virtual {v1}, Lcom/google/tagmanager/k;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_0

    const-string v0, "GoogleTagManager"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
