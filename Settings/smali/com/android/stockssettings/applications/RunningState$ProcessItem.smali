.class Lcom/android/stockssettings/applications/RunningState$ProcessItem;
.super Lcom/android/stockssettings/applications/RunningState$BaseItem;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/applications/RunningState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessItem"
.end annotation


# instance fields
.field mActiveSince:J

.field mClient:Lcom/android/stockssettings/applications/RunningState$ProcessItem;

.field final mDependentProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/stockssettings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mInteresting:Z

.field mIsStarted:Z

.field mIsSystem:Z

.field mLastNumDependentProcesses:I

.field mMergedItem:Lcom/android/stockssettings/applications/RunningState$MergedItem;

.field mPid:I

.field final mProcessName:Ljava/lang/String;

.field mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

.field mRunningSeq:I

.field final mServices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Lcom/android/stockssettings/applications/RunningState$ServiceItem;",
            ">;"
        }
    .end annotation
.end field

.field final mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # I
    .param p3, "processName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 374
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-direct {p0, v2, v0}, Lcom/android/stockssettings/applications/RunningState$BaseItem;-><init>(ZI)V

    .line 349
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    .line 351
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    .line 375
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0908ba

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mDescription:Ljava/lang/String;

    .line 377
    iput p2, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mUid:I

    .line 378
    iput-object p3, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    .line 379
    return-void
.end method


# virtual methods
.method addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/stockssettings/applications/RunningState$BaseItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/stockssettings/applications/RunningState$ProcessItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 556
    .local p1, "dest":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/stockssettings/applications/RunningState$BaseItem;>;"
    .local p2, "destProc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/stockssettings/applications/RunningState$ProcessItem;>;"
    iget-object v3, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 557
    .local v0, "NP":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 558
    iget-object v3, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/stockssettings/applications/RunningState$ProcessItem;

    .line 559
    .local v2, "proc":Lcom/android/stockssettings/applications/RunningState$ProcessItem;
    invoke-virtual {v2, p1, p2}, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 560
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    iget v3, v2, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v3, :cond_0

    .line 562
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 565
    .end local v2    # "proc":Lcom/android/stockssettings/applications/RunningState$ProcessItem;
    :cond_1
    return-void
.end method

.method buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Landroid/content/pm/PackageManager;
    .param p3, "curSeq"    # I

    .prologue
    .line 533
    iget-object v4, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 534
    .local v0, "NP":I
    const/4 v1, 0x0

    .line 535
    .local v1, "changed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 536
    iget-object v4, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/stockssettings/applications/RunningState$ProcessItem;

    .line 537
    .local v3, "proc":Lcom/android/stockssettings/applications/RunningState$ProcessItem;
    iget-object v4, v3, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mClient:Lcom/android/stockssettings/applications/RunningState$ProcessItem;

    if-eq v4, p0, :cond_0

    .line 538
    const/4 v1, 0x1

    .line 539
    iput-object p0, v3, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mClient:Lcom/android/stockssettings/applications/RunningState$ProcessItem;

    .line 541
    :cond_0
    iput p3, v3, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 542
    invoke-virtual {v3, p2}, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 543
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v4

    or-int/2addr v1, v4

    .line 535
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 546
    .end local v3    # "proc":Lcom/android/stockssettings/applications/RunningState$ProcessItem;
    :cond_1
    iget v4, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mLastNumDependentProcesses:I

    iget-object v5, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 547
    const/4 v1, 0x1

    .line 548
    iget-object v4, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    iput v4, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mLastNumDependentProcesses:I

    .line 551
    :cond_2
    return v1
.end method

