.class public abstract Lcom/google/tagmanager/a/x;
.super Lcom/google/tagmanager/a/t;

# interfaces
.implements Lcom/google/tagmanager/a/y;


# instance fields
.field private final a:Lcom/google/tagmanager/a/q;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/tagmanager/a/t;-><init>()V

    invoke-static {}, Lcom/google/tagmanager/a/q;->a()Lcom/google/tagmanager/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/x;->a:Lcom/google/tagmanager/a/q;

    return-void
.end method

.method protected constructor <init>(Lcom/google/tagmanager/a/w;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/tagmanager/a/t;-><init>()V

    invoke-static {p1}, Lcom/google/tagmanager/a/w;->a(Lcom/google/tagmanager/a/w;)Lcom/google/tagmanager/a/q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/tagmanager/a/x;->a:Lcom/google/tagmanager/a/q;

    return-void
.end method

.method static synthetic a(Lcom/google/tagmanager/a/x;)Lcom/google/tagmanager/a/q;
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/a/x;->a:Lcom/google/tagmanager/a/q;

    return-object v0
.end method


# virtual methods
.method protected I()Z
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/a/x;->a:Lcom/google/tagmanager/a/q;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/q;->e()Z

    move-result v0

    return v0
.end method

.method protected R()V
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/a/x;->a:Lcom/google/tagmanager/a/q;

    invoke-virtual {v0}, Lcom/google/tagmanager/a/q;->c()V

    return-void
.end method

.method protected a(Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/m;Lcom/google/tagmanager/a/o;I)Z
    .locals 6

    iget-object v0, p0, Lcom/google/tagmanager/a/x;->a:Lcom/google/tagmanager/a/q;

    invoke-virtual {p0}, Lcom/google/tagmanager/a/x;->p()Lcom/google/tagmanager/a/am;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/tagmanager/a/t;->a(Lcom/google/tagmanager/a/q;Lcom/google/tagmanager/a/am;Lcom/google/tagmanager/a/k;Lcom/google/tagmanager/a/m;Lcom/google/tagmanager/a/o;I)Z

    move-result v0

    return v0
.end method
