.class public Lmiui/maml/elements/TextScreenElement;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "TextScreenElement.java"


# static fields
.field private static final CRLF:Ljava/lang/String; = "\n"

.field private static final DEFAULT_SIZE:I = 0x12

.field private static final LOG_TAG:Ljava/lang/String; = "TextScreenElement"

.field private static final MARQUEE_FRAMERATE:I = 0x2d

.field private static final PADDING:I = 0x32

.field private static final PROPERTY_NAME_TEXT_COLOR:Ljava/lang/String; = "textColor"

.field private static final PROPERTY_NAME_TEXT_SHADOW_COLOR:Ljava/lang/String; = "textShadowColor"

.field private static final PROPERTY_NAME_TEXT_SIZE:Ljava/lang/String; = "textSize"

.field private static final RAW_CRLF:Ljava/lang/String; = "\\n"

.field public static final TAG_NAME:Ljava/lang/String; = "Text"

.field public static final TEXT_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final TEXT_HEIGHT:Ljava/lang/String; = "text_height"

.field public static final TEXT_SHADOW_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final TEXT_SIZE:Lmiui/maml/folme/AnimatedProperty;

.field public static final TEXT_WIDTH:Ljava/lang/String; = "text_width"

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mColorParser:Lmiui/maml/util/ColorParser;

.field private mFontScaleEnabled:Z

.field protected mFormatter:Lmiui/maml/util/TextFormatter;

.field private mLayoutWidth:F

.field private mMarqueeGap:I

.field private mMarqueePos:F

.field private mMarqueeSpeed:I

.field private mMultiLine:Z

.field private mPaint:Landroid/text/TextPaint;

.field private mPreviousTime:J

.field private mSetText:Ljava/lang/String;

.field private mShadowColorParser:Lmiui/maml/util/ColorParser;

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mShouldMarquee:Z

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mText:Ljava/lang/String;

.field private mTextColorProperty:Lmiui/maml/folme/PropertyWrapper;

.field private mTextHeight:F

.field private mTextHeightVar:Lmiui/maml/data/IndexedVariable;

.field private mTextLayout:Landroid/text/StaticLayout;

.field private mTextShadowColorProperty:Lmiui/maml/folme/PropertyWrapper;

.field private mTextSize:F

.field private mTextSizeProperty:Lmiui/maml/folme/PropertyWrapper;

.field private mTextWidth:F

