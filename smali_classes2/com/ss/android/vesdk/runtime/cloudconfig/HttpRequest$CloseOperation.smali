.class public abstract Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$CloseOperation;
.super Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$Operation;
.source "HttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "CloseOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$Operation<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final closeable:Ljava/io/Closeable;

.field private final ignoreCloseExceptions:Z


# direct methods
.method protected constructor <init>(Ljava/io/Closeable;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$Operation;-><init>()V

    iput-object p1, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    iput-boolean p2, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$CloseOperation;->ignoreCloseExceptions:Z

    return-void
.end method


# virtual methods
.method protected done()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    instance-of v1, v0, Ljava/io/Flushable;

    if-eqz v1, :cond_0

    check-cast v0, Ljava/io/Flushable;

    invoke-interface {v0}, Ljava/io/Flushable;->flush()V

    :cond_0
    iget-boolean v0, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$CloseOperation;->ignoreCloseExceptions:Z

    if-eqz v0, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/ss/android/vesdk/runtime/cloudconfig/HttpRequest$CloseOperation;->closeable:Ljava/io/Closeable;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    :catch_0
    :goto_0
    return-void
.end method
