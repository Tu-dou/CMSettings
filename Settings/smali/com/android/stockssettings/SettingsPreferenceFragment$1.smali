.class Lcom/android/stockssettings/SettingsPreferenceFragment$1;
.super Landroid/database/DataSetObserver;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stockssettings/SettingsPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/SettingsPreferenceFragment;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/stockssettings/SettingsPreferenceFragment$1;->this$0:Lcom/android/stockssettings/SettingsPreferenceFragment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/stockssettings/SettingsPreferenceFragment$1;->this$0:Lcom/android/stockssettings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/stockssettings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 90
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/stockssettings/SettingsPreferenceFragment$1;->this$0:Lcom/android/stockssettings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/stockssettings/SettingsPreferenceFragment;->highlightPreferenceIfNeeded()V

    .line 95
    return-void
.end method
