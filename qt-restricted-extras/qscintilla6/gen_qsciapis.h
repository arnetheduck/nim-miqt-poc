#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCIAPIS_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCIAPIS_H

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
class QsciAPIs;
class QsciAbstractAPIs;
class QsciLexer;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QsciAPIs QsciAPIs;
typedef struct QsciAbstractAPIs QsciAbstractAPIs;
typedef struct QsciLexer QsciLexer;
#endif

struct QsciAPIs_VTable {
	void (*destructor)(struct QsciAPIs_VTable* vtbl, QsciAPIs* self);
	QMetaObject* (*metaObject)(struct QsciAPIs_VTable* vtbl, const QsciAPIs* self);
	void* (*metacast)(struct QsciAPIs_VTable* vtbl, QsciAPIs* self, const char* param1);
	int (*metacall)(struct QsciAPIs_VTable* vtbl, QsciAPIs* self, int param1, int param2, void** param3);
	void (*updateAutoCompletionList)(struct QsciAPIs_VTable* vtbl, QsciAPIs* self, struct miqt_array /* of struct miqt_string */  context, struct miqt_array /* of struct miqt_string */  list);
	void (*autoCompletionSelected)(struct QsciAPIs_VTable* vtbl, QsciAPIs* self, struct miqt_string sel);
	struct miqt_array /* of struct miqt_string */  (*callTips)(struct QsciAPIs_VTable* vtbl, QsciAPIs* self, struct miqt_array /* of struct miqt_string */  context, int commas, int style, struct miqt_array /* of int */  shifts);
	bool (*event)(struct QsciAPIs_VTable* vtbl, QsciAPIs* self, QEvent* e);
	bool (*eventFilter)(struct QsciAPIs_VTable* vtbl, QsciAPIs* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciAPIs_VTable* vtbl, QsciAPIs* self, QTimerEvent* event);
	void (*childEvent)(struct QsciAPIs_VTable* vtbl, QsciAPIs* self, QChildEvent* event);
	void (*customEvent)(struct QsciAPIs_VTable* vtbl, QsciAPIs* self, QEvent* event);
	void (*connectNotify)(struct QsciAPIs_VTable* vtbl, QsciAPIs* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciAPIs_VTable* vtbl, QsciAPIs* self, QMetaMethod* signal);
};
QsciAPIs* QsciAPIs_new(struct QsciAPIs_VTable* vtbl, QsciLexer* lexer);
void QsciAPIs_virtbase(QsciAPIs* src, QsciAbstractAPIs** outptr_QsciAbstractAPIs);
QMetaObject* QsciAPIs_metaObject(const QsciAPIs* self);
void* QsciAPIs_metacast(QsciAPIs* self, const char* param1);
int QsciAPIs_metacall(QsciAPIs* self, int param1, int param2, void** param3);
struct miqt_string QsciAPIs_tr(const char* s);
void QsciAPIs_add(QsciAPIs* self, struct miqt_string entry);
void QsciAPIs_clear(QsciAPIs* self);
bool QsciAPIs_load(QsciAPIs* self, struct miqt_string filename);
void QsciAPIs_remove(QsciAPIs* self, struct miqt_string entry);
void QsciAPIs_prepare(QsciAPIs* self);
void QsciAPIs_cancelPreparation(QsciAPIs* self);
struct miqt_string QsciAPIs_defaultPreparedName(const QsciAPIs* self);
bool QsciAPIs_isPrepared(const QsciAPIs* self);
bool QsciAPIs_loadPrepared(QsciAPIs* self);
bool QsciAPIs_savePrepared(const QsciAPIs* self);
void QsciAPIs_updateAutoCompletionList(QsciAPIs* self, struct miqt_array /* of struct miqt_string */  context, struct miqt_array /* of struct miqt_string */  list);
void QsciAPIs_autoCompletionSelected(QsciAPIs* self, struct miqt_string sel);
struct miqt_array /* of struct miqt_string */  QsciAPIs_callTips(QsciAPIs* self, struct miqt_array /* of struct miqt_string */  context, int commas, int style, struct miqt_array /* of int */  shifts);
bool QsciAPIs_event(QsciAPIs* self, QEvent* e);
struct miqt_array /* of struct miqt_string */  QsciAPIs_installedAPIFiles(const QsciAPIs* self);
void QsciAPIs_apiPreparationCancelled(QsciAPIs* self);
void QsciAPIs_connect_apiPreparationCancelled(QsciAPIs* self, intptr_t slot);
void QsciAPIs_apiPreparationStarted(QsciAPIs* self);
void QsciAPIs_connect_apiPreparationStarted(QsciAPIs* self, intptr_t slot);
void QsciAPIs_apiPreparationFinished(QsciAPIs* self);
void QsciAPIs_connect_apiPreparationFinished(QsciAPIs* self, intptr_t slot);
struct miqt_string QsciAPIs_tr2(const char* s, const char* c);
struct miqt_string QsciAPIs_tr3(const char* s, const char* c, int n);
bool QsciAPIs_isPrepared1(const QsciAPIs* self, struct miqt_string filename);
bool QsciAPIs_loadPrepared1(QsciAPIs* self, struct miqt_string filename);
bool QsciAPIs_savePrepared1(const QsciAPIs* self, struct miqt_string filename);
QMetaObject* QsciAPIs_virtualbase_metaObject(const void* self);
void* QsciAPIs_virtualbase_metacast(void* self, const char* param1);
int QsciAPIs_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciAPIs_virtualbase_updateAutoCompletionList(void* self, struct miqt_array /* of struct miqt_string */  context, struct miqt_array /* of struct miqt_string */  list);
void QsciAPIs_virtualbase_autoCompletionSelected(void* self, struct miqt_string sel);
struct miqt_array /* of struct miqt_string */  QsciAPIs_virtualbase_callTips(void* self, struct miqt_array /* of struct miqt_string */  context, int commas, int style, struct miqt_array /* of int */  shifts);
bool QsciAPIs_virtualbase_event(void* self, QEvent* e);
bool QsciAPIs_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciAPIs_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciAPIs_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciAPIs_virtualbase_customEvent(void* self, QEvent* event);
void QsciAPIs_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciAPIs_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QsciAPIs_staticMetaObject();
void QsciAPIs_delete(QsciAPIs* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
