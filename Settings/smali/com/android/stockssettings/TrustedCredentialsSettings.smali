.class public Lcom/android/stockssettings/TrustedCredentialsSettings;
.super Landroid/app/Fragment;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stockssettings/TrustedCredentialsSettings$6;,
        Lcom/android/stockssettings/TrustedCredentialsSettings$AliasOperation;,
        Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;,
        Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;,
        Lcom/android/stockssettings/TrustedCredentialsSettings$AdapterData;,
        Lcom/android/stockssettings/TrustedCredentialsSettings$TrustedCertificateAdapter;,
        Lcom/android/stockssettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;,
        Lcom/android/stockssettings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;,
        Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;
    }
.end annotation


# instance fields
.field private mAliasLoaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;",
            "Lcom/android/stockssettings/TrustedCredentialsSettings$AdapterData$AliasLoader;",
            ">;"
        }
    .end annotation
.end field

.field private mAliasOperation:Lcom/android/stockssettings/TrustedCredentialsSettings$AliasOperation;

.field private final mKeyChainConnectionByProfileId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/security/KeyChain$KeyChainConnection;",
            ">;"
        }
    .end annotation
.end field

.field private mTabHost:Landroid/widget/TabHost;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 167
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;

    .line 169
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    .line 750
    return-void
.end method

.method static synthetic access$1300(Lcom/android/stockssettings/TrustedCredentialsSettings;)Landroid/os/UserManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/stockssettings/TrustedCredentialsSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/stockssettings/TrustedCredentialsSettings;Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/stockssettings/TrustedCredentialsSettings;
    .param p1, "x1"    # Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;
    .param p2, "x2"    # Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;
    .param p3, "x3"    # Landroid/view/View;
    .param p4, "x4"    # Landroid/view/ViewGroup;

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/stockssettings/TrustedCredentialsSettings;->getViewForCertificate(Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/stockssettings/TrustedCredentialsSettings;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/stockssettings/TrustedCredentialsSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/stockssettings/TrustedCredentialsSettings;)Landroid/widget/TabHost;
    .locals 1
    .param p0, "x0"    # Lcom/android/stockssettings/TrustedCredentialsSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/stockssettings/TrustedCredentialsSettings;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/stockssettings/TrustedCredentialsSettings;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3502(Lcom/android/stockssettings/TrustedCredentialsSettings;Lcom/android/stockssettings/TrustedCredentialsSettings$AliasOperation;)Lcom/android/stockssettings/TrustedCredentialsSettings$AliasOperation;
    .locals 0
    .param p0, "x0"    # Lcom/android/stockssettings/TrustedCredentialsSettings;
    .param p1, "x1"    # Lcom/android/stockssettings/TrustedCredentialsSettings$AliasOperation;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/stockssettings/TrustedCredentialsSettings$AliasOperation;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/stockssettings/TrustedCredentialsSettings;Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/stockssettings/TrustedCredentialsSettings;
    .param p1, "x1"    # Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/stockssettings/TrustedCredentialsSettings;->showCertDialog(Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;)V

    return-void
.end method

