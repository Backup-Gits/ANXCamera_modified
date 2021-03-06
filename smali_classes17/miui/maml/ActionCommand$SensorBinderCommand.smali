.class Lmiui/maml/ActionCommand$SensorBinderCommand;
.super Lmiui/maml/ActionCommand$TargetCommand;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SensorBinderCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "SensorCommand"


# instance fields
.field private mCommand:Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;


# direct methods
.method public constructor <init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lmiui/maml/ActionCommand$TargetCommand;-><init>(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    sget-object v0, Lmiui/maml/ActionCommand$TargetCommand$TargetType;->VARIABLE_BINDER:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    iput-object v0, p0, Lmiui/maml/ActionCommand$SensorBinderCommand;->mTargetType:Lmiui/maml/ActionCommand$TargetCommand$TargetType;

    const-string v0, "command"

    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x398c784e

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    const v2, -0x3367a0c4

    if-eq v1, v2, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string/jumbo v1, "turnOn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "turnOff"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    sget-object v1, Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;->INVALID:Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$SensorBinderCommand;->mCommand:Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;

    goto :goto_2

    :cond_3
    sget-object v1, Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;->TURN_OFF:Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$SensorBinderCommand;->mCommand:Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;

    goto :goto_2

    :cond_4
    sget-object v1, Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;->TURN_ON:Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;

    iput-object v1, p0, Lmiui/maml/ActionCommand$SensorBinderCommand;->mCommand:Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;

    nop

    :goto_2
    return-void
.end method


# virtual methods
.method protected doPerform()V
    .locals 4

    invoke-virtual {p0}, Lmiui/maml/ActionCommand$SensorBinderCommand;->getTarget()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, v0, Lmiui/maml/data/SensorBinder;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v1, v0

    check-cast v1, Lmiui/maml/data/SensorBinder;

    sget-object v2, Lmiui/maml/ActionCommand$1;->$SwitchMap$miui$maml$ActionCommand$SensorBinderCommand$CommandType:[I

    iget-object v3, p0, Lmiui/maml/ActionCommand$SensorBinderCommand;->mCommand:Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;

    invoke-virtual {v3}, Lmiui/maml/ActionCommand$SensorBinderCommand$CommandType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lmiui/maml/data/SensorBinder;->turnOffSensorBinder()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lmiui/maml/data/SensorBinder;->turnOnSensorBinder()V

    nop

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method
