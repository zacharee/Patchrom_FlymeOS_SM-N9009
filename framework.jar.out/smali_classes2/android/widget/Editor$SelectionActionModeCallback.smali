.class Landroid/widget/Editor$SelectionActionModeCallback;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionActionModeCallback"
.end annotation


# instance fields
.field public mInSelectionMode:Z

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    .prologue
    .line 3114
    iput-object p1, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/Editor;
    .param p2, "x1"    # Landroid/widget/Editor$1;

    .prologue
    .line 3114
    invoke-direct {p0, p1}, Landroid/widget/Editor$SelectionActionModeCallback;-><init>(Landroid/widget/Editor;)V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 3253
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3255
    const/4 v0, 0x1

    .line 3257
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 11
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    if-eqz p2, :cond_flyme_0

    invoke-virtual/range {p0 .. p2}, Landroid/widget/Editor$SelectionActionModeCallback;->onCreateActionModeMz(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v5

    return v5

    :cond_flyme_0

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v9, 0x6

    const/4 v6, 0x0

    .line 3118
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v8, 0x15

    if-ge v5, v8, :cond_7

    move v2, v7

    .line 3120
    .local v2, "legacy":Z
    :goto_0
    if-nez v2, :cond_8

    instance-of v5, p2, Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v5, :cond_8

    move-object v5, p2

    check-cast v5, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v5}, Lcom/android/internal/view/menu/MenuBuilder;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3123
    .local v0, "context":Landroid/content/Context;
    :goto_1
    sget-object v5, Lcom/android/internal/R$styleable;->SelectionModeDrawables:[I

    invoke-virtual {v0, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 3127
    .local v4, "styledAttributes":Landroid/content/res/TypedArray;
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v5}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3128
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v8, #android:string@textSelectionCABTitle#t

    invoke-virtual {v5, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    .line 3130
    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Landroid/view/ActionMode;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 3131
    invoke-virtual {p1, v7}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    .line 3134
    :cond_0
    const/4 v3, 0x0

    .line 3137
    .local v3, "selectAllIconId":I
    const v5, #android:id@selectAll#t

    const v8, #android:string@selectAll#t

    invoke-interface {p2, v6, v5, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    const/4 v8, 0x3

    invoke-virtual {v4, v8, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v8, 0x61

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3144
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->canCut()Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, #android:id@cut#t

    const v8, #android:string@cut#t

    invoke-interface {p2, v6, v5, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual {v4, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v8, 0x78

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3153
    :cond_1
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->canCopy()Z

    move-result v5

    if-eqz v5, :cond_2

    const v5, #android:id@copy#t

    const v8, #android:string@copy#t

    invoke-interface {p2, v6, v5, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v8, 0x63

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3162
    :cond_2
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->canPaste()Z

    move-result v5

    if-eqz v5, :cond_3

    const v5, #android:id@paste#t

    const v8, #android:string@paste#t

    invoke-interface {p2, v6, v5, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual {v4, v10, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v8, 0x76

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3174
    :cond_3
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v5}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    instance-of v5, v5, Landroid/text/Editable;

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v5

    if-lez v5, :cond_4

    const v5, #android:id@clipboard#t

    const v8, #android:string@zzzzz_tw_cursor_handle_clipboard#t

    invoke-interface {p2, v6, v5, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual {v4, v10, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v8, 0x70

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3184
    :cond_4
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->canTranslate()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v5}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-boolean v5, v5, Landroid/widget/Editor;->mCurrentTranslateEnable:Z

    if-eqz v5, :cond_5

    const v5, #android:id@translation#t

    const v8, #android:string@translate#t

    invoke-interface {p2, v6, v5, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual {v4, v10, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    const/16 v8, 0x74

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3194
    :cond_5
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isDictionaryEnabled()Z
    invoke-static {v5}, Landroid/widget/Editor;->access$2900(Landroid/widget/Editor;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v5}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v5

    if-eqz v5, :cond_6

    const v5, #android:id@dictionary#t

    const v8, #android:string@dictionary#t

    invoke-interface {p2, v6, v5, v6, v8}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v5

    invoke-virtual {v4, v10, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 3205
    :cond_6
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # setter for: Landroid/widget/Editor;->mActionModeMenu:Landroid/view/Menu;
    invoke-static {v5, p2}, Landroid/widget/Editor;->access$3002(Landroid/widget/Editor;Landroid/view/Menu;)Landroid/view/Menu;

    .line 3206
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->updateShowAsAction()V

    .line 3209
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 3211
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v5, :cond_9

    .line 3212
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v5, v5, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v5, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v5

    if-nez v5, :cond_9

    move v5, v6

    .line 3238
    :goto_2
    return v5

    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "legacy":Z
    .end local v3    # "selectAllIconId":I
    .end local v4    # "styledAttributes":Landroid/content/res/TypedArray;
    :cond_7
    move v2, v6

    .line 3118
    goto/16 :goto_0

    .line 3120
    .restart local v2    # "legacy":Z
    :cond_8
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    goto/16 :goto_1

    .line 3220
    .restart local v0    # "context":Landroid/content/Context;
    .restart local v3    # "selectAllIconId":I
    .restart local v4    # "styledAttributes":Landroid/content/res/TypedArray;
    :cond_9
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mActionModeMenu:Landroid/view/Menu;
    invoke-static {v5}, Landroid/widget/Editor;->access$3000(Landroid/widget/Editor;)Landroid/view/Menu;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v5

    if-lez v5, :cond_a

    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v5}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v5}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 3221
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mActionModeMenu:Landroid/view/Menu;
    invoke-static {v5}, Landroid/widget/Editor;->access$3000(Landroid/widget/Editor;)Landroid/view/Menu;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/Menu;->size()I

    move-result v5

    if-ge v1, v5, :cond_a

    .line 3222
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mActionModeMenu:Landroid/view/Menu;
    invoke-static {v5}, Landroid/widget/Editor;->access$3000(Landroid/widget/Editor;)Landroid/view/Menu;

    move-result-object v5

    invoke-interface {v5, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3221
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3228
    .end local v1    # "i":I
    :cond_a
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mNewActionPopup:Z
    invoke-static {v5}, Landroid/widget/Editor;->access$3100(Landroid/widget/Editor;)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v5}, Landroid/widget/Editor;->access$2800(Landroid/widget/Editor;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3229
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    move v5, v7

    .line 3231
    goto :goto_2

    .line 3233
    :cond_b
    invoke-interface {p2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v5

    if-nez v5, :cond_c

    invoke-virtual {p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_d

    .line 3234
    :cond_c
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v5}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 3235
    iget-object v5, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setHasTransientState(Z)V

    move v5, v7

    .line 3236
    goto/16 :goto_2

    :cond_d
    move v5, v6

    .line 3238
    goto/16 :goto_2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    const/4 v2, 0x0

    .line 3262
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 3263
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 3271
    :cond_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SelectionActionModeCallback;->injectOnDestroyActionMode()Z

    move-result v0

    if-eqz v0, :cond_flyme_0

    return-void

    :cond_flyme_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-boolean v0, v0, Landroid/widget/Editor;->mPreserveDetachedSelection:Z

    if-nez v0, :cond_1

    .line 3272
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 3274
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHasTransientState(Z)V

    .line 3277
    :cond_1
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    if-eqz v0, :cond_2

    .line 3278
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mSelectionModifierCursorController:Landroid/widget/Editor$SelectionModifierCursorController;

    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->hide()V

    .line 3281
    :cond_2
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iput-object v2, v0, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    .line 3284
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    # setter for: Landroid/widget/Editor;->mActionModeMenu:Landroid/view/Menu;
    invoke-static {v0, v2}, Landroid/widget/Editor;->access$3002(Landroid/widget/Editor;Landroid/view/Menu;)Landroid/view/Menu;

    .line 3286
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 3245
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 3246
    iget-object v0, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    .line 3248
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private injectOnDestroyActionMode()Z
    .locals 4

    .prologue
    iget-object v1, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->mzGetFieldTextView()Landroid/widget/TextView;

    move-result-object v0

    .local v0, "textView":Landroid/widget/TextView;
    iget-boolean v1, p0, Landroid/widget/Editor$SelectionActionModeCallback;->mInSelectionMode:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->hasSelection()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v1}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/Editor;->startSelectionActionMode(J)V

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/widget/Editor;->mSelectionActionMode:Landroid/view/ActionMode;

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateActionModeMz(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 9
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const v6, #android:id@cut#t

    const v8, #android:id@selectAll#t

    const/4 v3, 0x1

    const/4 v7, 0x6

    const/4 v2, 0x0

    iget-object v4, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->mzGetFieldTextView()Landroid/widget/TextView;

    move-result-object v1

    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/android/internal/R$styleable;->SelectionModeDrawables:[I

    invoke-virtual {v4, v5}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "styledAttributes":Landroid/content/res/TypedArray;
    invoke-virtual {p1, v2}, Landroid/view/ActionMode;->setTitleOptionalHint(Z)V

    invoke-virtual {v1}, Landroid/widget/TextView;->hasSelection()Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/Editor$SelectionActionModeCallback;->mInSelectionMode:Z

    iget-boolean v4, p0, Landroid/widget/Editor$SelectionActionModeCallback;->mInSelectionMode:Z

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Landroid/widget/TextView;->canCut()Z

    move-result v4

    if-eqz v4, :cond_0

    const v4, #android:string@cut#t

    invoke-interface {p2, v6, v6, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v5, 0x78

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    invoke-virtual {v1}, Landroid/widget/TextView;->canCopy()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, #android:id@copy#t

    const v5, #android:id@copy#t

    const v6, #android:string@copy#t

    invoke-interface {p2, v4, v5, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v5, 0x63

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_1
    :goto_0
    invoke-virtual {v1}, Landroid/widget/TextView;->canPaste()Z

    move-result v4

    if-eqz v4, :cond_2

    const v4, #android:id@paste#t

    const v5, #android:id@paste#t

    const v6, #android:string@paste#t

    invoke-interface {p2, v4, v5, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v5, 0x76

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v4, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    if-eqz v4, :cond_6

    iget-object v4, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    iget-object v4, v4, Landroid/widget/Editor;->mCustomSelectionActionModeCallback:Landroid/view/ActionMode$Callback;

    invoke-interface {v4, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_3
    :goto_1
    return v2

    :cond_4
    invoke-virtual {v1}, Landroid/widget/TextView;->canCopyAll()Z

    move-result v4

    if-eqz v4, :cond_5

    sget v4, Landroid/widget/TextView;->ID_COPY_ALL:I

    sget v5, Landroid/widget/TextView;->ID_COPY_ALL:I

    sget v6, Lcom/flyme/internal/R$string;->copyAll:I

    invoke-interface {p2, v4, v5, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_5
    iget-object v4, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->mzCanSelectText()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, #android:string@selectAll#t

    invoke-interface {p2, v8, v8, v2, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v5, 0x61

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const v4, #android:id@startSelectingText#t

    const v5, #android:id@startSelectingText#t

    sget v6, Lcom/flyme/internal/R$string;->select:I

    invoke-interface {p2, v4, v5, v2, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v5, 0x73

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto/16 :goto_0

    :cond_6
    invoke-interface {p2}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p1}, Landroid/view/ActionMode;->getCustomView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    :cond_7
    iget-boolean v2, p0, Landroid/widget/Editor$SelectionActionModeCallback;->mInSelectionMode:Z

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->hasSelectionController()Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Landroid/widget/Editor$SelectionActionModeCallback;->this$0:Landroid/widget/Editor;

    invoke-virtual {v2}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    :cond_8
    iget-boolean v2, p0, Landroid/widget/Editor$SelectionActionModeCallback;->mInSelectionMode:Z

    if-eqz v2, :cond_9

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setHasTransientState(Z)V

    :cond_9
    move v2, v3

    goto :goto_1
.end method
