#pragma once
#ifndef MIQT_QT6_GEN_QSHAREDMEMORY_H
#define MIQT_QT6_GEN_QSHAREDMEMORY_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QSharedMemory;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSharedMemory QSharedMemory;
typedef struct QTimerEvent QTimerEvent;
#endif

QSharedMemory* QSharedMemory_new();
QSharedMemory* QSharedMemory_new2(struct miqt_string key);
QSharedMemory* QSharedMemory_new3(QObject* parent);
QSharedMemory* QSharedMemory_new4(struct miqt_string key, QObject* parent);
void QSharedMemory_virtbase(QSharedMemory* src, QObject** outptr_QObject);
QMetaObject* QSharedMemory_metaObject(const QSharedMemory* self);
void* QSharedMemory_metacast(QSharedMemory* self, const char* param1);
int QSharedMemory_metacall(QSharedMemory* self, int param1, int param2, void** param3);
struct miqt_string QSharedMemory_tr(const char* s);
void QSharedMemory_setKey(QSharedMemory* self, struct miqt_string key);
struct miqt_string QSharedMemory_key(const QSharedMemory* self);
void QSharedMemory_setNativeKey(QSharedMemory* self, struct miqt_string key);
struct miqt_string QSharedMemory_nativeKey(const QSharedMemory* self);
bool QSharedMemory_create(QSharedMemory* self, ptrdiff_t size);
ptrdiff_t QSharedMemory_size(const QSharedMemory* self);
bool QSharedMemory_attach(QSharedMemory* self);
bool QSharedMemory_isAttached(const QSharedMemory* self);
bool QSharedMemory_detach(QSharedMemory* self);
void* QSharedMemory_data(QSharedMemory* self);
const void* QSharedMemory_constData(const QSharedMemory* self);
const void* QSharedMemory_data2(const QSharedMemory* self);
bool QSharedMemory_lock(QSharedMemory* self);
bool QSharedMemory_unlock(QSharedMemory* self);
int QSharedMemory_error(const QSharedMemory* self);
struct miqt_string QSharedMemory_errorString(const QSharedMemory* self);
struct miqt_string QSharedMemory_tr2(const char* s, const char* c);
struct miqt_string QSharedMemory_tr3(const char* s, const char* c, int n);
bool QSharedMemory_create2(QSharedMemory* self, ptrdiff_t size, int mode);
bool QSharedMemory_attach1(QSharedMemory* self, int mode);
bool QSharedMemory_override_virtual_metacall(void* self, intptr_t slot);
int QSharedMemory_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QSharedMemory_override_virtual_event(void* self, intptr_t slot);
bool QSharedMemory_virtualbase_event(void* self, QEvent* event);
bool QSharedMemory_override_virtual_eventFilter(void* self, intptr_t slot);
bool QSharedMemory_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QSharedMemory_override_virtual_timerEvent(void* self, intptr_t slot);
void QSharedMemory_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QSharedMemory_override_virtual_childEvent(void* self, intptr_t slot);
void QSharedMemory_virtualbase_childEvent(void* self, QChildEvent* event);
bool QSharedMemory_override_virtual_customEvent(void* self, intptr_t slot);
void QSharedMemory_virtualbase_customEvent(void* self, QEvent* event);
bool QSharedMemory_override_virtual_connectNotify(void* self, intptr_t slot);
void QSharedMemory_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QSharedMemory_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QSharedMemory_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QSharedMemory_staticMetaObject();
void QSharedMemory_delete(QSharedMemory* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
