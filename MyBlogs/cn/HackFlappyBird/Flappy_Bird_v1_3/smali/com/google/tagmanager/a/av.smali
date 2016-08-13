.class Lcom/google/tagmanager/a/av;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/tagmanager/a/i;


# instance fields
.field a:I

.field final synthetic b:Lcom/google/tagmanager/a/ar;

.field private final c:Lcom/google/tagmanager/a/au;

.field private d:Lcom/google/tagmanager/a/i;


# direct methods
.method private constructor <init>(Lcom/google/tagmanager/a/ar;)V
    .locals 2

    iput-object p1, p0, Lcom/google/tagmanager/a/av;->b:Lcom/google/tagmanager/a/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/tagmanager/a/au;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/tagmanager/a/au;-><init>(Lcom/google/tagmanager/a/h;Lcom/google/tagmanager/a/as;)V

    iput-object v0, p0, Lcom/google/tagmanager/a/av;->c:Lcom/google/tagmanager/a/au;

    iget-object v0, p0, Lcom/google/tagmanager/a/av;->c:Lcom/google/tagmanager/a/au;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/au;->a()Lcom/google/tagmanager/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/tagmanager/a/aj;->c()Lcom/google/tagmanager/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/av;->d:Lcom/google/tagmanager/a/i;

    invoke-virtual {p1}, Lcom/google/tagmanager/a/ar;->a()I

    move-result v0

    iput v0, p0, Lcom/google/tagmanager/a/av;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/tagmanager/a/ar;Lcom/google/tagmanager/a/as;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/tagmanager/a/av;-><init>(Lcom/google/tagmanager/a/ar;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Byte;
    .locals 1

    invoke-virtual {p0}, Lcom/google/tagmanager/a/av;->b()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public b()B
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/a/av;->d:Lcom/google/tagmanager/a/i;

    invoke-interface {v0}, Lcom/google/tagmanager/a/i;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/tagmanager/a/av;->c:Lcom/google/tagmanager/a/au;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/au;->a()Lcom/google/tagmanager/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/tagmanager/a/aj;->c()Lcom/google/tagmanager/a/i;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/av;->d:Lcom/google/tagmanager/a/i;

    :cond_0
    iget v0, p0, Lcom/google/tagmanager/a/av;->a:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/tagmanager/a/av;->a:I

    iget-object v0, p0, Lcom/google/tagmanager/a/av;->d:Lcom/google/tagmanager/a/i;

    invoke-interface {v0}, Lcom/google/tagmanager/a/i;->b()B

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/tagmanager/a/av;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/tagmanager/a/av;->a()Ljava/lang/Byte;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
