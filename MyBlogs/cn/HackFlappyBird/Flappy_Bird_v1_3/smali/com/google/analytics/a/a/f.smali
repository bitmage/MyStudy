.class public final enum Lcom/google/analytics/a/a/f;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/tagmanager/a/ad;


# static fields
.field public static final enum a:Lcom/google/analytics/a/a/f;

.field public static final enum b:Lcom/google/analytics/a/a/f;

.field public static final enum c:Lcom/google/analytics/a/a/f;

.field private static d:Lcom/google/tagmanager/a/ae;

.field private static final synthetic f:[Lcom/google/analytics/a/a/f;


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/google/analytics/a/a/f;

    const-string v1, "NO_CACHE"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/google/analytics/a/a/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/analytics/a/a/f;->a:Lcom/google/analytics/a/a/f;

    new-instance v0, Lcom/google/analytics/a/a/f;

    const-string v1, "PRIVATE"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/google/analytics/a/a/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/analytics/a/a/f;->b:Lcom/google/analytics/a/a/f;

    new-instance v0, Lcom/google/analytics/a/a/f;

    const-string v1, "PUBLIC"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/google/analytics/a/a/f;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/google/analytics/a/a/f;->c:Lcom/google/analytics/a/a/f;

    new-array v0, v5, [Lcom/google/analytics/a/a/f;

    sget-object v1, Lcom/google/analytics/a/a/f;->a:Lcom/google/analytics/a/a/f;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/analytics/a/a/f;->b:Lcom/google/analytics/a/a/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/analytics/a/a/f;->c:Lcom/google/analytics/a/a/f;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/analytics/a/a/f;->f:[Lcom/google/analytics/a/a/f;

    new-instance v0, Lcom/google/analytics/a/a/g;

    invoke-direct {v0}, Lcom/google/analytics/a/a/g;-><init>()V

    sput-object v0, Lcom/google/analytics/a/a/f;->d:Lcom/google/tagmanager/a/ae;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p4, p0, Lcom/google/analytics/a/a/f;->e:I

    return-void
.end method

.method public static a(I)Lcom/google/analytics/a/a/f;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lcom/google/analytics/a/a/f;->a:Lcom/google/analytics/a/a/f;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/google/analytics/a/a/f;->b:Lcom/google/analytics/a/a/f;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/google/analytics/a/a/f;->c:Lcom/google/analytics/a/a/f;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/analytics/a/a/f;
    .locals 1

    const-class v0, Lcom/google/analytics/a/a/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/analytics/a/a/f;

    return-object v0
.end method

.method public static values()[Lcom/google/analytics/a/a/f;
    .locals 1

    sget-object v0, Lcom/google/analytics/a/a/f;->f:[Lcom/google/analytics/a/a/f;

    invoke-virtual {v0}, [Lcom/google/analytics/a/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/analytics/a/a/f;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/analytics/a/a/f;->e:I

    return v0
.end method
