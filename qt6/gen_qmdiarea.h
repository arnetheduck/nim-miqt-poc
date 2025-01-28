#pragma once
#ifndef MIQT_QT6_GEN_QMDIAREA_H
#define MIQT_QT6_GEN_QMDIAREA_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractScrollArea;
class QActionEvent;
class QBrush;
class QChildEvent;
class QCloseEvent;
class QContextMenuEvent;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEnterEvent;
class QEvent;
class QFocusEvent;
class QFrame;
class QHideEvent;
class QInputMethodEvent;
class QKeyEvent;
class QMdiArea;
class QMdiSubWindow;
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
class QStyleOptionFrame;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractScrollArea QAbstractScrollArea;
typedef struct QActionEvent QActionEvent;
typedef struct QBrush QBrush;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEnterEvent QEnterEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QFrame QFrame;
typedef struct QHideEvent QHideEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMdiArea QMdiArea;
typedef struct QMdiSubWindow QMdiSubWindow;
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
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QMdiArea_VTable {
	void (*destructor)(struct QMdiArea_VTable* vtbl, QMdiArea* self);
	QMetaObject* (*metaObject)(struct QMdiArea_VTable* vtbl, const QMdiArea* self);
	void* (*metacast)(struct QMdiArea_VTable* vtbl, QMdiArea* self, const char* param1);
	int (*metacall)(struct QMdiArea_VTable* vtbl, QMdiArea* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QMdiArea_VTable* vtbl, const QMdiArea* self);
	QSize* (*minimumSizeHint)(struct QMdiArea_VTable* vtbl, const QMdiArea* self);
	void (*setupViewport)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QWidget* viewport);
	bool (*event)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QEvent* event);
	bool (*eventFilter)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QObject* object, QEvent* event);
	void (*paintEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QPaintEvent* paintEvent);
	void (*childEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QChildEvent* childEvent);
	void (*resizeEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QResizeEvent* resizeEvent);
	void (*timerEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QTimerEvent* timerEvent);
	void (*showEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QShowEvent* showEvent);
	bool (*viewportEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QEvent* event);
	void (*scrollContentsBy)(struct QMdiArea_VTable* vtbl, QMdiArea* self, int dx, int dy);
	void (*mousePressEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QMouseEvent* param1);
	void (*mouseReleaseEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QMouseEvent* param1);
	void (*mouseDoubleClickEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QMouseEvent* param1);
	void (*mouseMoveEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QMouseEvent* param1);
	void (*wheelEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QWheelEvent* param1);
	void (*contextMenuEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QContextMenuEvent* param1);
	void (*dragEnterEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QDragEnterEvent* param1);
	void (*dragMoveEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QDragMoveEvent* param1);
	void (*dragLeaveEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QDragLeaveEvent* param1);
	void (*dropEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QDropEvent* param1);
	void (*keyPressEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QKeyEvent* param1);
	QSize* (*viewportSizeHint)(struct QMdiArea_VTable* vtbl, const QMdiArea* self);
	void (*changeEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QEvent* param1);
	void (*initStyleOption)(struct QMdiArea_VTable* vtbl, const QMdiArea* self, QStyleOptionFrame* option);
	int (*devType)(struct QMdiArea_VTable* vtbl, const QMdiArea* self);
	void (*setVisible)(struct QMdiArea_VTable* vtbl, QMdiArea* self, bool visible);
	int (*heightForWidth)(struct QMdiArea_VTable* vtbl, const QMdiArea* self, int param1);
	bool (*hasHeightForWidth)(struct QMdiArea_VTable* vtbl, const QMdiArea* self);
	QPaintEngine* (*paintEngine)(struct QMdiArea_VTable* vtbl, const QMdiArea* self);
	void (*keyReleaseEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QKeyEvent* event);
	void (*focusInEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QFocusEvent* event);
	void (*enterEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QEnterEvent* event);
	void (*leaveEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QEvent* event);
	void (*moveEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QMoveEvent* event);
	void (*closeEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QCloseEvent* event);
	void (*tabletEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QTabletEvent* event);
	void (*actionEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QActionEvent* event);
	void (*hideEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QHideEvent* event);
	bool (*nativeEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, struct miqt_string eventType, void* message, intptr_t* result);
	int (*metric)(struct QMdiArea_VTable* vtbl, const QMdiArea* self, int param1);
	void (*initPainter)(struct QMdiArea_VTable* vtbl, const QMdiArea* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QMdiArea_VTable* vtbl, const QMdiArea* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QMdiArea_VTable* vtbl, const QMdiArea* self);
	void (*inputMethodEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QMdiArea_VTable* vtbl, const QMdiArea* self, int param1);
	bool (*focusNextPrevChild)(struct QMdiArea_VTable* vtbl, QMdiArea* self, bool next);
	void (*customEvent)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QEvent* event);
	void (*connectNotify)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QMdiArea_VTable* vtbl, QMdiArea* self, QMetaMethod* signal);
};
QMdiArea* QMdiArea_new(struct QMdiArea_VTable* vtbl, QWidget* parent);
QMdiArea* QMdiArea_new2(struct QMdiArea_VTable* vtbl);
void QMdiArea_virtbase(QMdiArea* src, QAbstractScrollArea** outptr_QAbstractScrollArea);
QMetaObject* QMdiArea_metaObject(const QMdiArea* self);
void* QMdiArea_metacast(QMdiArea* self, const char* param1);
int QMdiArea_metacall(QMdiArea* self, int param1, int param2, void** param3);
struct miqt_string QMdiArea_tr(const char* s);
QSize* QMdiArea_sizeHint(const QMdiArea* self);
QSize* QMdiArea_minimumSizeHint(const QMdiArea* self);
QMdiSubWindow* QMdiArea_currentSubWindow(const QMdiArea* self);
QMdiSubWindow* QMdiArea_activeSubWindow(const QMdiArea* self);
struct miqt_array /* of QMdiSubWindow* */  QMdiArea_subWindowList(const QMdiArea* self);
QMdiSubWindow* QMdiArea_addSubWindow(QMdiArea* self, QWidget* widget);
void QMdiArea_removeSubWindow(QMdiArea* self, QWidget* widget);
QBrush* QMdiArea_background(const QMdiArea* self);
void QMdiArea_setBackground(QMdiArea* self, QBrush* background);
int QMdiArea_activationOrder(const QMdiArea* self);
void QMdiArea_setActivationOrder(QMdiArea* self, int order);
void QMdiArea_setOption(QMdiArea* self, int option);
bool QMdiArea_testOption(const QMdiArea* self, int opton);
void QMdiArea_setViewMode(QMdiArea* self, int mode);
int QMdiArea_viewMode(const QMdiArea* self);
bool QMdiArea_documentMode(const QMdiArea* self);
void QMdiArea_setDocumentMode(QMdiArea* self, bool enabled);
void QMdiArea_setTabsClosable(QMdiArea* self, bool closable);
bool QMdiArea_tabsClosable(const QMdiArea* self);
void QMdiArea_setTabsMovable(QMdiArea* self, bool movable);
bool QMdiArea_tabsMovable(const QMdiArea* self);
void QMdiArea_setTabShape(QMdiArea* self, int shape);
int QMdiArea_tabShape(const QMdiArea* self);
void QMdiArea_setTabPosition(QMdiArea* self, int position);
int QMdiArea_tabPosition(const QMdiArea* self);
void QMdiArea_subWindowActivated(QMdiArea* self, QMdiSubWindow* param1);
void QMdiArea_connect_subWindowActivated(QMdiArea* self, intptr_t slot);
void QMdiArea_setActiveSubWindow(QMdiArea* self, QMdiSubWindow* window);
void QMdiArea_tileSubWindows(QMdiArea* self);
void QMdiArea_cascadeSubWindows(QMdiArea* self);
void QMdiArea_closeActiveSubWindow(QMdiArea* self);
void QMdiArea_closeAllSubWindows(QMdiArea* self);
void QMdiArea_activateNextSubWindow(QMdiArea* self);
void QMdiArea_activatePreviousSubWindow(QMdiArea* self);
void QMdiArea_setupViewport(QMdiArea* self, QWidget* viewport);
bool QMdiArea_event(QMdiArea* self, QEvent* event);
bool QMdiArea_eventFilter(QMdiArea* self, QObject* object, QEvent* event);
void QMdiArea_paintEvent(QMdiArea* self, QPaintEvent* paintEvent);
void QMdiArea_childEvent(QMdiArea* self, QChildEvent* childEvent);
void QMdiArea_resizeEvent(QMdiArea* self, QResizeEvent* resizeEvent);
void QMdiArea_timerEvent(QMdiArea* self, QTimerEvent* timerEvent);
void QMdiArea_showEvent(QMdiArea* self, QShowEvent* showEvent);
bool QMdiArea_viewportEvent(QMdiArea* self, QEvent* event);
void QMdiArea_scrollContentsBy(QMdiArea* self, int dx, int dy);
struct miqt_string QMdiArea_tr2(const char* s, const char* c);
struct miqt_string QMdiArea_tr3(const char* s, const char* c, int n);
struct miqt_array /* of QMdiSubWindow* */  QMdiArea_subWindowList1(const QMdiArea* self, int order);
QMdiSubWindow* QMdiArea_addSubWindow2(QMdiArea* self, QWidget* widget, int flags);
void QMdiArea_setOption2(QMdiArea* self, int option, bool on);
QMetaObject* QMdiArea_virtualbase_metaObject(const void* self);
void* QMdiArea_virtualbase_metacast(void* self, const char* param1);
int QMdiArea_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QMdiArea_virtualbase_sizeHint(const void* self);
QSize* QMdiArea_virtualbase_minimumSizeHint(const void* self);
void QMdiArea_virtualbase_setupViewport(void* self, QWidget* viewport);
bool QMdiArea_virtualbase_event(void* self, QEvent* event);
bool QMdiArea_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);
void QMdiArea_virtualbase_paintEvent(void* self, QPaintEvent* paintEvent);
void QMdiArea_virtualbase_childEvent(void* self, QChildEvent* childEvent);
void QMdiArea_virtualbase_resizeEvent(void* self, QResizeEvent* resizeEvent);
void QMdiArea_virtualbase_timerEvent(void* self, QTimerEvent* timerEvent);
void QMdiArea_virtualbase_showEvent(void* self, QShowEvent* showEvent);
bool QMdiArea_virtualbase_viewportEvent(void* self, QEvent* event);
void QMdiArea_virtualbase_scrollContentsBy(void* self, int dx, int dy);
void QMdiArea_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);
void QMdiArea_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);
void QMdiArea_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1);
void QMdiArea_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);
void QMdiArea_virtualbase_wheelEvent(void* self, QWheelEvent* param1);
void QMdiArea_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
void QMdiArea_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1);
void QMdiArea_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1);
void QMdiArea_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1);
void QMdiArea_virtualbase_dropEvent(void* self, QDropEvent* param1);
void QMdiArea_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
QSize* QMdiArea_virtualbase_viewportSizeHint(const void* self);
void QMdiArea_virtualbase_changeEvent(void* self, QEvent* param1);
void QMdiArea_virtualbase_initStyleOption(const void* self, QStyleOptionFrame* option);
int QMdiArea_virtualbase_devType(const void* self);
void QMdiArea_virtualbase_setVisible(void* self, bool visible);
int QMdiArea_virtualbase_heightForWidth(const void* self, int param1);
bool QMdiArea_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QMdiArea_virtualbase_paintEngine(const void* self);
void QMdiArea_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QMdiArea_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QMdiArea_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QMdiArea_virtualbase_enterEvent(void* self, QEnterEvent* event);
void QMdiArea_virtualbase_leaveEvent(void* self, QEvent* event);
void QMdiArea_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QMdiArea_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QMdiArea_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QMdiArea_virtualbase_actionEvent(void* self, QActionEvent* event);
void QMdiArea_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QMdiArea_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
int QMdiArea_virtualbase_metric(const void* self, int param1);
void QMdiArea_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QMdiArea_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QMdiArea_virtualbase_sharedPainter(const void* self);
void QMdiArea_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QMdiArea_virtualbase_inputMethodQuery(const void* self, int param1);
bool QMdiArea_virtualbase_focusNextPrevChild(void* self, bool next);
void QMdiArea_virtualbase_customEvent(void* self, QEvent* event);
void QMdiArea_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QMdiArea_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QMdiArea_staticMetaObject();
void QMdiArea_delete(QMdiArea* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