.field private mTextWidthVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lmiui/maml/elements/TextScreenElement;->mLock:Ljava/lang/Object;

    new-instance v0, Lmiui/maml/elements/TextScreenElement$1;

    const-string/jumbo v1, "textColor"

    invoke-direct {v0, v1}, Lmiui/maml/elements/TextScreenElement$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/elements/TextScreenElement;->TEXT_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    new-instance v0, Lmiui/maml/elements/TextScreenElement$2;

    const-string/jumbo v2, "textSize"

    invoke-direct {v0, v2}, Lmiui/maml/elements/TextScreenElement$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/elements/TextScreenElement;->TEXT_SIZE:Lmiui/maml/folme/AnimatedProperty;

    new-instance v0, Lmiui/maml/elements/TextScreenElement$3;

    const-string/jumbo v3, "textShadowColor"

    invoke-direct {v0, v3}, Lmiui/maml/elements/TextScreenElement$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Lmiui/maml/elements/TextScreenElement;->TEXT_SHADOW_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Landroid/util/ArrayMap;

    sget-object v4, Lmiui/maml/elements/TextScreenElement;->TEXT_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Landroid/util/ArrayMap;

    const/16 v1, 0x3eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v4, Lmiui/maml/elements/TextScreenElement;->TEXT_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Landroid/util/ArrayMap;

    sget-object v4, Lmiui/maml/elements/TextScreenElement;->TEXT_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/elements/TextScreenElement;->TEXT_SIZE:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Landroid/util/ArrayMap;

    const/16 v1, 0x3ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lmiui/maml/elements/TextScreenElement;->TEXT_SIZE:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Landroid/util/ArrayMap;

    sget-object v2, Lmiui/maml/elements/TextScreenElement;->TEXT_SIZE:Lmiui/maml/folme/AnimatedProperty;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedProperty;->sPropertyNameMap:Landroid/util/ArrayMap;

    sget-object v1, Lmiui/maml/elements/TextScreenElement;->TEXT_SHADOW_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyMap:Landroid/util/ArrayMap;

    const/16 v1, 0x3f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lmiui/maml/elements/TextScreenElement;->TEXT_SHADOW_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lmiui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Landroid/util/ArrayMap;

    sget-object v2, Lmiui/maml/elements/TextScreenElement;->TEXT_SHADOW_COLOR:Lmiui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    invoke-virtual {v0, v2, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    const-wide/high16 v0, 0x4032000000000000L    # 18.0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/TextScreenElement;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    invoke-direct {p0, p1}, Lmiui/maml/elements/TextScreenElement;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/TextScreenElement;)Lmiui/maml/folme/PropertyWrapper;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextColorProperty:Lmiui/maml/folme/PropertyWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/maml/elements/TextScreenElement;)Lmiui/maml/folme/PropertyWrapper;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextSizeProperty:Lmiui/maml/folme/PropertyWrapper;

    return-object v0
.end method

.method static synthetic access$200(Lmiui/maml/elements/TextScreenElement;)Lmiui/maml/folme/PropertyWrapper;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextShadowColorProperty:Lmiui/maml/folme/PropertyWrapper;

    return-object v0
.end method

.method private getAlignment()Landroid/text/Layout$Alignment;
    .locals 3

    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    sget-object v1, Lmiui/maml/elements/TextScreenElement$4;->$SwitchMap$miui$maml$elements$ScreenElement$Align:[I

    iget-object v2, p0, Lmiui/maml/elements/TextScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement$Align;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    nop

    :goto_0
    return-object v0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    if-nez v2, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    iget-boolean v0, v1, Lmiui/maml/elements/TextScreenElement;->mHasName:Z

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v1, Lmiui/maml/elements/TextScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "text_width"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v3, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, v1, Lmiui/maml/elements/TextScreenElement;->mTextWidthVar:Lmiui/maml/data/IndexedVariable;

    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v1, Lmiui/maml/elements/TextScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "text_height"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5, v3, v4}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, v1, Lmiui/maml/elements/TextScreenElement;->mTextHeightVar:Lmiui/maml/data/IndexedVariable;

    :cond_1
    iget-object v0, v1, Lmiui/maml/elements/TextScreenElement;->mStyle:Lmiui/maml/StylesManager$Style;

    invoke-static {v3, v2, v0}, Lmiui/maml/util/TextFormatter;->fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Lmiui/maml/StylesManager$Style;)Lmiui/maml/util/TextFormatter;

    move-result-object v0

    iput-object v0, v1, Lmiui/maml/elements/TextScreenElement;->mFormatter:Lmiui/maml/util/TextFormatter;

    iget-object v0, v1, Lmiui/maml/elements/TextScreenElement;->mStyle:Lmiui/maml/StylesManager$Style;

    invoke-static {v3, v2, v0}, Lmiui/maml/util/ColorParser;->fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Lmiui/maml/StylesManager$Style;)Lmiui/maml/util/ColorParser;

    move-result-object v0

    iput-object v0, v1, Lmiui/maml/elements/TextScreenElement;->mColorParser:Lmiui/maml/util/ColorParser;

    const/4 v0, 0x0

    const-string/jumbo v5, "marqueeSpeed"

    invoke-virtual {v1, v2, v5, v0}, Lmiui/maml/elements/TextScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lmiui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    const/high16 v0, 0x3f800000    # 1.0f

    const-string/jumbo v5, "spacingMult"

    invoke-virtual {v1, v2, v5, v0}, Lmiui/maml/elements/TextScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lmiui/maml/elements/TextScreenElement;->mSpacingMult:F

    const/4 v5, 0x0

    const-string/jumbo v0, "spacingAdd"

    invoke-virtual {v1, v2, v0, v5}, Lmiui/maml/elements/TextScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lmiui/maml/elements/TextScreenElement;->mSpacingAdd:F

    const/4 v0, 0x2

    const-string/jumbo v6, "marqueeGap"

    invoke-virtual {v1, v2, v6, v0}, Lmiui/maml/elements/TextScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, v1, Lmiui/maml/elements/TextScreenElement;->mMarqueeGap:I

    const-string/jumbo v0, "multiLine"

    invoke-virtual {v1, v2, v0}, Lmiui/maml/elements/TextScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lmiui/maml/elements/TextScreenElement;->mMultiLine:Z

    const-string v0, "enableFontScale"

    invoke-virtual {v1, v2, v0}, Lmiui/maml/elements/TextScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lmiui/maml/elements/TextScreenElement;->mFontScaleEnabled:Z

    const-string/jumbo v0, "size"

    invoke-virtual {v1, v2, v0}, Lmiui/maml/elements/TextScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v13

    const-string v0, "fontFamily"

    invoke-virtual {v1, v2, v0}, Lmiui/maml/elements/TextScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v0, "fontPath"

    invoke-virtual {v1, v2, v0}, Lmiui/maml/elements/TextScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "fontStyle"

    invoke-virtual {v1, v2, v0}, Lmiui/maml/elements/TextScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmiui/maml/elements/TextScreenElement;->parseFontStyle(Ljava/lang/String;)I

    move-result v0

    iget-object v6, v1, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-static {v14, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_1

    :cond_2
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-static {v0, v15}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "create typeface from asset fail :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TextScreenElement"

    invoke-static {v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v6, :cond_3

    iget-object v0, v1, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_3
    goto :goto_1

    :cond_4
    const-string v0, "bold"

    invoke-virtual {v1, v2, v0}, Lmiui/maml/elements/TextScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iget-object v6, v1, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    new-instance v6, Landroid/view/ContextThemeWrapper;

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v7

    iget-object v7, v7, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    sget v8, Lmiui/R$style;->Theme_Light:I

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v7, v1, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v7}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v8

    invoke-static {v6, v8}, Lmiui/util/TypefaceUtils;->replaceTypeface(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_1
    iget-object v0, v1, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getColor()I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, v1, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    const-wide/high16 v6, 0x4032000000000000L    # 18.0

    invoke-virtual {v1, v6, v7}, Lmiui/maml/elements/TextScreenElement;->scale(D)F

    move-result v6

    invoke-virtual {v0, v6}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, v1, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    const-string/jumbo v0, "shadowRadius"

    invoke-virtual {v1, v2, v0, v5}, Lmiui/maml/elements/TextScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    const-string/jumbo v0, "shadowDx"

    invoke-virtual {v1, v2, v0, v5}, Lmiui/maml/elements/TextScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lmiui/maml/elements/TextScreenElement;->mShadowDx:F

    const-string/jumbo v0, "shadowDy"

    invoke-virtual {v1, v2, v0, v5}, Lmiui/maml/elements/TextScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, v1, Lmiui/maml/elements/TextScreenElement;->mShadowDy:F

    iget-object v0, v1, Lmiui/maml/elements/TextScreenElement;->mStyle:Lmiui/maml/StylesManager$Style;

    const-string/jumbo v4, "shadowColor"

    invoke-static {v3, v2, v4, v0}, Lmiui/maml/util/ColorParser;->fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Lmiui/maml/util/ColorParser;

    move-result-object v0

    iput-object v0, v1, Lmiui/maml/elements/TextScreenElement;->mShadowColorParser:Lmiui/maml/util/ColorParser;

    iget-object v0, v1, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget v4, v1, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    iget v5, v1, Lmiui/maml/elements/TextScreenElement;->mShadowDx:F

    iget v6, v1, Lmiui/maml/elements/TextScreenElement;->mShadowDy:F

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getShadowColor()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    new-instance v0, Lmiui/maml/folme/PropertyWrapper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lmiui/maml/elements/TextScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".textColor"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->isInFolmeMode()Z

    move-result v10

    const-wide/high16 v11, 0x4032000000000000L    # 18.0

    move-object v6, v0

    move-object v9, v13

    invoke-direct/range {v6 .. v12}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v0, v1, Lmiui/maml/elements/TextScreenElement;->mTextSizeProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v0, Lmiui/maml/folme/PropertyWrapper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lmiui/maml/elements/TextScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".textSize"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->isInFolmeMode()Z

    move-result v20

    iget-object v4, v1, Lmiui/maml/elements/TextScreenElement;->mColorParser:Lmiui/maml/util/ColorParser;

    invoke-virtual {v4}, Lmiui/maml/util/ColorParser;->getColor()I

    move-result v4

    int-to-double v4, v4

    move-object/from16 v16, v0

    move-wide/from16 v21, v4

    invoke-direct/range {v16 .. v22}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v0, v1, Lmiui/maml/elements/TextScreenElement;->mTextColorProperty:Lmiui/maml/folme/PropertyWrapper;

    new-instance v0, Lmiui/maml/folme/PropertyWrapper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Lmiui/maml/elements/TextScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".textShadowColor"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->isInFolmeMode()Z

    move-result v10

    iget-object v4, v1, Lmiui/maml/elements/TextScreenElement;->mShadowColorParser:Lmiui/maml/util/ColorParser;

    invoke-virtual {v4}, Lmiui/maml/util/ColorParser;->getColor()I

    move-result v4

    int-to-double v11, v4

    move-object v6, v0

    invoke-direct/range {v6 .. v12}, Lmiui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Lmiui/maml/data/Expression;ZD)V

    iput-object v0, v1, Lmiui/maml/elements/TextScreenElement;->mTextShadowColorProperty:Lmiui/maml/folme/PropertyWrapper;

    return-void
.end method

.method private static parseFontStyle(Ljava/lang/String;)I
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const-string/jumbo v0, "normal"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "bold"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v0, "italic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    return v0

    :cond_2
    const-string v0, "bold_italic"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    return v0

    :cond_3
    return v1

    :cond_4
    :goto_0
    return v1
.end method

.method private updateTextSize()V
    .locals 2

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextSizeProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/TextScreenElement;->scale(D)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    iget-boolean v0, p0, Lmiui/maml/elements/TextScreenElement;->mFontScaleEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getFontScale()F

    move-result v1

    mul-float/2addr v0, v1

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget v1, p0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method private updateTextWidth()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lmiui/maml/elements/TextScreenElement;->mMultiLine:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    iget v3, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v3, v2, v3

    if-lez v3, :cond_0

    iput v2, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lmiui/maml/elements/TextScreenElement;->mHasName:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidthVar:Lmiui/maml/data/IndexedVariable;

    iget v1, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    float-to-double v1, v1

    invoke-virtual {p0, v1, v2}, Lmiui/maml/elements/TextScreenElement;->descale(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_4
    return-void
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    iget-object v1, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v1, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getAlpha()I

    move-result v3

    invoke-static {v2, v3}, Lmiui/maml/util/Utils;->mixAlpha(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setAlpha(I)V

    iget-object v1, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget v2, v0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDx:F

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDy:F

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getShadowColor()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getWidth()F

    move-result v1

    const/4 v9, 0x0

    cmpl-float v2, v1, v9

    const/4 v3, 0x1

    if-ltz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    move v10, v2

    cmpg-float v2, v1, v9

    if-ltz v2, :cond_3

    iget v2, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    move v11, v1

    goto :goto_2

    :cond_3
    :goto_1
    iget v1, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    move v11, v1

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getHeight()F

    move-result v1

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v12

    cmpg-float v2, v1, v9

    if-gez v2, :cond_4

    iget v1, v0, Lmiui/maml/elements/TextScreenElement;->mTextHeight:F

    move v13, v1

    goto :goto_3

    :cond_4
    move v13, v1

    :goto_3
    invoke-virtual {v0, v9, v11}, Lmiui/maml/elements/TextScreenElement;->getLeft(FF)F

    move-result v14

    invoke-virtual {v0, v9, v13}, Lmiui/maml/elements/TextScreenElement;->getTop(FF)F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    cmpl-float v16, v7, v9

    if-eqz v16, :cond_5

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDx:F

    sub-float/2addr v4, v7

    invoke-static {v9, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDx:F

    iget v7, v0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    add-float/2addr v4, v7

    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDy:F

    iget v7, v0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    sub-float/2addr v4, v7

    invoke-static {v9, v4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    iget v4, v0, Lmiui/maml/elements/TextScreenElement;->mShadowDy:F

    iget v7, v0, Lmiui/maml/elements/TextScreenElement;->mShadowRadius:F

    add-float/2addr v4, v7

    invoke-static {v9, v4}, Ljava/lang/Math;->max(FF)F

    move-result v6

    move/from16 v17, v1

    move/from16 v18, v2

    move v7, v5

    move/from16 v19, v6

    goto :goto_4

    :cond_5
    move/from16 v17, v1

    move/from16 v18, v2

    move v7, v5

    move/from16 v19, v6

    :goto_4
    invoke-virtual {v8, v14, v15}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v10, :cond_6

    move v1, v9

    goto :goto_5

    :cond_6
    move/from16 v1, v17

    :goto_5
    if-eqz v10, :cond_7

    move v2, v9

    goto :goto_6

    :cond_7
    move/from16 v2, v18

    :goto_6
    add-float/2addr v2, v11

    add-float v4, v13, v19

    invoke-virtual {v8, v1, v7, v2, v4}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    iget-object v1, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v6

    if-ne v6, v3, :cond_a

    iget-boolean v1, v0, Lmiui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    if-eqz v1, :cond_a

    iget-object v1, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v16

    iget-object v1, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result v20

    iget-object v1, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v5

    iget-object v1, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v2}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v21

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    iget v1, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    add-float v22, v21, v1

    int-to-float v1, v5

    add-float v23, v12, v1

    iget-object v4, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    move/from16 v3, v16

    move-object/from16 v24, v4

    move/from16 v4, v20

    move/from16 v25, v5

    move/from16 v5, v22

    move/from16 v22, v6

    move/from16 v6, v23

    move/from16 v23, v7

    move-object/from16 v7, v24

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    iget v1, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    cmpl-float v2, v1, v9

    if-eqz v2, :cond_9

    iget v2, v0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    add-float/2addr v1, v2

    iget v2, v0, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    iget v3, v0, Lmiui/maml/elements/TextScreenElement;->mMarqueeGap:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpg-float v2, v1, v11

    if-gez v2, :cond_8

    iget-object v2, v0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    add-float v3, v21, v1

    move/from16 v4, v25

    int-to-float v5, v4

    add-float/2addr v5, v12

    iget-object v6, v0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v8, v2, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_7

    :cond_8
    move/from16 v4, v25

    goto :goto_7

    :cond_9
    move/from16 v4, v25

    :goto_7
    goto :goto_8

    :cond_a
    move/from16 v22, v6

    move/from16 v23, v7

    iget-object v1, v0, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v1, v8}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_8

    :cond_b
    move/from16 v23, v7

    :goto_8
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected doTick(J)V
    .locals 22

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    sget-object v4, Lmiui/maml/elements/TextScreenElement;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-super/range {p0 .. p2}, Lmiui/maml/elements/AnimatedScreenElement;->doTick(J)V

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v4

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, v1, Lmiui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    iget-object v5, v1, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getText()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    iget-object v6, v1, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v0, 0x0

    iput-object v0, v1, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->updateTextWidth()V

    monitor-exit v4

    return-void

    :cond_1
    iget v6, v1, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->updateTextSize()V

    iget-object v7, v1, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v7, v1, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_2

    goto :goto_0

    :cond_2
    move v7, v0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v7, 0x1

    :goto_1
    if-eqz v7, :cond_4

    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->updateTextWidth()V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getWidth()F

    move-result v9

    iget-boolean v10, v1, Lmiui/maml/elements/TextScreenElement;->mMultiLine:Z

    if-nez v10, :cond_5

    iget v10, v1, Lmiui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    if-lez v10, :cond_5

    iget v10, v1, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v10, v10, v9

    if-lez v10, :cond_5

    const/4 v0, 0x1

    :cond_5
    iget-boolean v10, v1, Lmiui/maml/elements/TextScreenElement;->mMultiLine:Z

    if-eqz v10, :cond_7

    iget v10, v1, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    cmpl-float v10, v9, v10

    if-lez v10, :cond_6

    goto :goto_2

    :cond_6
    move v10, v9

    goto :goto_3

    :cond_7
    :goto_2
    iget v10, v1, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    :goto_3
    iget-object v11, v1, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    const v12, 0x7f7fffff    # Float.MAX_VALUE

    if-eqz v11, :cond_9

    if-nez v7, :cond_9

    iget v11, v1, Lmiui/maml/elements/TextScreenElement;->mLayoutWidth:F

    cmpl-float v11, v11, v10

    if-eqz v11, :cond_8

    goto :goto_4

    :cond_8
    move/from16 v21, v9

    goto :goto_5

    :cond_9
    :goto_4
    iput v10, v1, Lmiui/maml/elements/TextScreenElement;->mLayoutWidth:F

    new-instance v11, Landroid/text/StaticLayout;

    iget-object v14, v1, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    iget-object v15, v1, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    iget v13, v1, Lmiui/maml/elements/TextScreenElement;->mLayoutWidth:F

    move/from16 v21, v9

    float-to-double v8, v13

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v8, v8

    invoke-direct/range {p0 .. p0}, Lmiui/maml/elements/TextScreenElement;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v17

    iget v9, v1, Lmiui/maml/elements/TextScreenElement;->mSpacingMult:F

    iget v13, v1, Lmiui/maml/elements/TextScreenElement;->mSpacingAdd:F

    const/16 v20, 0x0

    move/from16 v19, v13

    move-object v13, v11

    move/from16 v16, v8

    move/from16 v18, v9

    invoke-direct/range {v13 .. v20}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v11, v1, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    iget-object v8, v1, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    iget-object v9, v1, Lmiui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    invoke-virtual {v9}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v8

    int-to-float v8, v8

    iput v8, v1, Lmiui/maml/elements/TextScreenElement;->mTextHeight:F

    iget-boolean v8, v1, Lmiui/maml/elements/TextScreenElement;->mHasName:Z

    if-eqz v8, :cond_a

    iget-object v8, v1, Lmiui/maml/elements/TextScreenElement;->mTextHeightVar:Lmiui/maml/data/IndexedVariable;

    iget v9, v1, Lmiui/maml/elements/TextScreenElement;->mTextHeight:F

    float-to-double v13, v9

    invoke-virtual {v1, v13, v14}, Lmiui/maml/elements/TextScreenElement;->descale(D)D

    move-result-wide v13

    invoke-virtual {v8, v13, v14}, Lmiui/maml/data/IndexedVariable;->set(D)V

    :cond_a
    iput v12, v1, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    :goto_5
    if-eqz v0, :cond_d

    iget v8, v1, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    cmpl-float v8, v8, v12

    if-nez v8, :cond_b

    const/high16 v8, 0x42480000    # 50.0f

    iput v8, v1, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    goto :goto_6

    :cond_b
    iget v8, v1, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    iget v9, v1, Lmiui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    int-to-long v11, v9

    iget-wide v13, v1, Lmiui/maml/elements/TextScreenElement;->mPreviousTime:J

    sub-long v13, v2, v13

    mul-long/2addr v11, v13

    long-to-float v9, v11

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v9, v11

    sub-float/2addr v8, v9

    iput v8, v1, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    iget v8, v1, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    iget v9, v1, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    neg-float v9, v9

    cmpg-float v8, v8, v9

    if-gez v8, :cond_c

    iget v8, v1, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    iget v9, v1, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    iget v11, v1, Lmiui/maml/elements/TextScreenElement;->mTextSize:F

    iget v12, v1, Lmiui/maml/elements/TextScreenElement;->mMarqueeGap:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    add-float/2addr v9, v11

    add-float/2addr v8, v9

    iput v8, v1, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    :cond_c
    :goto_6
    iput-wide v2, v1, Lmiui/maml/elements/TextScreenElement;->mPreviousTime:J

    const/4 v8, 0x1

    iput-boolean v8, v1, Lmiui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    :cond_d
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v0, v1, Lmiui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    if-eqz v0, :cond_e

    const/high16 v0, 0x42340000    # 45.0f

    goto :goto_7

    :cond_e
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1, v0}, Lmiui/maml/elements/TextScreenElement;->requestFramerate(F)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public finish()V
    .locals 1

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->finish()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    iput-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lmiui/maml/elements/TextScreenElement;->mMarqueePos:F

    return-void
.end method

.method protected getColor()I
    .locals 2

    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->isInFolmeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextColorProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-long v0, v0

    long-to-int v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mColorParser:Lmiui/maml/util/ColorParser;

    invoke-virtual {v0}, Lmiui/maml/util/ColorParser;->getColor()I

    move-result v0

    return v0
.end method

.method protected getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v0}, Lmiui/maml/util/TextFormatter;->getFormat()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()F
    .locals 2

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    iget v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextHeight:F

    :cond_0
    return v0
.end method

.method protected getShadowColor()I
    .locals 2

    invoke-virtual {p0}, Lmiui/maml/elements/TextScreenElement;->isInFolmeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextShadowColorProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->getValue()D

    move-result-wide v0

    double-to-long v0, v0

    long-to-int v0, v0

    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mShadowColorParser:Lmiui/maml/util/ColorParser;

    invoke-virtual {v0}, Lmiui/maml/util/ColorParser;->getColor()I

    move-result v0

    return v0
.end method

.method protected getText()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v0}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "\n"

    const-string v2, "\\n"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v2, p0, Lmiui/maml/elements/TextScreenElement;->mMultiLine:Z

    if-nez v2, :cond_1

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getWidth()F
    .locals 2

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    iget v1, p0, Lmiui/maml/elements/TextScreenElement;->mTextWidth:F

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method public init()V
    .locals 0

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    return-void
.end method

.method protected initProperties()V
    .locals 1

    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->initProperties()V

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextSizeProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextColorProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mTextShadowColorProperty:Lmiui/maml/folme/PropertyWrapper;

    invoke-virtual {v0}, Lmiui/maml/folme/PropertyWrapper;->init()V

    return-void
.end method

.method protected onVisibilityChange(Z)V
    .locals 1

    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    iget-boolean v0, p0, Lmiui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/high16 v0, 0x42340000    # 45.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lmiui/maml/elements/TextScreenElement;->requestFramerate(F)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_0
    return-void
.end method

.method public varargs setParams([Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lmiui/maml/elements/TextScreenElement;->mFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v0, p1}, Lmiui/maml/util/TextFormatter;->setParams([Ljava/lang/Object;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    return-void
.end method
