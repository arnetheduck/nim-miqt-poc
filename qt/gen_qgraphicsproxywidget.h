#pragma once
#ifndef MIQT_QT_GEN_QGRAPHICSPROXYWIDGET_H
#define MIQT_QT_GEN_QGRAPHICSPROXYWIDGET_H

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
class QCloseEvent;
class QEvent;
class QFocusEvent;
class QGraphicsItem;
class QGraphicsLayoutItem;
class QGraphicsObject;
class QGraphicsProxyWidget;
class QGraphicsSceneContextMenuEvent;
class QGraphicsSceneDragDropEvent;
class QGraphicsSceneHoverEvent;
class QGraphicsSceneMouseEvent;
class QGraphicsSceneMoveEvent;
class QGraphicsSceneResizeEvent;
class QGraphicsSceneWheelEvent;
class QGraphicsWidget;
class QHideEvent;
class QInputMethodEvent;
class QKeyEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QPainter;
class QPainterPath;
class QPointF;
class QRectF;
class QShowEvent;
class QSizeF;
class QStyleOption;
class QStyleOptionGraphicsItem;
class QTimerEvent;
class QVariant;
class QWidget;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QGraphicsItem QGraphicsItem;
typedef struct QGraphicsLayoutItem QGraphicsLayoutItem;
typedef struct QGraphicsObject QGraphicsObject;
typedef struct QGraphicsProxyWidget QGraphicsProxyWidget;
typedef struct QGraphicsSceneContextMenuEvent QGraphicsSceneContextMenuEvent;
typedef struct QGraphicsSceneDragDropEvent QGraphicsSceneDragDropEvent;
typedef struct QGraphicsSceneHoverEvent QGraphicsSceneHoverEvent;
typedef struct QGraphicsSceneMouseEvent QGraphicsSceneMouseEvent;
typedef struct QGraphicsSceneMoveEvent QGraphicsSceneMoveEvent;
typedef struct QGraphicsSceneResizeEvent QGraphicsSceneResizeEvent;
typedef struct QGraphicsSceneWheelEvent QGraphicsSceneWheelEvent;
typedef struct QGraphicsWidget QGraphicsWidget;
typedef struct QHideEvent QHideEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QPainter QPainter;
typedef struct QPainterPath QPainterPath;
typedef struct QPointF QPointF;
typedef struct QRectF QRectF;
typedef struct QShowEvent QShowEvent;
typedef struct QSizeF QSizeF;
typedef struct QStyleOption QStyleOption;
typedef struct QStyleOptionGraphicsItem QStyleOptionGraphicsItem;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWidget QWidget;
#endif

