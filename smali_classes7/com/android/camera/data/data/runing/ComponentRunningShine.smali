.class public Lcom/android/camera/data/data/runing/ComponentRunningShine;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentRunningShine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineEntry;,
        Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
    }
.end annotation


# static fields
.field public static final ENTRY_NONE:I = -0x1

.field public static final ENTRY_POPUP_BEAUTY:I = 0x5

.field public static final ENTRY_POPUP_SHINE:I = 0x4

.field public static final ENTRY_TOP_BEAUTY:I = 0x2

.field public static final ENTRY_TOP_FILTER:I = 0x3

.field public static final ENTRY_TOP_SHINE:I = 0x1

.field public static final FILTER_NATIVE_NONE_ID:I = 0x0

.field public static final SHINE_BEAUTY_LEVEL_SMOOTH:Ljava/lang/String; = "2"

.field public static final SHINE_BEAUTY_LEVEL_SWITCH:Ljava/lang/String; = "1"

.field public static final SHINE_EYE_LIGHT:Ljava/lang/String; = "9"

.field public static final SHINE_FIGURE:Ljava/lang/String; = "6"

.field public static final SHINE_FILTER:Ljava/lang/String; = "7"

.field public static final SHINE_KALEIDOSCOPE:Ljava/lang/String; = "16"

.field public static final SHINE_LIGHTING:Ljava/lang/String; = "8"

.field public static final SHINE_LIVE_BEAUTY:Ljava/lang/String; = "11"

.field public static final SHINE_LIVE_FILTER:Ljava/lang/String; = "10"

.field public static final SHINE_LIVE_SPEED:Ljava/lang/String; = "13"

.field public static final SHINE_LIVE_STICKER:Ljava/lang/String; = "12"

.field public static final SHINE_MAKEUP:Ljava/lang/String; = "5"

.field public static final SHINE_MI_LIVE_BEAUTY:Ljava/lang/String; = "15"

.field public static final SHINE_MODEL_ADVANCE:Ljava/lang/String; = "3"

.field public static final SHINE_MODEL_REMODELING:Ljava/lang/String; = "4"

.field public static final SHINE_VIDEO_BOKEH_LEVEL:Ljava/lang/String; = "14"

.field private static final TAG:Ljava/lang/String; = "ComponentRunningShine"


# instance fields
.field private isFrontCamera:Z

.field private mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

.field private mBeautyVersion:I

.field private mCurrentStatus:Z

.field private mCurrentTipType:Ljava/lang/String;

.field private mCurrentType:Ljava/lang/String;
    .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
    .end annotation
.end field

.field private mDefaultType:Ljava/lang/String;
    .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
    .end annotation
.end field

.field private mIsClosed:Z

.field private mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mShineEntry:I
    .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineEntry;
    .end annotation
.end field

.field private mSupportBeautyBody:Z

.field private mSupportBeautyLevel:Z

.field private mSupportBeautyMakeUp:Z

.field private mSupportBeautyMiLive:Z

.field private mSupportBeautyModel:Z

.field private mSupportHalColorRententionBack:Z

.field private mSupportHalColorRententionFront:Z

.field private mSupportHalVideoBokehLevel:Z

.field private mSupportHalVideoFilter:Z

.field private mSupportSmoothLevel:Z

.field private mTypeElementsBeauty:Lcom/android/camera/data/data/runing/TypeElementsBeauty;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/runing/DataItemRunning;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    new-instance p1, Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    invoke-direct {p1, p0}, Lcom/android/camera/data/data/runing/TypeElementsBeauty;-><init>(Lcom/android/camera/data/data/runing/ComponentRunningShine;)V

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mTypeElementsBeauty:Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    return-void
.end method

