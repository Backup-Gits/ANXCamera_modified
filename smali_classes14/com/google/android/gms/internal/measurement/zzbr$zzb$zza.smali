.class public final Lcom/google/android/gms/internal/measurement/zzbr$zzb$zza;
.super Lcom/google/android/gms/internal/measurement/zzfd$zzb;
.source "com.google.android.gms:play-services-measurement@@17.3.0"

# interfaces
.implements Lcom/google/android/gms/internal/measurement/zzgq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/measurement/zzbr$zzb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "zza"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/measurement/zzfd$zzb<",
        "Lcom/google/android/gms/internal/measurement/zzbr$zzb;",
        "Lcom/google/android/gms/internal/measurement/zzbr$zzb$zza;",
        ">;",
        "Lcom/google/android/gms/internal/measurement/zzgq;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzbr$zzb;->zzf()Lcom/google/android/gms/internal/measurement/zzbr$zzb;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;-><init>(Lcom/google/android/gms/internal/measurement/zzfd;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/zzbs;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/measurement/zzbr$zzb$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(I)Lcom/google/android/gms/internal/measurement/zzbr$zzb$zza;
    .locals 1

    nop

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzq()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbr$zzb$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbr$zzb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/measurement/zzbr$zzb;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzb;I)V

    return-object p0
.end method

.method public final zza(J)Lcom/google/android/gms/internal/measurement/zzbr$zzb$zza;
    .locals 1

    nop

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzb:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzq()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/measurement/zzfd$zzb;->zzb:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/zzbr$zzb$zza;->zza:Lcom/google/android/gms/internal/measurement/zzfd;

    check-cast v0, Lcom/google/android/gms/internal/measurement/zzbr$zzb;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/measurement/zzbr$zzb;->zza(Lcom/google/android/gms/internal/measurement/zzbr$zzb;J)V

    return-object p0
.end method