struct QGraphicsProxyWidget_VTable {
	void (*destructor)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self);
	QMetaObject* (*metaObject)(struct QGraphicsProxyWidget_VTable* vtbl, const QGraphicsProxyWidget* self);
	void* (*metacast)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, const char* param1);
	int (*metacall)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, int param1, int param2, void** param3);
	void (*setGeometry)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QRectF* rect);
	void (*paint)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
	int (*type)(struct QGraphicsProxyWidget_VTable* vtbl, const QGraphicsProxyWidget* self);
	QVariant* (*itemChange)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, int change, QVariant* value);
	bool (*event)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QEvent* event);
	bool (*eventFilter)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QObject* object, QEvent* event);
	void (*showEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QShowEvent* event);
	void (*hideEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QHideEvent* event);
	void (*contextMenuEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QGraphicsSceneContextMenuEvent* event);
	void (*dragEnterEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);
	void (*dragLeaveEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);
	void (*dragMoveEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);
	void (*dropEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);
	void (*hoverEnterEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QGraphicsSceneHoverEvent* event);
	void (*hoverLeaveEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QGraphicsSceneHoverEvent* event);
	void (*hoverMoveEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QGraphicsSceneHoverEvent* event);
	void (*grabMouseEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QEvent* event);
	void (*ungrabMouseEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QEvent* event);
	void (*mouseMoveEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);
	void (*mousePressEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);
	void (*mouseReleaseEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);
	void (*wheelEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QGraphicsSceneWheelEvent* event);
	void (*keyPressEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QKeyEvent* event);
	void (*focusInEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QFocusEvent* event);
	bool (*focusNextPrevChild)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, bool next);
	QVariant* (*inputMethodQuery)(struct QGraphicsProxyWidget_VTable* vtbl, const QGraphicsProxyWidget* self, int query);
	void (*inputMethodEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QInputMethodEvent* event);
	QSizeF* (*sizeHint)(struct QGraphicsProxyWidget_VTable* vtbl, const QGraphicsProxyWidget* self, int which, QSizeF* constraint);
	void (*resizeEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QGraphicsSceneResizeEvent* event);
	void (*getContentsMargins)(struct QGraphicsProxyWidget_VTable* vtbl, const QGraphicsProxyWidget* self, double* left, double* top, double* right, double* bottom);
	void (*paintWindowFrame)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
	QRectF* (*boundingRect)(struct QGraphicsProxyWidget_VTable* vtbl, const QGraphicsProxyWidget* self);
	QPainterPath* (*shape)(struct QGraphicsProxyWidget_VTable* vtbl, const QGraphicsProxyWidget* self);
	void (*initStyleOption)(struct QGraphicsProxyWidget_VTable* vtbl, const QGraphicsProxyWidget* self, QStyleOption* option);
	void (*updateGeometry)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self);
	QVariant* (*propertyChange)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, struct miqt_string propertyName, QVariant* value);
	bool (*sceneEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QEvent* event);
	bool (*windowFrameEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QEvent* e);
	int (*windowFrameSectionAt)(struct QGraphicsProxyWidget_VTable* vtbl, const QGraphicsProxyWidget* self, QPointF* pos);
	void (*changeEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QEvent* event);
	void (*closeEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QCloseEvent* event);
	void (*moveEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QGraphicsSceneMoveEvent* event);
	void (*polishEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self);
	void (*grabKeyboardEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QEvent* event);
	void (*ungrabKeyboardEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QEvent* event);
	void (*timerEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QTimerEvent* event);
	void (*childEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QChildEvent* event);
	void (*customEvent)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QEvent* event);
	void (*connectNotify)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QMetaMethod* signal);
	void (*advance)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, int phase);
	bool (*contains)(struct QGraphicsProxyWidget_VTable* vtbl, const QGraphicsProxyWidget* self, QPointF* point);
	bool (*collidesWithItem)(struct QGraphicsProxyWidget_VTable* vtbl, const QGraphicsProxyWidget* self, QGraphicsItem* other, int mode);
	bool (*collidesWithPath)(struct QGraphicsProxyWidget_VTable* vtbl, const QGraphicsProxyWidget* self, QPainterPath* path, int mode);
	bool (*isObscuredBy)(struct QGraphicsProxyWidget_VTable* vtbl, const QGraphicsProxyWidget* self, QGraphicsItem* item);
	QPainterPath* (*opaqueArea)(struct QGraphicsProxyWidget_VTable* vtbl, const QGraphicsProxyWidget* self);
	bool (*sceneEventFilter)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, QGraphicsItem* watched, QEvent* event);
	bool (*supportsExtension)(struct QGraphicsProxyWidget_VTable* vtbl, const QGraphicsProxyWidget* self, int extension);
	void (*setExtension)(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsProxyWidget* self, int extension, QVariant* variant);
	QVariant* (*extension)(struct QGraphicsProxyWidget_VTable* vtbl, const QGraphicsProxyWidget* self, QVariant* variant);
};
QGraphicsProxyWidget* QGraphicsProxyWidget_new(struct QGraphicsProxyWidget_VTable* vtbl);
QGraphicsProxyWidget* QGraphicsProxyWidget_new2(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsItem* parent);
QGraphicsProxyWidget* QGraphicsProxyWidget_new3(struct QGraphicsProxyWidget_VTable* vtbl, QGraphicsItem* parent, int wFlags);
void QGraphicsProxyWidget_virtbase(QGraphicsProxyWidget* src, QGraphicsWidget** outptr_QGraphicsWidget);
QMetaObject* QGraphicsProxyWidget_metaObject(const QGraphicsProxyWidget* self);
void* QGraphicsProxyWidget_metacast(QGraphicsProxyWidget* self, const char* param1);
int QGraphicsProxyWidget_metacall(QGraphicsProxyWidget* self, int param1, int param2, void** param3);
struct miqt_string QGraphicsProxyWidget_tr(const char* s);
struct miqt_string QGraphicsProxyWidget_trUtf8(const char* s);
void QGraphicsProxyWidget_setWidget(QGraphicsProxyWidget* self, QWidget* widget);
QWidget* QGraphicsProxyWidget_widget(const QGraphicsProxyWidget* self);
QRectF* QGraphicsProxyWidget_subWidgetRect(const QGraphicsProxyWidget* self, QWidget* widget);
void QGraphicsProxyWidget_setGeometry(QGraphicsProxyWidget* self, QRectF* rect);
void QGraphicsProxyWidget_paint(QGraphicsProxyWidget* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
int QGraphicsProxyWidget_type(const QGraphicsProxyWidget* self);
QGraphicsProxyWidget* QGraphicsProxyWidget_createProxyForChildWidget(QGraphicsProxyWidget* self, QWidget* child);
QVariant* QGraphicsProxyWidget_itemChange(QGraphicsProxyWidget* self, int change, QVariant* value);
bool QGraphicsProxyWidget_event(QGraphicsProxyWidget* self, QEvent* event);
bool QGraphicsProxyWidget_eventFilter(QGraphicsProxyWidget* self, QObject* object, QEvent* event);
void QGraphicsProxyWidget_showEvent(QGraphicsProxyWidget* self, QShowEvent* event);
void QGraphicsProxyWidget_hideEvent(QGraphicsProxyWidget* self, QHideEvent* event);
void QGraphicsProxyWidget_contextMenuEvent(QGraphicsProxyWidget* self, QGraphicsSceneContextMenuEvent* event);
void QGraphicsProxyWidget_dragEnterEvent(QGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsProxyWidget_dragLeaveEvent(QGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsProxyWidget_dragMoveEvent(QGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsProxyWidget_dropEvent(QGraphicsProxyWidget* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsProxyWidget_hoverEnterEvent(QGraphicsProxyWidget* self, QGraphicsSceneHoverEvent* event);
void QGraphicsProxyWidget_hoverLeaveEvent(QGraphicsProxyWidget* self, QGraphicsSceneHoverEvent* event);
void QGraphicsProxyWidget_hoverMoveEvent(QGraphicsProxyWidget* self, QGraphicsSceneHoverEvent* event);
void QGraphicsProxyWidget_grabMouseEvent(QGraphicsProxyWidget* self, QEvent* event);
void QGraphicsProxyWidget_ungrabMouseEvent(QGraphicsProxyWidget* self, QEvent* event);
void QGraphicsProxyWidget_mouseMoveEvent(QGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);
void QGraphicsProxyWidget_mousePressEvent(QGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);
void QGraphicsProxyWidget_mouseReleaseEvent(QGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);
void QGraphicsProxyWidget_mouseDoubleClickEvent(QGraphicsProxyWidget* self, QGraphicsSceneMouseEvent* event);
void QGraphicsProxyWidget_wheelEvent(QGraphicsProxyWidget* self, QGraphicsSceneWheelEvent* event);
void QGraphicsProxyWidget_keyPressEvent(QGraphicsProxyWidget* self, QKeyEvent* event);
void QGraphicsProxyWidget_keyReleaseEvent(QGraphicsProxyWidget* self, QKeyEvent* event);
void QGraphicsProxyWidget_focusInEvent(QGraphicsProxyWidget* self, QFocusEvent* event);
void QGraphicsProxyWidget_focusOutEvent(QGraphicsProxyWidget* self, QFocusEvent* event);
bool QGraphicsProxyWidget_focusNextPrevChild(QGraphicsProxyWidget* self, bool next);
QVariant* QGraphicsProxyWidget_inputMethodQuery(const QGraphicsProxyWidget* self, int query);
void QGraphicsProxyWidget_inputMethodEvent(QGraphicsProxyWidget* self, QInputMethodEvent* event);
QSizeF* QGraphicsProxyWidget_sizeHint(const QGraphicsProxyWidget* self, int which, QSizeF* constraint);
void QGraphicsProxyWidget_resizeEvent(QGraphicsProxyWidget* self, QGraphicsSceneResizeEvent* event);
struct miqt_string QGraphicsProxyWidget_tr2(const char* s, const char* c);
struct miqt_string QGraphicsProxyWidget_tr3(const char* s, const char* c, int n);
struct miqt_string QGraphicsProxyWidget_trUtf82(const char* s, const char* c);
struct miqt_string QGraphicsProxyWidget_trUtf83(const char* s, const char* c, int n);
QMetaObject* QGraphicsProxyWidget_virtualbase_metaObject(const void* self);
void* QGraphicsProxyWidget_virtualbase_metacast(void* self, const char* param1);
int QGraphicsProxyWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QGraphicsProxyWidget_virtualbase_setGeometry(void* self, QRectF* rect);
void QGraphicsProxyWidget_virtualbase_paint(void* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
int QGraphicsProxyWidget_virtualbase_type(const void* self);
QVariant* QGraphicsProxyWidget_virtualbase_itemChange(void* self, int change, QVariant* value);
bool QGraphicsProxyWidget_virtualbase_event(void* self, QEvent* event);
bool QGraphicsProxyWidget_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);
void QGraphicsProxyWidget_virtualbase_showEvent(void* self, QShowEvent* event);
void QGraphicsProxyWidget_virtualbase_hideEvent(void* self, QHideEvent* event);
void QGraphicsProxyWidget_virtualbase_contextMenuEvent(void* self, QGraphicsSceneContextMenuEvent* event);
void QGraphicsProxyWidget_virtualbase_dragEnterEvent(void* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsProxyWidget_virtualbase_dragLeaveEvent(void* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsProxyWidget_virtualbase_dragMoveEvent(void* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsProxyWidget_virtualbase_dropEvent(void* self, QGraphicsSceneDragDropEvent* event);
void QGraphicsProxyWidget_virtualbase_hoverEnterEvent(void* self, QGraphicsSceneHoverEvent* event);
void QGraphicsProxyWidget_virtualbase_hoverLeaveEvent(void* self, QGraphicsSceneHoverEvent* event);
void QGraphicsProxyWidget_virtualbase_hoverMoveEvent(void* self, QGraphicsSceneHoverEvent* event);
void QGraphicsProxyWidget_virtualbase_grabMouseEvent(void* self, QEvent* event);
void QGraphicsProxyWidget_virtualbase_ungrabMouseEvent(void* self, QEvent* event);
void QGraphicsProxyWidget_virtualbase_mouseMoveEvent(void* self, QGraphicsSceneMouseEvent* event);
void QGraphicsProxyWidget_virtualbase_mousePressEvent(void* self, QGraphicsSceneMouseEvent* event);
void QGraphicsProxyWidget_virtualbase_mouseReleaseEvent(void* self, QGraphicsSceneMouseEvent* event);
void QGraphicsProxyWidget_virtualbase_mouseDoubleClickEvent(void* self, QGraphicsSceneMouseEvent* event);
void QGraphicsProxyWidget_virtualbase_wheelEvent(void* self, QGraphicsSceneWheelEvent* event);
void QGraphicsProxyWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QGraphicsProxyWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QGraphicsProxyWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QGraphicsProxyWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
bool QGraphicsProxyWidget_virtualbase_focusNextPrevChild(void* self, bool next);
QVariant* QGraphicsProxyWidget_virtualbase_inputMethodQuery(const void* self, int query);
void QGraphicsProxyWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);
QSizeF* QGraphicsProxyWidget_virtualbase_sizeHint(const void* self, int which, QSizeF* constraint);
void QGraphicsProxyWidget_virtualbase_resizeEvent(void* self, QGraphicsSceneResizeEvent* event);
void QGraphicsProxyWidget_virtualbase_getContentsMargins(const void* self, double* left, double* top, double* right, double* bottom);
void QGraphicsProxyWidget_virtualbase_paintWindowFrame(void* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
QRectF* QGraphicsProxyWidget_virtualbase_boundingRect(const void* self);
QPainterPath* QGraphicsProxyWidget_virtualbase_shape(const void* self);
void QGraphicsProxyWidget_virtualbase_initStyleOption(const void* self, QStyleOption* option);
void QGraphicsProxyWidget_virtualbase_updateGeometry(void* self);
QVariant* QGraphicsProxyWidget_virtualbase_propertyChange(void* self, struct miqt_string propertyName, QVariant* value);
bool QGraphicsProxyWidget_virtualbase_sceneEvent(void* self, QEvent* event);
bool QGraphicsProxyWidget_virtualbase_windowFrameEvent(void* self, QEvent* e);
int QGraphicsProxyWidget_virtualbase_windowFrameSectionAt(const void* self, QPointF* pos);
void QGraphicsProxyWidget_virtualbase_changeEvent(void* self, QEvent* event);
void QGraphicsProxyWidget_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QGraphicsProxyWidget_virtualbase_moveEvent(void* self, QGraphicsSceneMoveEvent* event);
void QGraphicsProxyWidget_virtualbase_polishEvent(void* self);
void QGraphicsProxyWidget_virtualbase_grabKeyboardEvent(void* self, QEvent* event);
void QGraphicsProxyWidget_virtualbase_ungrabKeyboardEvent(void* self, QEvent* event);
void QGraphicsProxyWidget_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QGraphicsProxyWidget_virtualbase_childEvent(void* self, QChildEvent* event);
void QGraphicsProxyWidget_virtualbase_customEvent(void* self, QEvent* event);
void QGraphicsProxyWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QGraphicsProxyWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QGraphicsProxyWidget_virtualbase_advance(void* self, int phase);
bool QGraphicsProxyWidget_virtualbase_contains(const void* self, QPointF* point);
bool QGraphicsProxyWidget_virtualbase_collidesWithItem(const void* self, QGraphicsItem* other, int mode);
bool QGraphicsProxyWidget_virtualbase_collidesWithPath(const void* self, QPainterPath* path, int mode);
bool QGraphicsProxyWidget_virtualbase_isObscuredBy(const void* self, QGraphicsItem* item);
QPainterPath* QGraphicsProxyWidget_virtualbase_opaqueArea(const void* self);
bool QGraphicsProxyWidget_virtualbase_sceneEventFilter(void* self, QGraphicsItem* watched, QEvent* event);
bool QGraphicsProxyWidget_virtualbase_supportsExtension(const void* self, int extension);
void QGraphicsProxyWidget_virtualbase_setExtension(void* self, int extension, QVariant* variant);
QVariant* QGraphicsProxyWidget_virtualbase_extension(const void* self, QVariant* variant);
const QMetaObject* QGraphicsProxyWidget_staticMetaObject();
void QGraphicsProxyWidget_delete(QGraphicsProxyWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
