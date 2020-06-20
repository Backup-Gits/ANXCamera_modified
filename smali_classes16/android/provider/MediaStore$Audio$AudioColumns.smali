.class public interface abstract Landroid/provider/MediaStore$Audio$AudioColumns;
.super Ljava/lang/Object;
.source "MediaStore.java"

# interfaces
.implements Landroid/provider/MediaStore$MediaColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/MediaStore$Audio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AudioColumns"
.end annotation


# static fields
.field public static final ALBUM:Ljava/lang/String; = "album"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final ALBUM_ARTIST:Ljava/lang/String; = "album_artist"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final ALBUM_ID:Ljava/lang/String; = "album_id"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final ALBUM_KEY:Ljava/lang/String; = "album_key"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final ARTIST:Ljava/lang/String; = "artist"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final ARTIST_ID:Ljava/lang/String; = "artist_id"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final ARTIST_KEY:Ljava/lang/String; = "artist_key"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final BOOKMARK:Ljava/lang/String; = "bookmark"
    .annotation runtime Landroid/provider/Column;
        value = 0x1
    .end annotation
.end field

.field public static final COMPILATION:Ljava/lang/String; = "compilation"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final COMPOSER:Ljava/lang/String; = "composer"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final GENRE:Ljava/lang/String; = "genre"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final IS_ALARM:Ljava/lang/String; = "is_alarm"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final IS_AUDIOBOOK:Ljava/lang/String; = "is_audiobook"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final IS_MUSIC:Ljava/lang/String; = "is_music"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final IS_NOTIFICATION:Ljava/lang/String; = "is_notification"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final IS_PODCAST:Ljava/lang/String; = "is_podcast"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final IS_RINGTONE:Ljava/lang/String; = "is_ringtone"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final TITLE_KEY:Ljava/lang/String; = "title_key"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final TITLE_RESOURCE_URI:Ljava/lang/String; = "title_resource_uri"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x3
    .end annotation
.end field

.field public static final TRACK:Ljava/lang/String; = "track"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field

.field public static final YEAR:Ljava/lang/String; = "year"
    .annotation runtime Landroid/provider/Column;
        readOnly = true
        value = 0x1
    .end annotation
.end field
