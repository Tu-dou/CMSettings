.class Lcom/android/stockssettings/applications/InstalledAppDetails$MyAlertDialogFragment$9;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stockssettings/applications/InstalledAppDetails$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/applications/InstalledAppDetails$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/applications/InstalledAppDetails$MyAlertDialogFragment;)V
    .locals 0

    .prologue
    .line 1359
    iput-object p1, p0, Lcom/android/stockssettings/applications/InstalledAppDetails$MyAlertDialogFragment$9;->this$0:Lcom/android/stockssettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/android/stockssettings/applications/InstalledAppDetails$MyAlertDialogFragment$9;->this$0:Lcom/android/stockssettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/stockssettings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/stockssettings/applications/InstalledAppDetails;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stockssettings/applications/InstalledAppDetails$MyAlertDialogFragment$9;->this$0:Lcom/android/stockssettings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v1}, Lcom/android/stockssettings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/stockssettings/applications/InstalledAppDetails;

    move-result-object v1

    # getter for: Lcom/android/stockssettings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/stockssettings/applications/ApplicationsState$AppEntry;
    invoke-static {v1}, Lcom/android/stockssettings/applications/InstalledAppDetails;->access$100(Lcom/android/stockssettings/applications/InstalledAppDetails;)Lcom/android/stockssettings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/stockssettings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    # invokes: Lcom/android/stockssettings/applications/InstalledAppDetails;->uninstallPkg(Ljava/lang/String;ZZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/android/stockssettings/applications/InstalledAppDetails;->access$1100(Lcom/android/stockssettings/applications/InstalledAppDetails;Ljava/lang/String;ZZ)V

    .line 1364
    return-void
.end method
