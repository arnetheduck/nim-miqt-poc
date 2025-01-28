#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCIABSTRACTAPIS_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCIABSTRACTAPIS_H

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
class QsciAbstractAPIs;
class QsciLexer;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
typedef struct QsciAbstractAPIs QsciAbstractAPIs;
typedef struct QsciLexer QsciLexer;
#endif

struct QsciAbstractAPIs_VTable {
	void (*destructor)(struct QsciAbstractAPIs_VTable* vtbl, QsciAbstractAPIs* self);
	QMetaObject* (*metaObject)(struct QsciAbstractAPIs_VTable* vtbl, const QsciAbstractAPIs* self);
	void* (*metacast)(struct QsciAbstractAPIs_VTable* vtbl, QsciAbstractAPIs* self, const char* param1);
	int (*metacall)(struct QsciAbstractAPIs_VTable* vtbl, QsciAbstractAPIs* self, int param1, int param2, void** param3);
	void (*updateAutoCompletionList)(struct QsciAbstractAPIs_VTable* vtbl, QsciAbstractAPIs* self, struct miqt_array /* of struct miqt_string */  context, struct miqt_array /* of struct miqt_string */  list);
	void (*autoCompletionSelected)(struct QsciAbstractAPIs_VTable* vtbl, QsciAbstractAPIs* self, struct miqt_string selection);
	struct miqt_array /* of struct miqt_string */  (*callTips)(struct QsciAbstractAPIs_VTable* vtbl, QsciAbstractAPIs* self, struct miqt_array /* of struct miqt_string */  context, int commas, int style, struct miqt_array /* of int */  shifts);
	bool (*event)(struct QsciAbstractAPIs_VTable* vtbl, QsciAbstractAPIs* self, QEvent* event);
	bool (*eventFilter)(struct QsciAbstractAPIs_VTable* vtbl, QsciAbstractAPIs* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QsciAbstractAPIs_VTable* vtbl, QsciAbstractAPIs* self, QTimerEvent* event);
	void (*childEvent)(struct QsciAbstractAPIs_VTable* vtbl, QsciAbstractAPIs* self, QChildEvent* event);
	void (*customEvent)(struct QsciAbstractAPIs_VTable* vtbl, QsciAbstractAPIs* self, QEvent* event);
	void (*connectNotify)(struct QsciAbstractAPIs_VTable* vtbl, QsciAbstractAPIs* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QsciAbstractAPIs_VTable* vtbl, QsciAbstractAPIs* self, QMetaMethod* signal);
};
QsciAbstractAPIs* QsciAbstractAPIs_new(struct QsciAbstractAPIs_VTable* vtbl, QsciLexer* lexer);
void QsciAbstractAPIs_virtbase(QsciAbstractAPIs* src, QObject** outptr_QObject);
QMetaObject* QsciAbstractAPIs_metaObject(const QsciAbstractAPIs* self);
void* QsciAbstractAPIs_metacast(QsciAbstractAPIs* self, const char* param1);
int QsciAbstractAPIs_metacall(QsciAbstractAPIs* self, int param1, int param2, void** param3);
struct miqt_string QsciAbstractAPIs_tr(const char* s);
QsciLexer* QsciAbstractAPIs_lexer(const QsciAbstractAPIs* self);
void QsciAbstractAPIs_updateAutoCompletionList(QsciAbstractAPIs* self, struct miqt_array /* of struct miqt_string */  context, struct miqt_array /* of struct miqt_string */  list);
void QsciAbstractAPIs_autoCompletionSelected(QsciAbstractAPIs* self, struct miqt_string selection);
struct miqt_array /* of struct miqt_string */  QsciAbstractAPIs_callTips(QsciAbstractAPIs* self, struct miqt_array /* of struct miqt_string */  context, int commas, int style, struct miqt_array /* of int */  shifts);
struct miqt_string QsciAbstractAPIs_tr2(const char* s, const char* c);
struct miqt_string QsciAbstractAPIs_tr3(const char* s, const char* c, int n);
QMetaObject* QsciAbstractAPIs_virtualbase_metaObject(const void* self);
void* QsciAbstractAPIs_virtualbase_metacast(void* self, const char* param1);
int QsciAbstractAPIs_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QsciAbstractAPIs_virtualbase_updateAutoCompletionList(void* self, struct miqt_array /* of struct miqt_string */  context, struct miqt_array /* of struct miqt_string */  list);
void QsciAbstractAPIs_virtualbase_autoCompletionSelected(void* self, struct miqt_string selection);
struct miqt_array /* of struct miqt_string */  QsciAbstractAPIs_virtualbase_callTips(void* self, struct miqt_array /* of struct miqt_string */  context, int commas, int style, struct miqt_array /* of int */  shifts);
bool QsciAbstractAPIs_virtualbase_event(void* self, QEvent* event);
bool QsciAbstractAPIs_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QsciAbstractAPIs_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QsciAbstractAPIs_virtualbase_childEvent(void* self, QChildEvent* event);
void QsciAbstractAPIs_virtualbase_customEvent(void* self, QEvent* event);
void QsciAbstractAPIs_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QsciAbstractAPIs_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QsciAbstractAPIs_staticMetaObject();
void QsciAbstractAPIs_delete(QsciAbstractAPIs* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
