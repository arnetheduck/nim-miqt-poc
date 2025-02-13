#pragma once
#ifndef MIQT_QTSPATIALAUDIO_GEN_QAUDIOLISTENER_H
#define MIQT_QTSPATIALAUDIO_GEN_QAUDIOLISTENER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAudioEngine;
class QAudioListener;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QObject;
class QQuaternion;
class QTimerEvent;
class QVector3D;
#else
typedef struct QAudioEngine QAudioEngine;
typedef struct QAudioListener QAudioListener;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QObject QObject;
typedef struct QQuaternion QQuaternion;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVector3D QVector3D;
#endif

struct QAudioListener_VTable {
	void (*destructor)(struct QAudioListener_VTable* vtbl, QAudioListener* self);
	int (*metacall)(struct QAudioListener_VTable* vtbl, QAudioListener* self, int param1, int param2, void** param3);
	bool (*event)(struct QAudioListener_VTable* vtbl, QAudioListener* self, QEvent* event);
	bool (*eventFilter)(struct QAudioListener_VTable* vtbl, QAudioListener* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QAudioListener_VTable* vtbl, QAudioListener* self, QTimerEvent* event);
	void (*childEvent)(struct QAudioListener_VTable* vtbl, QAudioListener* self, QChildEvent* event);
	void (*customEvent)(struct QAudioListener_VTable* vtbl, QAudioListener* self, QEvent* event);
	void (*connectNotify)(struct QAudioListener_VTable* vtbl, QAudioListener* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAudioListener_VTable* vtbl, QAudioListener* self, QMetaMethod* signal);
};
QAudioListener* QAudioListener_new(struct QAudioListener_VTable* vtbl, QAudioEngine* engine);
void QAudioListener_virtbase(QAudioListener* src, QObject** outptr_QObject);
void QAudioListener_setPosition(QAudioListener* self, QVector3D* pos);
QVector3D* QAudioListener_position(const QAudioListener* self);
void QAudioListener_setRotation(QAudioListener* self, QQuaternion* q);
QQuaternion* QAudioListener_rotation(const QAudioListener* self);
QAudioEngine* QAudioListener_engine(const QAudioListener* self);
int QAudioListener_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QAudioListener_virtualbase_event(void* self, QEvent* event);
bool QAudioListener_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAudioListener_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAudioListener_virtualbase_childEvent(void* self, QChildEvent* event);
void QAudioListener_virtualbase_customEvent(void* self, QEvent* event);
void QAudioListener_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAudioListener_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QAudioListener_protectedbase_sender(const void* self);
int QAudioListener_protectedbase_senderSignalIndex(const void* self);
int QAudioListener_protectedbase_receivers(const void* self, const char* signal);
bool QAudioListener_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
void QAudioListener_delete(QAudioListener* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
