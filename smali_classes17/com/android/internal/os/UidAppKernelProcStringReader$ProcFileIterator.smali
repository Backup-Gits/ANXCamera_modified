.class public Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;
.super Ljava/lang/Object;
.source "UidAppKernelProcStringReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/UidAppKernelProcStringReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProcFileIterator"
.end annotation


# instance fields
.field private mPos:I

.field private final mSize:I

.field final synthetic this$0:Lcom/android/internal/os/UidAppKernelProcStringReader;


# direct methods
.method public constructor <init>(Lcom/android/internal/os/UidAppKernelProcStringReader;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->this$0:Lcom/android/internal/os/UidAppKernelProcStringReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->mSize:I

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->this$0:Lcom/android/internal/os/UidAppKernelProcStringReader;

    invoke-static {v0}, Lcom/android/internal/os/UidAppKernelProcStringReader;->access$100(Lcom/android/internal/os/UidAppKernelProcStringReader;)Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-void
.end method

.method public hasNextLine()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->mPos:I

    iget v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->mSize:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextLine()Ljava/nio/CharBuffer;
    .locals 4

    iget v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->mPos:I

    iget v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->mSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->mPos:I

    :goto_0
    iget v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->this$0:Lcom/android/internal/os/UidAppKernelProcStringReader;

    invoke-static {v1}, Lcom/android/internal/os/UidAppKernelProcStringReader;->access$000(Lcom/android/internal/os/UidAppKernelProcStringReader;)[C

    move-result-object v1

    aget-char v1, v1, v0

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->mPos:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->mPos:I

    iget-object v2, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->this$0:Lcom/android/internal/os/UidAppKernelProcStringReader;

    invoke-static {v2}, Lcom/android/internal/os/UidAppKernelProcStringReader;->access$000(Lcom/android/internal/os/UidAppKernelProcStringReader;)[C

    move-result-object v2

    sub-int v3, v0, v1

    invoke-static {v2, v1, v3}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v2

    return-object v2
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lcom/android/internal/os/UidAppKernelProcStringReader$ProcFileIterator;->mSize:I

    return v0
.end method