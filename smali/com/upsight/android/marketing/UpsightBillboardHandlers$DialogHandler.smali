.class public Lcom/upsight/android/marketing/UpsightBillboardHandlers$DialogHandler;
.super Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;
.source "UpsightBillboardHandlers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/upsight/android/marketing/UpsightBillboardHandlers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogHandler"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;-><init>(Landroid/app/Activity;)V

    .line 162
    return-void
.end method


# virtual methods
.method public onAttach(Ljava/lang/String;Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;Ljava/util/Set;)Landroid/view/ViewGroup;
    .locals 4
    .param p1, "scope"    # Ljava/lang/String;
    .param p2, "presentation"    # Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/upsight/android/marketing/UpsightBillboard$PresentationStyle;",
            "Ljava/util/Set",
            "<",
            "Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;",
            ">;)",
            "Landroid/view/ViewGroup;"
        }
    .end annotation

    .prologue
    .local p3, "dimensions":Ljava/util/Set;, "Ljava/util/Set<Lcom/upsight/android/marketing/UpsightBillboard$Dimensions;>;"
    const/4 v0, 0x0

    .line 166
    iget-object v1, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DialogHandler;->mActivity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DialogHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-object v0

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DialogHandler;->mActivity:Landroid/app/Activity;

    invoke-static {v1, p3}, Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;->newInstance(Landroid/content/Context;Ljava/util/Set;)Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    move-result-object v1

    iput-object v1, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DialogHandler;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    .line 170
    iget-object v1, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DialogHandler;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    const/4 v2, 0x1

    # getter for: Lcom/upsight/android/marketing/UpsightBillboardHandlers;->STYLE_DIALOG:I
    invoke-static {}, Lcom/upsight/android/marketing/UpsightBillboardHandlers;->access$000()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;->setStyle(II)V

    .line 171
    iget-object v1, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DialogHandler;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;->setCancelable(Z)V

    .line 172
    iget-object v1, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DialogHandler;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    iget-object v2, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DialogHandler;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/upsight/android/marketing/UpsightBillboardHandlers$DialogHandler;->mFragment:Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;

    invoke-virtual {v0}, Lcom/upsight/android/marketing/internal/billboard/BillboardFragment;->getContentViewContainer()Landroid/view/ViewGroup;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic onDetach()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;->onDetach()V

    return-void
.end method

.method public bridge synthetic onNextView()V
    .locals 0

    .prologue
    .line 152
    invoke-super {p0}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;->onNextView()V

    return-void
.end method

.method public bridge synthetic onPurchases(Ljava/util/List;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;->onPurchases(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onRewards(Ljava/util/List;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/List;

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/upsight/android/marketing/UpsightBillboardHandlers$SimpleHandler;->onRewards(Ljava/util/List;)V

    return-void
.end method
