.class Lcom/android/stockssettings/TrustedCredentialsSettings$1;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stockssettings/TrustedCredentialsSettings;->addTab(Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/TrustedCredentialsSettings;

.field final synthetic val$adapter:Lcom/android/stockssettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/TrustedCredentialsSettings;Lcom/android/stockssettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/stockssettings/TrustedCredentialsSettings$1;->this$0:Lcom/android/stockssettings/TrustedCredentialsSettings;

    iput-object p2, p0, Lcom/android/stockssettings/TrustedCredentialsSettings$1;->val$adapter:Lcom/android/stockssettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 2
    .param p1, "parent"    # Landroid/widget/ExpandableListView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "groupPosition"    # I
    .param p4, "childPosition"    # I
    .param p5, "id"    # J

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/stockssettings/TrustedCredentialsSettings$1;->this$0:Lcom/android/stockssettings/TrustedCredentialsSettings;

    iget-object v1, p0, Lcom/android/stockssettings/TrustedCredentialsSettings$1;->val$adapter:Lcom/android/stockssettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;

    invoke-virtual {v1, p3, p4}, Lcom/android/stockssettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;->getChild(II)Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;

    move-result-object v1

    # invokes: Lcom/android/stockssettings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;)V
    invoke-static {v0, v1}, Lcom/android/stockssettings/TrustedCredentialsSettings;->access$800(Lcom/android/stockssettings/TrustedCredentialsSettings;Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;)V

    .line 229
    const/4 v0, 0x1

    return v0
.end method
