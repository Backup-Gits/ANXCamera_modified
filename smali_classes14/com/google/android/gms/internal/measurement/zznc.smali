.class public final Lcom/google/android/gms/internal/measurement/zznc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzmz;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/measurement/zzcl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzcl<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/gms/internal/measurement/zzcl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzcl<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzc:Lcom/google/android/gms/internal/measurement/zzcl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/measurement/zzcl<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/measurement/zzcr;

    const-string v1, "com.google.android.gms.measurement"

    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/zzcm;->zza(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzcr;-><init>(Landroid/net/Uri;)V

    const/4 v1, 0x1

    const-string v2, "measurement.service.sessions.remove_disabled_session_number"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzcr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzcl;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/zznc;->zza:Lcom/google/android/gms/internal/measurement/zzcl;

    const-string v2, "measurement.service.sessions.session_number_enabled"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzcr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzcl;

    move-result-object v2

    sput-object v2, Lcom/google/android/gms/internal/measurement/zznc;->zzb:Lcom/google/android/gms/internal/measurement/zzcl;

    const-string v2, "measurement.service.sessions.session_number_backfill_enabled"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/measurement/zzcr;->zza(Ljava/lang/String;Z)Lcom/google/android/gms/internal/measurement/zzcl;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/measurement/zznc;->zzc:Lcom/google/android/gms/internal/measurement/zzcl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznc;->zza:Lcom/google/android/gms/internal/measurement/zzcl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcl;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzb()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznc;->zzb:Lcom/google/android/gms/internal/measurement/zzcl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcl;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final zzc()Z
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/zznc;->zzc:Lcom/google/android/gms/internal/measurement/zzcl;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/measurement/zzcl;->zzc()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
