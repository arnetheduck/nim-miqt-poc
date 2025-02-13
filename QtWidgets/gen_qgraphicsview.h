#pragma once
#ifndef MIQT_QTWIDGETS_GEN_QGRAPHICSVIEW_H
#define MIQT_QTWIDGETS_GEN_QGRAPHICSVIEW_H

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
class QEvent;
class QFocusEvent;
class QFrame;
class QGraphicsItem;
class QGraphicsScene;
class QGraphicsView;
class QHideEvent;
class QInputMethodEvent;
class QKeyEvent;
class QMargins;
class QMatrix;
class QMetaMethod;
class QMetaObject;
class QMouseEvent;
class QMoveEvent;
class QObject;
class QPaintDevice;
class QPaintEngine;
class QPaintEvent;
class QPainter;
class QPainterPath;
class QPoint;
class QPointF;
class QRect;
class QRectF;
class QResizeEvent;
class QShowEvent;
class QSize;
class QStyleOptionFrame;
class QTabletEvent;
class QTimerEvent;
class QTransform;
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
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QFrame QFrame;
typedef struct QGraphicsItem QGraphicsItem;
typedef struct QGraphicsScene QGraphicsScene;
typedef struct QGraphicsView QGraphicsView;
typedef struct QHideEvent QHideEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMargins QMargins;
typedef struct QMatrix QMatrix;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QObject QObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPainterPath QPainterPath;
typedef struct QPoint QPoint;
typedef struct QPointF QPointF;
typedef struct QRect QRect;
typedef struct QRectF QRectF;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTransform QTransform;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QGraphicsView_VTable {
	void (*destructor)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self);
	QMetaObject* (*metaObject)(struct QGraphicsView_VTable* vtbl, const QGraphicsView* self);
	void* (*metacast)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, const char* param1);
	int (*metacall)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QGraphicsView_VTable* vtbl, const QGraphicsView* self);
	QVariant* (*inputMethodQuery)(struct QGraphicsView_VTable* vtbl, const QGraphicsView* self, int query);
	void (*setupViewport)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QWidget* widget);
	bool (*event)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QEvent* event);
	bool (*viewportEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QEvent* event);
	void (*contextMenuEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QContextMenuEvent* event);
	void (*dragEnterEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QDragEnterEvent* event);
	void (*dragLeaveEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QDragLeaveEvent* event);
	void (*dragMoveEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QDragMoveEvent* event);
	void (*dropEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QDropEvent* event);
	void (*focusInEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QFocusEvent* event);
	bool (*focusNextPrevChild)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, bool next);
	void (*focusOutEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QFocusEvent* event);
	void (*keyPressEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QKeyEvent* event);
	void (*mouseDoubleClickEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QMouseEvent* event);
	void (*mousePressEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QMouseEvent* event);
	void (*wheelEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QWheelEvent* event);
	void (*paintEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QPaintEvent* event);
	void (*resizeEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QResizeEvent* event);
	void (*scrollContentsBy)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, int dx, int dy);
	void (*showEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QShowEvent* event);
	void (*inputMethodEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QInputMethodEvent* event);
	void (*drawBackground)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QPainter* painter, QRectF* rect);
	void (*drawForeground)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QPainter* painter, QRectF* rect);
	QSize* (*minimumSizeHint)(struct QGraphicsView_VTable* vtbl, const QGraphicsView* self);
	bool (*eventFilter)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QObject* param1, QEvent* param2);
	QSize* (*viewportSizeHint)(struct QGraphicsView_VTable* vtbl, const QGraphicsView* self);
	void (*changeEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QEvent* param1);
	int (*devType)(struct QGraphicsView_VTable* vtbl, const QGraphicsView* self);
	void (*setVisible)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, bool visible);
	int (*heightForWidth)(struct QGraphicsView_VTable* vtbl, const QGraphicsView* self, int param1);
	bool (*hasHeightForWidth)(struct QGraphicsView_VTable* vtbl, const QGraphicsView* self);
	QPaintEngine* (*paintEngine)(struct QGraphicsView_VTable* vtbl, const QGraphicsView* self);
	void (*enterEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QEvent* event);
	void (*leaveEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QEvent* event);
	void (*moveEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QMoveEvent* event);
	void (*closeEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QCloseEvent* event);
	void (*tabletEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QTabletEvent* event);
	void (*actionEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QActionEvent* event);
	void (*hideEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QHideEvent* event);
	bool (*nativeEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QGraphicsView_VTable* vtbl, const QGraphicsView* self, int param1);
	void (*initPainter)(struct QGraphicsView_VTable* vtbl, const QGraphicsView* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QGraphicsView_VTable* vtbl, const QGraphicsView* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QGraphicsView_VTable* vtbl, const QGraphicsView* self);
	void (*timerEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QTimerEvent* event);
	void (*childEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QChildEvent* event);
	void (*customEvent)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QEvent* event);
	void (*connectNotify)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QGraphicsView_VTable* vtbl, QGraphicsView* self, QMetaMethod* signal);
};
QGraphicsView* QGraphicsView_new(struct QGraphicsView_VTable* vtbl, QWidget* parent);
QGraphicsView* QGraphicsView_new2(struct QGraphicsView_VTable* vtbl);
QGraphicsView* QGraphicsView_new3(struct QGraphicsView_VTable* vtbl, QGraphicsScene* scene);
QGraphicsView* QGraphicsView_new4(struct QGraphicsView_VTable* vtbl, QGraphicsScene* scene, QWidget* parent);
void QGraphicsView_virtbase(QGraphicsView* src, QAbstractScrollArea** outptr_QAbstractScrollArea);
QMetaObject* QGraphicsView_metaObject(const QGraphicsView* self);
void* QGraphicsView_metacast(QGraphicsView* self, const char* param1);
int QGraphicsView_metacall(QGraphicsView* self, int param1, int param2, void** param3);
struct miqt_string QGraphicsView_tr(const char* s);
struct miqt_string QGraphicsView_trUtf8(const char* s);
QSize* QGraphicsView_sizeHint(const QGraphicsView* self);
int QGraphicsView_renderHints(const QGraphicsView* self);
void QGraphicsView_setRenderHint(QGraphicsView* self, int hint);
void QGraphicsView_setRenderHints(QGraphicsView* self, int hints);
int QGraphicsView_alignment(const QGraphicsView* self);
void QGraphicsView_setAlignment(QGraphicsView* self, int alignment);
int QGraphicsView_transformationAnchor(const QGraphicsView* self);
void QGraphicsView_setTransformationAnchor(QGraphicsView* self, int anchor);
int QGraphicsView_resizeAnchor(const QGraphicsView* self);
void QGraphicsView_setResizeAnchor(QGraphicsView* self, int anchor);
int QGraphicsView_viewportUpdateMode(const QGraphicsView* self);
void QGraphicsView_setViewportUpdateMode(QGraphicsView* self, int mode);
int QGraphicsView_optimizationFlags(const QGraphicsView* self);
void QGraphicsView_setOptimizationFlag(QGraphicsView* self, int flag);
void QGraphicsView_setOptimizationFlags(QGraphicsView* self, int flags);
int QGraphicsView_dragMode(const QGraphicsView* self);
void QGraphicsView_setDragMode(QGraphicsView* self, int mode);
int QGraphicsView_rubberBandSelectionMode(const QGraphicsView* self);
void QGraphicsView_setRubberBandSelectionMode(QGraphicsView* self, int mode);
QRect* QGraphicsView_rubberBandRect(const QGraphicsView* self);
int QGraphicsView_cacheMode(const QGraphicsView* self);
void QGraphicsView_setCacheMode(QGraphicsView* self, int mode);
void QGraphicsView_resetCachedContent(QGraphicsView* self);
bool QGraphicsView_isInteractive(const QGraphicsView* self);
void QGraphicsView_setInteractive(QGraphicsView* self, bool allowed);
QGraphicsScene* QGraphicsView_scene(const QGraphicsView* self);
void QGraphicsView_setScene(QGraphicsView* self, QGraphicsScene* scene);
QRectF* QGraphicsView_sceneRect(const QGraphicsView* self);
void QGraphicsView_setSceneRect(QGraphicsView* self, QRectF* rect);
void QGraphicsView_setSceneRect2(QGraphicsView* self, double x, double y, double w, double h);
QMatrix* QGraphicsView_matrix(const QGraphicsView* self);
void QGraphicsView_setMatrix(QGraphicsView* self, QMatrix* matrix);
void QGraphicsView_resetMatrix(QGraphicsView* self);
QTransform* QGraphicsView_transform(const QGraphicsView* self);
QTransform* QGraphicsView_viewportTransform(const QGraphicsView* self);
bool QGraphicsView_isTransformed(const QGraphicsView* self);
void QGraphicsView_setTransform(QGraphicsView* self, QTransform* matrix);
void QGraphicsView_resetTransform(QGraphicsView* self);
void QGraphicsView_rotate(QGraphicsView* self, double angle);
void QGraphicsView_scale(QGraphicsView* self, double sx, double sy);
void QGraphicsView_shear(QGraphicsView* self, double sh, double sv);
void QGraphicsView_translate(QGraphicsView* self, double dx, double dy);
void QGraphicsView_centerOn(QGraphicsView* self, QPointF* pos);
void QGraphicsView_centerOn2(QGraphicsView* self, double x, double y);
void QGraphicsView_centerOnWithItem(QGraphicsView* self, QGraphicsItem* item);
void QGraphicsView_ensureVisible(QGraphicsView* self, QRectF* rect);
void QGraphicsView_ensureVisible2(QGraphicsView* self, double x, double y, double w, double h);
void QGraphicsView_ensureVisibleWithItem(QGraphicsView* self, QGraphicsItem* item);
void QGraphicsView_fitInView(QGraphicsView* self, QRectF* rect);
void QGraphicsView_fitInView2(QGraphicsView* self, double x, double y, double w, double h);
void QGraphicsView_fitInViewWithItem(QGraphicsView* self, QGraphicsItem* item);
void QGraphicsView_render(QGraphicsView* self, QPainter* painter);
struct miqt_array /* of QGraphicsItem* */  QGraphicsView_items(const QGraphicsView* self);
struct miqt_array /* of QGraphicsItem* */  QGraphicsView_itemsWithPos(const QGraphicsView* self, QPoint* pos);
struct miqt_array /* of QGraphicsItem* */  QGraphicsView_items2(const QGraphicsView* self, int x, int y);
struct miqt_array /* of QGraphicsItem* */  QGraphicsView_itemsWithRect(const QGraphicsView* self, QRect* rect);
struct miqt_array /* of QGraphicsItem* */  QGraphicsView_items3(const QGraphicsView* self, int x, int y, int w, int h);
struct miqt_array /* of QGraphicsItem* */  QGraphicsView_itemsWithPath(const QGraphicsView* self, QPainterPath* path);
QGraphicsItem* QGraphicsView_itemAt(const QGraphicsView* self, QPoint* pos);
QGraphicsItem* QGraphicsView_itemAt2(const QGraphicsView* self, int x, int y);
QPointF* QGraphicsView_mapToScene(const QGraphicsView* self, QPoint* point);
QPainterPath* QGraphicsView_mapToSceneWithPath(const QGraphicsView* self, QPainterPath* path);
QPoint* QGraphicsView_mapFromScene(const QGraphicsView* self, QPointF* point);
QPainterPath* QGraphicsView_mapFromSceneWithPath(const QGraphicsView* self, QPainterPath* path);
QPointF* QGraphicsView_mapToScene2(const QGraphicsView* self, int x, int y);
QPoint* QGraphicsView_mapFromScene2(const QGraphicsView* self, double x, double y);
QVariant* QGraphicsView_inputMethodQuery(const QGraphicsView* self, int query);
QBrush* QGraphicsView_backgroundBrush(const QGraphicsView* self);
void QGraphicsView_setBackgroundBrush(QGraphicsView* self, QBrush* brush);
QBrush* QGraphicsView_foregroundBrush(const QGraphicsView* self);
void QGraphicsView_setForegroundBrush(QGraphicsView* self, QBrush* brush);
void QGraphicsView_updateScene(QGraphicsView* self, struct miqt_array /* of QRectF* */  rects);
void QGraphicsView_invalidateScene(QGraphicsView* self);
void QGraphicsView_updateSceneRect(QGraphicsView* self, QRectF* rect);
void QGraphicsView_rubberBandChanged(QGraphicsView* self, QRect* viewportRect, QPointF* fromScenePoint, QPointF* toScenePoint);
void QGraphicsView_connect_rubberBandChanged(QGraphicsView* self, intptr_t slot);
void QGraphicsView_setupViewport(QGraphicsView* self, QWidget* widget);
bool QGraphicsView_event(QGraphicsView* self, QEvent* event);
bool QGraphicsView_viewportEvent(QGraphicsView* self, QEvent* event);
void QGraphicsView_contextMenuEvent(QGraphicsView* self, QContextMenuEvent* event);
void QGraphicsView_dragEnterEvent(QGraphicsView* self, QDragEnterEvent* event);
void QGraphicsView_dragLeaveEvent(QGraphicsView* self, QDragLeaveEvent* event);
void QGraphicsView_dragMoveEvent(QGraphicsView* self, QDragMoveEvent* event);
void QGraphicsView_dropEvent(QGraphicsView* self, QDropEvent* event);
void QGraphicsView_focusInEvent(QGraphicsView* self, QFocusEvent* event);
bool QGraphicsView_focusNextPrevChild(QGraphicsView* self, bool next);
void QGraphicsView_focusOutEvent(QGraphicsView* self, QFocusEvent* event);
void QGraphicsView_keyPressEvent(QGraphicsView* self, QKeyEvent* event);
void QGraphicsView_keyReleaseEvent(QGraphicsView* self, QKeyEvent* event);
void QGraphicsView_mouseDoubleClickEvent(QGraphicsView* self, QMouseEvent* event);
void QGraphicsView_mousePressEvent(QGraphicsView* self, QMouseEvent* event);
void QGraphicsView_mouseMoveEvent(QGraphicsView* self, QMouseEvent* event);
void QGraphicsView_mouseReleaseEvent(QGraphicsView* self, QMouseEvent* event);
void QGraphicsView_wheelEvent(QGraphicsView* self, QWheelEvent* event);
void QGraphicsView_paintEvent(QGraphicsView* self, QPaintEvent* event);
void QGraphicsView_resizeEvent(QGraphicsView* self, QResizeEvent* event);
void QGraphicsView_scrollContentsBy(QGraphicsView* self, int dx, int dy);
void QGraphicsView_showEvent(QGraphicsView* self, QShowEvent* event);
void QGraphicsView_inputMethodEvent(QGraphicsView* self, QInputMethodEvent* event);
void QGraphicsView_drawBackground(QGraphicsView* self, QPainter* painter, QRectF* rect);
void QGraphicsView_drawForeground(QGraphicsView* self, QPainter* painter, QRectF* rect);
struct miqt_string QGraphicsView_tr2(const char* s, const char* c);
struct miqt_string QGraphicsView_tr3(const char* s, const char* c, int n);
struct miqt_string QGraphicsView_trUtf82(const char* s, const char* c);
struct miqt_string QGraphicsView_trUtf83(const char* s, const char* c, int n);
void QGraphicsView_setRenderHint2(QGraphicsView* self, int hint, bool enabled);
void QGraphicsView_setOptimizationFlag2(QGraphicsView* self, int flag, bool enabled);
void QGraphicsView_setMatrix2(QGraphicsView* self, QMatrix* matrix, bool combine);
void QGraphicsView_setTransform2(QGraphicsView* self, QTransform* matrix, bool combine);
void QGraphicsView_ensureVisible22(QGraphicsView* self, QRectF* rect, int xmargin);
void QGraphicsView_ensureVisible3(QGraphicsView* self, QRectF* rect, int xmargin, int ymargin);
void QGraphicsView_ensureVisible5(QGraphicsView* self, double x, double y, double w, double h, int xmargin);
void QGraphicsView_ensureVisible6(QGraphicsView* self, double x, double y, double w, double h, int xmargin, int ymargin);
void QGraphicsView_ensureVisible23(QGraphicsView* self, QGraphicsItem* item, int xmargin);
void QGraphicsView_ensureVisible32(QGraphicsView* self, QGraphicsItem* item, int xmargin, int ymargin);
void QGraphicsView_fitInView22(QGraphicsView* self, QRectF* rect, int aspectRadioMode);
void QGraphicsView_fitInView5(QGraphicsView* self, double x, double y, double w, double h, int aspectRadioMode);
void QGraphicsView_fitInView23(QGraphicsView* self, QGraphicsItem* item, int aspectRadioMode);
void QGraphicsView_render2(QGraphicsView* self, QPainter* painter, QRectF* target);
void QGraphicsView_render3(QGraphicsView* self, QPainter* painter, QRectF* target, QRect* source);
void QGraphicsView_render4(QGraphicsView* self, QPainter* painter, QRectF* target, QRect* source, int aspectRatioMode);
struct miqt_array /* of QGraphicsItem* */  QGraphicsView_items22(const QGraphicsView* self, QRect* rect, int mode);
struct miqt_array /* of QGraphicsItem* */  QGraphicsView_items5(const QGraphicsView* self, int x, int y, int w, int h, int mode);
struct miqt_array /* of QGraphicsItem* */  QGraphicsView_items24(const QGraphicsView* self, QPainterPath* path, int mode);
void QGraphicsView_invalidateScene1(QGraphicsView* self, QRectF* rect);
void QGraphicsView_invalidateScene2(QGraphicsView* self, QRectF* rect, int layers);
QMetaObject* QGraphicsView_virtualbase_metaObject(const void* self);
void* QGraphicsView_virtualbase_metacast(void* self, const char* param1);
int QGraphicsView_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QGraphicsView_virtualbase_sizeHint(const void* self);
QVariant* QGraphicsView_virtualbase_inputMethodQuery(const void* self, int query);
void QGraphicsView_virtualbase_setupViewport(void* self, QWidget* widget);
bool QGraphicsView_virtualbase_event(void* self, QEvent* event);
bool QGraphicsView_virtualbase_viewportEvent(void* self, QEvent* event);
void QGraphicsView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QGraphicsView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QGraphicsView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QGraphicsView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QGraphicsView_virtualbase_dropEvent(void* self, QDropEvent* event);
void QGraphicsView_virtualbase_focusInEvent(void* self, QFocusEvent* event);
bool QGraphicsView_virtualbase_focusNextPrevChild(void* self, bool next);
void QGraphicsView_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QGraphicsView_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QGraphicsView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QGraphicsView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QGraphicsView_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QGraphicsView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QGraphicsView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QGraphicsView_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QGraphicsView_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QGraphicsView_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QGraphicsView_virtualbase_scrollContentsBy(void* self, int dx, int dy);
void QGraphicsView_virtualbase_showEvent(void* self, QShowEvent* event);
void QGraphicsView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);
void QGraphicsView_virtualbase_drawBackground(void* self, QPainter* painter, QRectF* rect);
void QGraphicsView_virtualbase_drawForeground(void* self, QPainter* painter, QRectF* rect);
QSize* QGraphicsView_virtualbase_minimumSizeHint(const void* self);
bool QGraphicsView_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);
QSize* QGraphicsView_virtualbase_viewportSizeHint(const void* self);
void QGraphicsView_virtualbase_changeEvent(void* self, QEvent* param1);
int QGraphicsView_virtualbase_devType(const void* self);
void QGraphicsView_virtualbase_setVisible(void* self, bool visible);
int QGraphicsView_virtualbase_heightForWidth(const void* self, int param1);
bool QGraphicsView_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QGraphicsView_virtualbase_paintEngine(const void* self);
void QGraphicsView_virtualbase_enterEvent(void* self, QEvent* event);
void QGraphicsView_virtualbase_leaveEvent(void* self, QEvent* event);
void QGraphicsView_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QGraphicsView_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QGraphicsView_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QGraphicsView_virtualbase_actionEvent(void* self, QActionEvent* event);
void QGraphicsView_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QGraphicsView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QGraphicsView_virtualbase_metric(const void* self, int param1);
void QGraphicsView_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QGraphicsView_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QGraphicsView_virtualbase_sharedPainter(const void* self);
void QGraphicsView_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QGraphicsView_virtualbase_childEvent(void* self, QChildEvent* event);
void QGraphicsView_virtualbase_customEvent(void* self, QEvent* event);
void QGraphicsView_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QGraphicsView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QGraphicsView_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom);
QMargins* QGraphicsView_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self);
void QGraphicsView_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1);
void QGraphicsView_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option);
void QGraphicsView_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QGraphicsView_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QGraphicsView_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QGraphicsView_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QGraphicsView_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QGraphicsView_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QGraphicsView_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QGraphicsView_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QGraphicsView_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QGraphicsView_staticMetaObject();
void QGraphicsView_delete(QGraphicsView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
