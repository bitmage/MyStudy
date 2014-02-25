.class Lcom/google/tagmanager/o;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/tagmanager/l;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/tagmanager/l;

    invoke-static {}, Lcom/google/tagmanager/y;->a()Lcom/google/analytics/b/a/a/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/google/tagmanager/l;-><init>(Ljava/lang/Object;Z)V

    sput-object v0, Lcom/google/tagmanager/o;->a:Lcom/google/tagmanager/l;

    return-void
.end method
