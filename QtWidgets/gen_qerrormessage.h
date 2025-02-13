#pragma once
#ifndef MIQT_QTWIDGETS_GEN_QERRORMESSAGE_H
#define MIQT_QTWIDGETS_GEN_QERRORMESSAGE_H

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
class QDialog;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEnterEvent;
class QErrorMessage;
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
typedef struct QDialog QDialog;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEnterEvent QEnterEvent;
typedef struct QErrorMessage QErrorMessage;
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
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

QErrorMessage* QErrorMessage_new(QWidget* parent);
QErrorMessage* QErrorMessage_new2();
void QErrorMessage_virtbase(QErrorMessage* src, QDialog** outptr_QDialog);
QMetaObject* QErrorMessage_metaObject(const QErrorMessage* self);
void* QErrorMessage_metacast(QErrorMessage* self, const char* param1);
struct miqt_string QErrorMessage_tr(const char* s);
QErrorMessage* QErrorMessage_qtHandler();
void QErrorMessage_showMessage(QErrorMessage* self, struct miqt_string message);
void QErrorMessage_showMessage2(QErrorMessage* self, struct miqt_string message, struct miqt_string type);
void QErrorMessage_done(QErrorMessage* self, int param1);
void QErrorMessage_changeEvent(QErrorMessage* self, QEvent* e);
struct miqt_string QErrorMessage_tr2(const char* s, const char* c);
struct miqt_string QErrorMessage_tr3(const char* s, const char* c, int n);
bool QErrorMessage_override_virtual_done(void* self, intptr_t slot);
void QErrorMessage_virtualbase_done(void* self, int param1);
bool QErrorMessage_override_virtual_changeEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_changeEvent(void* self, QEvent* e);
bool QErrorMessage_override_virtual_setVisible(void* self, intptr_t slot);
void QErrorMessage_virtualbase_setVisible(void* self, bool visible);
bool QErrorMessage_override_virtual_sizeHint(void* self, intptr_t slot);
QSize* QErrorMessage_virtualbase_sizeHint(const void* self);
bool QErrorMessage_override_virtual_minimumSizeHint(void* self, intptr_t slot);
QSize* QErrorMessage_virtualbase_minimumSizeHint(const void* self);
bool QErrorMessage_override_virtual_open(void* self, intptr_t slot);
void QErrorMessage_virtualbase_open(void* self);
bool QErrorMessage_override_virtual_exec(void* self, intptr_t slot);
int QErrorMessage_virtualbase_exec(void* self);
bool QErrorMessage_override_virtual_accept(void* self, intptr_t slot);
void QErrorMessage_virtualbase_accept(void* self);
bool QErrorMessage_override_virtual_reject(void* self, intptr_t slot);
void QErrorMessage_virtualbase_reject(void* self);
bool QErrorMessage_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
bool QErrorMessage_override_virtual_closeEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_closeEvent(void* self, QCloseEvent* param1);
bool QErrorMessage_override_virtual_showEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_showEvent(void* self, QShowEvent* param1);
bool QErrorMessage_override_virtual_resizeEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
bool QErrorMessage_override_virtual_contextMenuEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
bool QErrorMessage_override_virtual_eventFilter(void* self, intptr_t slot);
bool QErrorMessage_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);
bool QErrorMessage_override_virtual_devType(void* self, intptr_t slot);
int QErrorMessage_virtualbase_devType(const void* self);
bool QErrorMessage_override_virtual_heightForWidth(void* self, intptr_t slot);
int QErrorMessage_virtualbase_heightForWidth(const void* self, int param1);
bool QErrorMessage_override_virtual_hasHeightForWidth(void* self, intptr_t slot);
bool QErrorMessage_virtualbase_hasHeightForWidth(const void* self);
bool QErrorMessage_override_virtual_paintEngine(void* self, intptr_t slot);
QPaintEngine* QErrorMessage_virtualbase_paintEngine(const void* self);
bool QErrorMessage_override_virtual_event(void* self, intptr_t slot);
bool QErrorMessage_virtualbase_event(void* self, QEvent* event);
bool QErrorMessage_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
bool QErrorMessage_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
bool QErrorMessage_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
bool QErrorMessage_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
bool QErrorMessage_override_virtual_wheelEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_wheelEvent(void* self, QWheelEvent* event);
bool QErrorMessage_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
bool QErrorMessage_override_virtual_focusInEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_focusInEvent(void* self, QFocusEvent* event);
bool QErrorMessage_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
bool QErrorMessage_override_virtual_enterEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_enterEvent(void* self, QEnterEvent* event);
bool QErrorMessage_override_virtual_leaveEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_leaveEvent(void* self, QEvent* event);
bool QErrorMessage_override_virtual_paintEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_paintEvent(void* self, QPaintEvent* event);
bool QErrorMessage_override_virtual_moveEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_moveEvent(void* self, QMoveEvent* event);
bool QErrorMessage_override_virtual_tabletEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_tabletEvent(void* self, QTabletEvent* event);
bool QErrorMessage_override_virtual_actionEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_actionEvent(void* self, QActionEvent* event);
bool QErrorMessage_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
bool QErrorMessage_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
bool QErrorMessage_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
bool QErrorMessage_override_virtual_dropEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QErrorMessage_override_virtual_hideEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QErrorMessage_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QErrorMessage_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
bool QErrorMessage_override_virtual_metric(void* self, intptr_t slot);
int QErrorMessage_virtualbase_metric(const void* self, int param1);
bool QErrorMessage_override_virtual_initPainter(void* self, intptr_t slot);
void QErrorMessage_virtualbase_initPainter(const void* self, QPainter* painter);
bool QErrorMessage_override_virtual_redirected(void* self, intptr_t slot);
QPaintDevice* QErrorMessage_virtualbase_redirected(const void* self, QPoint* offset);
bool QErrorMessage_override_virtual_sharedPainter(void* self, intptr_t slot);
QPainter* QErrorMessage_virtualbase_sharedPainter(const void* self);
bool QErrorMessage_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
bool QErrorMessage_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QErrorMessage_virtualbase_inputMethodQuery(const void* self, int param1);
bool QErrorMessage_override_virtual_focusNextPrevChild(void* self, intptr_t slot);
bool QErrorMessage_virtualbase_focusNextPrevChild(void* self, bool next);
bool QErrorMessage_override_virtual_timerEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QErrorMessage_override_virtual_childEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_childEvent(void* self, QChildEvent* event);
bool QErrorMessage_override_virtual_customEvent(void* self, intptr_t slot);
void QErrorMessage_virtualbase_customEvent(void* self, QEvent* event);
bool QErrorMessage_override_virtual_connectNotify(void* self, intptr_t slot);
void QErrorMessage_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QErrorMessage_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QErrorMessage_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QErrorMessage_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1);
void QErrorMessage_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QErrorMessage_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QErrorMessage_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QErrorMessage_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QErrorMessage_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QErrorMessage_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QErrorMessage_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QErrorMessage_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QErrorMessage_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
void QErrorMessage_delete(QErrorMessage* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
