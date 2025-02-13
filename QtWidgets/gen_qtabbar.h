#pragma once
#ifndef MIQT_QTWIDGETS_GEN_QTABBAR_H
#define MIQT_QTWIDGETS_GEN_QTABBAR_H

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
class QColor;
class QContextMenuEvent;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEnterEvent;
class QEvent;
class QFocusEvent;
class QHideEvent;
class QIcon;
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
class QRect;
class QResizeEvent;
class QShowEvent;
class QSize;
class QStyleOptionTab;
class QTabBar;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QColor QColor;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEnterEvent QEnterEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QIcon QIcon;
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
typedef struct QRect QRect;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionTab QStyleOptionTab;
typedef struct QTabBar QTabBar;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

QTabBar* QTabBar_new(QWidget* parent);
QTabBar* QTabBar_new2();
void QTabBar_virtbase(QTabBar* src, QWidget** outptr_QWidget);
QMetaObject* QTabBar_metaObject(const QTabBar* self);
void* QTabBar_metacast(QTabBar* self, const char* param1);
int QTabBar_metacall(QTabBar* self, int param1, int param2, void** param3);
struct miqt_string QTabBar_tr(const char* s);
int QTabBar_shape(const QTabBar* self);
void QTabBar_setShape(QTabBar* self, int shape);
int QTabBar_addTab(QTabBar* self, struct miqt_string text);
int QTabBar_addTab2(QTabBar* self, QIcon* icon, struct miqt_string text);
int QTabBar_insertTab(QTabBar* self, int index, struct miqt_string text);
int QTabBar_insertTab2(QTabBar* self, int index, QIcon* icon, struct miqt_string text);
void QTabBar_removeTab(QTabBar* self, int index);
void QTabBar_moveTab(QTabBar* self, int from, int to);
bool QTabBar_isTabEnabled(const QTabBar* self, int index);
void QTabBar_setTabEnabled(QTabBar* self, int index, bool enabled);
bool QTabBar_isTabVisible(const QTabBar* self, int index);
void QTabBar_setTabVisible(QTabBar* self, int index, bool visible);
struct miqt_string QTabBar_tabText(const QTabBar* self, int index);
void QTabBar_setTabText(QTabBar* self, int index, struct miqt_string text);
QColor* QTabBar_tabTextColor(const QTabBar* self, int index);
void QTabBar_setTabTextColor(QTabBar* self, int index, QColor* color);
QIcon* QTabBar_tabIcon(const QTabBar* self, int index);
void QTabBar_setTabIcon(QTabBar* self, int index, QIcon* icon);
int QTabBar_elideMode(const QTabBar* self);
void QTabBar_setElideMode(QTabBar* self, int mode);
void QTabBar_setTabToolTip(QTabBar* self, int index, struct miqt_string tip);
struct miqt_string QTabBar_tabToolTip(const QTabBar* self, int index);
void QTabBar_setTabWhatsThis(QTabBar* self, int index, struct miqt_string text);
struct miqt_string QTabBar_tabWhatsThis(const QTabBar* self, int index);
void QTabBar_setTabData(QTabBar* self, int index, QVariant* data);
QVariant* QTabBar_tabData(const QTabBar* self, int index);
QRect* QTabBar_tabRect(const QTabBar* self, int index);
int QTabBar_tabAt(const QTabBar* self, QPoint* pos);
int QTabBar_currentIndex(const QTabBar* self);
int QTabBar_count(const QTabBar* self);
QSize* QTabBar_sizeHint(const QTabBar* self);
QSize* QTabBar_minimumSizeHint(const QTabBar* self);
void QTabBar_setDrawBase(QTabBar* self, bool drawTheBase);
bool QTabBar_drawBase(const QTabBar* self);
QSize* QTabBar_iconSize(const QTabBar* self);
void QTabBar_setIconSize(QTabBar* self, QSize* size);
bool QTabBar_usesScrollButtons(const QTabBar* self);
void QTabBar_setUsesScrollButtons(QTabBar* self, bool useButtons);
bool QTabBar_tabsClosable(const QTabBar* self);
void QTabBar_setTabsClosable(QTabBar* self, bool closable);
void QTabBar_setTabButton(QTabBar* self, int index, int position, QWidget* widget);
QWidget* QTabBar_tabButton(const QTabBar* self, int index, int position);
int QTabBar_selectionBehaviorOnRemove(const QTabBar* self);
void QTabBar_setSelectionBehaviorOnRemove(QTabBar* self, int behavior);
bool QTabBar_expanding(const QTabBar* self);
void QTabBar_setExpanding(QTabBar* self, bool enabled);
bool QTabBar_isMovable(const QTabBar* self);
void QTabBar_setMovable(QTabBar* self, bool movable);
bool QTabBar_documentMode(const QTabBar* self);
void QTabBar_setDocumentMode(QTabBar* self, bool set);
bool QTabBar_autoHide(const QTabBar* self);
void QTabBar_setAutoHide(QTabBar* self, bool hide);
bool QTabBar_changeCurrentOnDrag(const QTabBar* self);
void QTabBar_setChangeCurrentOnDrag(QTabBar* self, bool change);
struct miqt_string QTabBar_accessibleTabName(const QTabBar* self, int index);
void QTabBar_setAccessibleTabName(QTabBar* self, int index, struct miqt_string name);
void QTabBar_setCurrentIndex(QTabBar* self, int index);
void QTabBar_currentChanged(QTabBar* self, int index);
void QTabBar_connect_currentChanged(QTabBar* self, intptr_t slot);
void QTabBar_tabCloseRequested(QTabBar* self, int index);
void QTabBar_connect_tabCloseRequested(QTabBar* self, intptr_t slot);
void QTabBar_tabMoved(QTabBar* self, int from, int to);
void QTabBar_connect_tabMoved(QTabBar* self, intptr_t slot);
void QTabBar_tabBarClicked(QTabBar* self, int index);
void QTabBar_connect_tabBarClicked(QTabBar* self, intptr_t slot);
void QTabBar_tabBarDoubleClicked(QTabBar* self, int index);
void QTabBar_connect_tabBarDoubleClicked(QTabBar* self, intptr_t slot);
QSize* QTabBar_tabSizeHint(const QTabBar* self, int index);
QSize* QTabBar_minimumTabSizeHint(const QTabBar* self, int index);
void QTabBar_tabInserted(QTabBar* self, int index);
void QTabBar_tabRemoved(QTabBar* self, int index);
void QTabBar_tabLayoutChange(QTabBar* self);
bool QTabBar_event(QTabBar* self, QEvent* param1);
void QTabBar_resizeEvent(QTabBar* self, QResizeEvent* param1);
void QTabBar_showEvent(QTabBar* self, QShowEvent* param1);
void QTabBar_hideEvent(QTabBar* self, QHideEvent* param1);
void QTabBar_paintEvent(QTabBar* self, QPaintEvent* param1);
void QTabBar_mousePressEvent(QTabBar* self, QMouseEvent* param1);
void QTabBar_mouseMoveEvent(QTabBar* self, QMouseEvent* param1);
void QTabBar_mouseReleaseEvent(QTabBar* self, QMouseEvent* param1);
void QTabBar_mouseDoubleClickEvent(QTabBar* self, QMouseEvent* param1);
void QTabBar_wheelEvent(QTabBar* self, QWheelEvent* event);
void QTabBar_keyPressEvent(QTabBar* self, QKeyEvent* param1);
void QTabBar_changeEvent(QTabBar* self, QEvent* param1);
void QTabBar_timerEvent(QTabBar* self, QTimerEvent* event);
void QTabBar_initStyleOption(const QTabBar* self, QStyleOptionTab* option, int tabIndex);
struct miqt_string QTabBar_tr2(const char* s, const char* c);
struct miqt_string QTabBar_tr3(const char* s, const char* c, int n);
bool QTabBar_override_virtual_metaObject(void* self, intptr_t slot);
QMetaObject* QTabBar_virtualbase_metaObject(const void* self);
bool QTabBar_override_virtual_metacast(void* self, intptr_t slot);
void* QTabBar_virtualbase_metacast(void* self, const char* param1);
bool QTabBar_override_virtual_metacall(void* self, intptr_t slot);
int QTabBar_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QTabBar_override_virtual_sizeHint(void* self, intptr_t slot);
QSize* QTabBar_virtualbase_sizeHint(const void* self);
bool QTabBar_override_virtual_minimumSizeHint(void* self, intptr_t slot);
QSize* QTabBar_virtualbase_minimumSizeHint(const void* self);
bool QTabBar_override_virtual_tabSizeHint(void* self, intptr_t slot);
QSize* QTabBar_virtualbase_tabSizeHint(const void* self, int index);
bool QTabBar_override_virtual_minimumTabSizeHint(void* self, intptr_t slot);
QSize* QTabBar_virtualbase_minimumTabSizeHint(const void* self, int index);
bool QTabBar_override_virtual_tabInserted(void* self, intptr_t slot);
void QTabBar_virtualbase_tabInserted(void* self, int index);
bool QTabBar_override_virtual_tabRemoved(void* self, intptr_t slot);
void QTabBar_virtualbase_tabRemoved(void* self, int index);
bool QTabBar_override_virtual_tabLayoutChange(void* self, intptr_t slot);
void QTabBar_virtualbase_tabLayoutChange(void* self);
bool QTabBar_override_virtual_event(void* self, intptr_t slot);
bool QTabBar_virtualbase_event(void* self, QEvent* param1);
bool QTabBar_override_virtual_resizeEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
bool QTabBar_override_virtual_showEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_showEvent(void* self, QShowEvent* param1);
bool QTabBar_override_virtual_hideEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_hideEvent(void* self, QHideEvent* param1);
bool QTabBar_override_virtual_paintEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_paintEvent(void* self, QPaintEvent* param1);
bool QTabBar_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);
bool QTabBar_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);
bool QTabBar_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);
bool QTabBar_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1);
bool QTabBar_override_virtual_wheelEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_wheelEvent(void* self, QWheelEvent* event);
bool QTabBar_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
bool QTabBar_override_virtual_changeEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_changeEvent(void* self, QEvent* param1);
bool QTabBar_override_virtual_timerEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QTabBar_override_virtual_initStyleOption(void* self, intptr_t slot);
void QTabBar_virtualbase_initStyleOption(const void* self, QStyleOptionTab* option, int tabIndex);
bool QTabBar_override_virtual_devType(void* self, intptr_t slot);
int QTabBar_virtualbase_devType(const void* self);
bool QTabBar_override_virtual_setVisible(void* self, intptr_t slot);
void QTabBar_virtualbase_setVisible(void* self, bool visible);
bool QTabBar_override_virtual_heightForWidth(void* self, intptr_t slot);
int QTabBar_virtualbase_heightForWidth(const void* self, int param1);
bool QTabBar_override_virtual_hasHeightForWidth(void* self, intptr_t slot);
bool QTabBar_virtualbase_hasHeightForWidth(const void* self);
bool QTabBar_override_virtual_paintEngine(void* self, intptr_t slot);
QPaintEngine* QTabBar_virtualbase_paintEngine(const void* self);
bool QTabBar_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
bool QTabBar_override_virtual_focusInEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_focusInEvent(void* self, QFocusEvent* event);
bool QTabBar_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
bool QTabBar_override_virtual_enterEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_enterEvent(void* self, QEnterEvent* event);
bool QTabBar_override_virtual_leaveEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_leaveEvent(void* self, QEvent* event);
bool QTabBar_override_virtual_moveEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_moveEvent(void* self, QMoveEvent* event);
bool QTabBar_override_virtual_closeEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_closeEvent(void* self, QCloseEvent* event);
bool QTabBar_override_virtual_contextMenuEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
bool QTabBar_override_virtual_tabletEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_tabletEvent(void* self, QTabletEvent* event);
bool QTabBar_override_virtual_actionEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_actionEvent(void* self, QActionEvent* event);
bool QTabBar_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
bool QTabBar_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
bool QTabBar_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
bool QTabBar_override_virtual_dropEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QTabBar_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QTabBar_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
bool QTabBar_override_virtual_metric(void* self, intptr_t slot);
int QTabBar_virtualbase_metric(const void* self, int param1);
bool QTabBar_override_virtual_initPainter(void* self, intptr_t slot);
void QTabBar_virtualbase_initPainter(const void* self, QPainter* painter);
bool QTabBar_override_virtual_redirected(void* self, intptr_t slot);
QPaintDevice* QTabBar_virtualbase_redirected(const void* self, QPoint* offset);
bool QTabBar_override_virtual_sharedPainter(void* self, intptr_t slot);
QPainter* QTabBar_virtualbase_sharedPainter(const void* self);
bool QTabBar_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
bool QTabBar_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QTabBar_virtualbase_inputMethodQuery(const void* self, int param1);
bool QTabBar_override_virtual_focusNextPrevChild(void* self, intptr_t slot);
bool QTabBar_virtualbase_focusNextPrevChild(void* self, bool next);
bool QTabBar_override_virtual_eventFilter(void* self, intptr_t slot);
bool QTabBar_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QTabBar_override_virtual_childEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_childEvent(void* self, QChildEvent* event);
bool QTabBar_override_virtual_customEvent(void* self, intptr_t slot);
void QTabBar_virtualbase_customEvent(void* self, QEvent* event);
bool QTabBar_override_virtual_connectNotify(void* self, intptr_t slot);
void QTabBar_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QTabBar_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QTabBar_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QTabBar_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QTabBar_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QTabBar_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QTabBar_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QTabBar_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QTabBar_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QTabBar_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QTabBar_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QTabBar_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QTabBar_staticMetaObject();
void QTabBar_delete(QTabBar* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
