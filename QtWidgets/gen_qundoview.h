#pragma once
#ifndef MIQT_QTWIDGETS_GEN_QUNDOVIEW_H
#define MIQT_QTWIDGETS_GEN_QUNDOVIEW_H

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
class QContextMenuEvent;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEvent;
class QFocusEvent;
class QFrame;
class QHideEvent;
class QIcon;
class QInputMethodEvent;
class QItemSelection;
class QItemSelectionModel;
class QKeyEvent;
class QListView;
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
class QUndoGroup;
class QUndoStack;
class QUndoView;
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
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QFrame QFrame;
typedef struct QHideEvent QHideEvent;
typedef struct QIcon QIcon;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QItemSelection QItemSelection;
typedef struct QItemSelectionModel QItemSelectionModel;
typedef struct QKeyEvent QKeyEvent;
typedef struct QListView QListView;
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
typedef struct QUndoGroup QUndoGroup;
typedef struct QUndoStack QUndoStack;
typedef struct QUndoView QUndoView;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QUndoView_VTable {
	void (*destructor)(struct QUndoView_VTable* vtbl, QUndoView* self);
	QMetaObject* (*metaObject)(struct QUndoView_VTable* vtbl, const QUndoView* self);
	void* (*metacast)(struct QUndoView_VTable* vtbl, QUndoView* self, const char* param1);
	int (*metacall)(struct QUndoView_VTable* vtbl, QUndoView* self, int param1, int param2, void** param3);
	QRect* (*visualRect)(struct QUndoView_VTable* vtbl, const QUndoView* self, QModelIndex* index);
	void (*scrollTo)(struct QUndoView_VTable* vtbl, QUndoView* self, QModelIndex* index, int hint);
	QModelIndex* (*indexAt)(struct QUndoView_VTable* vtbl, const QUndoView* self, QPoint* p);
	void (*doItemsLayout)(struct QUndoView_VTable* vtbl, QUndoView* self);
	void (*reset)(struct QUndoView_VTable* vtbl, QUndoView* self);
	void (*setRootIndex)(struct QUndoView_VTable* vtbl, QUndoView* self, QModelIndex* index);
	bool (*event)(struct QUndoView_VTable* vtbl, QUndoView* self, QEvent* e);
	void (*scrollContentsBy)(struct QUndoView_VTable* vtbl, QUndoView* self, int dx, int dy);
	void (*dataChanged)(struct QUndoView_VTable* vtbl, QUndoView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);
	void (*rowsInserted)(struct QUndoView_VTable* vtbl, QUndoView* self, QModelIndex* parent, int start, int end);
	void (*rowsAboutToBeRemoved)(struct QUndoView_VTable* vtbl, QUndoView* self, QModelIndex* parent, int start, int end);
	void (*mouseMoveEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QMouseEvent* e);
	void (*mouseReleaseEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QMouseEvent* e);
	void (*wheelEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QWheelEvent* e);
	void (*timerEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QTimerEvent* e);
	void (*resizeEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QResizeEvent* e);
	void (*dragMoveEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QDragMoveEvent* e);
	void (*dragLeaveEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QDragLeaveEvent* e);
	void (*dropEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QDropEvent* e);
	void (*startDrag)(struct QUndoView_VTable* vtbl, QUndoView* self, int supportedActions);
	QStyleOptionViewItem* (*viewOptions)(struct QUndoView_VTable* vtbl, const QUndoView* self);
	void (*paintEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QPaintEvent* e);
	int (*horizontalOffset)(struct QUndoView_VTable* vtbl, const QUndoView* self);
	int (*verticalOffset)(struct QUndoView_VTable* vtbl, const QUndoView* self);
	QModelIndex* (*moveCursor)(struct QUndoView_VTable* vtbl, QUndoView* self, int cursorAction, int modifiers);
	void (*setSelection)(struct QUndoView_VTable* vtbl, QUndoView* self, QRect* rect, int command);
	QRegion* (*visualRegionForSelection)(struct QUndoView_VTable* vtbl, const QUndoView* self, QItemSelection* selection);
	struct miqt_array /* of QModelIndex* */  (*selectedIndexes)(struct QUndoView_VTable* vtbl, const QUndoView* self);
	void (*updateGeometries)(struct QUndoView_VTable* vtbl, QUndoView* self);
	bool (*isIndexHidden)(struct QUndoView_VTable* vtbl, const QUndoView* self, QModelIndex* index);
	void (*selectionChanged)(struct QUndoView_VTable* vtbl, QUndoView* self, QItemSelection* selected, QItemSelection* deselected);
	void (*currentChanged)(struct QUndoView_VTable* vtbl, QUndoView* self, QModelIndex* current, QModelIndex* previous);
	QSize* (*viewportSizeHint)(struct QUndoView_VTable* vtbl, const QUndoView* self);
	void (*setModel)(struct QUndoView_VTable* vtbl, QUndoView* self, QAbstractItemModel* model);
	void (*setSelectionModel)(struct QUndoView_VTable* vtbl, QUndoView* self, QItemSelectionModel* selectionModel);
	void (*keyboardSearch)(struct QUndoView_VTable* vtbl, QUndoView* self, struct miqt_string search);
	int (*sizeHintForRow)(struct QUndoView_VTable* vtbl, const QUndoView* self, int row);
	int (*sizeHintForColumn)(struct QUndoView_VTable* vtbl, const QUndoView* self, int column);
	QVariant* (*inputMethodQuery)(struct QUndoView_VTable* vtbl, const QUndoView* self, int query);
	void (*selectAll)(struct QUndoView_VTable* vtbl, QUndoView* self);
	void (*updateEditorData)(struct QUndoView_VTable* vtbl, QUndoView* self);
	void (*updateEditorGeometries)(struct QUndoView_VTable* vtbl, QUndoView* self);
	void (*verticalScrollbarAction)(struct QUndoView_VTable* vtbl, QUndoView* self, int action);
	void (*horizontalScrollbarAction)(struct QUndoView_VTable* vtbl, QUndoView* self, int action);
	void (*verticalScrollbarValueChanged)(struct QUndoView_VTable* vtbl, QUndoView* self, int value);
	void (*horizontalScrollbarValueChanged)(struct QUndoView_VTable* vtbl, QUndoView* self, int value);
	void (*closeEditor)(struct QUndoView_VTable* vtbl, QUndoView* self, QWidget* editor, int hint);
	void (*commitData)(struct QUndoView_VTable* vtbl, QUndoView* self, QWidget* editor);
	void (*editorDestroyed)(struct QUndoView_VTable* vtbl, QUndoView* self, QObject* editor);
	bool (*edit2)(struct QUndoView_VTable* vtbl, QUndoView* self, QModelIndex* index, int trigger, QEvent* event);
	int (*selectionCommand)(struct QUndoView_VTable* vtbl, const QUndoView* self, QModelIndex* index, QEvent* event);
	bool (*focusNextPrevChild)(struct QUndoView_VTable* vtbl, QUndoView* self, bool next);
	bool (*viewportEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QEvent* event);
	void (*mousePressEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QMouseEvent* event);
	void (*dragEnterEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QDragEnterEvent* event);
	void (*focusInEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QFocusEvent* event);
	void (*keyPressEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QKeyEvent* event);
	void (*inputMethodEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QInputMethodEvent* event);
	bool (*eventFilter)(struct QUndoView_VTable* vtbl, QUndoView* self, QObject* object, QEvent* event);
	QSize* (*minimumSizeHint)(struct QUndoView_VTable* vtbl, const QUndoView* self);
	QSize* (*sizeHint)(struct QUndoView_VTable* vtbl, const QUndoView* self);
	void (*setupViewport)(struct QUndoView_VTable* vtbl, QUndoView* self, QWidget* viewport);
	void (*contextMenuEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QContextMenuEvent* param1);
	void (*changeEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QEvent* param1);
	int (*devType)(struct QUndoView_VTable* vtbl, const QUndoView* self);
	void (*setVisible)(struct QUndoView_VTable* vtbl, QUndoView* self, bool visible);
	int (*heightForWidth)(struct QUndoView_VTable* vtbl, const QUndoView* self, int param1);
	bool (*hasHeightForWidth)(struct QUndoView_VTable* vtbl, const QUndoView* self);
	QPaintEngine* (*paintEngine)(struct QUndoView_VTable* vtbl, const QUndoView* self);
	void (*keyReleaseEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QKeyEvent* event);
	void (*enterEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QEvent* event);
	void (*leaveEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QEvent* event);
	void (*moveEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QMoveEvent* event);
	void (*closeEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QCloseEvent* event);
	void (*tabletEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QTabletEvent* event);
	void (*actionEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QActionEvent* event);
	void (*showEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QShowEvent* event);
	void (*hideEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QHideEvent* event);
	bool (*nativeEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QUndoView_VTable* vtbl, const QUndoView* self, int param1);
	void (*initPainter)(struct QUndoView_VTable* vtbl, const QUndoView* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QUndoView_VTable* vtbl, const QUndoView* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QUndoView_VTable* vtbl, const QUndoView* self);
	void (*childEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QChildEvent* event);
	void (*customEvent)(struct QUndoView_VTable* vtbl, QUndoView* self, QEvent* event);
	void (*connectNotify)(struct QUndoView_VTable* vtbl, QUndoView* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QUndoView_VTable* vtbl, QUndoView* self, QMetaMethod* signal);
};
QUndoView* QUndoView_new(struct QUndoView_VTable* vtbl, QWidget* parent);
QUndoView* QUndoView_new2(struct QUndoView_VTable* vtbl);
QUndoView* QUndoView_new3(struct QUndoView_VTable* vtbl, QUndoStack* stack);
QUndoView* QUndoView_new4(struct QUndoView_VTable* vtbl, QUndoGroup* group);
QUndoView* QUndoView_new5(struct QUndoView_VTable* vtbl, QUndoStack* stack, QWidget* parent);
QUndoView* QUndoView_new6(struct QUndoView_VTable* vtbl, QUndoGroup* group, QWidget* parent);
void QUndoView_virtbase(QUndoView* src, QListView** outptr_QListView);
QMetaObject* QUndoView_metaObject(const QUndoView* self);
void* QUndoView_metacast(QUndoView* self, const char* param1);
int QUndoView_metacall(QUndoView* self, int param1, int param2, void** param3);
struct miqt_string QUndoView_tr(const char* s);
struct miqt_string QUndoView_trUtf8(const char* s);
QUndoStack* QUndoView_stack(const QUndoView* self);
QUndoGroup* QUndoView_group(const QUndoView* self);
void QUndoView_setEmptyLabel(QUndoView* self, struct miqt_string label);
struct miqt_string QUndoView_emptyLabel(const QUndoView* self);
void QUndoView_setCleanIcon(QUndoView* self, QIcon* icon);
QIcon* QUndoView_cleanIcon(const QUndoView* self);
void QUndoView_setStack(QUndoView* self, QUndoStack* stack);
void QUndoView_setGroup(QUndoView* self, QUndoGroup* group);
struct miqt_string QUndoView_tr2(const char* s, const char* c);
struct miqt_string QUndoView_tr3(const char* s, const char* c, int n);
struct miqt_string QUndoView_trUtf82(const char* s, const char* c);
struct miqt_string QUndoView_trUtf83(const char* s, const char* c, int n);
QMetaObject* QUndoView_virtualbase_metaObject(const void* self);
void* QUndoView_virtualbase_metacast(void* self, const char* param1);
int QUndoView_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QRect* QUndoView_virtualbase_visualRect(const void* self, QModelIndex* index);
void QUndoView_virtualbase_scrollTo(void* self, QModelIndex* index, int hint);
QModelIndex* QUndoView_virtualbase_indexAt(const void* self, QPoint* p);
void QUndoView_virtualbase_doItemsLayout(void* self);
void QUndoView_virtualbase_reset(void* self);
void QUndoView_virtualbase_setRootIndex(void* self, QModelIndex* index);
bool QUndoView_virtualbase_event(void* self, QEvent* e);
void QUndoView_virtualbase_scrollContentsBy(void* self, int dx, int dy);
void QUndoView_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);
void QUndoView_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end);
void QUndoView_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end);
void QUndoView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* e);
void QUndoView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e);
void QUndoView_virtualbase_wheelEvent(void* self, QWheelEvent* e);
void QUndoView_virtualbase_timerEvent(void* self, QTimerEvent* e);
void QUndoView_virtualbase_resizeEvent(void* self, QResizeEvent* e);
void QUndoView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* e);
void QUndoView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* e);
void QUndoView_virtualbase_dropEvent(void* self, QDropEvent* e);
void QUndoView_virtualbase_startDrag(void* self, int supportedActions);
QStyleOptionViewItem* QUndoView_virtualbase_viewOptions(const void* self);
void QUndoView_virtualbase_paintEvent(void* self, QPaintEvent* e);
int QUndoView_virtualbase_horizontalOffset(const void* self);
int QUndoView_virtualbase_verticalOffset(const void* self);
QModelIndex* QUndoView_virtualbase_moveCursor(void* self, int cursorAction, int modifiers);
void QUndoView_virtualbase_setSelection(void* self, QRect* rect, int command);
QRegion* QUndoView_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection);
struct miqt_array /* of QModelIndex* */  QUndoView_virtualbase_selectedIndexes(const void* self);
void QUndoView_virtualbase_updateGeometries(void* self);
bool QUndoView_virtualbase_isIndexHidden(const void* self, QModelIndex* index);
void QUndoView_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected);
void QUndoView_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous);
QSize* QUndoView_virtualbase_viewportSizeHint(const void* self);
void QUndoView_virtualbase_setModel(void* self, QAbstractItemModel* model);
void QUndoView_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel);
void QUndoView_virtualbase_keyboardSearch(void* self, struct miqt_string search);
int QUndoView_virtualbase_sizeHintForRow(const void* self, int row);
int QUndoView_virtualbase_sizeHintForColumn(const void* self, int column);
QVariant* QUndoView_virtualbase_inputMethodQuery(const void* self, int query);
void QUndoView_virtualbase_selectAll(void* self);
void QUndoView_virtualbase_updateEditorData(void* self);
void QUndoView_virtualbase_updateEditorGeometries(void* self);
void QUndoView_virtualbase_verticalScrollbarAction(void* self, int action);
void QUndoView_virtualbase_horizontalScrollbarAction(void* self, int action);
void QUndoView_virtualbase_verticalScrollbarValueChanged(void* self, int value);
void QUndoView_virtualbase_horizontalScrollbarValueChanged(void* self, int value);
void QUndoView_virtualbase_closeEditor(void* self, QWidget* editor, int hint);
void QUndoView_virtualbase_commitData(void* self, QWidget* editor);
void QUndoView_virtualbase_editorDestroyed(void* self, QObject* editor);
bool QUndoView_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event);
int QUndoView_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event);
bool QUndoView_virtualbase_focusNextPrevChild(void* self, bool next);
bool QUndoView_virtualbase_viewportEvent(void* self, QEvent* event);
void QUndoView_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QUndoView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QUndoView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QUndoView_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QUndoView_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QUndoView_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QUndoView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);
bool QUndoView_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);
QSize* QUndoView_virtualbase_minimumSizeHint(const void* self);
QSize* QUndoView_virtualbase_sizeHint(const void* self);
void QUndoView_virtualbase_setupViewport(void* self, QWidget* viewport);
void QUndoView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
void QUndoView_virtualbase_changeEvent(void* self, QEvent* param1);
int QUndoView_virtualbase_devType(const void* self);
void QUndoView_virtualbase_setVisible(void* self, bool visible);
int QUndoView_virtualbase_heightForWidth(const void* self, int param1);
bool QUndoView_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QUndoView_virtualbase_paintEngine(const void* self);
void QUndoView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QUndoView_virtualbase_enterEvent(void* self, QEvent* event);
void QUndoView_virtualbase_leaveEvent(void* self, QEvent* event);
void QUndoView_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QUndoView_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QUndoView_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QUndoView_virtualbase_actionEvent(void* self, QActionEvent* event);
void QUndoView_virtualbase_showEvent(void* self, QShowEvent* event);
void QUndoView_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QUndoView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QUndoView_virtualbase_metric(const void* self, int param1);
void QUndoView_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QUndoView_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QUndoView_virtualbase_sharedPainter(const void* self);
void QUndoView_virtualbase_childEvent(void* self, QChildEvent* event);
void QUndoView_virtualbase_customEvent(void* self, QEvent* event);
void QUndoView_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QUndoView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QUndoView_protectedbase_resizeContents(bool* _dynamic_cast_ok, void* self, int width, int height);
QSize* QUndoView_protectedbase_contentsSize(bool* _dynamic_cast_ok, const void* self);
QRect* QUndoView_protectedbase_rectForIndex(bool* _dynamic_cast_ok, const void* self, QModelIndex* index);
void QUndoView_protectedbase_setPositionForIndex(bool* _dynamic_cast_ok, void* self, QPoint* position, QModelIndex* index);
void QUndoView_protectedbase_setHorizontalStepsPerItem(bool* _dynamic_cast_ok, void* self, int steps);
int QUndoView_protectedbase_horizontalStepsPerItem(bool* _dynamic_cast_ok, const void* self);
void QUndoView_protectedbase_setVerticalStepsPerItem(bool* _dynamic_cast_ok, void* self, int steps);
int QUndoView_protectedbase_verticalStepsPerItem(bool* _dynamic_cast_ok, const void* self);
int QUndoView_protectedbase_state(bool* _dynamic_cast_ok, const void* self);
void QUndoView_protectedbase_setState(bool* _dynamic_cast_ok, void* self, int state);
void QUndoView_protectedbase_scheduleDelayedItemsLayout(bool* _dynamic_cast_ok, void* self);
void QUndoView_protectedbase_executeDelayedItemsLayout(bool* _dynamic_cast_ok, void* self);
void QUndoView_protectedbase_setDirtyRegion(bool* _dynamic_cast_ok, void* self, QRegion* region);
void QUndoView_protectedbase_scrollDirtyRegion(bool* _dynamic_cast_ok, void* self, int dx, int dy);
QPoint* QUndoView_protectedbase_dirtyRegionOffset(bool* _dynamic_cast_ok, const void* self);
void QUndoView_protectedbase_startAutoScroll(bool* _dynamic_cast_ok, void* self);
void QUndoView_protectedbase_stopAutoScroll(bool* _dynamic_cast_ok, void* self);
void QUndoView_protectedbase_doAutoScroll(bool* _dynamic_cast_ok, void* self);
int QUndoView_protectedbase_dropIndicatorPosition(bool* _dynamic_cast_ok, const void* self);
void QUndoView_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom);
QMargins* QUndoView_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self);
void QUndoView_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1);
void QUndoView_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option);
void QUndoView_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QUndoView_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QUndoView_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QUndoView_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QUndoView_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QUndoView_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QUndoView_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QUndoView_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QUndoView_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QUndoView_staticMetaObject();
void QUndoView_delete(QUndoView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
