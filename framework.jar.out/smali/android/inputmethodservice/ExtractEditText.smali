.class public Landroid/inputmethodservice/ExtractEditText;
.super Landroid/widget/EditText;
.source "ExtractEditText.java"


# instance fields
.field private mIME:Landroid/inputmethodservice/InputMethodService;

.field private mSettingExtractedText:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    const v0, 0x101006e

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/inputmethodservice/ExtractEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    return-void
.end method


# virtual methods
.method protected deleteText_internal(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 179
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedDeleteText(II)V

    .line 180
    return-void
.end method

.method public finishInternalChanges()V
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 70
    return-void
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public hasVerticalScrollBar()Z
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->computeVerticalScrollExtent()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWindowFocus()Z
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public hideCursorControllers()V
    .locals 0

    .prologue
    .line 220
    invoke-super {p0}, Landroid/widget/EditText;->hideCursorControllers()V

    .line 221
    return-void
.end method

.method public isFocused()Z
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isInputMethodTarget()Z
    .locals 1

    .prologue
    .line 124
    const/4 v0, 0x1

    return v0
.end method

.method public onScreenStateChanged(I)V
    .locals 1
    .param p1, "screenState"    # I

    .prologue
    .line 230
    invoke-super {p0, p1}, Landroid/widget/EditText;->onScreenStateChanged(I)V

    .line 231
    packed-switch p1, :pswitch_data_0

    .line 236
    :goto_0
    return-void

    .line 233
    :pswitch_0
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->forceExtractEditTextClose()V

    goto :goto_0

    .line 231
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onSelectionChanged(II)V
    .locals 1
    .param p1, "selStart"    # I
    .param p2, "selEnd"    # I

    .prologue
    .line 89
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 90
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedSelectionChanged(II)V

    .line 92
    :cond_0
    return-void
.end method

.method public onTextContextMenuItem(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 107
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1}, Landroid/inputmethodservice/InputMethodService;->onExtractTextContextMenuItem(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 110
    const v0, 0x1020021

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/inputmethodservice/ExtractEditText;->stopSelectionActionMode()V

    .line 111
    :cond_0
    const v0, 0x1020049

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->isInputViewShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->requestHideSelf(I)V

    .line 114
    :cond_1
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    .prologue
    .line 99
    invoke-super {p0}, Landroid/widget/EditText;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0}, Landroid/inputmethodservice/InputMethodService;->onExtractedTextClicked()V

    .line 101
    const/4 v0, 0x1

    .line 103
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J
    .locals 3
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "paste"    # Ljava/lang/CharSequence;

    .prologue
    .line 244
    iget-object v2, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v2, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->prepareSpacesAroundPaste(IILjava/lang/CharSequence;)J

    move-result-wide v0

    .line 245
    .local v0, "returnValue":J
    return-wide v0
.end method

.method protected replaceText_internal(IILjava/lang/CharSequence;)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 190
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2, p3}, Landroid/inputmethodservice/InputMethodService;->onExtractedReplaceText(IILjava/lang/CharSequence;)V

    .line 191
    return-void
.end method

.method protected setCursorPosition_internal(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    .line 212
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2}, Landroid/inputmethodservice/InputMethodService;->onExtractedSelectionChanged(II)V

    .line 213
    return-void
.end method

.method public setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    .locals 2
    .param p1, "text"    # Landroid/view/inputmethod/ExtractedText;

    .prologue
    .line 78
    :try_start_0
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 79
    invoke-super {p0, p1}, Landroid/widget/EditText;->setExtractedText(Landroid/view/inputmethod/ExtractedText;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 83
    return-void

    .line 81
    :catchall_0
    move-exception v0

    iget v1, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    throw v0
.end method

.method setIME(Landroid/inputmethodservice/InputMethodService;)V
    .locals 0
    .param p1, "ime"    # Landroid/inputmethodservice/InputMethodService;

    .prologue
    .line 51
    iput-object p1, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    .line 52
    return-void
.end method

.method protected setSpan_internal(Ljava/lang/Object;III)V
    .locals 1
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .prologue
    .line 201
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/inputmethodservice/InputMethodService;->onExtractedSetSpan(Ljava/lang/Object;III)V

    .line 202
    return-void
.end method

.method public startInternalChanges()V
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/inputmethodservice/ExtractEditText;->mSettingExtractedText:I

    .line 61
    return-void
.end method

.method protected viewClicked(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 2
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;

    .prologue
    .line 166
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Landroid/inputmethodservice/ExtractEditText;->mIME:Landroid/inputmethodservice/InputMethodService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/inputmethodservice/InputMethodService;->onViewClicked(Z)V

    .line 169
    :cond_0
    return-void
.end method
