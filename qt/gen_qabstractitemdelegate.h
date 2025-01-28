#pragma once
#ifndef MIQT_QT_GEN_QABSTRACTITEMDELEGATE_H
#define MIQT_QT_GEN_QABSTRACTITEMDELEGATE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractItemDelegate;
class QAbstractItemModel;
class QAbstractItemView;
class QChildEvent;
class QEvent;
class QFontMetrics;
class QHelpEvent;
class QMetaMethod;
class QMetaObject;
class QModelIndex;
class QObject;
class QPainter;
class QSize;
class QStyleOptionViewItem;
class QTimerEvent;
class QWidget;
#else
typedef struct QAbstractItemDelegate QAbstractItemDelegate;
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QAbstractItemView QAbstractItemView;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QFontMetrics QFontMetrics;
typedef struct QHelpEvent QHelpEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QModelIndex QModelIndex;
typedef struct QObject QObject;
typedef struct QPainter QPainter;
typedef struct QSize QSize;
typedef struct QStyleOptionViewItem QStyleOptionViewItem;
typedef struct QTimerEvent QTimerEvent;
typedef struct QWidget QWidget;
#endif

struct QAbstractItemDelegate_VTable {
	void (*destructor)(struct QAbstractItemDelegate_VTable* vtbl, QAbstractItemDelegate* self);
	QMetaObject* (*metaObject)(struct QAbstractItemDelegate_VTable* vtbl, const QAbstractItemDelegate* self);
	void* (*metacast)(struct QAbstractItemDelegate_VTable* vtbl, QAbstractItemDelegate* self, const char* param1);
	int (*metacall)(struct QAbstractItemDelegate_VTable* vtbl, QAbstractItemDelegate* self, int param1, int param2, void** param3);
	void (*paint)(struct QAbstractItemDelegate_VTable* vtbl, const QAbstractItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
	QSize* (*sizeHint)(struct QAbstractItemDelegate_VTable* vtbl, const QAbstractItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
	QWidget* (*createEditor)(struct QAbstractItemDelegate_VTable* vtbl, const QAbstractItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);
	void (*destroyEditor)(struct QAbstractItemDelegate_VTable* vtbl, const QAbstractItemDelegate* self, QWidget* editor, QModelIndex* index);
	void (*setEditorData)(struct QAbstractItemDelegate_VTable* vtbl, const QAbstractItemDelegate* self, QWidget* editor, QModelIndex* index);
	void (*setModelData)(struct QAbstractItemDelegate_VTable* vtbl, const QAbstractItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);
	void (*updateEditorGeometry)(struct QAbstractItemDelegate_VTable* vtbl, const QAbstractItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);
	bool (*editorEvent)(struct QAbstractItemDelegate_VTable* vtbl, QAbstractItemDelegate* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);
	bool (*helpEvent)(struct QAbstractItemDelegate_VTable* vtbl, QAbstractItemDelegate* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index);
	struct miqt_array /* of int */  (*paintingRoles)(struct QAbstractItemDelegate_VTable* vtbl, const QAbstractItemDelegate* self);
	bool (*event)(struct QAbstractItemDelegate_VTable* vtbl, QAbstractItemDelegate* self, QEvent* event);
	bool (*eventFilter)(struct QAbstractItemDelegate_VTable* vtbl, QAbstractItemDelegate* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QAbstractItemDelegate_VTable* vtbl, QAbstractItemDelegate* self, QTimerEvent* event);
	void (*childEvent)(struct QAbstractItemDelegate_VTable* vtbl, QAbstractItemDelegate* self, QChildEvent* event);
	void (*customEvent)(struct QAbstractItemDelegate_VTable* vtbl, QAbstractItemDelegate* self, QEvent* event);
	void (*connectNotify)(struct QAbstractItemDelegate_VTable* vtbl, QAbstractItemDelegate* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAbstractItemDelegate_VTable* vtbl, QAbstractItemDelegate* self, QMetaMethod* signal);
};
QAbstractItemDelegate* QAbstractItemDelegate_new(struct QAbstractItemDelegate_VTable* vtbl);
QAbstractItemDelegate* QAbstractItemDelegate_new2(struct QAbstractItemDelegate_VTable* vtbl, QObject* parent);
void QAbstractItemDelegate_virtbase(QAbstractItemDelegate* src, QObject** outptr_QObject);
QMetaObject* QAbstractItemDelegate_metaObject(const QAbstractItemDelegate* self);
void* QAbstractItemDelegate_metacast(QAbstractItemDelegate* self, const char* param1);
int QAbstractItemDelegate_metacall(QAbstractItemDelegate* self, int param1, int param2, void** param3);
struct miqt_string QAbstractItemDelegate_tr(const char* s);
struct miqt_string QAbstractItemDelegate_trUtf8(const char* s);
void QAbstractItemDelegate_paint(const QAbstractItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
QSize* QAbstractItemDelegate_sizeHint(const QAbstractItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index);
QWidget* QAbstractItemDelegate_createEditor(const QAbstractItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);
void QAbstractItemDelegate_destroyEditor(const QAbstractItemDelegate* self, QWidget* editor, QModelIndex* index);
void QAbstractItemDelegate_setEditorData(const QAbstractItemDelegate* self, QWidget* editor, QModelIndex* index);
void QAbstractItemDelegate_setModelData(const QAbstractItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);
void QAbstractItemDelegate_updateEditorGeometry(const QAbstractItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);
bool QAbstractItemDelegate_editorEvent(QAbstractItemDelegate* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);
struct miqt_string QAbstractItemDelegate_elidedText(QFontMetrics* fontMetrics, int width, int mode, struct miqt_string text);
bool QAbstractItemDelegate_helpEvent(QAbstractItemDelegate* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index);
struct miqt_array /* of int */  QAbstractItemDelegate_paintingRoles(const QAbstractItemDelegate* self);
void QAbstractItemDelegate_commitData(QAbstractItemDelegate* self, QWidget* editor);
void QAbstractItemDelegate_connect_commitData(QAbstractItemDelegate* self, intptr_t slot);
void QAbstractItemDelegate_closeEditor(QAbstractItemDelegate* self, QWidget* editor);
void QAbstractItemDelegate_connect_closeEditor(QAbstractItemDelegate* self, intptr_t slot);
void QAbstractItemDelegate_sizeHintChanged(QAbstractItemDelegate* self, QModelIndex* param1);
void QAbstractItemDelegate_connect_sizeHintChanged(QAbstractItemDelegate* self, intptr_t slot);
struct miqt_string QAbstractItemDelegate_tr2(const char* s, const char* c);
struct miqt_string QAbstractItemDelegate_tr3(const char* s, const char* c, int n);
struct miqt_string QAbstractItemDelegate_trUtf82(const char* s, const char* c);
struct miqt_string QAbstractItemDelegate_trUtf83(const char* s, const char* c, int n);
void QAbstractItemDelegate_closeEditor2(QAbstractItemDelegate* self, QWidget* editor, int hint);
void QAbstractItemDelegate_connect_closeEditor2(QAbstractItemDelegate* self, intptr_t slot);
QMetaObject* QAbstractItemDelegate_virtualbase_metaObject(const void* self);
void* QAbstractItemDelegate_virtualbase_metacast(void* self, const char* param1);
int QAbstractItemDelegate_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QAbstractItemDelegate_virtualbase_paint(const void* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index);
QSize* QAbstractItemDelegate_virtualbase_sizeHint(const void* self, QStyleOptionViewItem* option, QModelIndex* index);
QWidget* QAbstractItemDelegate_virtualbase_createEditor(const void* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index);
void QAbstractItemDelegate_virtualbase_destroyEditor(const void* self, QWidget* editor, QModelIndex* index);
void QAbstractItemDelegate_virtualbase_setEditorData(const void* self, QWidget* editor, QModelIndex* index);
void QAbstractItemDelegate_virtualbase_setModelData(const void* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index);
void QAbstractItemDelegate_virtualbase_updateEditorGeometry(const void* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index);
bool QAbstractItemDelegate_virtualbase_editorEvent(void* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index);
bool QAbstractItemDelegate_virtualbase_helpEvent(void* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index);
struct miqt_array /* of int */  QAbstractItemDelegate_virtualbase_paintingRoles(const void* self);
bool QAbstractItemDelegate_virtualbase_event(void* self, QEvent* event);
bool QAbstractItemDelegate_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAbstractItemDelegate_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAbstractItemDelegate_virtualbase_childEvent(void* self, QChildEvent* event);
void QAbstractItemDelegate_virtualbase_customEvent(void* self, QEvent* event);
void QAbstractItemDelegate_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAbstractItemDelegate_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QAbstractItemDelegate_staticMetaObject();
void QAbstractItemDelegate_delete(QAbstractItemDelegate* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