.method private generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 3

    invoke-static {}, Lcom/mi/config/b;->im()Z

    move-result p0

    const-string p1, "1"

    const v0, 0x7f08016b

    const v1, 0x7f08016a

    if-eqz p0, :cond_0

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f1001b1

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v2, 0x7f1001b4

    invoke-direct {p0, v1, v0, v2, p1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateFigureItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f1001b1

    goto :goto_0

    :cond_0
    const p0, 0x7f1001a7

    :goto_0
    const v1, 0x7f08016a

    const v2, 0x7f08016b

    const-string v3, "6"

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method private generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f080292

    const v1, 0x7f080294

    const v2, 0x7f100fd4

    const-string v3, "7"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateKaleidoscopeItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 3

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f0802e7

    const v1, 0x7f10096b

    const-string v2, "16"

    invoke-direct {p0, v0, v0, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateMakeupItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f08016a

    const v1, 0x7f08016b

    const v2, 0x7f1001b2

    const-string v3, "5"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateMiLiveItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f08016a

    const v1, 0x7f08016b

    const v2, 0x7f1001b1

    const-string v3, "15"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateModelItem()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    invoke-static {}, Lcom/mi/config/b;->im()Z

    move-result v0

    const v1, 0x7f08016b

    const v2, 0x7f08016a

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f1001b1

    goto :goto_0

    :cond_0
    const p0, 0x7f1001b3

    :goto_0
    const-string v3, "4"

    invoke-direct {v0, v2, v1, p0, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object v0

    :cond_1
    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f1001b5

    const-string v3, "3"

    invoke-direct {p0, v2, v1, v0, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;
    .locals 3

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const p1, 0x7f08016a

    const v0, 0x7f08016b

    const v1, 0x7f1001b1

    const-string v2, "2"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method

.method private generateVideoBokeh()Lcom/android/camera/data/data/ComponentDataItem;
    .locals 4

    new-instance p0, Lcom/android/camera/data/data/ComponentDataItem;

    const v0, 0x7f08016a

    const v1, 0x7f08016b

    const v2, 0x7f1007af

    const-string v3, "14"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public clearArrayMap()V
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public determineStatus(I)Z
    .locals 12

    iget-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-direct {v0}, Lcom/android/camera/fragment/beauty/BeautyValues;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    goto/16 :goto_5

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isVideoShineForceOn(I)Z

    move-result v0

    iget-object v2, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/data/data/ComponentDataItem;

    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    iget-object v7, v7, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    const/4 v9, -0x1

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v10

    const/16 v11, 0x61f

    if-eq v10, v11, :cond_5

    const/16 v11, 0x620

    if-eq v10, v11, :cond_4

    packed-switch v10, :pswitch_data_0

    packed-switch v10, :pswitch_data_1

    goto/16 :goto_1

    :pswitch_0
    const-string v10, "16"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0xb

    goto/16 :goto_2

    :pswitch_1
    const-string v10, "15"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x3

    goto/16 :goto_2

    :pswitch_2
    const-string v10, "14"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0xa

    goto/16 :goto_2

    :pswitch_3
    const-string v10, "7"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x8

    goto :goto_2

    :pswitch_4
    const-string v10, "6"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x4

    goto :goto_2

    :pswitch_5
    const-string v10, "5"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x5

    goto :goto_2

    :pswitch_6
    const-string v10, "4"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x2

    goto :goto_2

    :pswitch_7
    const-string v10, "3"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v8

    goto :goto_2

    :pswitch_8
    const-string v10, "2"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x6

    goto :goto_2

    :pswitch_9
    const-string v10, "1"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    move v7, v1

    goto :goto_2

    :cond_4
    const-string v10, "11"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x7

    goto :goto_2

    :cond_5
    const-string v10, "10"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x9

    goto :goto_2

    :cond_6
    :goto_1
    move v7, v9

    :goto_2
    packed-switch v7, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_a
    if-nez v6, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningKaleidoscope()Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/data/data/runing/ComponentRunningKaleidoscope;->isSwitchOn()Z

    move-result v6

    goto/16 :goto_0

    :pswitch_b
    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getVideoBokehRatio()F

    move-result v7

    const/4 v9, 0x0

    cmpl-float v7, v7, v9

    if-eqz v7, :cond_2

    move v5, v8

    goto/16 :goto_0

    :pswitch_c
    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemLive()Lcom/android/camera/data/data/extra/DataItemLive;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/camera/data/data/extra/DataItemLive;->getLiveFilter()I

    move-result v7

    if-eqz v7, :cond_2

    :goto_3
    move v4, v8

    goto/16 :goto_0

    :pswitch_d
    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->getShaderEffect()I

    move-result v7

    invoke-virtual {p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->supportVideoFilter()Z

    move-result v9

    if-eqz v9, :cond_7

    if-eqz v7, :cond_8

    goto :goto_3

    :cond_7
    sget v9, Lcom/android/camera/effect/FilterInfo;->FILTER_ID_NONE:I

    if-eq v7, v9, :cond_8

    if-lez v7, :cond_8

    goto :goto_3

    :cond_8
    move v8, v4

    goto :goto_3

    :pswitch_e
    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isLiveBeautyOpen()Z

    move-result v3

    goto/16 :goto_0

    :pswitch_f
    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-static {p1, v3}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v3

    goto/16 :goto_0

    :pswitch_10
    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-static {p1, v3}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-static {}, Lcom/android/camera/CameraSettings;->isEyeLightOpen()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    move v8, v1

    :cond_a
    :goto_4
    move v3, v8

    goto/16 :goto_0

    :pswitch_11
    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyValues:Lcom/android/camera/fragment/beauty/BeautyValues;

    invoke-static {p1, v3}, Lcom/android/camera/CameraSettings;->isFaceBeautyOn(ILcom/android/camera/fragment/beauty/BeautyValues;)Z

    move-result v3

    goto/16 :goto_0

    :cond_b
    if-nez v0, :cond_c

    if-nez v3, :cond_c

    if-nez v4, :cond_c

    if-nez v5, :cond_c

    if-eqz v6, :cond_d

    :cond_c
    move v1, v8

    :cond_d
    iput-boolean v1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    :goto_5
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    return p0

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x623
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch
.end method

.method public getBeautyVersion()I
    .locals 0

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    return p0
.end method

.method public getBottomEntryRes(I)I
    .locals 1
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->determineStatus(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    iget p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const p0, 0x7f0802d2

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    if-eqz p0, :cond_1

    const p0, 0x7f08016b

    goto :goto_0

    :cond_1
    const p0, 0x7f08016a

    :goto_0
    return p0

    :cond_2
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    const p0, 0x7f0802f6

    return p0
.end method

.method public getCurrentStatus()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    return p0
.end method

.method public getCurrentTipType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentTipType:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentType()Ljava/lang/String;
    .locals 0
    .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    return-object p0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    return-object p0
.end method

.method public getDisplayTitleString()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getItems()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    return-object p0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopConfigEntryRes(I)I
    .locals 2
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->determineStatus(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    iget p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x1

    const v1, 0x7f0802d2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    return v1

    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    if-eqz p0, :cond_1

    const p0, 0x7f080294

    goto :goto_0

    :cond_1
    const p0, 0x7f080292

    :goto_0
    return p0

    :cond_2
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    const p0, 0x7f08016a

    return p0

    :cond_3
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentStatus:Z

    return v1
.end method

.method public getTopConfigEntryShadowRes(I)I
    .locals 0
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation

    const p0, 0x7f080292

    if-eq p1, p0, :cond_1

    const p0, 0x7f080294

    if-eq p1, p0, :cond_1

    const p0, 0x7f0802d2

    if-eq p1, p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const p0, 0x7f0802d3

    return p0

    :cond_1
    const p0, 0x7f080293

    return p0
.end method

.method public getTopConfigItem()I
    .locals 3

    iget v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown Shine"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/16 p0, 0xd4

    return p0
.end method

.method public getTypeElementsBeauty()Lcom/android/camera/data/data/runing/TypeElementsBeauty;
    .locals 0

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mTypeElementsBeauty:Lcom/android/camera/data/data/runing/TypeElementsBeauty;

    return-object p0
.end method

.method public isClosed()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsClosed:Z

    return p0
.end method

.method public isLegacyBeautyVersion()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSmoothDependBeautyVersion()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTopBeautyEntry()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTopFilterEntry()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTopShineEntry()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVideoShineForceOn(I)Z
    .locals 2

    const/16 v0, 0xa2

    if-eq p1, v0, :cond_0

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz v0, :cond_1

    const-string v0, "front"

    goto :goto_0

    :cond_1
    const-string v0, "back"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    :goto_1
    return p0
.end method

.method public reInit()V
    .locals 1

    iget-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :goto_0
    return-void
.end method

.method public reInit(IILcom/android/camera2/CameraCapabilities;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    iput-boolean v5, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->reInit()V

    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->getBeautyVersion()I

    move-result v5

    iput v5, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    iget v5, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    const/4 v6, 0x2

    if-gez v5, :cond_2

    invoke-static {}, Lcom/mi/config/b;->im()Z

    move-result v5

    if-eqz v5, :cond_1

    iput v6, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    goto :goto_1

    :cond_1
    iput v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mBeautyVersion:I

    :cond_2
    :goto_1
    const/4 v5, -0x1

    iput v5, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    iput-boolean v3, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iput-boolean v3, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iput-boolean v3, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    iput-boolean v3, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    iput-boolean v3, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    iput-boolean v3, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    iput-boolean v3, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    iput-boolean v3, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionFront:Z

    iput-boolean v3, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionBack:Z

    const/16 v5, 0xa5

    const/4 v7, 0x3

    const-string v8, "7"

    const/4 v9, 0x4

    if-eq v1, v5, :cond_2a

    const/16 v5, 0xa7

    if-eq v1, v5, :cond_29

    const/16 v5, 0xab

    if-eq v1, v5, :cond_25

    const/16 v5, 0xb4

    const-string v10, "  mSupportColorRententionBack:"

    const-string v11, "mSupportColorRententionFront:"

    const-string v12, "ComponentRunningShine"

    if-eq v1, v5, :cond_24

    const/16 v5, 0xcc

    if-eq v1, v5, :cond_1c

    const/16 v5, 0xb7

    const v13, 0x7f100fd4

    const v14, 0x7f080294

    const v15, 0x7f080292

    if-eq v1, v5, :cond_11

    const/16 v5, 0xb8

    if-eq v1, v5, :cond_10

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_16

    :pswitch_0
    iput v9, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result v1

    if-nez v1, :cond_4

    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne v2, v4, :cond_3

    goto :goto_2

    :cond_3
    move v4, v3

    :goto_2
    invoke-direct {v0, v4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :cond_4
    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne v2, v4, :cond_5

    goto :goto_3

    :cond_5
    move v4, v3

    :goto_3
    invoke-direct {v0, v4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :pswitch_1
    iput v9, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const-string v1, "10"

    iput-object v1, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    const v5, 0x7f08016a

    const v6, 0x7f08016b

    const v7, 0x7f1001b1

    const-string v8, "11"

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v4, v15, v14, v13, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :pswitch_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBeauty()Z

    move-result v1

    if-eqz v1, :cond_f

    iput v9, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    if-nez v2, :cond_a

    iput-object v8, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result v1

    if-nez v1, :cond_7

    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne v2, v4, :cond_6

    move v2, v4

    goto :goto_4

    :cond_6
    move v2, v3

    :goto_4
    invoke-direct {v0, v2}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/a;->isSupportShortVideoBeautyBody()Z

    move-result v1

    if-eqz v1, :cond_e

    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_7
    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/a;->isSupportShortVideoBeautyBody()Z

    move-result v1

    if-eqz v1, :cond_8

    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_8
    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne v2, v4, :cond_9

    goto :goto_5

    :cond_9
    move v4, v3

    :goto_5
    invoke-direct {v0, v4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result v1

    if-nez v1, :cond_c

    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne v2, v4, :cond_b

    goto :goto_6

    :cond_b
    move v4, v3

    :goto_6
    invoke-direct {v0, v4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne v2, v4, :cond_d

    goto :goto_7

    :cond_d
    move v4, v3

    :goto_7
    invoke-direct {v0, v4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_8
    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    iput v7, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_9
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/a;->Jj()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateKaleidoscopeItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :cond_10
    :pswitch_3
    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    goto/16 :goto_16

    :cond_11
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBeauty()Z

    move-result v1

    if-eqz v1, :cond_1a

    iput v9, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result v1

    if-nez v1, :cond_13

    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne v2, v4, :cond_12

    move v5, v4

    goto :goto_a

    :cond_12
    move v5, v3

    :goto_a
    invoke-direct {v0, v5}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :cond_13
    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    :goto_b
    if-nez v2, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result v1

    if-nez v1, :cond_14

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/a;->isSupportBeautyBody()Z

    move-result v1

    if-eqz v1, :cond_1b

    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c

    :cond_14
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/a;->isSupportBeautyBody()Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/a;->Ej()Z

    move-result v1

    if-nez v1, :cond_15

    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_15
    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/a;->Ah()Z

    move-result v1

    if-nez v1, :cond_17

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/a;->isSupportShortVideoBeautyBody()Z

    move-result v1

    if-eqz v1, :cond_17

    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateMiLiveItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_17
    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_18
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/a;->Ah()Z

    move-result v1

    if-nez v1, :cond_19

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/a;->isSupportShortVideoBeautyBody()Z

    move-result v1

    if-eqz v1, :cond_19

    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateMiLiveItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_19
    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1a
    iput v7, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    :cond_1b
    :goto_c
    iput-object v8, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    invoke-direct {v2, v15, v14, v13, v8}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/a;->Jj()Z

    move-result v1

    if-eqz v1, :cond_33

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateKaleidoscopeItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :cond_1c
    :pswitch_4
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBeauty()Z

    move-result v1

    if-eqz v1, :cond_20

    const-string v1, "2"

    iput-object v1, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentTipType:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result v1

    if-nez v1, :cond_1e

    iput v6, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne v2, v4, :cond_1d

    move v5, v4

    goto :goto_d

    :cond_1d
    move v5, v3

    :goto_d
    invoke-direct {v0, v5}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1e
    iput v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne v2, v4, :cond_1f

    move v5, v4

    goto :goto_e

    :cond_1f
    move v5, v3

    :goto_e
    invoke-direct {v0, v5}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_20
    :goto_f
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilter()Z

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isSupportVideoFilter: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_22

    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    if-nez v2, :cond_21

    iput-object v8, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    iput-object v8, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentTipType:Ljava/lang/String;

    :cond_21
    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_22
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoBokehAdjust()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isSupportVideoBokehLevel:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_23

    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoBokehLevel:Z

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateVideoBokeh()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilterColorRetentionFront()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionFront:Z

    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilterColorRetentionBack()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionBack:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionFront:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionBack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_33

    iput v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    goto/16 :goto_16

    :cond_24
    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilter()Z

    move-result v1

    if-eqz v1, :cond_33

    iput v7, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportVideoFilterColorRetentionBack()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionBack:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionFront:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionBack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/android/camera/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    :cond_25
    iput v9, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result v1

    if-nez v1, :cond_27

    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne v2, v4, :cond_26

    goto :goto_10

    :cond_26
    move v4, v3

    :goto_10
    invoke-direct {v0, v4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    :cond_27
    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne v2, v4, :cond_28

    goto :goto_11

    :cond_28
    move v4, v3

    :goto_11
    invoke-direct {v0, v4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_12
    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :cond_29
    :pswitch_5
    iput v7, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :cond_2a
    :pswitch_6
    invoke-static {}, Lcom/android/camera/CameraSettings;->isUltraPixelRearOn()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result v1

    if-nez v1, :cond_2c

    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    if-ne v2, v4, :cond_2b

    move v5, v4

    goto :goto_13

    :cond_2b
    move v5, v3

    :goto_13
    invoke-direct {v0, v5}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateBeautyLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_2c
    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    :goto_14
    if-nez v2, :cond_2e

    iput v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    iput-object v8, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/a;->isSupportBeautyBody()Z

    move-result v1

    if-eqz v1, :cond_2d

    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFigureItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2d
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2e
    iput v9, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/a;->Ah()Z

    move-result v1

    if-nez v1, :cond_2f

    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateModelItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemFeature()Lcom/mi/config/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mi/config/a;->hk()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-virtual/range {p3 .. p3}, Lcom/android/camera2/CameraCapabilities;->isSupportBeautyMakeup()Z

    move-result v1

    if-eqz v1, :cond_32

    iput-boolean v4, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    goto :goto_15

    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isSmoothDependBeautyVersion()Z

    move-result v1

    if-eqz v1, :cond_32

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct {v0, v4}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateSmoothLevelItem(Z)Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_30
    if-nez v2, :cond_31

    iput v7, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    goto :goto_15

    :cond_31
    iput v9, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    :cond_32
    :goto_15
    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-direct/range {p0 .. p0}, Lcom/android/camera/data/data/runing/ComponentRunningShine;->generateFilterItem()Lcom/android/camera/data/data/ComponentDataItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_33
    :goto_16
    iget-object v1, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    if-nez v1, :cond_34

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, v0, Lcom/android/camera/data/data/ComponentData;->mItems:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    iget-object v1, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    :cond_34
    iget-object v1, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mDefaultType:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_2
        :pswitch_4
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xae
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setClosed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsClosed:Z

    return-void
.end method

.method public setCurrentTipType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentTipType:Ljava/lang/String;

    return-void
.end method

.method public setCurrentType(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/android/camera/data/data/runing/ComponentRunningShine$ShineType;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mCurrentType:Ljava/lang/String;

    return-void
.end method

.method public setVideoShineForceOn(IZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz v0, :cond_0

    const-string v0, "front"

    goto :goto_0

    :cond_0
    const-string v0, "back"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mIsVideoBeautySwitchedOnMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public supportBeautyBody()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyBody:Z

    return p0
.end method

.method public supportBeautyLevel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyLevel:Z

    return p0
.end method

.method public supportBeautyMakeUp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMakeUp:Z

    return p0
.end method

.method public supportBeautyMiLive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyMiLive:Z

    return p0
.end method

.method public supportBeautyModel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportBeautyModel:Z

    return p0
.end method

.method public supportColorRentention()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->isFrontCamera:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionFront:Z

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalColorRententionBack:Z

    return p0
.end method

.method public supportPopUpEntry()Z
    .locals 1

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public supportSmoothLevel()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportSmoothLevel:Z

    return p0
.end method

.method public supportTopConfigEntry()Z
    .locals 2

    iget p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mShineEntry:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public supportVideoFilter()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/camera/data/data/runing/ComponentRunningShine;->mSupportHalVideoFilter:Z

    return p0
.end method
