.class Lcom/android/stockssettings/applications/InstalledAppDetails$PackageMoveObserver;
.super Landroid/content/pm/IPackageMoveObserver$Stub;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageMoveObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/stockssettings/applications/InstalledAppDetails$PackageMoveObserver;->this$0:Lcom/android/stockssettings/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/pm/IPackageMoveObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public packageMoved(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "returnCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/stockssettings/applications/InstalledAppDetails$PackageMoveObserver;->this$0:Lcom/android/stockssettings/applications/InstalledAppDetails;

    # getter for: Lcom/android/stockssettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/stockssettings/applications/InstalledAppDetails;->access$400(Lcom/android/stockssettings/applications/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 246
    .local v0, "msg":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 247
    iget-object v1, p0, Lcom/android/stockssettings/applications/InstalledAppDetails$PackageMoveObserver;->this$0:Lcom/android/stockssettings/applications/InstalledAppDetails;

    # getter for: Lcom/android/stockssettings/applications/InstalledAppDetails;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/stockssettings/applications/InstalledAppDetails;->access$400(Lcom/android/stockssettings/applications/InstalledAppDetails;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 248
    return-void
.end method
