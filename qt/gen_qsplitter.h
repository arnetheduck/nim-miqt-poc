#pragma once
#ifndef MIQT_QT_GEN_QSPLITTER_H
#define MIQT_QT_GEN_QSPLITTER_H

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
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QSplitter_VTable {
	void (*destructor)(struct QSplitter_VTable* vtbl, QSplitter* self);
	QMetaObject* (*metaObject)(struct QSplitter_VTable* vtbl, const QSplitter* self);
	void* (*metacast)(struct QSplitter_VTable* vtbl, QSplitter* self, const char* param1);
	int (*metacall)(struct QSplitter_VTable* vtbl, QSplitter* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QSplitter_VTable* vtbl, const QSplitter* self);
	QSize* (*minimumSizeHint)(struct QSplitter_VTable* vtbl, const QSplitter* self);
	QSplitterHandle* (*createHandle)(struct QSplitter_VTable* vtbl, QSplitter* self);
	void (*childEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QChildEvent* param1);
	bool (*event)(struct QSplitter_VTable* vtbl, QSplitter* self, QEvent* param1);
	void (*resizeEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QResizeEvent* param1);
	void (*changeEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QEvent* param1);
	void (*paintEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QPaintEvent* param1);
	int (*devType)(struct QSplitter_VTable* vtbl, const QSplitter* self);
	void (*setVisible)(struct QSplitter_VTable* vtbl, QSplitter* self, bool visible);
	int (*heightForWidth)(struct QSplitter_VTable* vtbl, const QSplitter* self, int param1);
	bool (*hasHeightForWidth)(struct QSplitter_VTable* vtbl, const QSplitter* self);
	QPaintEngine* (*paintEngine)(struct QSplitter_VTable* vtbl, const QSplitter* self);
	void (*mousePressEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QMouseEvent* event);
	void (*wheelEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QKeyEvent* event);
	void (*focusInEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QFocusEvent* event);
	void (*enterEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QEvent* event);
	void (*leaveEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QEvent* event);
	void (*moveEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QMoveEvent* event);
	void (*closeEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QTabletEvent* event);
	void (*actionEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QDropEvent* event);
	void (*showEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QShowEvent* event);
	void (*hideEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QHideEvent* event);
	bool (*nativeEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QSplitter_VTable* vtbl, const QSplitter* self, int param1);
	void (*initPainter)(struct QSplitter_VTable* vtbl, const QSplitter* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QSplitter_VTable* vtbl, const QSplitter* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QSplitter_VTable* vtbl, const QSplitter* self);
	void (*inputMethodEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QSplitter_VTable* vtbl, const QSplitter* self, int param1);
	bool (*focusNextPrevChild)(struct QSplitter_VTable* vtbl, QSplitter* self, bool next);
	bool (*eventFilter)(struct QSplitter_VTable* vtbl, QSplitter* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QTimerEvent* event);
	void (*customEvent)(struct QSplitter_VTable* vtbl, QSplitter* self, QEvent* event);
	void (*connectNotify)(struct QSplitter_VTable* vtbl, QSplitter* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSplitter_VTable* vtbl, QSplitter* self, QMetaMethod* signal);
};
QSplitter* QSplitter_new(struct QSplitter_VTable* vtbl, QWidget* parent);
QSplitter* QSplitter_new2(struct QSplitter_VTable* vtbl);
QSplitter* QSplitter_new3(struct QSplitter_VTable* vtbl, int param1);
QSplitter* QSplitter_new4(struct QSplitter_VTable* vtbl, int param1, QWidget* parent);
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
QMetaObject* QSplitter_virtualbase_metaObject(const void* self);
void* QSplitter_virtualbase_metacast(void* self, const char* param1);
int QSplitter_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QSplitter_virtualbase_sizeHint(const void* self);
QSize* QSplitter_virtualbase_minimumSizeHint(const void* self);
QSplitterHandle* QSplitter_virtualbase_createHandle(void* self);
void QSplitter_virtualbase_childEvent(void* self, QChildEvent* param1);
bool QSplitter_virtualbase_event(void* self, QEvent* param1);
void QSplitter_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
void QSplitter_virtualbase_changeEvent(void* self, QEvent* param1);
void QSplitter_virtualbase_paintEvent(void* self, QPaintEvent* param1);
int QSplitter_virtualbase_devType(const void* self);
void QSplitter_virtualbase_setVisible(void* self, bool visible);
int QSplitter_virtualbase_heightForWidth(const void* self, int param1);
bool QSplitter_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QSplitter_virtualbase_paintEngine(const void* self);
void QSplitter_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QSplitter_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QSplitter_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QSplitter_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QSplitter_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QSplitter_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QSplitter_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QSplitter_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QSplitter_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QSplitter_virtualbase_enterEvent(void* self, QEvent* event);
void QSplitter_virtualbase_leaveEvent(void* self, QEvent* event);
void QSplitter_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QSplitter_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QSplitter_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QSplitter_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QSplitter_virtualbase_actionEvent(void* self, QActionEvent* event);
void QSplitter_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QSplitter_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QSplitter_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QSplitter_virtualbase_dropEvent(void* self, QDropEvent* event);
void QSplitter_virtualbase_showEvent(void* self, QShowEvent* event);
void QSplitter_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QSplitter_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QSplitter_virtualbase_metric(const void* self, int param1);
void QSplitter_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QSplitter_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QSplitter_virtualbase_sharedPainter(const void* self);
void QSplitter_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QSplitter_virtualbase_inputMethodQuery(const void* self, int param1);
bool QSplitter_virtualbase_focusNextPrevChild(void* self, bool next);
bool QSplitter_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSplitter_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSplitter_virtualbase_customEvent(void* self, QEvent* event);
void QSplitter_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSplitter_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QSplitter_staticMetaObject();
void QSplitter_delete(QSplitter* self);

