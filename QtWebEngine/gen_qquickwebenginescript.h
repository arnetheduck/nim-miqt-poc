#pragma once
#ifndef MIQT_QTWEBENGINE_GEN_QQUICKWEBENGINESCRIPT_H
#define MIQT_QTWEBENGINE_GEN_QQUICKWEBENGINESCRIPT_H

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
class QQuickWebEngineScript;
class QTimerEvent;
class QUrl;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QQuickWebEngineScript QQuickWebEngineScript;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
#endif

struct QQuickWebEngineScript_VTable {
	void (*destructor)(struct QQuickWebEngineScript_VTable* vtbl, QQuickWebEngineScript* self);
	QMetaObject* (*metaObject)(struct QQuickWebEngineScript_VTable* vtbl, const QQuickWebEngineScript* self);
	void* (*metacast)(struct QQuickWebEngineScript_VTable* vtbl, QQuickWebEngineScript* self, const char* param1);
	int (*metacall)(struct QQuickWebEngineScript_VTable* vtbl, QQuickWebEngineScript* self, int param1, int param2, void** param3);
	void (*timerEvent)(struct QQuickWebEngineScript_VTable* vtbl, QQuickWebEngineScript* self, QTimerEvent* e);
	bool (*event)(struct QQuickWebEngineScript_VTable* vtbl, QQuickWebEngineScript* self, QEvent* event);
	bool (*eventFilter)(struct QQuickWebEngineScript_VTable* vtbl, QQuickWebEngineScript* self, QObject* watched, QEvent* event);
	void (*childEvent)(struct QQuickWebEngineScript_VTable* vtbl, QQuickWebEngineScript* self, QChildEvent* event);
	void (*customEvent)(struct QQuickWebEngineScript_VTable* vtbl, QQuickWebEngineScript* self, QEvent* event);
	void (*connectNotify)(struct QQuickWebEngineScript_VTable* vtbl, QQuickWebEngineScript* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QQuickWebEngineScript_VTable* vtbl, QQuickWebEngineScript* self, QMetaMethod* signal);
};
QQuickWebEngineScript* QQuickWebEngineScript_new(struct QQuickWebEngineScript_VTable* vtbl);
QQuickWebEngineScript* QQuickWebEngineScript_new2(struct QQuickWebEngineScript_VTable* vtbl, QObject* parent);
void QQuickWebEngineScript_virtbase(QQuickWebEngineScript* src, QObject** outptr_QObject);
QMetaObject* QQuickWebEngineScript_metaObject(const QQuickWebEngineScript* self);
void* QQuickWebEngineScript_metacast(QQuickWebEngineScript* self, const char* param1);
int QQuickWebEngineScript_metacall(QQuickWebEngineScript* self, int param1, int param2, void** param3);
struct miqt_string QQuickWebEngineScript_tr(const char* s);
struct miqt_string QQuickWebEngineScript_trUtf8(const char* s);
struct miqt_string QQuickWebEngineScript_toString(const QQuickWebEngineScript* self);
struct miqt_string QQuickWebEngineScript_name(const QQuickWebEngineScript* self);
QUrl* QQuickWebEngineScript_sourceUrl(const QQuickWebEngineScript* self);
struct miqt_string QQuickWebEngineScript_sourceCode(const QQuickWebEngineScript* self);
int QQuickWebEngineScript_injectionPoint(const QQuickWebEngineScript* self);
int QQuickWebEngineScript_worldId(const QQuickWebEngineScript* self);
bool QQuickWebEngineScript_runOnSubframes(const QQuickWebEngineScript* self);
void QQuickWebEngineScript_setName(QQuickWebEngineScript* self, struct miqt_string name);
void QQuickWebEngineScript_setSourceUrl(QQuickWebEngineScript* self, QUrl* url);
void QQuickWebEngineScript_setSourceCode(QQuickWebEngineScript* self, struct miqt_string code);
void QQuickWebEngineScript_setInjectionPoint(QQuickWebEngineScript* self, int injectionPoint);
void QQuickWebEngineScript_setWorldId(QQuickWebEngineScript* self, int scriptWorldId);
void QQuickWebEngineScript_setRunOnSubframes(QQuickWebEngineScript* self, bool on);
void QQuickWebEngineScript_nameChanged(QQuickWebEngineScript* self, struct miqt_string name);
void QQuickWebEngineScript_connect_nameChanged(QQuickWebEngineScript* self, intptr_t slot);
void QQuickWebEngineScript_sourceUrlChanged(QQuickWebEngineScript* self, QUrl* url);
void QQuickWebEngineScript_connect_sourceUrlChanged(QQuickWebEngineScript* self, intptr_t slot);
void QQuickWebEngineScript_sourceCodeChanged(QQuickWebEngineScript* self, struct miqt_string code);
void QQuickWebEngineScript_connect_sourceCodeChanged(QQuickWebEngineScript* self, intptr_t slot);
void QQuickWebEngineScript_injectionPointChanged(QQuickWebEngineScript* self, int injectionPoint);
void QQuickWebEngineScript_connect_injectionPointChanged(QQuickWebEngineScript* self, intptr_t slot);
void QQuickWebEngineScript_worldIdChanged(QQuickWebEngineScript* self, int scriptWorldId);
void QQuickWebEngineScript_connect_worldIdChanged(QQuickWebEngineScript* self, intptr_t slot);
void QQuickWebEngineScript_runOnSubframesChanged(QQuickWebEngineScript* self, bool on);
void QQuickWebEngineScript_connect_runOnSubframesChanged(QQuickWebEngineScript* self, intptr_t slot);
void QQuickWebEngineScript_timerEvent(QQuickWebEngineScript* self, QTimerEvent* e);
struct miqt_string QQuickWebEngineScript_tr2(const char* s, const char* c);
struct miqt_string QQuickWebEngineScript_tr3(const char* s, const char* c, int n);
struct miqt_string QQuickWebEngineScript_trUtf82(const char* s, const char* c);
struct miqt_string QQuickWebEngineScript_trUtf83(const char* s, const char* c, int n);
QMetaObject* QQuickWebEngineScript_virtualbase_metaObject(const void* self);
void* QQuickWebEngineScript_virtualbase_metacast(void* self, const char* param1);
int QQuickWebEngineScript_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QQuickWebEngineScript_virtualbase_timerEvent(void* self, QTimerEvent* e);
bool QQuickWebEngineScript_virtualbase_event(void* self, QEvent* event);
bool QQuickWebEngineScript_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QQuickWebEngineScript_virtualbase_childEvent(void* self, QChildEvent* event);
void QQuickWebEngineScript_virtualbase_customEvent(void* self, QEvent* event);
void QQuickWebEngineScript_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QQuickWebEngineScript_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QQuickWebEngineScript_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QQuickWebEngineScript_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QQuickWebEngineScript_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QQuickWebEngineScript_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QQuickWebEngineScript_staticMetaObject();
void QQuickWebEngineScript_delete(QQuickWebEngineScript* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
