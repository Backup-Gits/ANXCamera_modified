.class Lcom/android/volley/toolbox/HurlStack$UrlConnectionInputStream;
.super Ljava/io/FilterInputStream;
.source "HurlStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/toolbox/HurlStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UrlConnectionInputStream"
.end annotation


# instance fields
.field private final mConnection:Ljava/net/HttpURLConnection;


# direct methods
.method constructor <init>(Ljava/net/HttpURLConnection;)V
    .locals 1

    invoke-static {p1}, Lcom/android/volley/toolbox/HurlStack;->access$000(Ljava/net/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lcom/android/volley/toolbox/HurlStack$UrlConnectionInputStream;->mConnection:Ljava/net/HttpURLConnection;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    iget-object p0, p0, Lcom/android/volley/toolbox/HurlStack$UrlConnectionInputStream;->mConnection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method
