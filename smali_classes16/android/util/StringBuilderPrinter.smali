.class public Landroid/util/StringBuilderPrinter;
.super Ljava/lang/Object;
.source "StringBuilderPrinter.java"

# interfaces
.implements Landroid/util/Printer;


# instance fields
.field private final mBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/util/StringBuilderPrinter;->mBuilder:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/util/StringBuilderPrinter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    iget-object v2, p0, Landroid/util/StringBuilderPrinter;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method
