.class Landroid/telephony/JapanesePhoneNumberFormatter;
.super Ljava/lang/Object;
.source "JapanesePhoneNumberFormatter.java"


# static fields
.field private static FORMAT_MAP:[S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x4ba

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Landroid/telephony/JapanesePhoneNumberFormatter;->FORMAT_MAP:[S

    return-void

    :array_0
    .array-data 2
        -0x64s
        0xas
        0xdcs
        -0xfs
        0x19as
        0x212s
        0x4b0s
        0x29es
        0x30cs
        0x424s
        -0x64s
        -0x19s
        0x14s
        0x28s
        0x46s
        0x64s
        0x96s
        0xbes
        0xc8s
        0xd2s
        -0x24s
        -0x64s
        -0x64s
        -0x23s
        -0x23s
        -0x23s
        0x1es
        -0x64s
        -0x64s
        -0x64s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x64s
        -0x64s
        -0x64s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        0x32s
        -0x23s
        0x3cs
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x2ds
        -0x23s
        -0x64s
        -0x64s
        -0x23s
        -0x23s
        -0x23s
        0x50s
        0x5as
        -0x64s
        -0x64s
        -0x64s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        0x6es
        0x78s
        0x82s
        -0x23s
        0x8cs
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x2ds
        -0x23s
        -0x23s
        -0x64s
        -0x64s
        -0x23s
        0xa0s
        0xaas
        0xb4s
        -0x23s
        -0x23s
        -0x64s
        -0x64s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x2ds
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x2ds
        -0x2ds
        -0x23s
        -0x2ds
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x64s
        -0x64s
        0xe6s
        0xfas
        0x104s
        0x10es
        0x140s
        0x154s
        0x168s
        0x186s
        -0x23s
        -0x19s
        -0x19s
        0xf0s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        0x118s
        0x122s
        0x12cs
        0x136s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        0x14as
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        0x15es
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        0x172s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        0x17cs
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        0x190s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0xfs
        -0xfs
        0x1a4s
        0x1ccs
        -0x19s
        -0x19s
        0x1d6s
        0x1e0s
        0x1f4s
        0x1fes
        -0xfs
        -0x19s
        0x1aes
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        0x1b8s
        0x1c2s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0xfs
        -0x19s
        -0xfs
        -0xfs
        -0xfs
        -0xfs
        -0xfs
        -0x19s
        -0x19s
        -0xfs
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        0x1eas
        -0xfs
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0xfs
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0xfs
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        0x208s
        -0x64s
        -0x64s
        -0x2ds
        -0x64s
        -0x2ds
        -0x64s
        -0x2ds
        -0x64s
        -0x2ds
        -0x64s
        -0x1as
        -0x64s
        -0x19s
        0x21cs
        0x244s
        0x24es
        0x258s
        0x262s
        0x276s
        0x280s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        0x226s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        0x230s
        0x23as
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x64s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x24s
        -0x64s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        0x26cs
        -0x23s
        -0x23s
        -0x64s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        0x28as
        -0x23s
        0x294s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x1as
        -0x64s
        0x2a8s
        0x2b2s
        0x2bcs
        -0x19s
        0x2d0s
        0x2das
        -0x19s
        0x2e4s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x64s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        0x2c6s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        0x2ees
        0x2f8s
        0x302s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        0x316s
        -0x64s
        0x320s
        0x352s
        0x384s
        0x398s
        0x3acs
        0x406s
        0x410s
        0x41as
        -0x24s
        -0x1as
        -0x1as
        -0x1as
        -0x1as
        -0x1as
        -0x1as
        -0x1as
        -0x1as
        -0x1as
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        0x32as
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        0x334s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        0x33es
        -0x23s
        0x348s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x64s
        -0x19s
        -0x19s
        -0x19s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        0x35cs
        -0x23s
        0x366s
        0x370s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x2ds
        -0x23s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        0x37as
        -0x64s
        -0x64s
        -0x64s
        -0x19s
        -0x2ds
        -0x2ds
        -0x19s
        -0x2ds
        -0x2ds
        -0x19s
        -0x2ds
        -0x2ds
        -0x2ds
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        0x38es
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x64s
        0x3a2s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x64s
        -0x64s
        -0x2ds
        -0x64s
        -0x2ds
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x19s
        -0x19s
        -0x19s
        0x3b6s
        -0x19s
        0x3cas
        0x3des
        -0x23s
        0x3e8s
        0x3f2s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        0x3c0s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x2ds
        -0x2ds
        -0x2ds
        -0x2ds
        -0x2ds
        -0x23s
        -0x2ds
        -0x2ds
        -0x2ds
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        0x3d4s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x64s
        -0x64s
        -0x19s
        -0x19s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        0x3fcs
        -0x2ds
        -0x2ds
        -0x23s
        -0x23s
        -0x2ds
        -0x2ds
        -0x2ds
        -0x2ds
        -0x2ds
        -0x2ds
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x1as
        -0x64s
        0x42es
        0x438s
        0x442s
        0x456s
        0x460s
        0x46as
        0x474s
        0x488s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x64s
        -0x23s
        -0x23s
        -0x23s
        -0x64s
        -0x23s
        -0x23s
        -0x23s
        0x44cs
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x23s
        -0x19s
        -0x19s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        0x47es
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x2ds
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        0x492s
        -0x19s
        -0x23s
        0x49cs
        -0x23s
        0x4a6s
        -0x23s
        -0x19s
        -0x19s
        -0x64s
        -0x64s
        -0x2ds
        -0x2ds
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x64s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x19s
        -0x19s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x23s
        -0x2ds
        -0x1as
        -0xfs
        -0xfs
        -0xfs
        -0xfs
        -0xfs
        -0xfs
        -0xfs
        -0xfs
        -0xfs
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Landroid/text/Editable;)V
    .locals 12
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    const/4 v0, 0x1

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    const/16 v2, 0x30

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-le v1, v3, :cond_0

    invoke-interface {p0, v4, v3}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "+81"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    if-lt v1, v5, :cond_a

    invoke-interface {p0, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    if-eq v5, v2, :cond_1

    goto/16 :goto_4

    :cond_1
    :goto_0
    invoke-interface {p0, v4, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    :goto_1
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_2

    add-int/lit8 v7, v6, 0x1

    invoke-interface {p0, v6, v7}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v1

    move v6, v0

    const/4 v7, 0x0

    :goto_2
    const-string v8, "-"

    if-ge v6, v1, :cond_8

    invoke-interface {p0, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->isDigit(C)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-interface {p0, v4, v1, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void

    :cond_4
    sget-object v10, Landroid/telephony/JapanesePhoneNumberFormatter;->FORMAT_MAP:[S

    add-int v11, v7, v9

    sub-int/2addr v11, v2

    aget-short v10, v10, v11

    if-gez v10, :cond_7

    const/16 v2, -0x64

    if-gt v10, v2, :cond_5

    invoke-interface {p0, v4, v1, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void

    :cond_5
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0xa

    add-int/2addr v2, v0

    if-le v1, v2, :cond_6

    invoke-interface {p0, v2, v8}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_6
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v0

    if-le v1, v4, :cond_8

    invoke-interface {p0, v4, v8}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_3

    :cond_7
    move v7, v10

    nop

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    if-le v1, v3, :cond_9

    if-ne v0, v3, :cond_9

    invoke-interface {p0, v0, v8}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_9
    return-void

    :cond_a
    :goto_4
    return-void
.end method