.method private addCertChain(Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 17
    .param p1, "certHolder"    # Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 720
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p3, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 722
    .local v4, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    move-object/from16 v0, p1

    iget v15, v0, Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/security/KeyChain$KeyChainConnection;

    .line 724
    .local v11, "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    invoke-virtual {v11}, Landroid/security/KeyChain$KeyChainConnection;->getService()Landroid/security/IKeyChainService;

    move-result-object v13

    .line 725
    .local v13, "service":Landroid/security/IKeyChainService;
    # getter for: Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;->access$3400(Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/security/IKeyChainService;->getCaCertificateChainAliases(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v6

    .line 726
    .local v6, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    .line 727
    .local v12, "n":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v12}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 728
    .end local v4    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local v5, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    if-ge v9, v12, :cond_0

    .line 729
    :try_start_1
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const/4 v15, 0x1

    invoke-interface {v13, v14, v15}, Landroid/security/IKeyChainService;->getEncodedCaCertificate(Ljava/lang/String;Z)[B

    move-result-object v7

    .line 730
    .local v7, "encodedCertificate":[B
    invoke-static {v7}, Landroid/security/KeyChain;->toCertificate([B)Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 731
    .local v3, "certificate":Ljava/security/cert/X509Certificate;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 728
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 733
    .end local v3    # "certificate":Ljava/security/cert/X509Certificate;
    .end local v5    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v6    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "encodedCertificate":[B
    .end local v9    # "i":I
    .end local v11    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .end local v12    # "n":I
    .end local v13    # "service":Landroid/security/IKeyChainService;
    .restart local v4    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v8

    .line 734
    .local v8, "ex":Landroid/os/RemoteException;
    :goto_1
    const-string v14, "TrustedCredentialsSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "RemoteException while retrieving certificate chain for root "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    # getter for: Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;->mAlias:Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;->access$3400(Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 741
    .end local v8    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 738
    .end local v4    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v5    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v6    # "chain":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "i":I
    .restart local v11    # "keyChainConnection":Landroid/security/KeyChain$KeyChainConnection;
    .restart local v12    # "n":I
    .restart local v13    # "service":Landroid/security/IKeyChainService;
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 739
    .restart local v3    # "certificate":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v3, v1, v2}, Lcom/android/stockssettings/TrustedCredentialsSettings;->addCertDetails(Ljava/security/cert/X509Certificate;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_3

    .end local v3    # "certificate":Ljava/security/cert/X509Certificate;
    :cond_1
    move-object v4, v5

    .line 741
    .end local v5    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v4    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    goto :goto_2

    .line 733
    .end local v4    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .end local v10    # "i$":Ljava/util/Iterator;
    .restart local v5    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_1
    move-exception v8

    move-object v4, v5

    .end local v5    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .restart local v4    # "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    goto :goto_1
.end method

.method private addCertDetails(Ljava/security/cert/X509Certificate;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "certificate"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 745
    .local p2, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .local p3, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Landroid/net/http/SslCertificate;

    invoke-direct {v0, p1}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 746
    .local v0, "sslCert":Landroid/net/http/SslCertificate;
    invoke-virtual {p0}, Lcom/android/stockssettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 747
    invoke-virtual {v0}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 748
    return-void
.end method

.method private addTab(Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;)V
    .locals 7
    .param p1, "tab"    # Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;

    .prologue
    const/4 v6, 0x0

    .line 214
    iget-object v3, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    # getter for: Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;->access$300(Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/stockssettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    # getter for: Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;->mLabel:I
    invoke-static {p1}, Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;->access$500(Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    # getter for: Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;->mView:I
    invoke-static {p1}, Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;->access$400(Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost$TabSpec;->setContent(I)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    .line 217
    .local v2, "systemSpec":Landroid/widget/TabHost$TabSpec;
    iget-object v3, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v3, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 219
    iget-object v3, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    .line 220
    iget-object v3, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    # getter for: Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;->mExpandableList:I
    invoke-static {p1}, Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;->access$600(Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    .line 221
    .local v1, "lv":Landroid/widget/ExpandableListView;
    new-instance v0, Lcom/android/stockssettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;

    invoke-direct {v0, p0, p1, v6}, Lcom/android/stockssettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;-><init>(Lcom/android/stockssettings/TrustedCredentialsSettings;Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;Lcom/android/stockssettings/TrustedCredentialsSettings$1;)V

    .line 223
    .local v0, "adapter":Lcom/android/stockssettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 224
    new-instance v3, Lcom/android/stockssettings/TrustedCredentialsSettings$1;

    invoke-direct {v3, p0, v0}, Lcom/android/stockssettings/TrustedCredentialsSettings$1;-><init>(Lcom/android/stockssettings/TrustedCredentialsSettings;Lcom/android/stockssettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 243
    .end local v0    # "adapter":Lcom/android/stockssettings/TrustedCredentialsSettings$TrustedCertificateExpandableAdapter;
    .end local v1    # "lv":Landroid/widget/ExpandableListView;
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v3, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    # getter for: Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;->mList:I
    invoke-static {p1}, Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;->access$900(Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 234
    .local v1, "lv":Landroid/widget/ListView;
    new-instance v0, Lcom/android/stockssettings/TrustedCredentialsSettings$TrustedCertificateAdapter;

    invoke-direct {v0, p0, p1, v6}, Lcom/android/stockssettings/TrustedCredentialsSettings$TrustedCertificateAdapter;-><init>(Lcom/android/stockssettings/TrustedCredentialsSettings;Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;Lcom/android/stockssettings/TrustedCredentialsSettings$1;)V

    .line 235
    .local v0, "adapter":Lcom/android/stockssettings/TrustedCredentialsSettings$TrustedCertificateAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 236
    new-instance v3, Lcom/android/stockssettings/TrustedCredentialsSettings$2;

    invoke-direct {v3, p0, v0}, Lcom/android/stockssettings/TrustedCredentialsSettings$2;-><init>(Lcom/android/stockssettings/TrustedCredentialsSettings;Lcom/android/stockssettings/TrustedCredentialsSettings$TrustedCertificateAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method private closeKeyChainConnections()V
    .locals 3

    .prologue
    .line 206
    iget-object v2, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 207
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 208
    iget-object v2, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/security/KeyChain$KeyChainConnection;

    invoke-virtual {v2}, Landroid/security/KeyChain$KeyChainConnection;->close()V

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mKeyChainConnectionByProfileId:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 211
    return-void
.end method

.method private getViewForCertificate(Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "certHolder"    # Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;
    .param p2, "mTab"    # Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 605
    if-nez p3, :cond_1

    .line 606
    invoke-virtual {p0}, Lcom/android/stockssettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 607
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0400fc

    invoke-virtual {v1, v2, p4, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    .line 608
    new-instance v0, Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;-><init>(Lcom/android/stockssettings/TrustedCredentialsSettings$1;)V

    .line 609
    .local v0, "holder":Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;
    const v2, 0x7f100245

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    # setter for: Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;->access$2502(Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 611
    const v2, 0x7f100246

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    # setter for: Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;
    invoke-static {v0, v2}, Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;->access$2602(Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 613
    const v2, 0x7f100247

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    # setter for: Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0, v2}, Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;->access$2702(Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;Landroid/widget/Switch;)Landroid/widget/Switch;

    .line 615
    invoke-virtual {p3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 619
    .end local v1    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    # getter for: Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;->mSubjectPrimaryView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;->access$2500(Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    # getter for: Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;->mSubjectPrimary:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;->access$2800(Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 620
    # getter for: Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;->mSubjectSecondaryView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;->access$2600(Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    # getter for: Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;->mSubjectSecondary:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;->access$2900(Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 621
    # getter for: Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;->mSwitch:Z
    invoke-static {p2}, Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;->access$3000(Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 622
    # getter for: Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;->access$2700(Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/Switch;

    move-result-object v5

    # getter for: Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;->mDeleted:Z
    invoke-static {p1}, Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;->access$000(Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 623
    # getter for: Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;->access$2700(Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/Switch;

    move-result-object v2

    iget-object v5, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v6, "no_config_credentials"

    new-instance v7, Landroid/os/UserHandle;

    iget v8, p1, Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v5

    if-nez v5, :cond_3

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 626
    # getter for: Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;->mSwitch:Landroid/widget/Switch;
    invoke-static {v0}, Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;->access$2700(Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/Switch;->setVisibility(I)V

    .line 628
    :cond_0
    return-object p3

    .line 617
    .end local v0    # "holder":Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;

    .restart local v0    # "holder":Lcom/android/stockssettings/TrustedCredentialsSettings$ViewHolder;
    goto :goto_0

    :cond_2
    move v2, v4

    .line 622
    goto :goto_1

    :cond_3
    move v3, v4

    .line 623
    goto :goto_2
.end method

.method private showCertDialog(Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;)V
    .locals 18
    .param p1, "certHolder"    # Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 638
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/stockssettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v4, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 639
    .local v4, "builder":Landroid/app/AlertDialog$Builder;
    const v14, 0x104068c

    invoke-virtual {v4, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 641
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 642
    .local v13, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 643
    .local v12, "titles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v12}, Lcom/android/stockssettings/TrustedCredentialsSettings;->addCertChain(Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 645
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/android/stockssettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const v15, 0x1090008

    invoke-direct {v2, v14, v15, v12}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 648
    .local v2, "arrayAdapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v14, 0x1090009

    invoke-virtual {v2, v14}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 649
    new-instance v11, Landroid/widget/Spinner;

    invoke-virtual/range {p0 .. p0}, Lcom/android/stockssettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v11, v14}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 650
    .local v11, "spinner":Landroid/widget/Spinner;
    invoke-virtual {v11, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 651
    new-instance v14, Lcom/android/stockssettings/TrustedCredentialsSettings$3;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v13}, Lcom/android/stockssettings/TrustedCredentialsSettings$3;-><init>(Lcom/android/stockssettings/TrustedCredentialsSettings;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v14}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 663
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/stockssettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-direct {v7, v14}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 664
    .local v7, "container":Landroid/widget/LinearLayout;
    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 665
    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 666
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v8, v14, :cond_1

    .line 667
    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 668
    .local v6, "certificateView":Landroid/view/View;
    if-eqz v8, :cond_0

    .line 669
    const/16 v14, 0x8

    invoke-virtual {v6, v14}, Landroid/view/View;->setVisibility(I)V

    .line 671
    :cond_0
    invoke-virtual {v7, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 666
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 673
    .end local v6    # "certificateView":Landroid/view/View;
    :cond_1
    invoke-virtual {v4, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 674
    const v14, 0x104000a

    new-instance v15, Lcom/android/stockssettings/TrustedCredentialsSettings$4;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/stockssettings/TrustedCredentialsSettings$4;-><init>(Lcom/android/stockssettings/TrustedCredentialsSettings;)V

    invoke-virtual {v4, v14, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 679
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 681
    .local v5, "certDialog":Landroid/app/Dialog;
    const v14, 0x1020366

    invoke-virtual {v7, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 682
    .local v3, "body":Landroid/view/ViewGroup;
    invoke-virtual/range {p0 .. p0}, Lcom/android/stockssettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 683
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const v14, 0x7f0400fd

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v3, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 686
    .local v10, "removeButton":Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    const-string v15, "no_config_credentials"

    new-instance v16, Landroid/os/UserHandle;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    move/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual/range {v14 .. v16}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 688
    invoke-virtual {v3, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 690
    :cond_2
    # getter for: Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;->mTab:Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;
    invoke-static/range {p1 .. p1}, Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;->access$100(Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;)Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;

    move-result-object v14

    move-object/from16 v0, p1

    # invokes: Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;->getButtonLabel(Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;)I
    invoke-static {v14, v0}, Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;->access$3100(Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;)I

    move-result v14

    invoke-virtual {v10, v14}, Landroid/widget/Button;->setText(I)V

    .line 691
    new-instance v14, Lcom/android/stockssettings/TrustedCredentialsSettings$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v14, v0, v1, v5}, Lcom/android/stockssettings/TrustedCredentialsSettings$5;-><init>(Lcom/android/stockssettings/TrustedCredentialsSettings;Lcom/android/stockssettings/TrustedCredentialsSettings$CertHolder;Landroid/app/Dialog;)V

    invoke-virtual {v10, v14}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 715
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/stockssettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mUserManager:Landroid/os/UserManager;

    .line 176
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "parent"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 181
    const v0, 0x7f0400fe

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    .line 182
    iget-object v0, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 183
    sget-object v0, Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;->SYSTEM:Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/stockssettings/TrustedCredentialsSettings;->addTab(Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;)V

    .line 185
    sget-object v0, Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;

    invoke-direct {p0, v0}, Lcom/android/stockssettings/TrustedCredentialsSettings;->addTab(Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/stockssettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "com.android.settings.TRUSTED_CREDENTIALS_USER"

    invoke-virtual {p0}, Lcom/android/stockssettings/TrustedCredentialsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    sget-object v1, Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;->USER:Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;

    # getter for: Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;->mTag:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;->access$300(Lcom/android/stockssettings/TrustedCredentialsSettings$Tab;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mTabHost:Landroid/widget/TabHost;

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 194
    iget-object v2, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mAliasLoaders:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stockssettings/TrustedCredentialsSettings$AdapterData$AliasLoader;

    .line 195
    .local v0, "aliasLoader":Lcom/android/stockssettings/TrustedCredentialsSettings$AdapterData$AliasLoader;
    invoke-virtual {v0, v3}, Lcom/android/stockssettings/TrustedCredentialsSettings$AdapterData$AliasLoader;->cancel(Z)Z

    goto :goto_0

    .line 197
    .end local v0    # "aliasLoader":Lcom/android/stockssettings/TrustedCredentialsSettings$AdapterData$AliasLoader;
    :cond_0
    iget-object v2, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/stockssettings/TrustedCredentialsSettings$AliasOperation;

    if-eqz v2, :cond_1

    .line 198
    iget-object v2, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/stockssettings/TrustedCredentialsSettings$AliasOperation;

    invoke-virtual {v2, v3}, Lcom/android/stockssettings/TrustedCredentialsSettings$AliasOperation;->cancel(Z)Z

    .line 199
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/stockssettings/TrustedCredentialsSettings;->mAliasOperation:Lcom/android/stockssettings/TrustedCredentialsSettings$AliasOperation;

    .line 201
    :cond_1
    invoke-direct {p0}, Lcom/android/stockssettings/TrustedCredentialsSettings;->closeKeyChainConnections()V

    .line 202
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 203
    return-void
.end method
