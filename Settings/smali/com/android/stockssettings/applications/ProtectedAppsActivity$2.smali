.class Lcom/android/stockssettings/applications/ProtectedAppsActivity$2;
.super Ljava/lang/Object;
.source "ProtectedAppsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/applications/ProtectedAppsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/applications/ProtectedAppsActivity;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/applications/ProtectedAppsActivity;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/android/stockssettings/applications/ProtectedAppsActivity$2;->this$0:Lcom/android/stockssettings/applications/ProtectedAppsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 451
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 452
    .local v3, "position":I
    iget-object v6, p0, Lcom/android/stockssettings/applications/ProtectedAppsActivity$2;->this$0:Lcom/android/stockssettings/applications/ProtectedAppsActivity;

    # getter for: Lcom/android/stockssettings/applications/ProtectedAppsActivity;->mAppsAdapter:Lcom/android/stockssettings/applications/ProtectedAppsActivity$AppsAdapter;
    invoke-static {v6}, Lcom/android/stockssettings/applications/ProtectedAppsActivity;->access$000(Lcom/android/stockssettings/applications/ProtectedAppsActivity;)Lcom/android/stockssettings/applications/ProtectedAppsActivity$AppsAdapter;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/stockssettings/applications/ProtectedAppsActivity$AppsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/stockssettings/applications/ProtectedAppsActivity$AppEntry;

    iget-object v0, v6, Lcom/android/stockssettings/applications/ProtectedAppsActivity$AppEntry;->componentName:Landroid/content/ComponentName;

    .line 453
    .local v0, "cn":Landroid/content/ComponentName;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v1, "componentsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ComponentName;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    iget-object v6, p0, Lcom/android/stockssettings/applications/ProtectedAppsActivity$2;->this$0:Lcom/android/stockssettings/applications/ProtectedAppsActivity;

    # invokes: Lcom/android/stockssettings/applications/ProtectedAppsActivity;->getProtectedStateFromComponentName(Landroid/content/ComponentName;)Z
    invoke-static {v6, v0}, Lcom/android/stockssettings/applications/ProtectedAppsActivity;->access$400(Lcom/android/stockssettings/applications/ProtectedAppsActivity;Landroid/content/ComponentName;)Z

    move-result v4

    .line 457
    .local v4, "state":Z
    new-instance v2, Lcom/android/stockssettings/applications/ProtectedAppsActivity$AppProtectList;

    iget-object v6, p0, Lcom/android/stockssettings/applications/ProtectedAppsActivity$2;->this$0:Lcom/android/stockssettings/applications/ProtectedAppsActivity;

    invoke-direct {v2, v6, v1, v4}, Lcom/android/stockssettings/applications/ProtectedAppsActivity$AppProtectList;-><init>(Lcom/android/stockssettings/applications/ProtectedAppsActivity;Ljava/util/ArrayList;Z)V

    .line 458
    .local v2, "list":Lcom/android/stockssettings/applications/ProtectedAppsActivity$AppProtectList;
    new-instance v5, Lcom/android/stockssettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;

    iget-object v6, p0, Lcom/android/stockssettings/applications/ProtectedAppsActivity$2;->this$0:Lcom/android/stockssettings/applications/ProtectedAppsActivity;

    iget-object v7, p0, Lcom/android/stockssettings/applications/ProtectedAppsActivity$2;->this$0:Lcom/android/stockssettings/applications/ProtectedAppsActivity;

    invoke-direct {v5, v6, v7}, Lcom/android/stockssettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;-><init>(Lcom/android/stockssettings/applications/ProtectedAppsActivity;Landroid/content/Context;)V

    .line 460
    .local v5, "task":Lcom/android/stockssettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;
    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/stockssettings/applications/ProtectedAppsActivity$AppProtectList;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v5, v6}, Lcom/android/stockssettings/applications/ProtectedAppsActivity$StoreComponentProtectedStatus;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 461
    return-void
.end method
