#pragma once
#ifndef MIQT_QTWIDGETS_GEN_QCOLUMNVIEW_H
#define MIQT_QTWIDGETS_GEN_QCOLUMNVIEW_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractItemModel;
class QAbstractItemView;
class QAbstractScrollArea;
class QActionEvent;
class QChildEvent;
class QCloseEvent;
class QColumnView;
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
class QItemSelection;
class QItemSelectionModel;
class QKeyEvent;
class QMargins;
class QMetaMethod;
class QMetaObject;
class QModelIndex;
class QMouseEvent;
class QMoveEvent;
class QObject;
class QPaintDevice;
class QPaintEngine;
class QPaintEvent;
class QPainter;
class QPoint;
class QRect;
class QRegion;
class QResizeEvent;
class QShowEvent;
class QSize;
class QStyleOptionFrame;
class QStyleOptionViewItem;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QAbstractItemView QAbstractItemView;
typedef struct QAbstractScrollArea QAbstractScrollArea;
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QColumnView QColumnView;
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
typedef struct QItemSelection QItemSelection;
typedef struct QItemSelectionModel QItemSelectionModel;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMargins QMargins;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QModelIndex QModelIndex;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QObject QObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
typedef struct QRegion QRegion;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionFrame QStyleOptionFrame;
typedef struct QStyleOptionViewItem QStyleOptionViewItem;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QColumnView_VTable {
	void (*destructor)(struct QColumnView_VTable* vtbl, QColumnView* self);
	QMetaObject* (*metaObject)(struct QColumnView_VTable* vtbl, const QColumnView* self);
	void* (*metacast)(struct QColumnView_VTable* vtbl, QColumnView* self, const char* param1);
	int (*metacall)(struct QColumnView_VTable* vtbl, QColumnView* self, int param1, int param2, void** param3);
	QModelIndex* (*indexAt)(struct QColumnView_VTable* vtbl, const QColumnView* self, QPoint* point);
	void (*scrollTo)(struct QColumnView_VTable* vtbl, QColumnView* self, QModelIndex* index, int hint);
	QSize* (*sizeHint)(struct QColumnView_VTable* vtbl, const QColumnView* self);
	QRect* (*visualRect)(struct QColumnView_VTable* vtbl, const QColumnView* self, QModelIndex* index);
	void (*setModel)(struct QColumnView_VTable* vtbl, QColumnView* self, QAbstractItemModel* model);
	void (*setSelectionModel)(struct QColumnView_VTable* vtbl, QColumnView* self, QItemSelectionModel* selectionModel);
	void (*setRootIndex)(struct QColumnView_VTable* vtbl, QColumnView* self, QModelIndex* index);
	void (*selectAll)(struct QColumnView_VTable* vtbl, QColumnView* self);
	bool (*isIndexHidden)(struct QColumnView_VTable* vtbl, const QColumnView* self, QModelIndex* index);
	QModelIndex* (*moveCursor)(struct QColumnView_VTable* vtbl, QColumnView* self, int cursorAction, int modifiers);
	void (*resizeEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QResizeEvent* event);
	void (*setSelection)(struct QColumnView_VTable* vtbl, QColumnView* self, QRect* rect, int command);
	QRegion* (*visualRegionForSelection)(struct QColumnView_VTable* vtbl, const QColumnView* self, QItemSelection* selection);
	int (*horizontalOffset)(struct QColumnView_VTable* vtbl, const QColumnView* self);
	int (*verticalOffset)(struct QColumnView_VTable* vtbl, const QColumnView* self);
	void (*rowsInserted)(struct QColumnView_VTable* vtbl, QColumnView* self, QModelIndex* parent, int start, int end);
	void (*currentChanged)(struct QColumnView_VTable* vtbl, QColumnView* self, QModelIndex* current, QModelIndex* previous);
	void (*scrollContentsBy)(struct QColumnView_VTable* vtbl, QColumnView* self, int dx, int dy);
	QAbstractItemView* (*createColumn)(struct QColumnView_VTable* vtbl, QColumnView* self, QModelIndex* rootIndex);
	void (*keyboardSearch)(struct QColumnView_VTable* vtbl, QColumnView* self, struct miqt_string search);
	int (*sizeHintForRow)(struct QColumnView_VTable* vtbl, const QColumnView* self, int row);
	int (*sizeHintForColumn)(struct QColumnView_VTable* vtbl, const QColumnView* self, int column);
	QVariant* (*inputMethodQuery)(struct QColumnView_VTable* vtbl, const QColumnView* self, int query);
	void (*reset)(struct QColumnView_VTable* vtbl, QColumnView* self);
	void (*doItemsLayout)(struct QColumnView_VTable* vtbl, QColumnView* self);
	void (*dataChanged)(struct QColumnView_VTable* vtbl, QColumnView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);
	void (*rowsAboutToBeRemoved)(struct QColumnView_VTable* vtbl, QColumnView* self, QModelIndex* parent, int start, int end);
	void (*selectionChanged)(struct QColumnView_VTable* vtbl, QColumnView* self, QItemSelection* selected, QItemSelection* deselected);
	void (*updateEditorData)(struct QColumnView_VTable* vtbl, QColumnView* self);
	void (*updateEditorGeometries)(struct QColumnView_VTable* vtbl, QColumnView* self);
	void (*updateGeometries)(struct QColumnView_VTable* vtbl, QColumnView* self);
	void (*verticalScrollbarAction)(struct QColumnView_VTable* vtbl, QColumnView* self, int action);
	void (*horizontalScrollbarAction)(struct QColumnView_VTable* vtbl, QColumnView* self, int action);
	void (*verticalScrollbarValueChanged)(struct QColumnView_VTable* vtbl, QColumnView* self, int value);
	void (*horizontalScrollbarValueChanged)(struct QColumnView_VTable* vtbl, QColumnView* self, int value);
	void (*closeEditor)(struct QColumnView_VTable* vtbl, QColumnView* self, QWidget* editor, int hint);
	void (*commitData)(struct QColumnView_VTable* vtbl, QColumnView* self, QWidget* editor);
	void (*editorDestroyed)(struct QColumnView_VTable* vtbl, QColumnView* self, QObject* editor);
	struct miqt_array /* of QModelIndex* */  (*selectedIndexes)(struct QColumnView_VTable* vtbl, const QColumnView* self);
	bool (*edit2)(struct QColumnView_VTable* vtbl, QColumnView* self, QModelIndex* index, int trigger, QEvent* event);
	int (*selectionCommand)(struct QColumnView_VTable* vtbl, const QColumnView* self, QModelIndex* index, QEvent* event);
	void (*startDrag)(struct QColumnView_VTable* vtbl, QColumnView* self, int supportedActions);
	QStyleOptionViewItem* (*viewOptions)(struct QColumnView_VTable* vtbl, const QColumnView* self);
	bool (*focusNextPrevChild)(struct QColumnView_VTable* vtbl, QColumnView* self, bool next);
	bool (*event)(struct QColumnView_VTable* vtbl, QColumnView* self, QEvent* event);
	bool (*viewportEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QEvent* event);
	void (*mousePressEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QMouseEvent* event);
	void (*dragEnterEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QDropEvent* event);
	void (*focusInEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QFocusEvent* event);
	void (*keyPressEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QKeyEvent* event);
	void (*timerEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QTimerEvent* event);
	void (*inputMethodEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QInputMethodEvent* event);
	bool (*eventFilter)(struct QColumnView_VTable* vtbl, QColumnView* self, QObject* object, QEvent* event);
	QSize* (*viewportSizeHint)(struct QColumnView_VTable* vtbl, const QColumnView* self);
	QSize* (*minimumSizeHint)(struct QColumnView_VTable* vtbl, const QColumnView* self);
	void (*setupViewport)(struct QColumnView_VTable* vtbl, QColumnView* self, QWidget* viewport);
	void (*paintEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QPaintEvent* param1);
	void (*wheelEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QWheelEvent* param1);
	void (*contextMenuEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QContextMenuEvent* param1);
	void (*changeEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QEvent* param1);
	int (*devType)(struct QColumnView_VTable* vtbl, const QColumnView* self);
	void (*setVisible)(struct QColumnView_VTable* vtbl, QColumnView* self, bool visible);
	int (*heightForWidth)(struct QColumnView_VTable* vtbl, const QColumnView* self, int param1);
	bool (*hasHeightForWidth)(struct QColumnView_VTable* vtbl, const QColumnView* self);
	QPaintEngine* (*paintEngine)(struct QColumnView_VTable* vtbl, const QColumnView* self);
	void (*keyReleaseEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QKeyEvent* event);
	void (*enterEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QEvent* event);
	void (*leaveEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QEvent* event);
	void (*moveEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QMoveEvent* event);
	void (*closeEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QCloseEvent* event);
	void (*tabletEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QTabletEvent* event);
	void (*actionEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QActionEvent* event);
	void (*showEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QShowEvent* event);
	void (*hideEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QHideEvent* event);
	bool (*nativeEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QColumnView_VTable* vtbl, const QColumnView* self, int param1);
	void (*initPainter)(struct QColumnView_VTable* vtbl, const QColumnView* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QColumnView_VTable* vtbl, const QColumnView* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QColumnView_VTable* vtbl, const QColumnView* self);
	void (*childEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QChildEvent* event);
	void (*customEvent)(struct QColumnView_VTable* vtbl, QColumnView* self, QEvent* event);
	void (*connectNotify)(struct QColumnView_VTable* vtbl, QColumnView* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QColumnView_VTable* vtbl, QColumnView* self, QMetaMethod* signal);
};
QColumnView* QColumnView_new(struct QColumnView_VTable* vtbl, QWidget* parent);
QColumnView* QColumnView_new2(struct QColumnView_VTable* vtbl);
void QColumnView_virtbase(QColumnView* src, QAbstractItemView** outptr_QAbstractItemView);
QMetaObject* QColumnView_metaObject(const QColumnView* self);
void* QColumnView_metacast(QColumnView* self, const char* param1);
int QColumnView_metacall(QColumnView* self, int param1, int param2, void** param3);
struct miqt_string QColumnView_tr(const char* s);
struct miqt_string QColumnView_trUtf8(const char* s);
void QColumnView_updatePreviewWidget(QColumnView* self, QModelIndex* index);
void QColumnView_connect_updatePreviewWidget(QColumnView* self, intptr_t slot);
QModelIndex* QColumnView_indexAt(const QColumnView* self, QPoint* point);
void QColumnView_scrollTo(QColumnView* self, QModelIndex* index, int hint);
QSize* QColumnView_sizeHint(const QColumnView* self);
QRect* QColumnView_visualRect(const QColumnView* self, QModelIndex* index);
void QColumnView_setModel(QColumnView* self, QAbstractItemModel* model);
void QColumnView_setSelectionModel(QColumnView* self, QItemSelectionModel* selectionModel);
void QColumnView_setRootIndex(QColumnView* self, QModelIndex* index);
void QColumnView_selectAll(QColumnView* self);
void QColumnView_setResizeGripsVisible(QColumnView* self, bool visible);
bool QColumnView_resizeGripsVisible(const QColumnView* self);
QWidget* QColumnView_previewWidget(const QColumnView* self);
void QColumnView_setPreviewWidget(QColumnView* self, QWidget* widget);
void QColumnView_setColumnWidths(QColumnView* self, struct miqt_array /* of int */  list);
struct miqt_array /* of int */  QColumnView_columnWidths(const QColumnView* self);
bool QColumnView_isIndexHidden(const QColumnView* self, QModelIndex* index);
QModelIndex* QColumnView_moveCursor(QColumnView* self, int cursorAction, int modifiers);
void QColumnView_resizeEvent(QColumnView* self, QResizeEvent* event);
void QColumnView_setSelection(QColumnView* self, QRect* rect, int command);
QRegion* QColumnView_visualRegionForSelection(const QColumnView* self, QItemSelection* selection);
int QColumnView_horizontalOffset(const QColumnView* self);
int QColumnView_verticalOffset(const QColumnView* self);
void QColumnView_rowsInserted(QColumnView* self, QModelIndex* parent, int start, int end);
void QColumnView_currentChanged(QColumnView* self, QModelIndex* current, QModelIndex* previous);
void QColumnView_scrollContentsBy(QColumnView* self, int dx, int dy);
QAbstractItemView* QColumnView_createColumn(QColumnView* self, QModelIndex* rootIndex);
struct miqt_string QColumnView_tr2(const char* s, const char* c);
struct miqt_string QColumnView_tr3(const char* s, const char* c, int n);
struct miqt_string QColumnView_trUtf82(const char* s, const char* c);
struct miqt_string QColumnView_trUtf83(const char* s, const char* c, int n);
QMetaObject* QColumnView_virtualbase_metaObject(const void* self);
void* QColumnView_virtualbase_metacast(void* self, const char* param1);
int QColumnView_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QModelIndex* QColumnView_virtualbase_indexAt(const void* self, QPoint* point);
void QColumnView_virtualbase_scrollTo(void* self, QModelIndex* index, int hint);
QSize* QColumnView_virtualbase_sizeHint(const void* self);
QRect* QColumnView_virtualbase_visualRect(const void* self, QModelIndex* index);
void QColumnView_virtualbase_setModel(void* self, QAbstractItemModel* model);
void QColumnView_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel);
void QColumnView_virtualbase_setRootIndex(void* self, QModelIndex* index);
void QColumnView_virtualbase_selectAll(void* self);
bool QColumnView_virtualbase_isIndexHidden(const void* self, QModelIndex* index);
QModelIndex* QColumnView_virtualbase_moveCursor(void* self, int cursorAction, int modifiers);
void QColumnView_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QColumnView_virtualbase_setSelection(void* self, QRect* rect, int command);
QRegion* QColumnView_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection);
int QColumnView_virtualbase_horizontalOffset(const void* self);
int QColumnView_virtualbase_verticalOffset(const void* self);
void QColumnView_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end);
void QColumnView_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous);
void QColumnView_virtualbase_scrollContentsBy(void* self, int dx, int dy);
QAbstractItemView* QColumnView_virtualbase_createColumn(void* self, QModelIndex* rootIndex);
void QColumnView_virtualbase_keyboardSearch(void* self, struct miqt_string search);
int QColumnView_virtualbase_sizeHintForRow(const void* self, int row);
int QColumnView_virtualbase_sizeHintForColumn(const void* self, int column);
QVariant* QColumnView_virtualbase_inputMethodQuery(const void* self, int query);
void QColumnView_virtualbase_reset(void* self);
void QColumnView_virtualbase_doItemsLayout(void* self);
void QColumnView_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);
void QColumnView_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end);
void QColumnView_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected);
void QColumnView_virtualbase_updateEditorData(void* self);
void QColumnView_virtualbase_updateEditorGeometries(void* self);
void QColumnView_virtualbase_updateGeometries(void* self);
void QColumnView_virtualbase_verticalScrollbarAction(void* self, int action);
void QColumnView_virtualbase_horizontalScrollbarAction(void* self, int action);
void QColumnView_virtualbase_verticalScrollbarValueChanged(void* self, int value);
void QColumnView_virtualbase_horizontalScrollbarValueChanged(void* self, int value);
void QColumnView_virtualbase_closeEditor(void* self, QWidget* editor, int hint);
void QColumnView_virtualbase_commitData(void* self, QWidget* editor);
void QColumnView_virtualbase_editorDestroyed(void* self, QObject* editor);
struct miqt_array /* of QModelIndex* */  QColumnView_virtualbase_selectedIndexes(const void* self);
bool QColumnView_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event);
int QColumnView_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event);
void QColumnView_virtualbase_startDrag(void* self, int supportedActions);
QStyleOptionViewItem* QColumnView_virtualbase_viewOptions(const void* self);
bool QColumnView_virtualbase_focusNextPrevChild(void* self, bool next);
bool QColumnView_virtualbase_event(void* self, QEvent* event);
bool QColumnView_virtualbase_viewportEvent(void* self, QEvent* event);
void QColumnView_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QColumnView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QColumnView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QColumnView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QColumnView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QColumnView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QColumnView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QColumnView_virtualbase_dropEvent(void* self, QDropEvent* event);
void QColumnView_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QColumnView_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QColumnView_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QColumnView_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QColumnView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);
bool QColumnView_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);
QSize* QColumnView_virtualbase_viewportSizeHint(const void* self);
QSize* QColumnView_virtualbase_minimumSizeHint(const void* self);
void QColumnView_virtualbase_setupViewport(void* self, QWidget* viewport);
void QColumnView_virtualbase_paintEvent(void* self, QPaintEvent* param1);
void QColumnView_virtualbase_wheelEvent(void* self, QWheelEvent* param1);
void QColumnView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
void QColumnView_virtualbase_changeEvent(void* self, QEvent* param1);
int QColumnView_virtualbase_devType(const void* self);
void QColumnView_virtualbase_setVisible(void* self, bool visible);
int QColumnView_virtualbase_heightForWidth(const void* self, int param1);
bool QColumnView_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QColumnView_virtualbase_paintEngine(const void* self);
void QColumnView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QColumnView_virtualbase_enterEvent(void* self, QEvent* event);
void QColumnView_virtualbase_leaveEvent(void* self, QEvent* event);
void QColumnView_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QColumnView_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QColumnView_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QColumnView_virtualbase_actionEvent(void* self, QActionEvent* event);
void QColumnView_virtualbase_showEvent(void* self, QShowEvent* event);
void QColumnView_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QColumnView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QColumnView_virtualbase_metric(const void* self, int param1);
void QColumnView_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QColumnView_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QColumnView_virtualbase_sharedPainter(const void* self);
void QColumnView_virtualbase_childEvent(void* self, QChildEvent* event);
void QColumnView_virtualbase_customEvent(void* self, QEvent* event);
void QColumnView_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QColumnView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QColumnView_protectedbase_initializeColumn(bool* _dynamic_cast_ok, const void* self, QAbstractItemView* column);
void QColumnView_protectedbase_setHorizontalStepsPerItem(bool* _dynamic_cast_ok, void* self, int steps);
int QColumnView_protectedbase_horizontalStepsPerItem(bool* _dynamic_cast_ok, const void* self);
void QColumnView_protectedbase_setVerticalStepsPerItem(bool* _dynamic_cast_ok, void* self, int steps);
int QColumnView_protectedbase_verticalStepsPerItem(bool* _dynamic_cast_ok, const void* self);
int QColumnView_protectedbase_state(bool* _dynamic_cast_ok, const void* self);
void QColumnView_protectedbase_setState(bool* _dynamic_cast_ok, void* self, int state);
void QColumnView_protectedbase_scheduleDelayedItemsLayout(bool* _dynamic_cast_ok, void* self);
void QColumnView_protectedbase_executeDelayedItemsLayout(bool* _dynamic_cast_ok, void* self);
void QColumnView_protectedbase_setDirtyRegion(bool* _dynamic_cast_ok, void* self, QRegion* region);
void QColumnView_protectedbase_scrollDirtyRegion(bool* _dynamic_cast_ok, void* self, int dx, int dy);
QPoint* QColumnView_protectedbase_dirtyRegionOffset(bool* _dynamic_cast_ok, const void* self);
void QColumnView_protectedbase_startAutoScroll(bool* _dynamic_cast_ok, void* self);
void QColumnView_protectedbase_stopAutoScroll(bool* _dynamic_cast_ok, void* self);
void QColumnView_protectedbase_doAutoScroll(bool* _dynamic_cast_ok, void* self);
int QColumnView_protectedbase_dropIndicatorPosition(bool* _dynamic_cast_ok, const void* self);
void QColumnView_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom);
QMargins* QColumnView_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self);
void QColumnView_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1);
void QColumnView_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option);
void QColumnView_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QColumnView_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QColumnView_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QColumnView_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QColumnView_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QColumnView_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QColumnView_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QColumnView_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QColumnView_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QColumnView_staticMetaObject();
void QColumnView_delete(QColumnView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
