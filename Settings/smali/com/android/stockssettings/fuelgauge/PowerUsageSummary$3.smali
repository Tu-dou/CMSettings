.class Lcom/android/stockssettings/fuelgauge/PowerUsageSummary$3;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;->resetStats()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/android/stockssettings/fuelgauge/PowerUsageSummary$3;->this$0:Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/stockssettings/fuelgauge/PowerUsageSummary$3;->this$0:Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;

    # getter for: Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;
    invoke-static {v0}, Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;->access$300(Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;)Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->resetStatistics()V

    .line 387
    iget-object v0, p0, Lcom/android/stockssettings/fuelgauge/PowerUsageSummary$3;->this$0:Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;

    # invokes: Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;->refreshStats()V
    invoke-static {v0}, Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;->access$400(Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;)V

    .line 388
    iget-object v0, p0, Lcom/android/stockssettings/fuelgauge/PowerUsageSummary$3;->this$0:Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;

    iget-object v0, v0, Lcom/android/stockssettings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 389
    return-void
.end method
