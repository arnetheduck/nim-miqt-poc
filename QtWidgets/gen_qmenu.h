#pragma once
#ifndef MIQT_QTWIDGETS_GEN_QMENU_H
#define MIQT_QTWIDGETS_GEN_QMENU_H

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
class QIcon;
class QInputMethodEvent;
class QKeyEvent;
class QMenu;
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
class QTabletEvent;
class QTimerEvent;
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
typedef struct QIcon QIcon;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMenu QMenu;
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
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QMenu_VTable {
	void (*destructor)(struct QMenu_VTable* vtbl, QMenu* self);
	QMetaObject* (*metaObject)(struct QMenu_VTable* vtbl, const QMenu* self);
	void* (*metacast)(struct QMenu_VTable* vtbl, QMenu* self, const char* param1);
	int (*metacall)(struct QMenu_VTable* vtbl, QMenu* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QMenu_VTable* vtbl, const QMenu* self);
	void (*changeEvent)(struct QMenu_VTable* vtbl, QMenu* self, QEvent* param1);
	void (*keyPressEvent)(struct QMenu_VTable* vtbl, QMenu* self, QKeyEvent* param1);
	void (*mouseReleaseEvent)(struct QMenu_VTable* vtbl, QMenu* self, QMouseEvent* param1);
	void (*mousePressEvent)(struct QMenu_VTable* vtbl, QMenu* self, QMouseEvent* param1);
	void (*mouseMoveEvent)(struct QMenu_VTable* vtbl, QMenu* self, QMouseEvent* param1);
	void (*wheelEvent)(struct QMenu_VTable* vtbl, QMenu* self, QWheelEvent* param1);
	void (*enterEvent)(struct QMenu_VTable* vtbl, QMenu* self, QEvent* param1);
	void (*leaveEvent)(struct QMenu_VTable* vtbl, QMenu* self, QEvent* param1);
	void (*hideEvent)(struct QMenu_VTable* vtbl, QMenu* self, QHideEvent* param1);
	void (*paintEvent)(struct QMenu_VTable* vtbl, QMenu* self, QPaintEvent* param1);
	void (*actionEvent)(struct QMenu_VTable* vtbl, QMenu* self, QActionEvent* param1);
	void (*timerEvent)(struct QMenu_VTable* vtbl, QMenu* self, QTimerEvent* param1);
	bool (*event)(struct QMenu_VTable* vtbl, QMenu* self, QEvent* param1);
	bool (*focusNextPrevChild)(struct QMenu_VTable* vtbl, QMenu* self, bool next);
	int (*devType)(struct QMenu_VTable* vtbl, const QMenu* self);
	void (*setVisible)(struct QMenu_VTable* vtbl, QMenu* self, bool visible);
	QSize* (*minimumSizeHint)(struct QMenu_VTable* vtbl, const QMenu* self);
	int (*heightForWidth)(struct QMenu_VTable* vtbl, const QMenu* self, int param1);
	bool (*hasHeightForWidth)(struct QMenu_VTable* vtbl, const QMenu* self);
	QPaintEngine* (*paintEngine)(struct QMenu_VTable* vtbl, const QMenu* self);
	void (*mouseDoubleClickEvent)(struct QMenu_VTable* vtbl, QMenu* self, QMouseEvent* event);
	void (*keyReleaseEvent)(struct QMenu_VTable* vtbl, QMenu* self, QKeyEvent* event);
	void (*focusInEvent)(struct QMenu_VTable* vtbl, QMenu* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QMenu_VTable* vtbl, QMenu* self, QFocusEvent* event);
	void (*moveEvent)(struct QMenu_VTable* vtbl, QMenu* self, QMoveEvent* event);
	void (*resizeEvent)(struct QMenu_VTable* vtbl, QMenu* self, QResizeEvent* event);
	void (*closeEvent)(struct QMenu_VTable* vtbl, QMenu* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QMenu_VTable* vtbl, QMenu* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QMenu_VTable* vtbl, QMenu* self, QTabletEvent* event);
	void (*dragEnterEvent)(struct QMenu_VTable* vtbl, QMenu* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QMenu_VTable* vtbl, QMenu* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QMenu_VTable* vtbl, QMenu* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QMenu_VTable* vtbl, QMenu* self, QDropEvent* event);
	void (*showEvent)(struct QMenu_VTable* vtbl, QMenu* self, QShowEvent* event);
	bool (*nativeEvent)(struct QMenu_VTable* vtbl, QMenu* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QMenu_VTable* vtbl, const QMenu* self, int param1);
	void (*initPainter)(struct QMenu_VTable* vtbl, const QMenu* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QMenu_VTable* vtbl, const QMenu* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QMenu_VTable* vtbl, const QMenu* self);
	void (*inputMethodEvent)(struct QMenu_VTable* vtbl, QMenu* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QMenu_VTable* vtbl, const QMenu* self, int param1);
	bool (*eventFilter)(struct QMenu_VTable* vtbl, QMenu* self, QObject* watched, QEvent* event);
	void (*childEvent)(struct QMenu_VTable* vtbl, QMenu* self, QChildEvent* event);
	void (*customEvent)(struct QMenu_VTable* vtbl, QMenu* self, QEvent* event);
	void (*connectNotify)(struct QMenu_VTable* vtbl, QMenu* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QMenu_VTable* vtbl, QMenu* self, QMetaMethod* signal);
};
QMenu* QMenu_new(struct QMenu_VTable* vtbl, QWidget* parent);
QMenu* QMenu_new2(struct QMenu_VTable* vtbl);
QMenu* QMenu_new3(struct QMenu_VTable* vtbl, struct miqt_string title);
QMenu* QMenu_new4(struct QMenu_VTable* vtbl, struct miqt_string title, QWidget* parent);
void QMenu_virtbase(QMenu* src, QWidget** outptr_QWidget);
QMetaObject* QMenu_metaObject(const QMenu* self);
void* QMenu_metacast(QMenu* self, const char* param1);
int QMenu_metacall(QMenu* self, int param1, int param2, void** param3);
struct miqt_string QMenu_tr(const char* s);
struct miqt_string QMenu_trUtf8(const char* s);
QMenu* QMenu_addMenuWithTitle(QMenu* self, struct miqt_string title);
QMenu* QMenu_addMenu2(QMenu* self, QIcon* icon, struct miqt_string title);
bool QMenu_isEmpty(const QMenu* self);
void QMenu_clear(QMenu* self);
void QMenu_setTearOffEnabled(QMenu* self, bool tearOffEnabled);
bool QMenu_isTearOffEnabled(const QMenu* self);
bool QMenu_isTearOffMenuVisible(const QMenu* self);
void QMenu_showTearOffMenu(QMenu* self);
void QMenu_showTearOffMenuWithPos(QMenu* self, QPoint* pos);
void QMenu_hideTearOffMenu(QMenu* self);
void QMenu_popup(QMenu* self, QPoint* pos);
QSize* QMenu_sizeHint(const QMenu* self);
struct miqt_string QMenu_title(const QMenu* self);
void QMenu_setTitle(QMenu* self, struct miqt_string title);
QIcon* QMenu_icon(const QMenu* self);
void QMenu_setIcon(QMenu* self, QIcon* icon);
void QMenu_setNoReplayFor(QMenu* self, QWidget* widget);
bool QMenu_separatorsCollapsible(const QMenu* self);
void QMenu_setSeparatorsCollapsible(QMenu* self, bool collapse);
bool QMenu_toolTipsVisible(const QMenu* self);
void QMenu_setToolTipsVisible(QMenu* self, bool visible);
void QMenu_aboutToShow(QMenu* self);
void QMenu_connect_aboutToShow(QMenu* self, intptr_t slot);
void QMenu_aboutToHide(QMenu* self);
void QMenu_connect_aboutToHide(QMenu* self, intptr_t slot);
void QMenu_changeEvent(QMenu* self, QEvent* param1);
void QMenu_keyPressEvent(QMenu* self, QKeyEvent* param1);
void QMenu_mouseReleaseEvent(QMenu* self, QMouseEvent* param1);
void QMenu_mousePressEvent(QMenu* self, QMouseEvent* param1);
void QMenu_mouseMoveEvent(QMenu* self, QMouseEvent* param1);
void QMenu_wheelEvent(QMenu* self, QWheelEvent* param1);
void QMenu_enterEvent(QMenu* self, QEvent* param1);
void QMenu_leaveEvent(QMenu* self, QEvent* param1);
void QMenu_hideEvent(QMenu* self, QHideEvent* param1);
void QMenu_paintEvent(QMenu* self, QPaintEvent* param1);
void QMenu_actionEvent(QMenu* self, QActionEvent* param1);
void QMenu_timerEvent(QMenu* self, QTimerEvent* param1);
bool QMenu_event(QMenu* self, QEvent* param1);
bool QMenu_focusNextPrevChild(QMenu* self, bool next);
struct miqt_string QMenu_tr2(const char* s, const char* c);
struct miqt_string QMenu_tr3(const char* s, const char* c, int n);
struct miqt_string QMenu_trUtf82(const char* s, const char* c);
struct miqt_string QMenu_trUtf83(const char* s, const char* c, int n);
QMetaObject* QMenu_virtualbase_metaObject(const void* self);
void* QMenu_virtualbase_metacast(void* self, const char* param1);
int QMenu_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QMenu_virtualbase_sizeHint(const void* self);
void QMenu_virtualbase_changeEvent(void* self, QEvent* param1);
void QMenu_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
void QMenu_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);
void QMenu_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);
void QMenu_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);
void QMenu_virtualbase_wheelEvent(void* self, QWheelEvent* param1);
void QMenu_virtualbase_enterEvent(void* self, QEvent* param1);
void QMenu_virtualbase_leaveEvent(void* self, QEvent* param1);
void QMenu_virtualbase_hideEvent(void* self, QHideEvent* param1);
void QMenu_virtualbase_paintEvent(void* self, QPaintEvent* param1);
void QMenu_virtualbase_actionEvent(void* self, QActionEvent* param1);
void QMenu_virtualbase_timerEvent(void* self, QTimerEvent* param1);
bool QMenu_virtualbase_event(void* self, QEvent* param1);
bool QMenu_virtualbase_focusNextPrevChild(void* self, bool next);
int QMenu_virtualbase_devType(const void* self);
void QMenu_virtualbase_setVisible(void* self, bool visible);
QSize* QMenu_virtualbase_minimumSizeHint(const void* self);
int QMenu_virtualbase_heightForWidth(const void* self, int param1);
bool QMenu_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QMenu_virtualbase_paintEngine(const void* self);
void QMenu_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QMenu_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QMenu_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QMenu_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QMenu_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QMenu_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QMenu_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QMenu_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QMenu_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QMenu_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QMenu_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QMenu_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QMenu_virtualbase_dropEvent(void* self, QDropEvent* event);
void QMenu_virtualbase_showEvent(void* self, QShowEvent* event);
bool QMenu_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QMenu_virtualbase_metric(const void* self, int param1);
void QMenu_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QMenu_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QMenu_virtualbase_sharedPainter(const void* self);
void QMenu_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QMenu_virtualbase_inputMethodQuery(const void* self, int param1);
bool QMenu_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QMenu_virtualbase_childEvent(void* self, QChildEvent* event);
void QMenu_virtualbase_customEvent(void* self, QEvent* event);
void QMenu_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QMenu_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
int QMenu_protectedbase_columnCount(const void* self);
void QMenu_protectedbase_updateMicroFocus(void* self);
void QMenu_protectedbase_create(void* self);
void QMenu_protectedbase_destroy(void* self);
bool QMenu_protectedbase_focusNextChild(void* self);
bool QMenu_protectedbase_focusPreviousChild(void* self);
QObject* QMenu_protectedbase_sender(const void* self);
int QMenu_protectedbase_senderSignalIndex(const void* self);
int QMenu_protectedbase_receivers(const void* self, const char* signal);
bool QMenu_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QMenu_staticMetaObject();
void QMenu_delete(QMenu* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
