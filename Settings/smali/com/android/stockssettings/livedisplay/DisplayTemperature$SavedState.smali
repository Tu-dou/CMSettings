.class Lcom/android/stockssettings/livedisplay/DisplayTemperature$SavedState;
.super Landroid/preference/Preference$BaseSavedState;
.source "DisplayTemperature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stockssettings/livedisplay/DisplayTemperature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/stockssettings/livedisplay/DisplayTemperature$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentDayTemperature:I

.field currentNightTemperature:I

.field originalDayTemperature:I

.field originalNightTemperature:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 190
    new-instance v0, Lcom/android/stockssettings/livedisplay/DisplayTemperature$SavedState$1;

    invoke-direct {v0}, Lcom/android/stockssettings/livedisplay/DisplayTemperature$SavedState$1;-><init>()V

    sput-object v0, Lcom/android/stockssettings/livedisplay/DisplayTemperature$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 174
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/stockssettings/livedisplay/DisplayTemperature$SavedState;->originalDayTemperature:I

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/stockssettings/livedisplay/DisplayTemperature$SavedState;->originalNightTemperature:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/stockssettings/livedisplay/DisplayTemperature$SavedState;->currentDayTemperature:I

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/stockssettings/livedisplay/DisplayTemperature$SavedState;->currentNightTemperature:I

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 170
    invoke-direct {p0, p1}, Landroid/preference/Preference$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 171
    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 183
    invoke-super {p0, p1, p2}, Landroid/preference/Preference$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 184
    iget v0, p0, Lcom/android/stockssettings/livedisplay/DisplayTemperature$SavedState;->originalDayTemperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v0, p0, Lcom/android/stockssettings/livedisplay/DisplayTemperature$SavedState;->originalNightTemperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget v0, p0, Lcom/android/stockssettings/livedisplay/DisplayTemperature$SavedState;->currentDayTemperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget v0, p0, Lcom/android/stockssettings/livedisplay/DisplayTemperature$SavedState;->currentNightTemperature:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    return-void
.end method
