.class Landroid/filterpacks/videosrc/MediaSource$1;
.super Ljava/lang/Object;
.source "MediaSource.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/filterpacks/videosrc/MediaSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/filterpacks/videosrc/MediaSource;


# direct methods
.method constructor <init>(Landroid/filterpacks/videosrc/MediaSource;)V
    .locals 0

    iput-object p1, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->access$000(Landroid/filterpacks/videosrc/MediaSource;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer sent dimensions: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSource"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->access$100(Landroid/filterpacks/videosrc/MediaSource;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->access$200(Landroid/filterpacks/videosrc/MediaSource;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->access$200(Landroid/filterpacks/videosrc/MediaSource;)I

    move-result v0

    const/16 v1, 0xb4

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->access$300(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->access$300(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    :goto_1
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0, p2}, Landroid/filterpacks/videosrc/MediaSource;->access$402(Landroid/filterpacks/videosrc/MediaSource;I)I

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0, p3}, Landroid/filterpacks/videosrc/MediaSource;->access$502(Landroid/filterpacks/videosrc/MediaSource;I)I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->access$300(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/MutableFrameFormat;->getWidth()I

    move-result v0

    if-ne v0, p2, :cond_4

    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-static {v0}, Landroid/filterpacks/videosrc/MediaSource;->access$300(Landroid/filterpacks/videosrc/MediaSource;)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/MutableFrameFormat;->getHeight()I

    move-result v0

    if-eq v0, p3, :cond_5

    :cond_4
    const-string v0, "MediaSource"

    const-string v1, "Multiple video size change events received!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    iget-object v0, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/filterpacks/videosrc/MediaSource;->access$102(Landroid/filterpacks/videosrc/MediaSource;Z)Z

    iget-object v1, p0, Landroid/filterpacks/videosrc/MediaSource$1;->this$0:Landroid/filterpacks/videosrc/MediaSource;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method