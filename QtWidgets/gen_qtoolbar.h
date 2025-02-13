#pragma once
#ifndef MIQT_QTWIDGETS_GEN_QTOOLBAR_H
#define MIQT_QTWIDGETS_GEN_QTOOLBAR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QActionEvent;
class QChildEvent;
class QCloseEvent;
class QContextMenuEvent;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEvent;
class QFocusEvent;
class QHideEvent;
class QInputMethodEvent;
class QKeyEvent;
class QMetaMethod;
class QMetaObject;
class QMouseEvent;
class QMoveEvent;
class QObject;
class QPaintDevice;
class QPaintEngine;
class QPaintEvent;
class QPainter;
class QPoint;
class QResizeEvent;
class QShowEvent;
class QSize;
class QStyleOptionToolBar;
class QTabletEvent;
class QTimerEvent;
class QToolBar;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QObject QObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionToolBar QStyleOptionToolBar;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QToolBar QToolBar;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QToolBar_VTable {
	void (*destructor)(struct QToolBar_VTable* vtbl, QToolBar* self);
	QMetaObject* (*metaObject)(struct QToolBar_VTable* vtbl, const QToolBar* self);
	void* (*metacast)(struct QToolBar_VTable* vtbl, QToolBar* self, const char* param1);
	int (*metacall)(struct QToolBar_VTable* vtbl, QToolBar* self, int param1, int param2, void** param3);
	void (*actionEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QActionEvent* event);
	void (*changeEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QEvent* event);
	void (*paintEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QPaintEvent* event);
	bool (*event)(struct QToolBar_VTable* vtbl, QToolBar* self, QEvent* event);
	int (*devType)(struct QToolBar_VTable* vtbl, const QToolBar* self);
	void (*setVisible)(struct QToolBar_VTable* vtbl, QToolBar* self, bool visible);
	QSize* (*sizeHint)(struct QToolBar_VTable* vtbl, const QToolBar* self);
	QSize* (*minimumSizeHint)(struct QToolBar_VTable* vtbl, const QToolBar* self);
	int (*heightForWidth)(struct QToolBar_VTable* vtbl, const QToolBar* self, int param1);
	bool (*hasHeightForWidth)(struct QToolBar_VTable* vtbl, const QToolBar* self);
	QPaintEngine* (*paintEngine)(struct QToolBar_VTable* vtbl, const QToolBar* self);
	void (*mousePressEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QMouseEvent* event);
	void (*wheelEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QKeyEvent* event);
	void (*focusInEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QFocusEvent* event);
	void (*enterEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QEvent* event);
	void (*leaveEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QEvent* event);
	void (*moveEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QMoveEvent* event);
	void (*resizeEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QResizeEvent* event);
	void (*closeEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QTabletEvent* event);
	void (*dragEnterEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QDropEvent* event);
	void (*showEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QShowEvent* event);
	void (*hideEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QHideEvent* event);
	bool (*nativeEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QToolBar_VTable* vtbl, const QToolBar* self, int param1);
	void (*initPainter)(struct QToolBar_VTable* vtbl, const QToolBar* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QToolBar_VTable* vtbl, const QToolBar* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QToolBar_VTable* vtbl, const QToolBar* self);
	void (*inputMethodEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QToolBar_VTable* vtbl, const QToolBar* self, int param1);
	bool (*focusNextPrevChild)(struct QToolBar_VTable* vtbl, QToolBar* self, bool next);
	bool (*eventFilter)(struct QToolBar_VTable* vtbl, QToolBar* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QTimerEvent* event);
	void (*childEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QChildEvent* event);
	void (*customEvent)(struct QToolBar_VTable* vtbl, QToolBar* self, QEvent* event);
	void (*connectNotify)(struct QToolBar_VTable* vtbl, QToolBar* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QToolBar_VTable* vtbl, QToolBar* self, QMetaMethod* signal);
};
QToolBar* QToolBar_new(struct QToolBar_VTable* vtbl, QWidget* parent);
QToolBar* QToolBar_new2(struct QToolBar_VTable* vtbl, struct miqt_string title);
QToolBar* QToolBar_new3(struct QToolBar_VTable* vtbl);
QToolBar* QToolBar_new4(struct QToolBar_VTable* vtbl, struct miqt_string title, QWidget* parent);
void QToolBar_virtbase(QToolBar* src, QWidget** outptr_QWidget);
QMetaObject* QToolBar_metaObject(const QToolBar* self);
void* QToolBar_metacast(QToolBar* self, const char* param1);
int QToolBar_metacall(QToolBar* self, int param1, int param2, void** param3);
struct miqt_string QToolBar_tr(const char* s);
struct miqt_string QToolBar_trUtf8(const char* s);
void QToolBar_setMovable(QToolBar* self, bool movable);
bool QToolBar_isMovable(const QToolBar* self);
void QToolBar_setAllowedAreas(QToolBar* self, int areas);
int QToolBar_allowedAreas(const QToolBar* self);
bool QToolBar_isAreaAllowed(const QToolBar* self, int area);
void QToolBar_setOrientation(QToolBar* self, int orientation);
int QToolBar_orientation(const QToolBar* self);
void QToolBar_clear(QToolBar* self);
QSize* QToolBar_iconSize(const QToolBar* self);
int QToolBar_toolButtonStyle(const QToolBar* self);
bool QToolBar_isFloatable(const QToolBar* self);
void QToolBar_setFloatable(QToolBar* self, bool floatable);
bool QToolBar_isFloating(const QToolBar* self);
void QToolBar_setIconSize(QToolBar* self, QSize* iconSize);
void QToolBar_setToolButtonStyle(QToolBar* self, int toolButtonStyle);
void QToolBar_movableChanged(QToolBar* self, bool movable);
void QToolBar_connect_movableChanged(QToolBar* self, intptr_t slot);
void QToolBar_allowedAreasChanged(QToolBar* self, int allowedAreas);
void QToolBar_connect_allowedAreasChanged(QToolBar* self, intptr_t slot);
void QToolBar_orientationChanged(QToolBar* self, int orientation);
void QToolBar_connect_orientationChanged(QToolBar* self, intptr_t slot);
void QToolBar_iconSizeChanged(QToolBar* self, QSize* iconSize);
void QToolBar_connect_iconSizeChanged(QToolBar* self, intptr_t slot);
void QToolBar_toolButtonStyleChanged(QToolBar* self, int toolButtonStyle);
void QToolBar_connect_toolButtonStyleChanged(QToolBar* self, intptr_t slot);
void QToolBar_topLevelChanged(QToolBar* self, bool topLevel);
void QToolBar_connect_topLevelChanged(QToolBar* self, intptr_t slot);
void QToolBar_visibilityChanged(QToolBar* self, bool visible);
void QToolBar_connect_visibilityChanged(QToolBar* self, intptr_t slot);
void QToolBar_actionEvent(QToolBar* self, QActionEvent* event);
void QToolBar_changeEvent(QToolBar* self, QEvent* event);
void QToolBar_paintEvent(QToolBar* self, QPaintEvent* event);
bool QToolBar_event(QToolBar* self, QEvent* event);
struct miqt_string QToolBar_tr2(const char* s, const char* c);
struct miqt_string QToolBar_tr3(const char* s, const char* c, int n);
struct miqt_string QToolBar_trUtf82(const char* s, const char* c);
struct miqt_string QToolBar_trUtf83(const char* s, const char* c, int n);
QMetaObject* QToolBar_virtualbase_metaObject(const void* self);
void* QToolBar_virtualbase_metacast(void* self, const char* param1);
int QToolBar_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QToolBar_virtualbase_actionEvent(void* self, QActionEvent* event);
void QToolBar_virtualbase_changeEvent(void* self, QEvent* event);
void QToolBar_virtualbase_paintEvent(void* self, QPaintEvent* event);
bool QToolBar_virtualbase_event(void* self, QEvent* event);
int QToolBar_virtualbase_devType(const void* self);
void QToolBar_virtualbase_setVisible(void* self, bool visible);
QSize* QToolBar_virtualbase_sizeHint(const void* self);
QSize* QToolBar_virtualbase_minimumSizeHint(const void* self);
int QToolBar_virtualbase_heightForWidth(const void* self, int param1);
bool QToolBar_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QToolBar_virtualbase_paintEngine(const void* self);
void QToolBar_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QToolBar_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QToolBar_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QToolBar_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QToolBar_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QToolBar_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QToolBar_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QToolBar_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QToolBar_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QToolBar_virtualbase_enterEvent(void* self, QEvent* event);
void QToolBar_virtualbase_leaveEvent(void* self, QEvent* event);
void QToolBar_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QToolBar_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QToolBar_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QToolBar_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QToolBar_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QToolBar_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QToolBar_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QToolBar_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QToolBar_virtualbase_dropEvent(void* self, QDropEvent* event);
void QToolBar_virtualbase_showEvent(void* self, QShowEvent* event);
void QToolBar_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QToolBar_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QToolBar_virtualbase_metric(const void* self, int param1);
void QToolBar_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QToolBar_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QToolBar_virtualbase_sharedPainter(const void* self);
void QToolBar_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QToolBar_virtualbase_inputMethodQuery(const void* self, int param1);
bool QToolBar_virtualbase_focusNextPrevChild(void* self, bool next);
bool QToolBar_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QToolBar_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QToolBar_virtualbase_childEvent(void* self, QChildEvent* event);
void QToolBar_virtualbase_customEvent(void* self, QEvent* event);
void QToolBar_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QToolBar_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QToolBar_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionToolBar* option);
void QToolBar_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QToolBar_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QToolBar_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QToolBar_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QToolBar_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QToolBar_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QToolBar_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QToolBar_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QToolBar_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QToolBar_staticMetaObject();
void QToolBar_delete(QToolBar* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
