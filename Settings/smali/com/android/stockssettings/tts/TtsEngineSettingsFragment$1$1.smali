.class Lcom/android/stockssettings/tts/TtsEngineSettingsFragment$1$1;
.super Ljava/lang/Object;
.source "TtsEngineSettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stockssettings/tts/TtsEngineSettingsFragment$1;->onInit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/stockssettings/tts/TtsEngineSettingsFragment$1;


# direct methods
.method constructor <init>(Lcom/android/stockssettings/tts/TtsEngineSettingsFragment$1;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/stockssettings/tts/TtsEngineSettingsFragment$1$1;->this$1:Lcom/android/stockssettings/tts/TtsEngineSettingsFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/stockssettings/tts/TtsEngineSettingsFragment$1$1;->this$1:Lcom/android/stockssettings/tts/TtsEngineSettingsFragment$1;

    iget-object v0, v0, Lcom/android/stockssettings/tts/TtsEngineSettingsFragment$1;->this$0:Lcom/android/stockssettings/tts/TtsEngineSettingsFragment;

    # getter for: Lcom/android/stockssettings/tts/TtsEngineSettingsFragment;->mLocalePreference:Landroid/preference/ListPreference;
    invoke-static {v0}, Lcom/android/stockssettings/tts/TtsEngineSettingsFragment;->access$000(Lcom/android/stockssettings/tts/TtsEngineSettingsFragment;)Landroid/preference/ListPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 81
    return-void
.end method
