.class Lcom/android/stockssettings/bluetooth/BluetoothDiscoverableEnabler$2;
.super Ljava/lang/Object;
.source "BluetoothDiscoverableEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/bluetooth/BluetoothDiscoverableEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/bluetooth/BluetoothDiscoverableEnabler;


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/stockssettings/bluetooth/BluetoothDiscoverableEnabler$2;->this$0:Lcom/android/stockssettings/bluetooth/BluetoothDiscoverableEnabler;

    # invokes: Lcom/android/stockssettings/bluetooth/BluetoothDiscoverableEnabler;->updateCountdownSummary()V
    invoke-static {v0}, Lcom/android/stockssettings/bluetooth/BluetoothDiscoverableEnabler;->access$000(Lcom/android/stockssettings/bluetooth/BluetoothDiscoverableEnabler;)V

    .line 92
    return-void
.end method
