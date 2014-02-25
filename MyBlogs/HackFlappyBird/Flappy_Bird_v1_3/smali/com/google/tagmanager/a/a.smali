.class public abstract Lcom/google/tagmanager/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/tagmanager/a/am;


# instance fields
.field protected b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/tagmanager/a/a;->b:I

    return-void
.end method


# virtual methods
.method Q()Lcom/google/tagmanager/a/bf;
    .locals 1

    new-instance v0, Lcom/google/tagmanager/a/bf;

    invoke-direct {v0, p0}, Lcom/google/tagmanager/a/bf;-><init>(Lcom/google/tagmanager/a/am;)V

    return-object v0
.end method
