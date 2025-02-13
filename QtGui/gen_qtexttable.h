#pragma once
#ifndef MIQT_QTGUI_GEN_QTEXTTABLE_H
#define MIQT_QTGUI_GEN_QTEXTTABLE_H

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
class QTextCharFormat;
class QTextCursor;
class QTextDocument;
class QTextFrame;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QTextFrame__iterator)
typedef QTextFrame::iterator QTextFrame__iterator;
#else
class QTextFrame__iterator;
#endif
class QTextObject;
class QTextTable;
class QTextTableCell;
class QTextTableFormat;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTextCharFormat QTextCharFormat;
typedef struct QTextCursor QTextCursor;
typedef struct QTextDocument QTextDocument;
typedef struct QTextFrame QTextFrame;
typedef struct QTextFrame__iterator QTextFrame__iterator;
typedef struct QTextObject QTextObject;
typedef struct QTextTable QTextTable;
typedef struct QTextTableCell QTextTableCell;
typedef struct QTextTableFormat QTextTableFormat;
typedef struct QTimerEvent QTimerEvent;
#endif

QTextTableCell* QTextTableCell_new();
QTextTableCell* QTextTableCell_new2(QTextTableCell* o);
void QTextTableCell_operatorAssign(QTextTableCell* self, QTextTableCell* o);
void QTextTableCell_setFormat(QTextTableCell* self, QTextCharFormat* format);
QTextCharFormat* QTextTableCell_format(const QTextTableCell* self);
int QTextTableCell_row(const QTextTableCell* self);
int QTextTableCell_column(const QTextTableCell* self);
int QTextTableCell_rowSpan(const QTextTableCell* self);
int QTextTableCell_columnSpan(const QTextTableCell* self);
bool QTextTableCell_isValid(const QTextTableCell* self);
QTextCursor* QTextTableCell_firstCursorPosition(const QTextTableCell* self);
QTextCursor* QTextTableCell_lastCursorPosition(const QTextTableCell* self);
int QTextTableCell_firstPosition(const QTextTableCell* self);
int QTextTableCell_lastPosition(const QTextTableCell* self);
bool QTextTableCell_operatorEqual(const QTextTableCell* self, QTextTableCell* other);
bool QTextTableCell_operatorNotEqual(const QTextTableCell* self, QTextTableCell* other);
QTextFrame__iterator* QTextTableCell_begin(const QTextTableCell* self);
QTextFrame__iterator* QTextTableCell_end(const QTextTableCell* self);
int QTextTableCell_tableCellFormatIndex(const QTextTableCell* self);
void QTextTableCell_delete(QTextTableCell* self);

struct QTextTable_VTable {
	void (*destructor)(struct QTextTable_VTable* vtbl, QTextTable* self);
	QMetaObject* (*metaObject)(struct QTextTable_VTable* vtbl, const QTextTable* self);
	void* (*metacast)(struct QTextTable_VTable* vtbl, QTextTable* self, const char* param1);
	int (*metacall)(struct QTextTable_VTable* vtbl, QTextTable* self, int param1, int param2, void** param3);
	bool (*event)(struct QTextTable_VTable* vtbl, QTextTable* self, QEvent* event);
	bool (*eventFilter)(struct QTextTable_VTable* vtbl, QTextTable* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QTextTable_VTable* vtbl, QTextTable* self, QTimerEvent* event);
	void (*childEvent)(struct QTextTable_VTable* vtbl, QTextTable* self, QChildEvent* event);
	void (*customEvent)(struct QTextTable_VTable* vtbl, QTextTable* self, QEvent* event);
	void (*connectNotify)(struct QTextTable_VTable* vtbl, QTextTable* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QTextTable_VTable* vtbl, QTextTable* self, QMetaMethod* signal);
};
QTextTable* QTextTable_new(struct QTextTable_VTable* vtbl, QTextDocument* doc);
void QTextTable_virtbase(QTextTable* src, QTextFrame** outptr_QTextFrame);
QMetaObject* QTextTable_metaObject(const QTextTable* self);
void* QTextTable_metacast(QTextTable* self, const char* param1);
int QTextTable_metacall(QTextTable* self, int param1, int param2, void** param3);
struct miqt_string QTextTable_tr(const char* s);
struct miqt_string QTextTable_trUtf8(const char* s);
void QTextTable_resize(QTextTable* self, int rows, int cols);
void QTextTable_insertRows(QTextTable* self, int pos, int num);
void QTextTable_insertColumns(QTextTable* self, int pos, int num);
void QTextTable_appendRows(QTextTable* self, int count);
void QTextTable_appendColumns(QTextTable* self, int count);
void QTextTable_removeRows(QTextTable* self, int pos, int num);
void QTextTable_removeColumns(QTextTable* self, int pos, int num);
void QTextTable_mergeCells(QTextTable* self, int row, int col, int numRows, int numCols);
void QTextTable_mergeCellsWithCursor(QTextTable* self, QTextCursor* cursor);
void QTextTable_splitCell(QTextTable* self, int row, int col, int numRows, int numCols);
int QTextTable_rows(const QTextTable* self);
int QTextTable_columns(const QTextTable* self);
QTextTableCell* QTextTable_cellAt(const QTextTable* self, int row, int col);
QTextTableCell* QTextTable_cellAtWithPosition(const QTextTable* self, int position);
QTextTableCell* QTextTable_cellAtWithQTextCursor(const QTextTable* self, QTextCursor* c);
QTextCursor* QTextTable_rowStart(const QTextTable* self, QTextCursor* c);
QTextCursor* QTextTable_rowEnd(const QTextTable* self, QTextCursor* c);
void QTextTable_setFormat(QTextTable* self, QTextTableFormat* format);
QTextTableFormat* QTextTable_format(const QTextTable* self);
struct miqt_string QTextTable_tr2(const char* s, const char* c);
struct miqt_string QTextTable_tr3(const char* s, const char* c, int n);
struct miqt_string QTextTable_trUtf82(const char* s, const char* c);
struct miqt_string QTextTable_trUtf83(const char* s, const char* c, int n);
QMetaObject* QTextTable_virtualbase_metaObject(const void* self);
void* QTextTable_virtualbase_metacast(void* self, const char* param1);
int QTextTable_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QTextTable_virtualbase_event(void* self, QEvent* event);
bool QTextTable_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QTextTable_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QTextTable_virtualbase_childEvent(void* self, QChildEvent* event);
void QTextTable_virtualbase_customEvent(void* self, QEvent* event);
void QTextTable_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QTextTable_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QTextTable_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QTextTable_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QTextTable_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QTextTable_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QTextTable_staticMetaObject();
void QTextTable_delete(QTextTable* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
