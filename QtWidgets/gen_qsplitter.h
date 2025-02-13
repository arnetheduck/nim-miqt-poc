#pragma once
#ifndef MIQT_QTWIDGETS_GEN_QSPLITTER_H
#define MIQT_QTWIDGETS_GEN_QSPLITTER_H

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
class QFrame;
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
class QSplitter;
class QSplitterHandle;
class QStyleOptionFrame;
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
typedef struct QFrame QFrame;
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
typedef struct QSplitter QSplitter;
typedef struct QSplitterHandle QSplitterHandle;
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

QSplitter* QSplitter_new(QWidget* parent);
QSplitter* QSplitter_new2();
QSplitter* QSplitter_new3(int param1);
QSplitter* QSplitter_new4(int param1, QWidget* parent);
void QSplitter_virtbase(QSplitter* src, QFrame** outptr_QFrame);
QMetaObject* QSplitter_metaObject(const QSplitter* self);
void* QSplitter_metacast(QSplitter* self, const char* param1);
int QSplitter_metacall(QSplitter* self, int param1, int param2, void** param3);
struct miqt_string QSplitter_tr(const char* s);
struct miqt_string QSplitter_trUtf8(const char* s);
void QSplitter_addWidget(QSplitter* self, QWidget* widget);
void QSplitter_insertWidget(QSplitter* self, int index, QWidget* widget);
QWidget* QSplitter_replaceWidget(QSplitter* self, int index, QWidget* widget);
void QSplitter_setOrientation(QSplitter* self, int orientation);
int QSplitter_orientation(const QSplitter* self);
void QSplitter_setChildrenCollapsible(QSplitter* self, bool childrenCollapsible);
bool QSplitter_childrenCollapsible(const QSplitter* self);
void QSplitter_setCollapsible(QSplitter* self, int index, bool param2);
bool QSplitter_isCollapsible(const QSplitter* self, int index);
void QSplitter_setOpaqueResize(QSplitter* self);
bool QSplitter_opaqueResize(const QSplitter* self);
void QSplitter_refresh(QSplitter* self);
QSize* QSplitter_sizeHint(const QSplitter* self);
QSize* QSplitter_minimumSizeHint(const QSplitter* self);
struct miqt_array /* of int */  QSplitter_sizes(const QSplitter* self);
void QSplitter_setSizes(QSplitter* self, struct miqt_array /* of int */  list);
struct miqt_string QSplitter_saveState(const QSplitter* self);
bool QSplitter_restoreState(QSplitter* self, struct miqt_string state);
int QSplitter_handleWidth(const QSplitter* self);
void QSplitter_setHandleWidth(QSplitter* self, int handleWidth);
int QSplitter_indexOf(const QSplitter* self, QWidget* w);
QWidget* QSplitter_widget(const QSplitter* self, int index);
int QSplitter_count(const QSplitter* self);
void QSplitter_getRange(const QSplitter* self, int index, int* param2, int* param3);
QSplitterHandle* QSplitter_handle(const QSplitter* self, int index);
void QSplitter_setStretchFactor(QSplitter* self, int index, int stretch);
void QSplitter_splitterMoved(QSplitter* self, int pos, int index);
void QSplitter_connect_splitterMoved(QSplitter* self, intptr_t slot);
QSplitterHandle* QSplitter_createHandle(QSplitter* self);
void QSplitter_childEvent(QSplitter* self, QChildEvent* param1);
bool QSplitter_event(QSplitter* self, QEvent* param1);
void QSplitter_resizeEvent(QSplitter* self, QResizeEvent* param1);
void QSplitter_changeEvent(QSplitter* self, QEvent* param1);
struct miqt_string QSplitter_tr2(const char* s, const char* c);
struct miqt_string QSplitter_tr3(const char* s, const char* c, int n);
struct miqt_string QSplitter_trUtf82(const char* s, const char* c);
struct miqt_string QSplitter_trUtf83(const char* s, const char* c, int n);
void QSplitter_setOpaqueResize1(QSplitter* self, bool opaque);
bool QSplitter_override_virtual_metacall(void* self, intptr_t slot);
int QSplitter_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QSplitter_override_virtual_sizeHint(void* self, intptr_t slot);
QSize* QSplitter_virtualbase_sizeHint(const void* self);
bool QSplitter_override_virtual_minimumSizeHint(void* self, intptr_t slot);
QSize* QSplitter_virtualbase_minimumSizeHint(const void* self);
bool QSplitter_override_virtual_createHandle(void* self, intptr_t slot);
QSplitterHandle* QSplitter_virtualbase_createHandle(void* self);
bool QSplitter_override_virtual_childEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_childEvent(void* self, QChildEvent* param1);
bool QSplitter_override_virtual_event(void* self, intptr_t slot);
bool QSplitter_virtualbase_event(void* self, QEvent* param1);
bool QSplitter_override_virtual_resizeEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
bool QSplitter_override_virtual_changeEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_changeEvent(void* self, QEvent* param1);
bool QSplitter_override_virtual_paintEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_paintEvent(void* self, QPaintEvent* param1);
bool QSplitter_override_virtual_devType(void* self, intptr_t slot);
int QSplitter_virtualbase_devType(const void* self);
bool QSplitter_override_virtual_setVisible(void* self, intptr_t slot);
void QSplitter_virtualbase_setVisible(void* self, bool visible);
bool QSplitter_override_virtual_heightForWidth(void* self, intptr_t slot);
int QSplitter_virtualbase_heightForWidth(const void* self, int param1);
bool QSplitter_override_virtual_hasHeightForWidth(void* self, intptr_t slot);
bool QSplitter_virtualbase_hasHeightForWidth(const void* self);
bool QSplitter_override_virtual_paintEngine(void* self, intptr_t slot);
QPaintEngine* QSplitter_virtualbase_paintEngine(const void* self);
bool QSplitter_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
bool QSplitter_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
bool QSplitter_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
bool QSplitter_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
bool QSplitter_override_virtual_wheelEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_wheelEvent(void* self, QWheelEvent* event);
bool QSplitter_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
bool QSplitter_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
bool QSplitter_override_virtual_focusInEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_focusInEvent(void* self, QFocusEvent* event);
bool QSplitter_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
bool QSplitter_override_virtual_enterEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_enterEvent(void* self, QEvent* event);
bool QSplitter_override_virtual_leaveEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_leaveEvent(void* self, QEvent* event);
bool QSplitter_override_virtual_moveEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_moveEvent(void* self, QMoveEvent* event);
bool QSplitter_override_virtual_closeEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_closeEvent(void* self, QCloseEvent* event);
bool QSplitter_override_virtual_contextMenuEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
bool QSplitter_override_virtual_tabletEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_tabletEvent(void* self, QTabletEvent* event);
bool QSplitter_override_virtual_actionEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_actionEvent(void* self, QActionEvent* event);
bool QSplitter_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
bool QSplitter_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
bool QSplitter_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
bool QSplitter_override_virtual_dropEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QSplitter_override_virtual_showEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_showEvent(void* self, QShowEvent* event);
bool QSplitter_override_virtual_hideEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QSplitter_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QSplitter_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
bool QSplitter_override_virtual_metric(void* self, intptr_t slot);
int QSplitter_virtualbase_metric(const void* self, int param1);
bool QSplitter_override_virtual_initPainter(void* self, intptr_t slot);
void QSplitter_virtualbase_initPainter(const void* self, QPainter* painter);
bool QSplitter_override_virtual_redirected(void* self, intptr_t slot);
QPaintDevice* QSplitter_virtualbase_redirected(const void* self, QPoint* offset);
bool QSplitter_override_virtual_sharedPainter(void* self, intptr_t slot);
QPainter* QSplitter_virtualbase_sharedPainter(const void* self);
bool QSplitter_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
bool QSplitter_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QSplitter_virtualbase_inputMethodQuery(const void* self, int param1);
bool QSplitter_override_virtual_focusNextPrevChild(void* self, intptr_t slot);
bool QSplitter_virtualbase_focusNextPrevChild(void* self, bool next);
bool QSplitter_override_virtual_eventFilter(void* self, intptr_t slot);
bool QSplitter_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QSplitter_override_virtual_timerEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QSplitter_override_virtual_customEvent(void* self, intptr_t slot);
void QSplitter_virtualbase_customEvent(void* self, QEvent* event);
bool QSplitter_override_virtual_connectNotify(void* self, intptr_t slot);
void QSplitter_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QSplitter_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QSplitter_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QSplitter_protectedbase_moveSplitter(bool* _dynamic_cast_ok, void* self, int pos, int index);
void QSplitter_protectedbase_setRubberBand(bool* _dynamic_cast_ok, void* self, int position);
int QSplitter_protectedbase_closestLegalPosition(bool* _dynamic_cast_ok, void* self, int param1, int param2);
void QSplitter_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1);
void QSplitter_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option);
void QSplitter_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QSplitter_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QSplitter_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QSplitter_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QSplitter_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QSplitter_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QSplitter_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QSplitter_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QSplitter_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
void QSplitter_delete(QSplitter* self);

