#pragma once
#ifndef MIQT_QTWIDGETS_GEN_QMAINWINDOW_H
#define MIQT_QTWIDGETS_GEN_QMAINWINDOW_H

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
class QDockWidget;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEvent;
class QFocusEvent;
class QHideEvent;
class QInputMethodEvent;
class QKeyEvent;
class QMainWindow;
class QMenu;
class QMenuBar;
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
class QStatusBar;
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
typedef struct QDockWidget QDockWidget;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMainWindow QMainWindow;
typedef struct QMenu QMenu;
typedef struct QMenuBar QMenuBar;
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
typedef struct QStatusBar QStatusBar;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QToolBar QToolBar;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QMainWindow_VTable {
	void (*destructor)(struct QMainWindow_VTable* vtbl, QMainWindow* self);
	QMetaObject* (*metaObject)(struct QMainWindow_VTable* vtbl, const QMainWindow* self);
	void* (*metacast)(struct QMainWindow_VTable* vtbl, QMainWindow* self, const char* param1);
	int (*metacall)(struct QMainWindow_VTable* vtbl, QMainWindow* self, int param1, int param2, void** param3);
	QMenu* (*createPopupMenu)(struct QMainWindow_VTable* vtbl, QMainWindow* self);
	void (*contextMenuEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QContextMenuEvent* event);
	bool (*event)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QEvent* event);
	int (*devType)(struct QMainWindow_VTable* vtbl, const QMainWindow* self);
	void (*setVisible)(struct QMainWindow_VTable* vtbl, QMainWindow* self, bool visible);
	QSize* (*sizeHint)(struct QMainWindow_VTable* vtbl, const QMainWindow* self);
	QSize* (*minimumSizeHint)(struct QMainWindow_VTable* vtbl, const QMainWindow* self);
	int (*heightForWidth)(struct QMainWindow_VTable* vtbl, const QMainWindow* self, int param1);
	bool (*hasHeightForWidth)(struct QMainWindow_VTable* vtbl, const QMainWindow* self);
	QPaintEngine* (*paintEngine)(struct QMainWindow_VTable* vtbl, const QMainWindow* self);
	void (*mousePressEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QMouseEvent* event);
	void (*wheelEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QKeyEvent* event);
	void (*focusInEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QFocusEvent* event);
	void (*enterEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QEvent* event);
	void (*leaveEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QEvent* event);
	void (*paintEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QPaintEvent* event);
	void (*moveEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QMoveEvent* event);
	void (*resizeEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QResizeEvent* event);
	void (*closeEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QCloseEvent* event);
	void (*tabletEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QTabletEvent* event);
	void (*actionEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QDropEvent* event);
	void (*showEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QShowEvent* event);
	void (*hideEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QHideEvent* event);
	bool (*nativeEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QEvent* param1);
	int (*metric)(struct QMainWindow_VTable* vtbl, const QMainWindow* self, int param1);
	void (*initPainter)(struct QMainWindow_VTable* vtbl, const QMainWindow* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QMainWindow_VTable* vtbl, const QMainWindow* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QMainWindow_VTable* vtbl, const QMainWindow* self);
	void (*inputMethodEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QMainWindow_VTable* vtbl, const QMainWindow* self, int param1);
	bool (*focusNextPrevChild)(struct QMainWindow_VTable* vtbl, QMainWindow* self, bool next);
	bool (*eventFilter)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QTimerEvent* event);
	void (*childEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QChildEvent* event);
	void (*customEvent)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QEvent* event);
	void (*connectNotify)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QMainWindow_VTable* vtbl, QMainWindow* self, QMetaMethod* signal);
};
QMainWindow* QMainWindow_new(struct QMainWindow_VTable* vtbl, QWidget* parent);
QMainWindow* QMainWindow_new2(struct QMainWindow_VTable* vtbl);
QMainWindow* QMainWindow_new3(struct QMainWindow_VTable* vtbl, QWidget* parent, int flags);
void QMainWindow_virtbase(QMainWindow* src, QWidget** outptr_QWidget);
QMetaObject* QMainWindow_metaObject(const QMainWindow* self);
void* QMainWindow_metacast(QMainWindow* self, const char* param1);
int QMainWindow_metacall(QMainWindow* self, int param1, int param2, void** param3);
struct miqt_string QMainWindow_tr(const char* s);
struct miqt_string QMainWindow_trUtf8(const char* s);
QSize* QMainWindow_iconSize(const QMainWindow* self);
void QMainWindow_setIconSize(QMainWindow* self, QSize* iconSize);
int QMainWindow_toolButtonStyle(const QMainWindow* self);
void QMainWindow_setToolButtonStyle(QMainWindow* self, int toolButtonStyle);
bool QMainWindow_isAnimated(const QMainWindow* self);
bool QMainWindow_isDockNestingEnabled(const QMainWindow* self);
bool QMainWindow_documentMode(const QMainWindow* self);
void QMainWindow_setDocumentMode(QMainWindow* self, bool enabled);
int QMainWindow_tabShape(const QMainWindow* self);
void QMainWindow_setTabShape(QMainWindow* self, int tabShape);
int QMainWindow_tabPosition(const QMainWindow* self, int area);
void QMainWindow_setTabPosition(QMainWindow* self, int areas, int tabPosition);
void QMainWindow_setDockOptions(QMainWindow* self, int options);
int QMainWindow_dockOptions(const QMainWindow* self);
bool QMainWindow_isSeparator(const QMainWindow* self, QPoint* pos);
QMenuBar* QMainWindow_menuBar(const QMainWindow* self);
void QMainWindow_setMenuBar(QMainWindow* self, QMenuBar* menubar);
QWidget* QMainWindow_menuWidget(const QMainWindow* self);
void QMainWindow_setMenuWidget(QMainWindow* self, QWidget* menubar);
QStatusBar* QMainWindow_statusBar(const QMainWindow* self);
void QMainWindow_setStatusBar(QMainWindow* self, QStatusBar* statusbar);
QWidget* QMainWindow_centralWidget(const QMainWindow* self);
void QMainWindow_setCentralWidget(QMainWindow* self, QWidget* widget);
QWidget* QMainWindow_takeCentralWidget(QMainWindow* self);
void QMainWindow_setCorner(QMainWindow* self, int corner, int area);
int QMainWindow_corner(const QMainWindow* self, int corner);
void QMainWindow_addToolBarBreak(QMainWindow* self);
void QMainWindow_insertToolBarBreak(QMainWindow* self, QToolBar* before);
void QMainWindow_addToolBar(QMainWindow* self, int area, QToolBar* toolbar);
void QMainWindow_addToolBarWithToolbar(QMainWindow* self, QToolBar* toolbar);
QToolBar* QMainWindow_addToolBarWithTitle(QMainWindow* self, struct miqt_string title);
void QMainWindow_insertToolBar(QMainWindow* self, QToolBar* before, QToolBar* toolbar);
void QMainWindow_removeToolBar(QMainWindow* self, QToolBar* toolbar);
void QMainWindow_removeToolBarBreak(QMainWindow* self, QToolBar* before);
bool QMainWindow_unifiedTitleAndToolBarOnMac(const QMainWindow* self);
int QMainWindow_toolBarArea(const QMainWindow* self, QToolBar* toolbar);
bool QMainWindow_toolBarBreak(const QMainWindow* self, QToolBar* toolbar);
void QMainWindow_addDockWidget(QMainWindow* self, int area, QDockWidget* dockwidget);
void QMainWindow_addDockWidget2(QMainWindow* self, int area, QDockWidget* dockwidget, int orientation);
void QMainWindow_splitDockWidget(QMainWindow* self, QDockWidget* after, QDockWidget* dockwidget, int orientation);
void QMainWindow_tabifyDockWidget(QMainWindow* self, QDockWidget* first, QDockWidget* second);
struct miqt_array /* of QDockWidget* */  QMainWindow_tabifiedDockWidgets(const QMainWindow* self, QDockWidget* dockwidget);
void QMainWindow_removeDockWidget(QMainWindow* self, QDockWidget* dockwidget);
bool QMainWindow_restoreDockWidget(QMainWindow* self, QDockWidget* dockwidget);
int QMainWindow_dockWidgetArea(const QMainWindow* self, QDockWidget* dockwidget);
void QMainWindow_resizeDocks(QMainWindow* self, struct miqt_array /* of QDockWidget* */  docks, struct miqt_array /* of int */  sizes, int orientation);
struct miqt_string QMainWindow_saveState(const QMainWindow* self);
bool QMainWindow_restoreState(QMainWindow* self, struct miqt_string state);
QMenu* QMainWindow_createPopupMenu(QMainWindow* self);
void QMainWindow_setAnimated(QMainWindow* self, bool enabled);
void QMainWindow_setDockNestingEnabled(QMainWindow* self, bool enabled);
void QMainWindow_setUnifiedTitleAndToolBarOnMac(QMainWindow* self, bool set);
void QMainWindow_iconSizeChanged(QMainWindow* self, QSize* iconSize);
void QMainWindow_connect_iconSizeChanged(QMainWindow* self, intptr_t slot);
void QMainWindow_toolButtonStyleChanged(QMainWindow* self, int toolButtonStyle);
void QMainWindow_connect_toolButtonStyleChanged(QMainWindow* self, intptr_t slot);
void QMainWindow_tabifiedDockWidgetActivated(QMainWindow* self, QDockWidget* dockWidget);
void QMainWindow_connect_tabifiedDockWidgetActivated(QMainWindow* self, intptr_t slot);
void QMainWindow_contextMenuEvent(QMainWindow* self, QContextMenuEvent* event);
bool QMainWindow_event(QMainWindow* self, QEvent* event);
struct miqt_string QMainWindow_tr2(const char* s, const char* c);
struct miqt_string QMainWindow_tr3(const char* s, const char* c, int n);
struct miqt_string QMainWindow_trUtf82(const char* s, const char* c);
struct miqt_string QMainWindow_trUtf83(const char* s, const char* c, int n);
void QMainWindow_addToolBarBreak1(QMainWindow* self, int area);
struct miqt_string QMainWindow_saveState1(const QMainWindow* self, int version);
bool QMainWindow_restoreState2(QMainWindow* self, struct miqt_string state, int version);
QMetaObject* QMainWindow_virtualbase_metaObject(const void* self);
void* QMainWindow_virtualbase_metacast(void* self, const char* param1);
int QMainWindow_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QMenu* QMainWindow_virtualbase_createPopupMenu(void* self);
void QMainWindow_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
bool QMainWindow_virtualbase_event(void* self, QEvent* event);
int QMainWindow_virtualbase_devType(const void* self);
void QMainWindow_virtualbase_setVisible(void* self, bool visible);
QSize* QMainWindow_virtualbase_sizeHint(const void* self);
QSize* QMainWindow_virtualbase_minimumSizeHint(const void* self);
int QMainWindow_virtualbase_heightForWidth(const void* self, int param1);
bool QMainWindow_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QMainWindow_virtualbase_paintEngine(const void* self);
void QMainWindow_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QMainWindow_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QMainWindow_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QMainWindow_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QMainWindow_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QMainWindow_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QMainWindow_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QMainWindow_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QMainWindow_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QMainWindow_virtualbase_enterEvent(void* self, QEvent* event);
void QMainWindow_virtualbase_leaveEvent(void* self, QEvent* event);
void QMainWindow_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QMainWindow_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QMainWindow_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QMainWindow_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QMainWindow_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QMainWindow_virtualbase_actionEvent(void* self, QActionEvent* event);
void QMainWindow_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QMainWindow_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QMainWindow_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QMainWindow_virtualbase_dropEvent(void* self, QDropEvent* event);
void QMainWindow_virtualbase_showEvent(void* self, QShowEvent* event);
void QMainWindow_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QMainWindow_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
void QMainWindow_virtualbase_changeEvent(void* self, QEvent* param1);
int QMainWindow_virtualbase_metric(const void* self, int param1);
void QMainWindow_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QMainWindow_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QMainWindow_virtualbase_sharedPainter(const void* self);
void QMainWindow_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QMainWindow_virtualbase_inputMethodQuery(const void* self, int param1);
bool QMainWindow_virtualbase_focusNextPrevChild(void* self, bool next);
bool QMainWindow_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QMainWindow_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QMainWindow_virtualbase_childEvent(void* self, QChildEvent* event);
void QMainWindow_virtualbase_customEvent(void* self, QEvent* event);
void QMainWindow_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QMainWindow_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QMainWindow_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QMainWindow_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QMainWindow_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QMainWindow_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QMainWindow_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QMainWindow_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QMainWindow_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QMainWindow_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QMainWindow_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QMainWindow_staticMetaObject();
void QMainWindow_delete(QMainWindow* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
