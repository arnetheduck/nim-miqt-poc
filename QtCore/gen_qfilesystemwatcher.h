#pragma once
#ifndef MIQT_QTCORE_GEN_QFILESYSTEMWATCHER_H
#define MIQT_QTCORE_GEN_QFILESYSTEMWATCHER_H

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
class QFileSystemWatcher;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QFileSystemWatcher QFileSystemWatcher;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

QFileSystemWatcher* QFileSystemWatcher_new();
QFileSystemWatcher* QFileSystemWatcher_new2(struct miqt_array /* of struct miqt_string */  paths);
QFileSystemWatcher* QFileSystemWatcher_new3(QObject* parent);
QFileSystemWatcher* QFileSystemWatcher_new4(struct miqt_array /* of struct miqt_string */  paths, QObject* parent);
void QFileSystemWatcher_virtbase(QFileSystemWatcher* src, QObject** outptr_QObject);
QMetaObject* QFileSystemWatcher_metaObject(const QFileSystemWatcher* self);
void* QFileSystemWatcher_metacast(QFileSystemWatcher* self, const char* param1);
int QFileSystemWatcher_metacall(QFileSystemWatcher* self, int param1, int param2, void** param3);
struct miqt_string QFileSystemWatcher_tr(const char* s);
bool QFileSystemWatcher_addPath(QFileSystemWatcher* self, struct miqt_string file);
struct miqt_array /* of struct miqt_string */  QFileSystemWatcher_addPaths(QFileSystemWatcher* self, struct miqt_array /* of struct miqt_string */  files);
bool QFileSystemWatcher_removePath(QFileSystemWatcher* self, struct miqt_string file);
struct miqt_array /* of struct miqt_string */  QFileSystemWatcher_removePaths(QFileSystemWatcher* self, struct miqt_array /* of struct miqt_string */  files);
struct miqt_array /* of struct miqt_string */  QFileSystemWatcher_files(const QFileSystemWatcher* self);
struct miqt_array /* of struct miqt_string */  QFileSystemWatcher_directories(const QFileSystemWatcher* self);
struct miqt_string QFileSystemWatcher_tr2(const char* s, const char* c);
struct miqt_string QFileSystemWatcher_tr3(const char* s, const char* c, int n);
bool QFileSystemWatcher_override_virtual_metaObject(void* self, intptr_t slot);
QMetaObject* QFileSystemWatcher_virtualbase_metaObject(const void* self);
bool QFileSystemWatcher_override_virtual_metacast(void* self, intptr_t slot);
void* QFileSystemWatcher_virtualbase_metacast(void* self, const char* param1);
bool QFileSystemWatcher_override_virtual_metacall(void* self, intptr_t slot);
int QFileSystemWatcher_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QFileSystemWatcher_override_virtual_event(void* self, intptr_t slot);
bool QFileSystemWatcher_virtualbase_event(void* self, QEvent* event);
bool QFileSystemWatcher_override_virtual_eventFilter(void* self, intptr_t slot);
bool QFileSystemWatcher_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QFileSystemWatcher_override_virtual_timerEvent(void* self, intptr_t slot);
void QFileSystemWatcher_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QFileSystemWatcher_override_virtual_childEvent(void* self, intptr_t slot);
void QFileSystemWatcher_virtualbase_childEvent(void* self, QChildEvent* event);
bool QFileSystemWatcher_override_virtual_customEvent(void* self, intptr_t slot);
void QFileSystemWatcher_virtualbase_customEvent(void* self, QEvent* event);
bool QFileSystemWatcher_override_virtual_connectNotify(void* self, intptr_t slot);
void QFileSystemWatcher_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QFileSystemWatcher_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QFileSystemWatcher_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QFileSystemWatcher_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QFileSystemWatcher_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QFileSystemWatcher_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QFileSystemWatcher_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QFileSystemWatcher_staticMetaObject();
void QFileSystemWatcher_delete(QFileSystemWatcher* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