QSplitterHandle* QSplitterHandle_new(int o, QSplitter* parent);
void QSplitterHandle_virtbase(QSplitterHandle* src, QWidget** outptr_QWidget);
QMetaObject* QSplitterHandle_metaObject(const QSplitterHandle* self);
void* QSplitterHandle_metacast(QSplitterHandle* self, const char* param1);
int QSplitterHandle_metacall(QSplitterHandle* self, int param1, int param2, void** param3);
struct miqt_string QSplitterHandle_tr(const char* s);
struct miqt_string QSplitterHandle_trUtf8(const char* s);
void QSplitterHandle_setOrientation(QSplitterHandle* self, int o);
int QSplitterHandle_orientation(const QSplitterHandle* self);
bool QSplitterHandle_opaqueResize(const QSplitterHandle* self);
QSplitter* QSplitterHandle_splitter(const QSplitterHandle* self);
QSize* QSplitterHandle_sizeHint(const QSplitterHandle* self);
void QSplitterHandle_paintEvent(QSplitterHandle* self, QPaintEvent* param1);
void QSplitterHandle_mouseMoveEvent(QSplitterHandle* self, QMouseEvent* param1);
void QSplitterHandle_mousePressEvent(QSplitterHandle* self, QMouseEvent* param1);
void QSplitterHandle_mouseReleaseEvent(QSplitterHandle* self, QMouseEvent* param1);
void QSplitterHandle_resizeEvent(QSplitterHandle* self, QResizeEvent* param1);
bool QSplitterHandle_event(QSplitterHandle* self, QEvent* param1);
struct miqt_string QSplitterHandle_tr2(const char* s, const char* c);
struct miqt_string QSplitterHandle_tr3(const char* s, const char* c, int n);
struct miqt_string QSplitterHandle_trUtf82(const char* s, const char* c);
struct miqt_string QSplitterHandle_trUtf83(const char* s, const char* c, int n);
bool QSplitterHandle_override_virtual_metacall(void* self, intptr_t slot);
int QSplitterHandle_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QSplitterHandle_override_virtual_sizeHint(void* self, intptr_t slot);
QSize* QSplitterHandle_virtualbase_sizeHint(const void* self);
bool QSplitterHandle_override_virtual_paintEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_paintEvent(void* self, QPaintEvent* param1);
bool QSplitterHandle_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);
bool QSplitterHandle_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);
bool QSplitterHandle_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);
bool QSplitterHandle_override_virtual_resizeEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
bool QSplitterHandle_override_virtual_event(void* self, intptr_t slot);
bool QSplitterHandle_virtualbase_event(void* self, QEvent* param1);
bool QSplitterHandle_override_virtual_devType(void* self, intptr_t slot);
int QSplitterHandle_virtualbase_devType(const void* self);
bool QSplitterHandle_override_virtual_setVisible(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_setVisible(void* self, bool visible);
bool QSplitterHandle_override_virtual_minimumSizeHint(void* self, intptr_t slot);
QSize* QSplitterHandle_virtualbase_minimumSizeHint(const void* self);
bool QSplitterHandle_override_virtual_heightForWidth(void* self, intptr_t slot);
int QSplitterHandle_virtualbase_heightForWidth(const void* self, int param1);
bool QSplitterHandle_override_virtual_hasHeightForWidth(void* self, intptr_t slot);
bool QSplitterHandle_virtualbase_hasHeightForWidth(const void* self);
bool QSplitterHandle_override_virtual_paintEngine(void* self, intptr_t slot);
QPaintEngine* QSplitterHandle_virtualbase_paintEngine(const void* self);
bool QSplitterHandle_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
bool QSplitterHandle_override_virtual_wheelEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_wheelEvent(void* self, QWheelEvent* event);
bool QSplitterHandle_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
bool QSplitterHandle_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
bool QSplitterHandle_override_virtual_focusInEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_focusInEvent(void* self, QFocusEvent* event);
bool QSplitterHandle_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
bool QSplitterHandle_override_virtual_enterEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_enterEvent(void* self, QEvent* event);
bool QSplitterHandle_override_virtual_leaveEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_leaveEvent(void* self, QEvent* event);
bool QSplitterHandle_override_virtual_moveEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_moveEvent(void* self, QMoveEvent* event);
bool QSplitterHandle_override_virtual_closeEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_closeEvent(void* self, QCloseEvent* event);
bool QSplitterHandle_override_virtual_contextMenuEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
bool QSplitterHandle_override_virtual_tabletEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_tabletEvent(void* self, QTabletEvent* event);
bool QSplitterHandle_override_virtual_actionEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_actionEvent(void* self, QActionEvent* event);
bool QSplitterHandle_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
bool QSplitterHandle_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
bool QSplitterHandle_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
bool QSplitterHandle_override_virtual_dropEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QSplitterHandle_override_virtual_showEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_showEvent(void* self, QShowEvent* event);
bool QSplitterHandle_override_virtual_hideEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QSplitterHandle_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QSplitterHandle_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
bool QSplitterHandle_override_virtual_changeEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_changeEvent(void* self, QEvent* param1);
bool QSplitterHandle_override_virtual_metric(void* self, intptr_t slot);
int QSplitterHandle_virtualbase_metric(const void* self, int param1);
bool QSplitterHandle_override_virtual_initPainter(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_initPainter(const void* self, QPainter* painter);
bool QSplitterHandle_override_virtual_redirected(void* self, intptr_t slot);
QPaintDevice* QSplitterHandle_virtualbase_redirected(const void* self, QPoint* offset);
bool QSplitterHandle_override_virtual_sharedPainter(void* self, intptr_t slot);
QPainter* QSplitterHandle_virtualbase_sharedPainter(const void* self);
bool QSplitterHandle_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
bool QSplitterHandle_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QSplitterHandle_virtualbase_inputMethodQuery(const void* self, int param1);
bool QSplitterHandle_override_virtual_focusNextPrevChild(void* self, intptr_t slot);
bool QSplitterHandle_virtualbase_focusNextPrevChild(void* self, bool next);
bool QSplitterHandle_override_virtual_eventFilter(void* self, intptr_t slot);
bool QSplitterHandle_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QSplitterHandle_override_virtual_timerEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QSplitterHandle_override_virtual_childEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_childEvent(void* self, QChildEvent* event);
bool QSplitterHandle_override_virtual_customEvent(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_customEvent(void* self, QEvent* event);
bool QSplitterHandle_override_virtual_connectNotify(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QSplitterHandle_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QSplitterHandle_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QSplitterHandle_protectedbase_moveSplitter(bool* _dynamic_cast_ok, void* self, int p);
int QSplitterHandle_protectedbase_closestLegalPosition(bool* _dynamic_cast_ok, void* self, int p);
void QSplitterHandle_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QSplitterHandle_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QSplitterHandle_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QSplitterHandle_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QSplitterHandle_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QSplitterHandle_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QSplitterHandle_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QSplitterHandle_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QSplitterHandle_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
void QSplitterHandle_delete(QSplitterHandle* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