.method ensureLabel(Landroid/content/pm/PackageManager;)V
    .locals 10
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 382
    iget-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 455
    :goto_0
    return-void

    .line 387
    :cond_0
    :try_start_0
    iget-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    const/16 v9, 0x2000

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 389
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mUid:I

    if-ne v8, v9, :cond_1

    .line 390
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 391
    iget-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 392
    iput-object v0, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 395
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v8

    .line 400
    :cond_1
    iget v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {p1, v8}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v7

    .line 403
    .local v7, "pkgs":[Ljava/lang/String;
    array-length v8, v7

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    .line 405
    const/4 v8, 0x0

    :try_start_1
    aget-object v8, v7, v8

    const/16 v9, 0x2000

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 407
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 408
    iget-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 409
    iput-object v0, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 411
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_1
    move-exception v8

    .line 417
    :cond_2
    move-object v1, v7

    .local v1, "arr$":[Ljava/lang/String;
    array-length v3, v1

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v4, v1, v2

    .line 419
    .local v4, "name":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {p1, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 420
    .local v6, "pi":Landroid/content/pm/PackageInfo;
    iget v8, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    if-eqz v8, :cond_3

    .line 421
    iget v8, v6, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v4, v8, v9}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 423
    .local v5, "nm":Ljava/lang/CharSequence;
    if-eqz v5, :cond_3

    .line 424
    iput-object v5, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 425
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 426
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 430
    .end local v5    # "nm":Ljava/lang/CharSequence;
    .end local v6    # "pi":Landroid/content/pm/PackageInfo;
    :catch_2
    move-exception v8

    .line 417
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 436
    .end local v4    # "name":Ljava/lang/String;
    :cond_4
    iget-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 437
    iget-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/stockssettings/applications/RunningState$ServiceItem;

    iget-object v8, v8, Lcom/android/stockssettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 439
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    iput-object v0, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 440
    iget-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    invoke-virtual {v8, p1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 441
    iget-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    goto/16 :goto_0

    .line 447
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_5
    const/4 v8, 0x0

    :try_start_3
    aget-object v8, v7, v8

    const/16 v9, 0x2000

    invoke-virtual {p1, v8, v9}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 449
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 450
    iget-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 451
    iput-object v0, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    .line 453
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_3
    move-exception v8

    goto/16 :goto_0
.end method

.method updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/app/ActivityManager$RunningServiceInfo;

    .prologue
    .line 458
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 460
    .local v6, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x0

    .line 461
    .local v2, "changed":Z
    iget-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v9, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/stockssettings/applications/RunningState$ServiceItem;

    .line 462
    .local v7, "si":Lcom/android/stockssettings/applications/RunningState$ServiceItem;
    if-nez v7, :cond_1

    .line 463
    const/4 v2, 0x1

    .line 464
    new-instance v7, Lcom/android/stockssettings/applications/RunningState$ServiceItem;

    .end local v7    # "si":Lcom/android/stockssettings/applications/RunningState$ServiceItem;
    iget v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-direct {v7, v8}, Lcom/android/stockssettings/applications/RunningState$ServiceItem;-><init>(I)V

    .line 465
    .restart local v7    # "si":Lcom/android/stockssettings/applications/RunningState$ServiceItem;
    iput-object p2, v7, Lcom/android/stockssettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 467
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v8

    iget-object v9, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    const/16 v10, 0x2000

    iget v11, p2, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    invoke-interface {v8, v9, v10, v11}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v8

    iput-object v8, v7, Lcom/android/stockssettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    .line 471
    iget-object v8, v7, Lcom/android/stockssettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v8, :cond_0

    .line 472
    const-string v8, "RunningService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getServiceInfo returned null for: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    const/4 v8, 0x0

    .line 513
    :goto_0
    return v8

    .line 476
    :catch_0
    move-exception v8

    .line 478
    :cond_0
    iget-object v8, v7, Lcom/android/stockssettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    iget-object v9, v7, Lcom/android/stockssettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-static {v6, v8, v9}, Lcom/android/stockssettings/applications/RunningState;->makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;

    move-result-object v8

    iput-object v8, v7, Lcom/android/stockssettings/applications/RunningState$ServiceItem;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 480
    iget-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    iput-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    .line 481
    iget-object v8, v7, Lcom/android/stockssettings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v8, v7, Lcom/android/stockssettings/applications/RunningState$ServiceItem;->mPackageInfo:Landroid/content/pm/PackageItemInfo;

    .line 482
    iget-object v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    iget-object v9, p2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    :cond_1
    iget v8, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mCurSeq:I

    iput v8, v7, Lcom/android/stockssettings/applications/RunningState$ServiceItem;->mCurSeq:I

    .line 485
    iput-object p2, v7, Lcom/android/stockssettings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    .line 486
    iget-wide v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_5

    iget-wide v0, p2, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    .line 487
    .local v0, "activeSince":J
    :goto_2
    iget-wide v8, v7, Lcom/android/stockssettings/applications/RunningState$ServiceItem;->mActiveSince:J

    cmp-long v8, v8, v0

    if-eqz v8, :cond_2

    .line 488
    iput-wide v0, v7, Lcom/android/stockssettings/applications/RunningState$ServiceItem;->mActiveSince:J

    .line 489
    const/4 v2, 0x1

    .line 491
    :cond_2
    iget-object v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    if-eqz v8, :cond_6

    iget v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v8, :cond_6

    .line 492
    iget-boolean v8, v7, Lcom/android/stockssettings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    if-eqz v8, :cond_3

    .line 493
    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/stockssettings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    .line 494
    const/4 v2, 0x1

    .line 497
    :cond_3
    :try_start_1
    iget-object v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 498
    .local v3, "clientr":Landroid/content/res/Resources;
    iget v8, p2, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 499
    .local v5, "label":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0908b6

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/stockssettings/applications/RunningState$ServiceItem;->mDescription:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v3    # "clientr":Landroid/content/res/Resources;
    .end local v5    # "label":Ljava/lang/String;
    :goto_3
    move v8, v2

    .line 513
    goto :goto_0

    .line 480
    .end local v0    # "activeSince":J
    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    .line 486
    :cond_5
    const-wide/16 v0, -0x1

    goto :goto_2

    .line 501
    .restart local v0    # "activeSince":J
    :catch_1
    move-exception v4

    .line 502
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v8, 0x0

    iput-object v8, v7, Lcom/android/stockssettings/applications/RunningState$ServiceItem;->mDescription:Ljava/lang/String;

    goto :goto_3

    .line 505
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_6
    iget-boolean v8, v7, Lcom/android/stockssettings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    if-nez v8, :cond_7

    .line 506
    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/stockssettings/applications/RunningState$ServiceItem;->mShownAsStarted:Z

    .line 507
    const/4 v2, 0x1

    .line 509
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0908b5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/stockssettings/applications/RunningState$ServiceItem;->mDescription:Ljava/lang/String;

    goto :goto_3
.end method

.method updateSize(Landroid/content/Context;JI)Z
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pss"    # J
    .param p4, "curSeq"    # I

    .prologue
    const/4 v4, 0x0

    .line 517
    const-wide/16 v2, 0x400

    mul-long/2addr v2, p2

    iput-wide v2, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mSize:J

    .line 518
    iget v1, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mCurSeq:I

    if-ne v1, p4, :cond_0

    .line 519
    iget-wide v2, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mSize:J

    invoke-static {p1, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 521
    .local v0, "sizeStr":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mSizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 522
    iput-object v0, p0, Lcom/android/stockssettings/applications/RunningState$ProcessItem;->mSizeStr:Ljava/lang/String;

    .line 529
    .end local v0    # "sizeStr":Ljava/lang/String;
    :cond_0
    return v4
.end method
