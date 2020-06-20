.class public Lcom/miui/internal/view/menu/ListMenuItemView;
.super Landroid/widget/LinearLayout;
.source "ListMenuItemView.java"

# interfaces
.implements Lcom/miui/internal/view/menu/MenuView$ItemView;


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mForceShowIcon:Z

.field private mIconView:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mItemData:Lcom/miui/internal/view/menu/MenuItemImpl;

.field private mPreserveIconSpacing:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private mRelativeLayout:Landroid/view/View;

.field private mShortcutView:Landroid/widget/TextView;

.field private mTextAppearance:I

.field private mTextAppearanceContext:Landroid/content/Context;

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/view/menu/ListMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    sget-object v0, Lmiui/R$styleable;->MenuView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lmiui/R$styleable;->MenuView_android_itemBackground:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    sget p3, Lmiui/R$styleable;->MenuView_android_itemTextAppearance:I

    const/4 v0, -0x1

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    sget p3, Lcom/miui/internal/R$styleable;->MenuView_preserveIconSpacing:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    iput-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private getInflater()Landroid/view/LayoutInflater;
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    :cond_0
    iget-object p0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method private insertCheckBox()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$layout;->list_menu_item_checkbox:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private insertIconView()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$layout;->list_menu_item_icon:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    return-void
.end method

.method private insertRadioButton()V
    .locals 3

    invoke-direct {p0}, Lcom/miui/internal/view/menu/ListMenuItemView;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/miui/internal/R$layout;->list_menu_item_radio:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getItemData()Lcom/miui/internal/view/menu/MenuItemImpl;
    .locals 0

    iget-object p0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mItemData:Lcom/miui/internal/view/menu/MenuItemImpl;

    return-object p0
.end method

.method public initialize(Lcom/miui/internal/view/menu/MenuItemImpl;I)V
    .locals 1

    iput-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mItemData:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p1, p0}, Lcom/miui/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/miui/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/internal/view/menu/ListMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isCheckable()Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/miui/internal/view/menu/ListMenuItemView;->setCheckable(Z)V

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result p2

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getShortcut()C

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/miui/internal/view/menu/ListMenuItemView;->setShortcut(ZC)V

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/internal/view/menu/ListMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    sget v0, Lcom/miui/internal/R$id;->title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    iget v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mTextAppearance:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mTextAppearanceContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    sget v0, Lcom/miui/internal/R$id;->shortcut:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mRelativeLayout:Landroid/view/View;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v2, :cond_0

    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-gtz v2, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setCheckable(Z)V
    .locals 5

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mItemData:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/miui/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/miui/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    :cond_3
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    :goto_0
    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz p1, :cond_5

    iget-object v4, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mItemData:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Lcom/miui/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setVisibility(I)V

    :cond_4
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_7

    invoke-virtual {v1, v3}, Landroid/widget/CompoundButton;->setVisibility(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_6

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mRelativeLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mItemData:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result p1

    if-nez p1, :cond_9

    :cond_8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x10103a3

    invoke-static {p1, v1}, Lmiui/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v2

    :cond_9
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mRelativeLayout:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mItemData:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mItemData:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->isExclusiveCheckable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/internal/view/menu/ListMenuItemView;->insertRadioButton()V

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mRadioButton:Landroid/widget/RadioButton;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/miui/internal/view/menu/ListMenuItemView;->insertCheckBox()V

    :cond_2
    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mCheckBox:Landroid/widget/CheckBox;

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    iput-boolean p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mItemData:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->shouldShowIcon()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_3

    if-nez p1, :cond_3

    iget-boolean v2, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-nez v2, :cond_4

    invoke-direct {p0}, Lcom/miui/internal/view/menu/ListMenuItemView;->insertIconView()V

    :cond_4
    if-nez p1, :cond_6

    iget-boolean v2, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mPreserveIconSpacing:Z

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    :cond_6
    :goto_2
    iget-object v2, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    :goto_4
    return-void
.end method

.method public setItemInvoker(Lcom/miui/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public setShortcut(ZC)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mItemData:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {p1}, Lcom/miui/internal/view/menu/MenuItemImpl;->shouldShowShortcut()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    if-nez p1, :cond_1

    iget-object p2, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mItemData:Lcom/miui/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/miui/internal/view/menu/MenuItemImpl;->getShortcutLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object p2, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getVisibility()I

    move-result p2

    if-eq p2, p1, :cond_2

    iget-object p0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mShortcutView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showsIcon()Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/internal/view/menu/ListMenuItemView;->mForceShowIcon:Z

    return p0
.end method
