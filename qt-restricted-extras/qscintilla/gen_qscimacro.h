#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCIMACRO_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCIMACRO_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
class QsciMacro;
class QsciScintilla;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QsciMacro QsciMacro;
typedef struct QsciScintilla QsciScintilla;
#endif

struct QsciMacro_VTable {
	void (*destructor)(struct QsciMacro_VTable* vtbl, QsciMacro* self);
	QMetaObject* (*metaObject)(struct QsciMacro_VTable* vtbl, const QsciMacro* self);
	void* (*metacast)(struct QsciMacro_VTable* vtbl, QsciMacro* self, const char* param1);
	int (*metacall)(struct QsciMacro_VTable* vtbl, QsciMacro* self, int param1, int param2, void** param3);
	void (*play)(struct QsciMacro_VTable* vtbl, QsciMacro* self);
	void (*startRecording)(struct QsciMacro_VTable* vtbl, QsciMacro* self);
	void (*endRecording)(struct QsciMacro_VTable* vtbl, QsciMacro* self);
	bool (*event)(struct QsciMacro_VTable* vtbl, QsciMacro* self, QEvent* event);
	bool (*eventFilter)(struct QsciMacro_VTable* vtbl, QsciMacro* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciMacro_VTable* vtbl, QsciMacro* self, QTimerEvent* event);
	void (*childEvent)(struct QsciMacro_VTable* vtbl, QsciMacro* self, QChildEvent* event);
	void (*customEvent)(struct QsciMacro_VTable* vtbl, QsciMacro* self, QEvent* event);
	void (*connectNotify)(struct QsciMacro_VTable* vtbl, QsciMacro* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciMacro_VTable* vtbl, QsciMacro* self, QMetaMethod* signal);
};
QsciMacro* QsciMacro_new(struct QsciMacro_VTable* vtbl, QsciScintilla* parent);
QsciMacro* QsciMacro_new2(struct QsciMacro_VTable* vtbl, struct miqt_string asc, QsciScintilla* parent);
void QsciMacro_virtbase(QsciMacro* src, QObject** outptr_QObject);
QMetaObject* QsciMacro_metaObject(const QsciMacro* self);
void* QsciMacro_metacast(QsciMacro* self, const char* param1);
int QsciMacro_metacall(QsciMacro* self, int param1, int param2, void** param3);
struct miqt_string QsciMacro_tr(const char* s);
struct miqt_string QsciMacro_trUtf8(const char* s);
void QsciMacro_clear(QsciMacro* self);
bool QsciMacro_load(QsciMacro* self, struct miqt_string asc);
struct miqt_string QsciMacro_save(const QsciMacro* self);
void QsciMacro_play(QsciMacro* self);
void QsciMacro_startRecording(QsciMacro* self);
void QsciMacro_endRecording(QsciMacro* self);
struct miqt_string QsciMacro_tr2(const char* s, const char* c);
struct miqt_string QsciMacro_tr3(const char* s, const char* c, int n);
struct miqt_string QsciMacro_trUtf82(const char* s, const char* c);
struct miqt_string QsciMacro_trUtf83(const char* s, const char* c, int n);
QMetaObject* QsciMacro_virtualbase_metaObject(const void* self);
void* QsciMacro_virtualbase_metacast(void* self, const char* param1);
int QsciMacro_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciMacro_virtualbase_play(void* self);
void QsciMacro_virtualbase_startRecording(void* self);
void QsciMacro_virtualbase_endRecording(void* self);
bool QsciMacro_virtualbase_event(void* self, QEvent* event);
bool QsciMacro_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciMacro_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciMacro_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciMacro_virtualbase_customEvent(void* self, QEvent* event);
void QsciMacro_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciMacro_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QsciMacro_protectedbase_sender(const void* self);
int QsciMacro_protectedbase_senderSignalIndex(const void* self);
int QsciMacro_protectedbase_receivers(const void* self, const char* signal);
bool QsciMacro_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QsciMacro_staticMetaObject();
void QsciMacro_delete(QsciMacro* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
