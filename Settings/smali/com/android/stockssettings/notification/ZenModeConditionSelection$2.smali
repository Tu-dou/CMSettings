.class Lcom/android/stockssettings/notification/ZenModeConditionSelection$2;
.super Landroid/service/notification/IConditionListener$Stub;
.source "ZenModeConditionSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/notification/ZenModeConditionSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/notification/ZenModeConditionSelection;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/notification/ZenModeConditionSelection;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/stockssettings/notification/ZenModeConditionSelection$2;->this$0:Lcom/android/stockssettings/notification/ZenModeConditionSelection;

    invoke-direct {p0}, Landroid/service/notification/IConditionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onConditionsReceived([Landroid/service/notification/Condition;)V
    .locals 2
    .param p1, "conditions"    # [Landroid/service/notification/Condition;

    .prologue
    .line 143
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 145
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/stockssettings/notification/ZenModeConditionSelection$2;->this$0:Lcom/android/stockssettings/notification/ZenModeConditionSelection;

    # getter for: Lcom/android/stockssettings/notification/ZenModeConditionSelection;->mHandler:Lcom/android/stockssettings/notification/ZenModeConditionSelection$H;
    invoke-static {v0}, Lcom/android/stockssettings/notification/ZenModeConditionSelection;->access$100(Lcom/android/stockssettings/notification/ZenModeConditionSelection;)Lcom/android/stockssettings/notification/ZenModeConditionSelection$H;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/stockssettings/notification/ZenModeConditionSelection$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
