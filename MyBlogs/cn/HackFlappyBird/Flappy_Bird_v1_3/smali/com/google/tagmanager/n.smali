.class final enum Lcom/google/tagmanager/n;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/tagmanager/n;

.field public static final enum b:Lcom/google/tagmanager/n;

.field public static final enum c:Lcom/google/tagmanager/n;

.field private static final synthetic d:[Lcom/google/tagmanager/n;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/tagmanager/n;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/n;->a:Lcom/google/tagmanager/n;

    new-instance v0, Lcom/google/tagmanager/n;

    const-string v1, "CONTAINER"

    invoke-direct {v0, v1, v3}, Lcom/google/tagmanager/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/n;->b:Lcom/google/tagmanager/n;

    new-instance v0, Lcom/google/tagmanager/n;

    const-string v1, "CONTAINER_DEBUG"

    invoke-direct {v0, v1, v4}, Lcom/google/tagmanager/n;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/n;->c:Lcom/google/tagmanager/n;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/tagmanager/n;

    sget-object v1, Lcom/google/tagmanager/n;->a:Lcom/google/tagmanager/n;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/tagmanager/n;->b:Lcom/google/tagmanager/n;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/tagmanager/n;->c:Lcom/google/tagmanager/n;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/tagmanager/n;->d:[Lcom/google/tagmanager/n;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/tagmanager/n;
    .locals 1

    const-class v0, Lcom/google/tagmanager/n;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/n;

    return-object v0
.end method

.method public static values()[Lcom/google/tagmanager/n;
    .locals 1

    sget-object v0, Lcom/google/tagmanager/n;->d:[Lcom/google/tagmanager/n;

    invoke-virtual {v0}, [Lcom/google/tagmanager/n;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/tagmanager/n;

    return-object v0
.end method
