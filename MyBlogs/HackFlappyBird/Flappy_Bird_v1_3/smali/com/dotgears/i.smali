.class public Lcom/dotgears/i;
.super Ljava/lang/Object;


# static fields
.field public static h:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:F

.field public e:F

.field public f:F

.field public g:F

.field public i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/dotgears/i;->h:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIFFFF)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/dotgears/i;->a:Ljava/lang/String;

    iput p2, p0, Lcom/dotgears/i;->b:I

    iput p3, p0, Lcom/dotgears/i;->c:I

    iput p4, p0, Lcom/dotgears/i;->d:F

    iput p5, p0, Lcom/dotgears/i;->e:F

    iput p6, p0, Lcom/dotgears/i;->f:F

    iput p7, p0, Lcom/dotgears/i;->g:F

    sget v0, Lcom/dotgears/i;->h:I

    iput v0, p0, Lcom/dotgears/i;->i:I

    sget v0, Lcom/dotgears/i;->h:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/dotgears/i;->h:I

    return-void
.end method
