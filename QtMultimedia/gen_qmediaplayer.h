#pragma once
#ifndef MIQT_QTMULTIMEDIA_GEN_QMEDIAPLAYER_H
#define MIQT_QTMULTIMEDIA_GEN_QMEDIAPLAYER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractVideoSurface;
class QChildEvent;
class QEvent;
class QIODevice;
class QMediaContent;
class QMediaObject;
class QMediaPlayer;
class QMediaPlaylist;
class QMediaService;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QAbstractVideoSurface QAbstractVideoSurface;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QIODevice QIODevice;
typedef struct QMediaContent QMediaContent;
typedef struct QMediaObject QMediaObject;
typedef struct QMediaPlayer QMediaPlayer;
typedef struct QMediaPlaylist QMediaPlaylist;
typedef struct QMediaService QMediaService;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QMediaPlayer_VTable {
	void (*destructor)(struct QMediaPlayer_VTable* vtbl, QMediaPlayer* self);
	QMetaObject* (*metaObject)(struct QMediaPlayer_VTable* vtbl, const QMediaPlayer* self);
	void* (*metacast)(struct QMediaPlayer_VTable* vtbl, QMediaPlayer* self, const char* param1);
	int (*metacall)(struct QMediaPlayer_VTable* vtbl, QMediaPlayer* self, int param1, int param2, void** param3);
	int (*availability)(struct QMediaPlayer_VTable* vtbl, const QMediaPlayer* self);
	bool (*bind)(struct QMediaPlayer_VTable* vtbl, QMediaPlayer* self, QObject* param1);
	void (*unbind)(struct QMediaPlayer_VTable* vtbl, QMediaPlayer* self, QObject* param1);
	bool (*isAvailable)(struct QMediaPlayer_VTable* vtbl, const QMediaPlayer* self);
	QMediaService* (*service)(struct QMediaPlayer_VTable* vtbl, const QMediaPlayer* self);
	bool (*event)(struct QMediaPlayer_VTable* vtbl, QMediaPlayer* self, QEvent* event);
	bool (*eventFilter)(struct QMediaPlayer_VTable* vtbl, QMediaPlayer* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QMediaPlayer_VTable* vtbl, QMediaPlayer* self, QTimerEvent* event);
	void (*childEvent)(struct QMediaPlayer_VTable* vtbl, QMediaPlayer* self, QChildEvent* event);
	void (*customEvent)(struct QMediaPlayer_VTable* vtbl, QMediaPlayer* self, QEvent* event);
	void (*connectNotify)(struct QMediaPlayer_VTable* vtbl, QMediaPlayer* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QMediaPlayer_VTable* vtbl, QMediaPlayer* self, QMetaMethod* signal);
};
QMediaPlayer* QMediaPlayer_new(struct QMediaPlayer_VTable* vtbl);
QMediaPlayer* QMediaPlayer_new2(struct QMediaPlayer_VTable* vtbl, QObject* parent);
QMediaPlayer* QMediaPlayer_new3(struct QMediaPlayer_VTable* vtbl, QObject* parent, int flags);
void QMediaPlayer_virtbase(QMediaPlayer* src, QMediaObject** outptr_QMediaObject);
QMetaObject* QMediaPlayer_metaObject(const QMediaPlayer* self);
void* QMediaPlayer_metacast(QMediaPlayer* self, const char* param1);
int QMediaPlayer_metacall(QMediaPlayer* self, int param1, int param2, void** param3);
struct miqt_string QMediaPlayer_tr(const char* s);
struct miqt_string QMediaPlayer_trUtf8(const char* s);
int QMediaPlayer_hasSupport(struct miqt_string mimeType);
struct miqt_array /* of struct miqt_string */  QMediaPlayer_supportedMimeTypes();
void QMediaPlayer_setVideoOutput(QMediaPlayer* self, QVideoWidget* videoOutput);
void QMediaPlayer_setVideoOutputWithVideoOutput(QMediaPlayer* self, QGraphicsVideoItem* videoOutput);
void QMediaPlayer_setVideoOutputWithSurface(QMediaPlayer* self, QAbstractVideoSurface* surface);
void QMediaPlayer_setVideoOutputWithSurfaces(QMediaPlayer* self, struct miqt_array /* of QAbstractVideoSurface* */  surfaces);
QMediaContent* QMediaPlayer_media(const QMediaPlayer* self);
QIODevice* QMediaPlayer_mediaStream(const QMediaPlayer* self);
QMediaPlaylist* QMediaPlayer_playlist(const QMediaPlayer* self);
QMediaContent* QMediaPlayer_currentMedia(const QMediaPlayer* self);
int QMediaPlayer_state(const QMediaPlayer* self);
int QMediaPlayer_mediaStatus(const QMediaPlayer* self);
long long QMediaPlayer_duration(const QMediaPlayer* self);
long long QMediaPlayer_position(const QMediaPlayer* self);
int QMediaPlayer_volume(const QMediaPlayer* self);
bool QMediaPlayer_isMuted(const QMediaPlayer* self);
bool QMediaPlayer_isAudioAvailable(const QMediaPlayer* self);
bool QMediaPlayer_isVideoAvailable(const QMediaPlayer* self);
int QMediaPlayer_bufferStatus(const QMediaPlayer* self);
bool QMediaPlayer_isSeekable(const QMediaPlayer* self);
double QMediaPlayer_playbackRate(const QMediaPlayer* self);
int QMediaPlayer_error(const QMediaPlayer* self);
struct miqt_string QMediaPlayer_errorString(const QMediaPlayer* self);
QNetworkConfiguration QMediaPlayer_currentNetworkConfiguration(const QMediaPlayer* self);
int QMediaPlayer_availability(const QMediaPlayer* self);
int QMediaPlayer_audioRole(const QMediaPlayer* self);
void QMediaPlayer_setAudioRole(QMediaPlayer* self, int audioRole);
struct miqt_array /* of int */  QMediaPlayer_supportedAudioRoles(const QMediaPlayer* self);
struct miqt_string QMediaPlayer_customAudioRole(const QMediaPlayer* self);
void QMediaPlayer_setCustomAudioRole(QMediaPlayer* self, struct miqt_string audioRole);
struct miqt_array /* of struct miqt_string */  QMediaPlayer_supportedCustomAudioRoles(const QMediaPlayer* self);
void QMediaPlayer_play(QMediaPlayer* self);
void QMediaPlayer_pause(QMediaPlayer* self);
void QMediaPlayer_stop(QMediaPlayer* self);
void QMediaPlayer_setPosition(QMediaPlayer* self, long long position);
void QMediaPlayer_setVolume(QMediaPlayer* self, int volume);
void QMediaPlayer_setMuted(QMediaPlayer* self, bool muted);
void QMediaPlayer_setPlaybackRate(QMediaPlayer* self, double rate);
void QMediaPlayer_setMedia(QMediaPlayer* self, QMediaContent* media);
void QMediaPlayer_setPlaylist(QMediaPlayer* self, QMediaPlaylist* playlist);
void QMediaPlayer_setNetworkConfigurations(QMediaPlayer* self, struct miqt_array /* of QNetworkConfiguration */  configurations);
void QMediaPlayer_mediaChanged(QMediaPlayer* self, QMediaContent* media);
void QMediaPlayer_connect_mediaChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_currentMediaChanged(QMediaPlayer* self, QMediaContent* media);
void QMediaPlayer_connect_currentMediaChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_stateChanged(QMediaPlayer* self, int newState);
void QMediaPlayer_connect_stateChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_mediaStatusChanged(QMediaPlayer* self, int status);
void QMediaPlayer_connect_mediaStatusChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_durationChanged(QMediaPlayer* self, long long duration);
void QMediaPlayer_connect_durationChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_positionChanged(QMediaPlayer* self, long long position);
void QMediaPlayer_connect_positionChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_volumeChanged(QMediaPlayer* self, int volume);
void QMediaPlayer_connect_volumeChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_mutedChanged(QMediaPlayer* self, bool muted);
void QMediaPlayer_connect_mutedChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_audioAvailableChanged(QMediaPlayer* self, bool available);
void QMediaPlayer_connect_audioAvailableChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_videoAvailableChanged(QMediaPlayer* self, bool videoAvailable);
void QMediaPlayer_connect_videoAvailableChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_bufferStatusChanged(QMediaPlayer* self, int percentFilled);
void QMediaPlayer_connect_bufferStatusChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_seekableChanged(QMediaPlayer* self, bool seekable);
void QMediaPlayer_connect_seekableChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_playbackRateChanged(QMediaPlayer* self, double rate);
void QMediaPlayer_connect_playbackRateChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_audioRoleChanged(QMediaPlayer* self, int role);
void QMediaPlayer_connect_audioRoleChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_customAudioRoleChanged(QMediaPlayer* self, struct miqt_string role);
void QMediaPlayer_connect_customAudioRoleChanged(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_errorWithError(QMediaPlayer* self, int error);
void QMediaPlayer_connect_errorWithError(QMediaPlayer* self, intptr_t slot);
void QMediaPlayer_networkConfigurationChanged(QMediaPlayer* self, const QNetworkConfiguration* configuration);
void QMediaPlayer_connect_networkConfigurationChanged(QMediaPlayer* self, intptr_t slot);
bool QMediaPlayer_bind(QMediaPlayer* self, QObject* param1);
void QMediaPlayer_unbind(QMediaPlayer* self, QObject* param1);
struct miqt_string QMediaPlayer_tr2(const char* s, const char* c);
struct miqt_string QMediaPlayer_tr3(const char* s, const char* c, int n);
struct miqt_string QMediaPlayer_trUtf82(const char* s, const char* c);
struct miqt_string QMediaPlayer_trUtf83(const char* s, const char* c, int n);
int QMediaPlayer_hasSupport2(struct miqt_string mimeType, struct miqt_array /* of struct miqt_string */  codecs);
int QMediaPlayer_hasSupport3(struct miqt_string mimeType, struct miqt_array /* of struct miqt_string */  codecs, int flags);
struct miqt_array /* of struct miqt_string */  QMediaPlayer_supportedMimeTypes1(int flags);
void QMediaPlayer_setMedia2(QMediaPlayer* self, QMediaContent* media, QIODevice* stream);
QMetaObject* QMediaPlayer_virtualbase_metaObject(const void* self);
void* QMediaPlayer_virtualbase_metacast(void* self, const char* param1);
int QMediaPlayer_virtualbase_metacall(void* self, int param1, int param2, void** param3);
int QMediaPlayer_virtualbase_availability(const void* self);
bool QMediaPlayer_virtualbase_bind(void* self, QObject* param1);
void QMediaPlayer_virtualbase_unbind(void* self, QObject* param1);
bool QMediaPlayer_virtualbase_isAvailable(const void* self);
QMediaService* QMediaPlayer_virtualbase_service(const void* self);
bool QMediaPlayer_virtualbase_event(void* self, QEvent* event);
bool QMediaPlayer_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QMediaPlayer_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QMediaPlayer_virtualbase_childEvent(void* self, QChildEvent* event);
void QMediaPlayer_virtualbase_customEvent(void* self, QEvent* event);
void QMediaPlayer_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QMediaPlayer_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QMediaPlayer_protectedbase_addPropertyWatch(void* self, struct miqt_string name);
void QMediaPlayer_protectedbase_removePropertyWatch(void* self, struct miqt_string name);
QObject* QMediaPlayer_protectedbase_sender(const void* self);
int QMediaPlayer_protectedbase_senderSignalIndex(const void* self);
int QMediaPlayer_protectedbase_receivers(const void* self, const char* signal);
bool QMediaPlayer_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QMediaPlayer_staticMetaObject();
void QMediaPlayer_delete(QMediaPlayer* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
