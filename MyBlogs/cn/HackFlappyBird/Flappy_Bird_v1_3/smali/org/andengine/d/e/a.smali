.class public Lorg/andengine/d/e/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Lorg/andengine/d/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AndEngine"

    sput-object v0, Lorg/andengine/d/e/a;->a:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lorg/andengine/d/e/a;->b:Ljava/lang/String;

    sget-object v0, Lorg/andengine/d/e/b;->f:Lorg/andengine/d/e/b;

    sput-object v0, Lorg/andengine/d/e/a;->c:Lorg/andengine/d/e/b;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/andengine/d/e/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/andengine/d/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lorg/andengine/d/e/a;->c:Lorg/andengine/d/e/b;

    sget-object v1, Lorg/andengine/d/e/b;->f:Lorg/andengine/d/e/b;

    invoke-virtual {v0, v1}, Lorg/andengine/d/e/b;->a(Lorg/andengine/d/e/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lorg/andengine/d/e/a;->a:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lorg/andengine/d/e/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lorg/andengine/d/e/a;->a:Ljava/lang/String;

    invoke-static {v0, p0}, Lorg/andengine/d/e/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/andengine/d/e/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/andengine/d/e/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lorg/andengine/d/e/a;->c:Lorg/andengine/d/e/b;

    sget-object v1, Lorg/andengine/d/e/b;->e:Lorg/andengine/d/e/b;

    invoke-virtual {v0, v1}, Lorg/andengine/d/e/b;->a(Lorg/andengine/d/e/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    sget-object v0, Lorg/andengine/d/e/a;->a:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lorg/andengine/d/e/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/andengine/d/e/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/andengine/d/e/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lorg/andengine/d/e/a;->c:Lorg/andengine/d/e/b;

    sget-object v1, Lorg/andengine/d/e/b;->c:Lorg/andengine/d/e/b;

    invoke-virtual {v0, v1}, Lorg/andengine/d/e/b;->a(Lorg/andengine/d/e/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lorg/andengine/d/e/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lorg/andengine/d/e/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    sget-object v0, Lorg/andengine/d/e/a;->c:Lorg/andengine/d/e/b;

    sget-object v1, Lorg/andengine/d/e/b;->b:Lorg/andengine/d/e/b;

    invoke-virtual {v0, v1}, Lorg/andengine/d/e/b;->a(Lorg/andengine/d/e/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
