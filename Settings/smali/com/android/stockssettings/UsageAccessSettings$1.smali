.class Lcom/android/stockssettings/UsageAccessSettings$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "UsageAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/UsageAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/UsageAccessSettings;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/UsageAccessSettings;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcom/android/stockssettings/UsageAccessSettings$1;->this$0:Lcom/android/stockssettings/UsageAccessSettings;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/stockssettings/UsageAccessSettings$1;->this$0:Lcom/android/stockssettings/UsageAccessSettings;

    # invokes: Lcom/android/stockssettings/UsageAccessSettings;->updateInterestedApps()V
    invoke-static {v0}, Lcom/android/stockssettings/UsageAccessSettings;->access$300(Lcom/android/stockssettings/UsageAccessSettings;)V

    .line 353
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/stockssettings/UsageAccessSettings$1;->this$0:Lcom/android/stockssettings/UsageAccessSettings;

    # invokes: Lcom/android/stockssettings/UsageAccessSettings;->updateInterestedApps()V
    invoke-static {v0}, Lcom/android/stockssettings/UsageAccessSettings;->access$300(Lcom/android/stockssettings/UsageAccessSettings;)V

    .line 358
    return-void
.end method
