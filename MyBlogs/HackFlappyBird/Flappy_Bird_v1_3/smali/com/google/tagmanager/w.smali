.class public final enum Lcom/google/tagmanager/w;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/google/tagmanager/w;

.field public static final enum b:Lcom/google/tagmanager/w;

.field private static final synthetic c:[Lcom/google/tagmanager/w;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/google/tagmanager/w;

    const-string v1, "STANDARD"

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/w;->a:Lcom/google/tagmanager/w;

    new-instance v0, Lcom/google/tagmanager/w;

    const-string v1, "DEFAULT_CONTAINER"

    invoke-direct {v0, v1, v3}, Lcom/google/tagmanager/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/tagmanager/w;->b:Lcom/google/tagmanager/w;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/tagmanager/w;

    sget-object v1, Lcom/google/tagmanager/w;->a:Lcom/google/tagmanager/w;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/tagmanager/w;->b:Lcom/google/tagmanager/w;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/tagmanager/w;->c:[Lcom/google/tagmanager/w;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/tagmanager/w;
    .locals 1

    const-class v0, Lcom/google/tagmanager/w;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/tagmanager/w;

    return-object v0
.end method

.method public static values()[Lcom/google/tagmanager/w;
    .locals 1

    sget-object v0, Lcom/google/tagmanager/w;->c:[Lcom/google/tagmanager/w;

    invoke-virtual {v0}, [Lcom/google/tagmanager/w;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/tagmanager/w;

    return-object v0
.end method
