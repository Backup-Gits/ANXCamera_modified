.class Landroid/speech/tts/TextToSpeech$3;
.super Ljava/lang/Object;
.source "TextToSpeech.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/speech/tts/TextToSpeech;->playEarcon(Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/speech/tts/TextToSpeech$Action<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/speech/tts/TextToSpeech;

.field final synthetic val$earcon:Ljava/lang/String;

.field final synthetic val$params:Landroid/os/Bundle;

.field final synthetic val$queueMode:I

.field final synthetic val$utteranceId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/speech/tts/TextToSpeech;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/speech/tts/TextToSpeech$3;->this$0:Landroid/speech/tts/TextToSpeech;

    iput-object p2, p0, Landroid/speech/tts/TextToSpeech$3;->val$earcon:Ljava/lang/String;

    iput p3, p0, Landroid/speech/tts/TextToSpeech$3;->val$queueMode:I

    iput-object p4, p0, Landroid/speech/tts/TextToSpeech$3;->val$params:Landroid/os/Bundle;

    iput-object p5, p0, Landroid/speech/tts/TextToSpeech$3;->val$utteranceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/speech/tts/TextToSpeech$3;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v0}, Landroid/speech/tts/TextToSpeech;->access$600(Landroid/speech/tts/TextToSpeech;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$3;->val$earcon:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    if-nez v0, :cond_0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$3;->this$0:Landroid/speech/tts/TextToSpeech;

    invoke-static {v1}, Landroid/speech/tts/TextToSpeech;->access$100(Landroid/speech/tts/TextToSpeech;)Landroid/os/IBinder;

    move-result-object v2

    iget v4, p0, Landroid/speech/tts/TextToSpeech$3;->val$queueMode:I

    iget-object v1, p0, Landroid/speech/tts/TextToSpeech$3;->this$0:Landroid/speech/tts/TextToSpeech;

    iget-object v3, p0, Landroid/speech/tts/TextToSpeech$3;->val$params:Landroid/os/Bundle;

    invoke-static {v1, v3}, Landroid/speech/tts/TextToSpeech;->access$500(Landroid/speech/tts/TextToSpeech;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, p0, Landroid/speech/tts/TextToSpeech$3;->val$utteranceId:Ljava/lang/String;

    move-object v1, p1

    move-object v3, v0

    invoke-interface/range {v1 .. v6}, Landroid/speech/tts/ITextToSpeechService;->playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/speech/tts/TextToSpeech$3;->run(Landroid/speech/tts/ITextToSpeechService;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
