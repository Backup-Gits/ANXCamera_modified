.class public Lorg/jcodec/movtool/Flattern;
.super Ljava/lang/Object;
.source "Flattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jcodec/movtool/Flattern$ProgressListener;
    }
.end annotation


# instance fields
.field public listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jcodec/movtool/Flattern$ProgressListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jcodec/movtool/Flattern;->listeners:Ljava/util/List;

    return-void
.end method

.method private calcProgress(III)I
    .locals 0

    mul-int/lit8 p2, p2, 0x64

    div-int p1, p2, p1

    if-ge p3, p1, :cond_0

    iget-object p0, p0, Lorg/jcodec/movtool/Flattern;->listeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/jcodec/movtool/Flattern$ProgressListener;

    invoke-interface {p2, p1}, Lorg/jcodec/movtool/Flattern$ProgressListener;->trigger(I)V

    goto :goto_0

    :cond_0
    move p1, p3

    :cond_1
    return p1
.end method

.method private calcSpaceReq(Lorg/jcodec/containers/mp4/boxes/MovieBox;)I
    .locals 2

    invoke-virtual {p1}, Lorg/jcodec/containers/mp4/boxes/MovieBox;->getTracks()[Lorg/jcodec/containers/mp4/boxes/TrakBox;

    move-result-object p0

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_1

    aget-object v1, p0, p1

    invoke-virtual {v1}, Lorg/jcodec/containers/mp4/boxes/TrakBox;->getStco()Lorg/jcodec/containers/mp4/boxes/ChunkOffsetsBox;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lorg/jcodec/containers/mp4/boxes/ChunkOffsetsBox;->getChunkOffsets()[J

    move-result-object v1

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public static main1([Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Syntax: self <ref movie> <out movie>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_0
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lorg/jcodec/platform/Platform;->deleteFile(Ljava/io/File;)Z

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const/4 v3, 0x0

    aget-object p0, p0, v3

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lorg/jcodec/common/io/NIOUtils;->readableChannel(Ljava/io/File;)Lorg/jcodec/common/io/FileChannelWrapper;

    move-result-object v1

    invoke-static {v1}, Lorg/jcodec/containers/mp4/MP4Util;->parseFullMovieChannel(Lorg/jcodec/common/io/SeekableByteChannel;)Lorg/jcodec/containers/mp4/MP4Util$Movie;

    move-result-object p0

    new-instance v2, Lorg/jcodec/movtool/Flattern;

    invoke-direct {v2}, Lorg/jcodec/movtool/Flattern;-><init>()V

    invoke-virtual {v2, p0, v0}, Lorg/jcodec/movtool/Flattern;->flattern(Lorg/jcodec/containers/mp4/MP4Util$Movie;Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/nio/channels/ByteChannel;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/nio/channels/ByteChannel;->close()V

    :cond_2
    throw p0
.end method

.method private writeHeader(Lorg/jcodec/containers/mp4/boxes/Header;Lorg/jcodec/common/io/SeekableByteChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p0, 0x10

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p1, p0}, Lorg/jcodec/containers/mp4/boxes/Header;->write(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-interface {p2, p0}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method


# virtual methods
.method public addProgressListener(Lorg/jcodec/movtool/Flattern$ProgressListener;)V
    .locals 0

    iget-object p0, p0, Lorg/jcodec/movtool/Flattern;->listeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public flattern(Lorg/jcodec/containers/mp4/MP4Util$Movie;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lorg/jcodec/platform/Platform;->deleteFile(Ljava/io/File;)Z

    :try_start_0
    invoke-static {p2}, Lorg/jcodec/common/io/NIOUtils;->writableChannel(Ljava/io/File;)Lorg/jcodec/common/io/FileChannelWrapper;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p1, p2}, Lorg/jcodec/movtool/Flattern;->flatternChannel(Lorg/jcodec/containers/mp4/MP4Util$Movie;Lorg/jcodec/common/io/SeekableByteChannel;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/nio/channels/ByteChannel;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/nio/channels/ByteChannel;->close()V

    :cond_1
    throw p0
.end method

.method public flatternChannel(Lorg/jcodec/containers/mp4/MP4Util$Movie;Lorg/jcodec/common/io/SeekableByteChannel;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p1 .. p1}, Lorg/jcodec/containers/mp4/MP4Util$Movie;->getFtyp()Lorg/jcodec/containers/mp4/boxes/FileTypeBox;

    invoke-virtual/range {p1 .. p1}, Lorg/jcodec/containers/mp4/MP4Util$Movie;->getMoov()Lorg/jcodec/containers/mp4/boxes/MovieBox;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jcodec/containers/mp4/boxes/MovieBox;->isPureRefMovie()Z

    move-result v4

    if-eqz v4, :cond_9

    const-wide/16 v4, 0x0

    invoke-interface {v2, v4, v5}, Lorg/jcodec/common/io/SeekableByteChannel;->setPosition(J)Lorg/jcodec/common/io/SeekableByteChannel;

    invoke-static {v2, v1}, Lorg/jcodec/containers/mp4/MP4Util;->writeFullMovie(Lorg/jcodec/common/io/SeekableByteChannel;Lorg/jcodec/containers/mp4/MP4Util$Movie;)V

    invoke-direct {v0, v3}, Lorg/jcodec/movtool/Flattern;->calcSpaceReq(Lorg/jcodec/containers/mp4/boxes/MovieBox;)I

    move-result v6

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/nio/channels/ByteChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-interface/range {p2 .. p2}, Lorg/jcodec/common/io/SeekableByteChannel;->position()J

    move-result-wide v6

    const-wide v8, 0x100000001L

    const-string v10, "mdat"

    invoke-static {v10, v8, v9}, Lorg/jcodec/containers/mp4/boxes/Header;->createHeader(Ljava/lang/String;J)Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v8

    invoke-direct {v0, v8, v2}, Lorg/jcodec/movtool/Flattern;->writeHeader(Lorg/jcodec/containers/mp4/boxes/Header;Lorg/jcodec/common/io/SeekableByteChannel;)V

    invoke-virtual {v0, v3}, Lorg/jcodec/movtool/Flattern;->getInputs(Lorg/jcodec/containers/mp4/boxes/MovieBox;)[[Lorg/jcodec/common/io/SeekableByteChannel;

    move-result-object v8

    invoke-virtual {v3}, Lorg/jcodec/containers/mp4/boxes/MovieBox;->getTracks()[Lorg/jcodec/containers/mp4/boxes/TrakBox;

    move-result-object v9

    array-length v11, v9

    new-array v11, v11, [Lorg/jcodec/containers/mp4/ChunkReader;

    array-length v12, v9

    new-array v12, v12, [Lorg/jcodec/containers/mp4/ChunkWriter;

    array-length v13, v9

    new-array v13, v13, [Lorg/jcodec/containers/mp4/Chunk;

    array-length v14, v9

    new-array v14, v14, [J

    const/4 v4, 0x0

    const/4 v15, 0x0

    :goto_0
    array-length v5, v9

    if-ge v15, v5, :cond_1

    new-instance v5, Lorg/jcodec/containers/mp4/ChunkReader;

    move-object/from16 v16, v10

    aget-object v10, v9, v15

    invoke-direct {v5, v10}, Lorg/jcodec/containers/mp4/ChunkReader;-><init>(Lorg/jcodec/containers/mp4/boxes/TrakBox;)V

    aput-object v5, v11, v15

    aget-object v5, v11, v15

    invoke-virtual {v5}, Lorg/jcodec/containers/mp4/ChunkReader;->size()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Lorg/jcodec/containers/mp4/ChunkWriter;

    aget-object v10, v9, v15

    move/from16 v17, v4

    aget-object v4, v8, v15

    invoke-direct {v5, v10, v4, v2}, Lorg/jcodec/containers/mp4/ChunkWriter;-><init>(Lorg/jcodec/containers/mp4/boxes/TrakBox;[Lorg/jcodec/common/io/SeekableByteChannel;Lorg/jcodec/common/io/SeekableByteChannel;)V

    aput-object v5, v12, v15

    aget-object v4, v11, v15

    invoke-virtual {v4}, Lorg/jcodec/containers/mp4/ChunkReader;->next()Lorg/jcodec/containers/mp4/Chunk;

    move-result-object v4

    aput-object v4, v13, v15

    aget-object v4, v9, v15

    invoke-virtual {v4}, Lorg/jcodec/containers/mp4/boxes/TrakBox;->isVideo()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lorg/jcodec/containers/mp4/boxes/MovieBox;->getTimescale()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    int-to-long v4, v4

    aput-wide v4, v14, v15

    :cond_0
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, v16

    move/from16 v4, v17

    goto :goto_0

    :cond_1
    move-object/from16 v16, v10

    const/4 v5, 0x0

    const/4 v8, 0x0

    :goto_1
    move/from16 v18, v4

    const/4 v10, -0x1

    const/4 v15, 0x0

    :goto_2
    array-length v4, v11

    if-ge v15, v4, :cond_5

    aget-object v4, v13, v15

    if-nez v4, :cond_2

    move/from16 v19, v5

    move-wide/from16 v22, v6

    move/from16 v21, v8

    goto :goto_4

    :cond_2
    const/4 v4, -0x1

    if-ne v10, v4, :cond_3

    move/from16 v19, v5

    move-wide/from16 v22, v6

    move/from16 v21, v8

    goto :goto_3

    :cond_3
    aget-object v4, v13, v15

    move/from16 v19, v5

    invoke-virtual {v4}, Lorg/jcodec/containers/mp4/Chunk;->getStartTv()J

    move-result-wide v4

    aget-object v20, v9, v15

    move/from16 v21, v8

    invoke-virtual/range {v20 .. v20}, Lorg/jcodec/containers/mp4/boxes/TrakBox;->getTimescale()I

    move-result v8

    int-to-long v0, v8

    invoke-virtual {v3, v4, v5, v0, v1}, Lorg/jcodec/containers/mp4/boxes/MovieBox;->rescale(JJ)J

    move-result-wide v0

    aget-wide v4, v14, v15

    add-long/2addr v0, v4

    aget-object v4, v13, v10

    invoke-virtual {v4}, Lorg/jcodec/containers/mp4/Chunk;->getStartTv()J

    move-result-wide v4

    aget-object v8, v9, v10

    invoke-virtual {v8}, Lorg/jcodec/containers/mp4/boxes/TrakBox;->getTimescale()I

    move-result v8

    move-wide/from16 v22, v6

    int-to-long v6, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Lorg/jcodec/containers/mp4/boxes/MovieBox;->rescale(JJ)J

    move-result-wide v4

    aget-wide v6, v14, v10

    add-long/2addr v4, v6

    cmp-long v0, v0, v4

    if-gez v0, :cond_4

    :goto_3
    move v10, v15

    :cond_4
    :goto_4
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v5, v19

    move/from16 v8, v21

    move-wide/from16 v6, v22

    goto :goto_2

    :cond_5
    move/from16 v19, v5

    move-wide/from16 v22, v6

    move/from16 v21, v8

    const/4 v0, -0x1

    if-ne v10, v0, :cond_8

    const/4 v0, 0x0

    :goto_5
    array-length v1, v9

    if-ge v0, v1, :cond_6

    aget-object v1, v12, v0

    invoke-virtual {v1}, Lorg/jcodec/containers/mp4/ChunkWriter;->apply()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    invoke-interface/range {p2 .. p2}, Lorg/jcodec/common/io/SeekableByteChannel;->position()J

    move-result-wide v0

    sub-long v0, v0, v22

    const-wide/16 v4, 0x0

    invoke-interface {v2, v4, v5}, Lorg/jcodec/common/io/SeekableByteChannel;->setPosition(J)Lorg/jcodec/common/io/SeekableByteChannel;

    move-object/from16 v6, p1

    invoke-static {v2, v6}, Lorg/jcodec/containers/mp4/MP4Util;->writeFullMovie(Lorg/jcodec/common/io/SeekableByteChannel;Lorg/jcodec/containers/mp4/MP4Util$Movie;)V

    invoke-interface/range {p2 .. p2}, Lorg/jcodec/common/io/SeekableByteChannel;->position()J

    move-result-wide v6

    sub-long v6, v22, v6

    cmp-long v3, v6, v4

    if-ltz v3, :cond_7

    const-string v3, "free"

    invoke-static {v3, v6, v7}, Lorg/jcodec/containers/mp4/boxes/Header;->createHeader(Ljava/lang/String;J)Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v3

    move-object/from16 v7, p0

    invoke-direct {v7, v3, v2}, Lorg/jcodec/movtool/Flattern;->writeHeader(Lorg/jcodec/containers/mp4/boxes/Header;Lorg/jcodec/common/io/SeekableByteChannel;)V

    move-wide/from16 v3, v22

    invoke-interface {v2, v3, v4}, Lorg/jcodec/common/io/SeekableByteChannel;->setPosition(J)Lorg/jcodec/common/io/SeekableByteChannel;

    move-object/from16 v8, v16

    invoke-static {v8, v0, v1}, Lorg/jcodec/containers/mp4/boxes/Header;->createHeader(Ljava/lang/String;J)Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object v0

    invoke-direct {v7, v0, v2}, Lorg/jcodec/movtool/Flattern;->writeHeader(Lorg/jcodec/containers/mp4/boxes/Header;Lorg/jcodec/common/io/SeekableByteChannel;)V

    return-void

    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not enough space to write the header"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object/from16 v7, p0

    move-object/from16 v6, p1

    move-object/from16 v8, v16

    move-wide/from16 v0, v22

    const-wide/16 v4, 0x0

    aget-object v15, v12, v10

    aget-object v4, v13, v10

    invoke-virtual {v15, v4}, Lorg/jcodec/containers/mp4/ChunkWriter;->write(Lorg/jcodec/containers/mp4/Chunk;)V

    aget-object v4, v11, v10

    invoke-virtual {v4}, Lorg/jcodec/containers/mp4/ChunkReader;->next()Lorg/jcodec/containers/mp4/Chunk;

    move-result-object v4

    aput-object v4, v13, v10

    add-int/lit8 v5, v19, 0x1

    move/from16 v15, v18

    move/from16 v4, v21

    invoke-direct {v7, v15, v5, v4}, Lorg/jcodec/movtool/Flattern;->calcProgress(III)I

    move-result v4

    move v8, v4

    move v4, v15

    move-wide/from16 v24, v0

    move-object v1, v6

    move-object v0, v7

    move-wide/from16 v6, v24

    goto/16 :goto_1

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "movie should be reference"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getInputs(Lorg/jcodec/containers/mp4/boxes/MovieBox;)[[Lorg/jcodec/common/io/SeekableByteChannel;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/jcodec/containers/mp4/boxes/MovieBox;->getTracks()[Lorg/jcodec/containers/mp4/boxes/TrakBox;

    move-result-object p1

    array-length v0, p1

    new-array v0, v0, [[Lorg/jcodec/common/io/SeekableByteChannel;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    aget-object v3, p1, v2

    const-class v4, Lorg/jcodec/containers/mp4/boxes/DataRefBox;

    const-string v5, "mdia.minf.dinf.dref"

    invoke-static {v5}, Lorg/jcodec/containers/mp4/boxes/Box;->path(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->findFirstPath(Lorg/jcodec/containers/mp4/boxes/NodeBox;Ljava/lang/Class;[Ljava/lang/String;)Lorg/jcodec/containers/mp4/boxes/Box;

    move-result-object v3

    check-cast v3, Lorg/jcodec/containers/mp4/boxes/DataRefBox;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lorg/jcodec/containers/mp4/boxes/NodeBox;->getBoxes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/jcodec/common/io/SeekableByteChannel;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/jcodec/common/io/SeekableByteChannel;

    move v6, v1

    :goto_1
    array-length v7, v4

    if-ge v6, v7, :cond_0

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jcodec/containers/mp4/boxes/Box;

    invoke-virtual {p0, v7}, Lorg/jcodec/movtool/Flattern;->resolveDataRef(Lorg/jcodec/containers/mp4/boxes/Box;)Lorg/jcodec/common/io/SeekableByteChannel;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    aput-object v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "No data references"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-object v0
.end method

.method public resolveDataRef(Lorg/jcodec/containers/mp4/boxes/Box;)Lorg/jcodec/common/io/SeekableByteChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of p0, p1, Lorg/jcodec/containers/mp4/boxes/UrlBox;

    if-eqz p0, :cond_1

    check-cast p1, Lorg/jcodec/containers/mp4/boxes/UrlBox;

    invoke-virtual {p1}, Lorg/jcodec/containers/mp4/boxes/UrlBox;->getUrl()Ljava/lang/String;

    move-result-object p0

    const-string p1, "file://"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/io/File;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/jcodec/common/io/NIOUtils;->readableChannel(Ljava/io/File;)Lorg/jcodec/common/io/FileChannelWrapper;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Only file:// urls are supported in data reference"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    instance-of p0, p1, Lorg/jcodec/containers/mp4/boxes/AliasBox;

    if-eqz p0, :cond_3

    check-cast p1, Lorg/jcodec/containers/mp4/boxes/AliasBox;

    invoke-virtual {p1}, Lorg/jcodec/containers/mp4/boxes/AliasBox;->getUnixPath()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/jcodec/common/io/NIOUtils;->readableChannel(Ljava/io/File;)Lorg/jcodec/common/io/FileChannelWrapper;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Could not resolve alias"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/jcodec/containers/mp4/boxes/Box;->getHeader()Lorg/jcodec/containers/mp4/boxes/Header;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jcodec/containers/mp4/boxes/Header;->getFourcc()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " dataref type is not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
