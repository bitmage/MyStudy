.class public abstract Lorg/andengine/b/c/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/andengine/b/c/a/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(II)V
    .locals 3

    const/high16 v2, 0x4000

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-ne v0, v2, :cond_0

    if-eq v1, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This IResolutionPolicy requires MeasureSpec.EXACTLY ! That means "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method
