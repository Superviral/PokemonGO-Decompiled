.class public Lorg/apache/commons/io/input/TaggedInputStream;
.super Lorg/apache/commons/io/input/ProxyInputStream;
.source "TaggedInputStream.java"


# instance fields
.field private final tag:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "proxy"    # Ljava/io/InputStream;

    .prologue
    .line 77
    invoke-direct {p0, p1}, Lorg/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    .line 69
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/io/input/TaggedInputStream;->tag:Ljava/io/Serializable;

    .line 78
    return-void
.end method


# virtual methods
.method protected handleIOException(Ljava/io/IOException;)V
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    new-instance v0, Lorg/apache/commons/io/TaggedIOException;

    iget-object v1, p0, Lorg/apache/commons/io/input/TaggedInputStream;->tag:Ljava/io/Serializable;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/io/TaggedIOException;-><init>(Ljava/io/IOException;Ljava/io/Serializable;)V

    throw v0
.end method

.method public isCauseOf(Ljava/lang/Throwable;)Z
    .locals 1
    .param p1, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/commons/io/input/TaggedInputStream;->tag:Ljava/io/Serializable;

    invoke-static {p1, v0}, Lorg/apache/commons/io/TaggedIOException;->isTaggedWith(Ljava/lang/Throwable;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public throwIfCauseOf(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lorg/apache/commons/io/input/TaggedInputStream;->tag:Ljava/io/Serializable;

    invoke-static {p1, v0}, Lorg/apache/commons/io/TaggedIOException;->throwCauseIfTaggedWith(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 103
    return-void
.end method
