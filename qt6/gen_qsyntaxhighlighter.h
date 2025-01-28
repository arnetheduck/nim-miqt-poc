#pragma once
#ifndef MIQT_QT6_GEN_QSYNTAXHIGHLIGHTER_H
#define MIQT_QT6_GEN_QSYNTAXHIGHLIGHTER_H

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
class QSyntaxHighlighter;
class QTextBlock;
class QTextDocument;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSyntaxHighlighter QSyntaxHighlighter;
typedef struct QTextBlock QTextBlock;
typedef struct QTextDocument QTextDocument;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QSyntaxHighlighter_VTable {
	void (*destructor)(struct QSyntaxHighlighter_VTable* vtbl, QSyntaxHighlighter* self);
	QMetaObject* (*metaObject)(struct QSyntaxHighlighter_VTable* vtbl, const QSyntaxHighlighter* self);
	void* (*metacast)(struct QSyntaxHighlighter_VTable* vtbl, QSyntaxHighlighter* self, const char* param1);
	int (*metacall)(struct QSyntaxHighlighter_VTable* vtbl, QSyntaxHighlighter* self, int param1, int param2, void** param3);
	void (*highlightBlock)(struct QSyntaxHighlighter_VTable* vtbl, QSyntaxHighlighter* self, struct miqt_string text);
	bool (*event)(struct QSyntaxHighlighter_VTable* vtbl, QSyntaxHighlighter* self, QEvent* event);
	bool (*eventFilter)(struct QSyntaxHighlighter_VTable* vtbl, QSyntaxHighlighter* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QSyntaxHighlighter_VTable* vtbl, QSyntaxHighlighter* self, QTimerEvent* event);
	void (*childEvent)(struct QSyntaxHighlighter_VTable* vtbl, QSyntaxHighlighter* self, QChildEvent* event);
	void (*customEvent)(struct QSyntaxHighlighter_VTable* vtbl, QSyntaxHighlighter* self, QEvent* event);
	void (*connectNotify)(struct QSyntaxHighlighter_VTable* vtbl, QSyntaxHighlighter* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSyntaxHighlighter_VTable* vtbl, QSyntaxHighlighter* self, QMetaMethod* signal);
};
QSyntaxHighlighter* QSyntaxHighlighter_new(struct QSyntaxHighlighter_VTable* vtbl, QObject* parent);
QSyntaxHighlighter* QSyntaxHighlighter_new2(struct QSyntaxHighlighter_VTable* vtbl, QTextDocument* parent);
void QSyntaxHighlighter_virtbase(QSyntaxHighlighter* src, QObject** outptr_QObject);
QMetaObject* QSyntaxHighlighter_metaObject(const QSyntaxHighlighter* self);
void* QSyntaxHighlighter_metacast(QSyntaxHighlighter* self, const char* param1);
int QSyntaxHighlighter_metacall(QSyntaxHighlighter* self, int param1, int param2, void** param3);
struct miqt_string QSyntaxHighlighter_tr(const char* s);
void QSyntaxHighlighter_setDocument(QSyntaxHighlighter* self, QTextDocument* doc);
QTextDocument* QSyntaxHighlighter_document(const QSyntaxHighlighter* self);
void QSyntaxHighlighter_rehighlight(QSyntaxHighlighter* self);
void QSyntaxHighlighter_rehighlightBlock(QSyntaxHighlighter* self, QTextBlock* block);
void QSyntaxHighlighter_highlightBlock(QSyntaxHighlighter* self, struct miqt_string text);
struct miqt_string QSyntaxHighlighter_tr2(const char* s, const char* c);
struct miqt_string QSyntaxHighlighter_tr3(const char* s, const char* c, int n);
QMetaObject* QSyntaxHighlighter_virtualbase_metaObject(const void* self);
void* QSyntaxHighlighter_virtualbase_metacast(void* self, const char* param1);
int QSyntaxHighlighter_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QSyntaxHighlighter_virtualbase_highlightBlock(void* self, struct miqt_string text);
bool QSyntaxHighlighter_virtualbase_event(void* self, QEvent* event);
bool QSyntaxHighlighter_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSyntaxHighlighter_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSyntaxHighlighter_virtualbase_childEvent(void* self, QChildEvent* event);
void QSyntaxHighlighter_virtualbase_customEvent(void* self, QEvent* event);
void QSyntaxHighlighter_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSyntaxHighlighter_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QSyntaxHighlighter_staticMetaObject();
void QSyntaxHighlighter_delete(QSyntaxHighlighter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
