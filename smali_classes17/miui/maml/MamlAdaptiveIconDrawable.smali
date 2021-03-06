.class public Lmiui/maml/MamlAdaptiveIconDrawable;
.super Landroid/graphics/drawable/AdaptiveIconDrawable;
.source "MamlAdaptiveIconDrawable.java"


# static fields
.field private static final QUIET_IMAGE_NAME:Ljava/lang/String; = "quietImage.png"

.field private static final TAG:Ljava/lang/String; = "MamlAdaptiveIconDrawable"


# instance fields
.field private volatile mLayerFancyDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiui/maml/FancyDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mLayerQuietDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mLockFancy:Ljava/lang/Object;

.field private mQuietDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mLockFancy:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/Context;Lmiui/maml/ResourceManager;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/graphics/drawable/AdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mLockFancy:Ljava/lang/Object;

    invoke-direct {p0, p3, p4}, Lmiui/maml/MamlAdaptiveIconDrawable;->init(Landroid/content/Context;Lmiui/maml/ResourceManager;)V

    return-void
.end method

.method private addFancyDrawable(Lmiui/maml/AnimatingDrawable;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lmiui/maml/AnimatingDrawable;->prepareFancyDrawable()V

    invoke-virtual {p1}, Lmiui/maml/AnimatingDrawable;->getFancyDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lmiui/maml/FancyDrawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;Lmiui/maml/ResourceManager;)V
    .locals 7

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "den"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v4, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p2, v3, v4}, Lmiui/maml/ResourceManager;->setExtraResource(Ljava/lang/String;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string/jumbo v4, "quietImage.png"

    invoke-virtual {p2, v3, v4}, Lmiui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    iget-object v5, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v6, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_0
    return-void
.end method

.method private prepareLayerFancyDrawables()V
    .locals 6

    iget-object v0, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lmiui/maml/MamlAdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v1, v0, Lmiui/maml/AnimatingDrawable;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lmiui/maml/AnimatingDrawable;

    invoke-direct {p0, v1}, Lmiui/maml/MamlAdaptiveIconDrawable;->addFancyDrawable(Lmiui/maml/AnimatingDrawable;)V

    :cond_1
    invoke-virtual {p0}, Lmiui/maml/MamlAdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    move-object v4, v1

    check-cast v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v5, v4, Lmiui/maml/AnimatingDrawable;

    if-eqz v5, :cond_2

    move-object v5, v4

    check-cast v5, Lmiui/maml/AnimatingDrawable;

    invoke-direct {p0, v5}, Lmiui/maml/MamlAdaptiveIconDrawable;->addFancyDrawable(Lmiui/maml/AnimatingDrawable;)V

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private prepareLayerQuietDrawables()V
    .locals 7

    iget-object v0, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lmiui/maml/MamlAdaptiveIconDrawable;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/maml/AnimatingDrawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    move-object v2, v0

    check-cast v2, Lmiui/maml/AnimatingDrawable;

    invoke-virtual {v2}, Lmiui/maml/AnimatingDrawable;->getQuietDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Lmiui/maml/MamlAdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    instance-of v2, v1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    move-object v4, v1

    check-cast v4, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v4, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_2

    instance-of v5, v4, Lmiui/maml/AnimatingDrawable;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    move-object v6, v4

    check-cast v6, Lmiui/maml/AnimatingDrawable;

    invoke-virtual {v6}, Lmiui/maml/AnimatingDrawable;->getQuietDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public getLayerFancyDrawables()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lmiui/maml/FancyDrawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mLockFancy:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lmiui/maml/MamlAdaptiveIconDrawable;->prepareLayerFancyDrawables()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mLayerFancyDrawables:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLayerQuietDrawables()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lmiui/maml/MamlAdaptiveIconDrawable;->prepareLayerQuietDrawables()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    iget-object v0, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mLayerQuietDrawables:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTopQuietDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lmiui/maml/MamlAdaptiveIconDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