struct QSplitterHandle_VTable {
	void (*destructor)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self);
	QMetaObject* (*metaObject)(struct QSplitterHandle_VTable* vtbl, const QSplitterHandle* self);
	void* (*metacast)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, const char* param1);
	int (*metacall)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QSplitterHandle_VTable* vtbl, const QSplitterHandle* self);
	void (*paintEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QPaintEvent* param1);
	void (*mouseMoveEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QMouseEvent* param1);
	void (*mousePressEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QMouseEvent* param1);
	void (*mouseReleaseEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QMouseEvent* param1);
	void (*resizeEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QResizeEvent* param1);
	bool (*event)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QEvent* param1);
	int (*devType)(struct QSplitterHandle_VTable* vtbl, const QSplitterHandle* self);
	void (*setVisible)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, bool visible);
	QSize* (*minimumSizeHint)(struct QSplitterHandle_VTable* vtbl, const QSplitterHandle* self);
	int (*heightForWidth)(struct QSplitterHandle_VTable* vtbl, const QSplitterHandle* self, int param1);
	bool (*hasHeightForWidth)(struct QSplitterHandle_VTable* vtbl, const QSplitterHandle* self);
	QPaintEngine* (*paintEngine)(struct QSplitterHandle_VTable* vtbl, const QSplitterHandle* self);
	void (*mouseDoubleClickEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QMouseEvent* event);
	void (*wheelEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QKeyEvent* event);
	void (*focusInEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QFocusEvent* event);
	void (*enterEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QEvent* event);
	void (*leaveEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QEvent* event);
	void (*moveEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QMoveEvent* event);
	void (*closeEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QTabletEvent* event);
	void (*actionEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QDropEvent* event);
	void (*showEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QShowEvent* event);
	void (*hideEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QHideEvent* event);
	bool (*nativeEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QEvent* param1);
	int (*metric)(struct QSplitterHandle_VTable* vtbl, const QSplitterHandle* self, int param1);
	void (*initPainter)(struct QSplitterHandle_VTable* vtbl, const QSplitterHandle* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QSplitterHandle_VTable* vtbl, const QSplitterHandle* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QSplitterHandle_VTable* vtbl, const QSplitterHandle* self);
	void (*inputMethodEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QSplitterHandle_VTable* vtbl, const QSplitterHandle* self, int param1);
	bool (*focusNextPrevChild)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, bool next);
	bool (*eventFilter)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QTimerEvent* event);
	void (*childEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QChildEvent* event);
	void (*customEvent)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QEvent* event);
	void (*connectNotify)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSplitterHandle_VTable* vtbl, QSplitterHandle* self, QMetaMethod* signal);
};
QSplitterHandle* QSplitterHandle_new(struct QSplitterHandle_VTable* vtbl, int o, QSplitter* parent);
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
QMetaObject* QSplitterHandle_virtualbase_metaObject(const void* self);
void* QSplitterHandle_virtualbase_metacast(void* self, const char* param1);
int QSplitterHandle_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QSplitterHandle_virtualbase_sizeHint(const void* self);
void QSplitterHandle_virtualbase_paintEvent(void* self, QPaintEvent* param1);
void QSplitterHandle_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);
void QSplitterHandle_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);
void QSplitterHandle_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);
void QSplitterHandle_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
bool QSplitterHandle_virtualbase_event(void* self, QEvent* param1);
int QSplitterHandle_virtualbase_devType(const void* self);
void QSplitterHandle_virtualbase_setVisible(void* self, bool visible);
QSize* QSplitterHandle_virtualbase_minimumSizeHint(const void* self);
int QSplitterHandle_virtualbase_heightForWidth(const void* self, int param1);
bool QSplitterHandle_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QSplitterHandle_virtualbase_paintEngine(const void* self);
void QSplitterHandle_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QSplitterHandle_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QSplitterHandle_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QSplitterHandle_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QSplitterHandle_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QSplitterHandle_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QSplitterHandle_virtualbase_enterEvent(void* self, QEvent* event);
void QSplitterHandle_virtualbase_leaveEvent(void* self, QEvent* event);
void QSplitterHandle_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QSplitterHandle_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QSplitterHandle_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QSplitterHandle_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QSplitterHandle_virtualbase_actionEvent(void* self, QActionEvent* event);
void QSplitterHandle_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QSplitterHandle_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QSplitterHandle_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QSplitterHandle_virtualbase_dropEvent(void* self, QDropEvent* event);
void QSplitterHandle_virtualbase_showEvent(void* self, QShowEvent* event);
void QSplitterHandle_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QSplitterHandle_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
void QSplitterHandle_virtualbase_changeEvent(void* self, QEvent* param1);
int QSplitterHandle_virtualbase_metric(const void* self, int param1);
void QSplitterHandle_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QSplitterHandle_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QSplitterHandle_virtualbase_sharedPainter(const void* self);
void QSplitterHandle_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QSplitterHandle_virtualbase_inputMethodQuery(const void* self, int param1);
bool QSplitterHandle_virtualbase_focusNextPrevChild(void* self, bool next);
bool QSplitterHandle_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSplitterHandle_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSplitterHandle_virtualbase_childEvent(void* self, QChildEvent* event);
void QSplitterHandle_virtualbase_customEvent(void* self, QEvent* event);
void QSplitterHandle_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSplitterHandle_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QSplitterHandle_staticMetaObject();
void QSplitterHandle_delete(QSplitterHandle* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
