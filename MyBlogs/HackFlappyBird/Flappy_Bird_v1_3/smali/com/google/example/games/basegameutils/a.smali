.class public Lcom/google/example/games/basegameutils/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/c;
.implements Lcom/google/android/gms/common/d;


# static fields
.field public static final a:[Ljava/lang/String;


# instance fields
.field b:I

.field c:Z

.field d:Landroid/app/Activity;

.field e:[Ljava/lang/String;

.field f:Lcom/google/android/gms/games/c;

.field g:Lcom/google/android/gms/plus/b;

.field h:Lcom/google/android/gms/a/a;

.field i:I

.field j:I

.field k:I

.field l:Z

.field m:Z

.field n:Lcom/google/android/gms/common/a;

.field o:Lcom/google/example/games/basegameutils/c;

.field p:Z

.field q:Ljava/lang/String;

.field r:Ljava/lang/String;

.field s:Lcom/google/example/games/basegameutils/b;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UNCONFIGURED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DISCONNECTED"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CONNECTING"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CONNECTED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/example/games/basegameutils/a;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/google/example/games/basegameutils/a;->b:I

    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/a;->c:Z

    iput-object v2, p0, Lcom/google/example/games/basegameutils/a;->d:Landroid/app/Activity;

    iput-object v2, p0, Lcom/google/example/games/basegameutils/a;->f:Lcom/google/android/gms/games/c;

    iput-object v2, p0, Lcom/google/example/games/basegameutils/a;->g:Lcom/google/android/gms/plus/b;

    iput-object v2, p0, Lcom/google/example/games/basegameutils/a;->h:Lcom/google/android/gms/a/a;

    iput v1, p0, Lcom/google/example/games/basegameutils/a;->i:I

    iput v1, p0, Lcom/google/example/games/basegameutils/a;->j:I

    iput v1, p0, Lcom/google/example/games/basegameutils/a;->k:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/a;->l:Z

    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/a;->m:Z

    iput-object v2, p0, Lcom/google/example/games/basegameutils/a;->n:Lcom/google/android/gms/common/a;

    iput-object v2, p0, Lcom/google/example/games/basegameutils/a;->o:Lcom/google/example/games/basegameutils/c;

    iput-boolean v1, p0, Lcom/google/example/games/basegameutils/a;->p:Z

    const-string v0, "GameHelper"

    iput-object v0, p0, Lcom/google/example/games/basegameutils/a;->q:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/example/games/basegameutils/a;->s:Lcom/google/example/games/basegameutils/b;

    iput-object p1, p0, Lcom/google/example/games/basegameutils/a;->d:Landroid/app/Activity;

    return-void
.end method

.method static b(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "RESULT_OK"

    goto :goto_0

    :sswitch_1
    const-string v0, "RESULT_CANCELED"

    goto :goto_0

    :sswitch_2
    const-string v0, "RESULT_APP_MISCONFIGURED"

    goto :goto_0

    :sswitch_3
    const-string v0, "RESULT_LEFT_ROOM"

    goto :goto_0

    :sswitch_4
    const-string v0, "RESULT_LICENSE_FAILED"

    goto :goto_0

    :sswitch_5
    const-string v0, "RESULT_RECONNECT_REQUIRED"

    goto :goto_0

    :sswitch_6
    const-string v0, "SIGN_IN_FAILED"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_1
        0x2711 -> :sswitch_5
        0x2712 -> :sswitch_6
        0x2713 -> :sswitch_4
        0x2714 -> :sswitch_2
        0x2715 -> :sswitch_3
    .end sparse-switch
.end method

.method static c(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown error code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DEVELOPER_ERROR("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INTERNAL_ERROR("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "INVALID_ACCOUNT("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LICENSE_CHECK_FAILED("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NETWORK_ERROR("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RESOLUTION_REQUIRED("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SERVICE_DISABLED("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SERVICE_INVALID("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SERVICE_MISSING("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SERVICE_VERSION_UPDATE_REQUIRED("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SIGN_IN_REQUIRED("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SUCCESS("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
        :pswitch_9
        :pswitch_6
        :pswitch_a
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "onDisconnected."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/example/games/basegameutils/a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "onDisconnected is expected, so no action taken."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "Unexpectedly disconnected. Severing remaining connections."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/a;->o:Lcom/google/example/games/basegameutils/c;

    const-string v0, "Making extraordinary call to onSignInFailed callback"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->a(Z)V

    goto :goto_0
.end method

.method a(I)V
    .locals 4

    sget-object v0, Lcom/google/example/games/basegameutils/a;->a:[Ljava/lang/String;

    iget v1, p0, Lcom/google/example/games/basegameutils/a;->b:I

    aget-object v0, v0, v1

    sget-object v1, Lcom/google/example/games/basegameutils/a;->a:[Ljava/lang/String;

    aget-object v1, v1, p1

    iput p1, p0, Lcom/google/example/games/basegameutils/a;->b:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "State change "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method public a(IILandroid/content/Intent;)V
    .locals 4

    const/16 v3, 0x2329

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "onActivityResult: req="

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne p1, v3, :cond_0

    const-string v0, "RC_RESOLVE"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/google/example/games/basegameutils/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    if-eq p1, v3, :cond_1

    const-string v0, "onActivityResult: request code not meant for us. Ignoring."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/a;->c:Z

    iget v0, p0, Lcom/google/example/games/basegameutils/a;->b:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult: ignoring because state isn\'t STATE_CONNECTING (it\'s "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/example/games/basegameutils/a;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/google/example/games/basegameutils/a;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const-string v0, "onAR: Resolution was RESULT_OK, so connecting current client again."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->j()V

    goto :goto_1

    :cond_3
    const/16 v0, 0x2711

    if-ne p2, v0, :cond_4

    const-string v0, "onAR: Resolution was RECONNECT_REQUIRED, so reconnecting."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->j()V

    goto :goto_1

    :cond_4
    if-nez p2, :cond_5

    const-string v0, "onAR: Got a cancellation result, so disconnecting."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/a;->l:Z

    iput-boolean v2, p0, Lcom/google/example/games/basegameutils/a;->m:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/a;->o:Lcom/google/example/games/basegameutils/c;

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->e()V

    invoke-virtual {p0, v2}, Lcom/google/example/games/basegameutils/a;->a(Z)V

    goto :goto_1

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAR: responseCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/google/example/games/basegameutils/a;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", so giving up."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/google/example/games/basegameutils/c;

    iget-object v1, p0, Lcom/google/example/games/basegameutils/a;->n:Lcom/google/android/gms/common/a;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a;->b()I

    move-result v1

    invoke-direct {v0, v1, p2}, Lcom/google/example/games/basegameutils/c;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->a(Lcom/google/example/games/basegameutils/c;)V

    goto/16 :goto_1
.end method

.method public a(Landroid/app/Activity;)V
    .locals 3

    iput-object p1, p0, Lcom/google/example/games/basegameutils/a;->d:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStart, state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/example/games/basegameutils/a;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/google/example/games/basegameutils/a;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const-string v0, "onStart"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/example/games/basegameutils/a;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStart: BUG: unexpected state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/example/games/basegameutils/a;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/google/example/games/basegameutils/a;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/a;->l:Z

    if-eqz v0, :cond_0

    const-string v0, "onStart: Now connecting clients."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->h()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "onStart: Not connecting (user specifically signed out)."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "onStart: connection process in progress, no action taken."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    const-string v0, "onStart: already connected (unusual, but ok)."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConnected: connected! client="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/example/games/basegameutils/a;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/example/games/basegameutils/a;->j:I

    iget v1, p0, Lcom/google/example/games/basegameutils/a;->k:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/google/example/games/basegameutils/a;->j:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Connected clients updated to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/example/games/basegameutils/a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/example/games/basegameutils/a;->k:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    const-string v0, "onConnected: connection hint provided. Checking for invite."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const-string v0, "invitation"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/Invitation;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->c()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "onConnected: connection hint has a room invite!"

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/google/android/gms/games/multiplayer/Invitation;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/a;->r:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invitation ID: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/example/games/basegameutils/a;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    :cond_0
    const-string v0, "onConnected: connection hint provided. Checking for TBMP game."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->i()V

    return-void
.end method

.method public a(Lcom/google/android/gms/common/a;)V
    .locals 2

    const-string v0, "onConnectionFailed"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/example/games/basegameutils/a;->n:Lcom/google/android/gms/common/a;

    const-string v0, "Connection failure:"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "   - code: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/example/games/basegameutils/a;->n:Lcom/google/android/gms/common/a;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a;->b()I

    move-result v1

    invoke-static {v1}, Lcom/google/example/games/basegameutils/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "   - resolvable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/example/games/basegameutils/a;->n:Lcom/google/android/gms/common/a;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "   - details: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/example/games/basegameutils/a;->n:Lcom/google/android/gms/common/a;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/a;->m:Z

    if-nez v0, :cond_0

    const-string v0, "onConnectionFailed: since user didn\'t initiate sign-in, failing now."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/example/games/basegameutils/a;->n:Lcom/google/android/gms/common/a;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->a(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->a(Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "onConnectionFailed: since user initiated sign-in, resolving problem."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->l()V

    goto :goto_0
.end method

.method public varargs a(Lcom/google/example/games/basegameutils/b;I[Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/example/games/basegameutils/a;->b:I

    if-eqz v1, :cond_0

    const-string v0, "GameHelper: you called GameHelper.setup() twice. You can only call it once."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Lcom/google/example/games/basegameutils/a;->s:Lcom/google/example/games/basegameutils/b;

    iput p2, p0, Lcom/google/example/games/basegameutils/a;->i:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setup: requested clients: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/example/games/basegameutils/a;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_1

    const-string v1, "https://www.googleapis.com/auth/games"

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1
    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_2

    const-string v1, "https://www.googleapis.com/auth/plus.login"

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_3

    const-string v1, "https://www.googleapis.com/auth/appstate"

    invoke-virtual {v2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p3, :cond_4

    array-length v3, p3

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_8

    :cond_4
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/google/example/games/basegameutils/a;->e:[Ljava/lang/String;

    iget-object v1, p0, Lcom/google/example/games/basegameutils/a;->e:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    const-string v1, "setup: scopes:"

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/example/games/basegameutils/a;->e:[Ljava/lang/String;

    array-length v2, v1

    :goto_1
    if-lt v0, v2, :cond_9

    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_5

    const-string v0, "setup: creating GamesClient"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/games/f;

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->g()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/games/f;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;)V

    const/16 v1, 0x31

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/f;->a(I)Lcom/google/android/gms/games/f;

    move-result-object v0

    iget-object v1, p0, Lcom/google/example/games/basegameutils/a;->e:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/games/f;->a([Ljava/lang/String;)Lcom/google/android/gms/games/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/games/f;->a()Lcom/google/android/gms/games/c;

    move-result-object v0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/a;->f:Lcom/google/android/gms/games/c;

    :cond_5
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_6

    const-string v0, "setup: creating GamesPlusClient"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/plus/c;

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->g()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/plus/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;)V

    iget-object v1, p0, Lcom/google/example/games/basegameutils/a;->e:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/plus/c;->a([Ljava/lang/String;)Lcom/google/android/gms/plus/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/plus/c;->a()Lcom/google/android/gms/plus/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/a;->g:Lcom/google/android/gms/plus/b;

    :cond_6
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_7

    const-string v0, "setup: creating AppStateClient"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/a/c;

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->g()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/a/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/c;Lcom/google/android/gms/common/d;)V

    iget-object v1, p0, Lcom/google/example/games/basegameutils/a;->e:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/a/c;->a([Ljava/lang/String;)Lcom/google/android/gms/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/a/c;->a()Lcom/google/android/gms/a/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/a;->h:Lcom/google/android/gms/a/a;

    :cond_7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->a(I)V

    return-void

    :cond_8
    aget-object v4, p3, v1

    invoke-virtual {v2, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    aget-object v3, v1, v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  - "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method a(Lcom/google/example/games/basegameutils/c;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v0, 0x3ea

    const-string v1, "giveUp"

    const-string v2, "giveUp should only be called when connecting. Proceeding anyway."

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x2

    aput v4, v3, v5

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/example/games/basegameutils/a;->a(ILjava/lang/String;Ljava/lang/String;[I)Z

    iput-boolean v5, p0, Lcom/google/example/games/basegameutils/a;->l:Z

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->e()V

    iput-object p1, p0, Lcom/google/example/games/basegameutils/a;->o:Lcom/google/example/games/basegameutils/c;

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->m()V

    invoke-virtual {p0, v5}, Lcom/google/example/games/basegameutils/a;->a(Z)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/google/example/games/basegameutils/a;->b:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GameHelper error: Operation attempted without setup: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". The setup() method must be called before attempting any other operation."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method a(Ljava/lang/StringBuilder;B)V
    .locals 4

    if-gez p2, :cond_0

    add-int/lit16 p2, p2, 0x100

    :cond_0
    div-int/lit8 v0, p2, 0x10

    rem-int/lit8 v1, p2, 0x10

    const-string v2, "0123456789ABCDEF"

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "0123456789ABCDEF"

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method a(Z)V
    .locals 2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Notifying LISTENER of sign-in "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const-string v0, "SUCCESS"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->s:Lcom/google/example/games/basegameutils/b;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->s:Lcom/google/example/games/basegameutils/b;

    invoke-interface {v0}, Lcom/google/example/games/basegameutils/b;->k()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->o:Lcom/google/example/games/basegameutils/c;

    if-eqz v0, :cond_2

    const-string v0, "FAILURE (error)"

    goto :goto_0

    :cond_2
    const-string v0, "FAILURE (no error)"

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->s:Lcom/google/example/games/basegameutils/b;

    invoke-interface {v0}, Lcom/google/example/games/basegameutils/b;->j()V

    goto :goto_1
.end method

.method public a(ZLjava/lang/String;)V
    .locals 2

    iput-boolean p1, p0, Lcom/google/example/games/basegameutils/a;->p:Z

    iput-object p2, p0, Lcom/google/example/games/basegameutils/a;->q:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Debug log enabled, tag: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method varargs a(ILjava/lang/String;Ljava/lang/String;[I)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    array-length v3, p4

    move v2, v1

    :goto_0
    if-lt v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x3e9

    if-ne p1, v3, :cond_2

    const-string v3, "GameHelper: you attempted an operation at an invalid. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v3, "Explanation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/google/example/games/basegameutils/a;->a:[Ljava/lang/String;

    iget v5, p0, Lcom/google/example/games/basegameutils/a;->b:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p4

    if-ne v3, v0, :cond_3

    const-string v0, "Expected state: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/google/example/games/basegameutils/a;->a:[Ljava/lang/String;

    aget v4, p4, v1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->d(Ljava/lang/String;)V

    move v0, v1

    :cond_0
    return v0

    :cond_1
    aget v4, p4, v2

    iget v5, p0, Lcom/google/example/games/basegameutils/a;->b:I

    if-eq v5, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "GameHelper: bug detected. Please report it at our bug tracker "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "https://github.com/playgameservices/android-samples/issues. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Please include the last couple hundred lines of logcat output "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "and describe the operation that caused this. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v0, "Expected states:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, p4

    move v0, v1

    :goto_3
    if-lt v0, v3, :cond_4

    const-string v0, "."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    aget v4, p4, v0

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/google/example/games/basegameutils/a;->a:[Ljava/lang/String;

    aget-object v4, v6, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method b(Ljava/lang/String;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->g()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/google/android/gms/games/c;
    .locals 2

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->f:Lcom/google/android/gms/games/c;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No GamesClient. Did you request it at setup?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->f:Lcom/google/android/gms/games/c;

    return-object v0
.end method

.method c(Ljava/lang/String;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/a;->p:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->q:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "GameHelper: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lcom/google/example/games/basegameutils/a;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStop, state = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/example/games/basegameutils/a;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/google/example/games/basegameutils/a;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const-string v0, "onStop"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->a(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/example/games/basegameutils/a;->b:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStop: BUG: unexpected state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/google/example/games/basegameutils/a;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/google/example/games/basegameutils/a;->b:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const-string v0, "onStop: Killing connections"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->e()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/a;->d:Landroid/app/Activity;

    return-void

    :pswitch_1
    const-string v0, "onStop: not connected, so no action taken."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method d(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->q:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "!!! GameHelper WARNING: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method e()V
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0x3ea

    const-string v1, "killConnections"

    const-string v2, "killConnections() should only get called while connected or connecting."

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/example/games/basegameutils/a;->a(ILjava/lang/String;Ljava/lang/String;[I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "killConnections: killing connections."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/google/example/games/basegameutils/a;->n:Lcom/google/android/gms/common/a;

    iput-object v4, p0, Lcom/google/example/games/basegameutils/a;->o:Lcom/google/example/games/basegameutils/c;

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->f:Lcom/google/android/gms/games/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->f:Lcom/google/android/gms/games/c;

    invoke-virtual {v0}, Lcom/google/android/gms/games/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Disconnecting GamesClient."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->f:Lcom/google/android/gms/games/c;

    invoke-virtual {v0}, Lcom/google/android/gms/games/c;->c()V

    :cond_1
    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->g:Lcom/google/android/gms/plus/b;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->g:Lcom/google/android/gms/plus/b;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/b;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Disconnecting PlusClient."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->g:Lcom/google/android/gms/plus/b;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/b;->c()V

    :cond_2
    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->h:Lcom/google/android/gms/a/a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->h:Lcom/google/android/gms/a/a;

    invoke-virtual {v0}, Lcom/google/android/gms/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "Disconnecting AppStateClient."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->h:Lcom/google/android/gms/a/a;

    invoke-virtual {v0}, Lcom/google/android/gms/a/a;->c()V

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/example/games/basegameutils/a;->j:I

    const-string v0, "killConnections: all clients disconnected."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->a(I)V

    goto :goto_0

    :array_0
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method e(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->q:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "*** GameHelper ERROR: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public f()V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v0, p0, Lcom/google/example/games/basegameutils/a;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string v0, "beginUserInitiatedSignIn() called when already connected. Calling listener directly to notify of success."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/google/example/games/basegameutils/a;->a(Z)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/google/example/games/basegameutils/a;->b:I

    if-ne v0, v5, :cond_1

    const-string v0, "beginUserInitiatedSignIn() called when already connecting. Be patient! You can only call this method after you get an onSignInSucceeded() or onSignInFailed() callback. Suggestion: disable the sign-in button on startup and also when it\'s clicked, and re-enable when you get the callback."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Starting USER-INITIATED sign-in flow."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/google/example/games/basegameutils/a;->l:Z

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/f;->a(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "isGooglePlayServicesAvailable returned "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const-string v1, "Google Play services not available. Show error dialog."

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/google/example/games/basegameutils/c;

    invoke-direct {v1, v0, v4}, Lcom/google/example/games/basegameutils/c;-><init>(II)V

    iput-object v1, p0, Lcom/google/example/games/basegameutils/a;->o:Lcom/google/example/games/basegameutils/c;

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->m()V

    invoke-virtual {p0, v4}, Lcom/google/example/games/basegameutils/a;->a(Z)V

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/google/example/games/basegameutils/a;->m:Z

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->n:Lcom/google/android/gms/common/a;

    if-eqz v0, :cond_3

    const-string v0, "beginUserInitiatedSignIn: continuing pending sign-in flow."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/google/example/games/basegameutils/a;->a(I)V

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->l()V

    goto :goto_0

    :cond_3
    const-string v0, "beginUserInitiatedSignIn: starting new sign-in flow."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->h()V

    goto :goto_0
.end method

.method g()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->d:Landroid/app/Activity;

    return-object v0
.end method

.method h()V
    .locals 6

    const/4 v5, 0x1

    const/16 v0, 0x3ea

    const-string v1, "startConnections"

    const-string v2, "startConnections should only get called when disconnected."

    new-array v3, v5, [I

    const/4 v4, 0x0

    aput v5, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/example/games/basegameutils/a;->a(ILjava/lang/String;Ljava/lang/String;[I)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "Starting connections."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->a(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/a;->r:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->i()V

    goto :goto_0
.end method

.method i()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "connectNextClient: requested clients: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/google/example/games/basegameutils/a;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", connected clients: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/example/games/basegameutils/a;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->f:Lcom/google/android/gms/games/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->f:Lcom/google/android/gms/games/c;

    invoke-virtual {v0}, Lcom/google/android/gms/games/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/example/games/basegameutils/a;->j:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const-string v0, "GamesClient was already connected. Fixing."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->d(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/example/games/basegameutils/a;->j:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/example/games/basegameutils/a;->j:I

    :cond_0
    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->g:Lcom/google/android/gms/plus/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->g:Lcom/google/android/gms/plus/b;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/b;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/example/games/basegameutils/a;->j:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const-string v0, "PlusClient was already connected. Fixing."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->d(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/example/games/basegameutils/a;->j:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/example/games/basegameutils/a;->j:I

    :cond_1
    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->h:Lcom/google/android/gms/a/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->h:Lcom/google/android/gms/a/a;

    invoke-virtual {v0}, Lcom/google/android/gms/a/a;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/google/example/games/basegameutils/a;->j:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    const-string v0, "AppStateClient was already connected. Fixing"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->d(Ljava/lang/String;)V

    iget v0, p0, Lcom/google/example/games/basegameutils/a;->j:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/example/games/basegameutils/a;->j:I

    :cond_2
    iget v0, p0, Lcom/google/example/games/basegameutils/a;->i:I

    iget v1, p0, Lcom/google/example/games/basegameutils/a;->j:I

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Pending clients: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    if-nez v0, :cond_3

    const-string v0, "All clients now connected. Sign-in successful!"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->k()V

    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/google/example/games/basegameutils/a;->f:Lcom/google/android/gms/games/c;

    if-eqz v1, :cond_4

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_4

    const-string v0, "Connecting GamesClient."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/example/games/basegameutils/a;->k:I

    :goto_1
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->j()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/example/games/basegameutils/a;->g:Lcom/google/android/gms/plus/b;

    if-eqz v1, :cond_5

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_5

    const-string v0, "Connecting PlusClient."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/example/games/basegameutils/a;->k:I

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/google/example/games/basegameutils/a;->h:Lcom/google/android/gms/a/a;

    if-eqz v1, :cond_6

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_6

    const-string v0, "Connecting AppStateClient."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/example/games/basegameutils/a;->k:I

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Not all clients connected, yet no one is next. R="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/google/example/games/basegameutils/a;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", C="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/example/games/basegameutils/a;->j:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method j()V
    .locals 6

    const/4 v3, 0x1

    iget v0, p0, Lcom/google/example/games/basegameutils/a;->b:I

    if-ne v0, v3, :cond_1

    const-string v0, "GameHelper got disconnected during connection process. Aborting."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x3ea

    const-string v1, "connectCurrentClient"

    const-string v2, "connectCurrentClient should only get called when connecting."

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/example/games/basegameutils/a;->a(ILjava/lang/String;Ljava/lang/String;[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/example/games/basegameutils/a;->k:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->f:Lcom/google/android/gms/games/c;

    invoke-virtual {v0}, Lcom/google/android/gms/games/c;->a()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->h:Lcom/google/android/gms/a/a;

    invoke-virtual {v0}, Lcom/google/android/gms/a/a;->a()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->g:Lcom/google/android/gms/plus/b;

    invoke-virtual {v0}, Lcom/google/android/gms/plus/b;->a()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method k()V
    .locals 5

    const/4 v4, 0x1

    const/16 v0, 0x3ea

    const-string v1, "succeedSignIn"

    const-string v2, "succeedSignIn should only get called in the connecting or connected state. Proceeding anyway."

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/example/games/basegameutils/a;->a(ILjava/lang/String;Ljava/lang/String;[I)Z

    const-string v0, "All requested clients connected. Sign-in succeeded!"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->a(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/example/games/basegameutils/a;->o:Lcom/google/example/games/basegameutils/c;

    iput-boolean v4, p0, Lcom/google/example/games/basegameutils/a;->l:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/a;->m:Z

    invoke-virtual {p0, v4}, Lcom/google/example/games/basegameutils/a;->a(Z)V

    return-void

    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method l()V
    .locals 6

    const/4 v3, 0x1

    const/16 v0, 0x3ea

    const-string v1, "resolveConnectionResult"

    const-string v2, "resolveConnectionResult should only be called when connecting. Proceeding anyway."

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/google/example/games/basegameutils/a;->a(ILjava/lang/String;Ljava/lang/String;[I)Z

    iget-boolean v0, p0, Lcom/google/example/games/basegameutils/a;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "We\'re already expecting the result of a previous resolution."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "resolveConnectionResult: trying to resolve result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/example/games/basegameutils/a;->n:Lcom/google/android/gms/common/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->n:Lcom/google/android/gms/common/a;

    invoke-virtual {v0}, Lcom/google/android/gms/common/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Result has resolution. Starting it."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/google/example/games/basegameutils/a;->c:Z

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->n:Lcom/google/android/gms/common/a;

    iget-object v1, p0, Lcom/google/example/games/basegameutils/a;->d:Landroid/app/Activity;

    const/16 v2, 0x2329

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/a;->a(Landroid/app/Activity;I)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "SendIntentException, so connecting again."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->j()V

    goto :goto_0

    :cond_1
    const-string v0, "resolveConnectionResult: result has no resolution. Giving up."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    new-instance v0, Lcom/google/example/games/basegameutils/c;

    iget-object v1, p0, Lcom/google/example/games/basegameutils/a;->n:Lcom/google/android/gms/common/a;

    invoke-virtual {v1}, Lcom/google/android/gms/common/a;->b()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/google/example/games/basegameutils/c;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->a(Lcom/google/example/games/basegameutils/c;)V

    goto :goto_0
.end method

.method m()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->g()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v0, "*** No context. Can\'t show failure dialog."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Making error dialog for failure: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/example/games/basegameutils/a;->o:Lcom/google/example/games/basegameutils/c;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->o:Lcom/google/example/games/basegameutils/c;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/c;->a()I

    move-result v2

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->o:Lcom/google/example/games/basegameutils/c;

    invoke-virtual {v0}, Lcom/google/example/games/basegameutils/c;->b()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/google/example/games/basegameutils/a;->d:Landroid/app/Activity;

    const/16 v3, 0x232a

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/google/android/gms/common/f;->a(ILandroid/app/Activity;ILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "No standard error dialog available. Making fallback dialog."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget v3, Lcom/google/example/games/basegameutils/e;->gamehelper_unknown_error:I

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/google/example/games/basegameutils/a;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->b(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    :cond_1
    :goto_1
    const-string v1, "Showing error dialog."

    invoke-virtual {p0, v1}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    :pswitch_0
    sget v0, Lcom/google/example/games/basegameutils/e;->gamehelper_app_misconfigured:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->b(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->n()V

    goto :goto_1

    :pswitch_1
    sget v0, Lcom/google/example/games/basegameutils/e;->gamehelper_sign_in_failed:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->b(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    sget v0, Lcom/google/example/games/basegameutils/e;->gamehelper_license_failed:I

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->b(Ljava/lang/String;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2712
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method n()V
    .locals 2

    const-string v0, "****"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const-string v0, "****"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const-string v0, "**** APP NOT CORRECTLY CONFIGURED TO USE GOOGLE PLAY GAME SERVICES"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const-string v0, "**** This is usually caused by one of these reasons:"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const-string v0, "**** (1) Your package name and certificate fingerprint do not match"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const-string v0, "****     the client ID you registered in Developer Console."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const-string v0, "**** (2) Your App ID was incorrectly entered."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const-string v0, "**** (3) Your game settings have not been published and you are "

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const-string v0, "****     trying to log in with an account that is not listed as"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const-string v0, "****     a test account."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const-string v0, "****"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->g()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "*** (no Context, so can\'t print more debug info)"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "**** To help you debug, here is the information about this app"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "**** Package name         : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "**** Cert SHA1 fingerprint: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "**** App ID from          : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const-string v0, "****"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const-string v0, "**** Check that the above information matches your setup in "

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const-string v0, "**** Developer Console. Also, check that you\'re logging in with the"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const-string v0, "**** right account (it should be listed in the Testers section if"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const-string v0, "**** your project is not yet published)."

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const-string v0, "****"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const-string v0, "**** For more information, refer to the troubleshooting guide:"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    const-string v0, "****   http://developers.google.com/games/services/android/troubleshooting"

    invoke-virtual {p0, v0}, Lcom/google/example/games/basegameutils/a;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method o()Ljava/lang/String;
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->g()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_id"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "??? (failed to retrieve APP ID)"

    goto :goto_0
.end method

.method p()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->g()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/example/games/basegameutils/a;->g()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v2, v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_0

    const-string v0, "ERROR: NO SIGNATURE."

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    array-length v2, v1
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    const-string v0, "ERROR: MULTIPLE SIGNATURES"

    goto :goto_0

    :cond_1
    :try_start_2
    const-string v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v1, v1, v3

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    aget-byte v3, v1, v0

    invoke-virtual {p0, v2, v3}, Lcom/google/example/games/basegameutils/a;->a(Ljava/lang/StringBuilder;B)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v0, "(ERROR: package not found)"

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const-string v0, "(ERROR: SHA1 algorithm not found)"

    goto :goto_0
.end method
