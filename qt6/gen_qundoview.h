#pragma once
#ifndef MIQT_QT6_GEN_QUNDOVIEW_H
#define MIQT_QT6_GEN_QUNDOVIEW_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractItemDelegate;
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
class QEnterEvent;
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
typedef struct QAbstractItemDelegate QAbstractItemDelegate;
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
typedef struct QEnterEvent QEnterEvent;
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

QUndoView* QUndoView_new(QWidget* parent);
QUndoView* QUndoView_new2();
QUndoView* QUndoView_new3(QUndoStack* stack);
QUndoView* QUndoView_new4(QUndoGroup* group);
QUndoView* QUndoView_new5(QUndoStack* stack, QWidget* parent);
QUndoView* QUndoView_new6(QUndoGroup* group, QWidget* parent);
void QUndoView_virtbase(QUndoView* src, QListView** outptr_QListView);
QMetaObject* QUndoView_metaObject(const QUndoView* self);
void* QUndoView_metacast(QUndoView* self, const char* param1);
int QUndoView_metacall(QUndoView* self, int param1, int param2, void** param3);
struct miqt_string QUndoView_tr(const char* s);
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
bool QUndoView_override_virtual_metacall(void* self, intptr_t slot);
int QUndoView_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QUndoView_override_virtual_visualRect(void* self, intptr_t slot);
QRect* QUndoView_virtualbase_visualRect(const void* self, QModelIndex* index);
bool QUndoView_override_virtual_scrollTo(void* self, intptr_t slot);
void QUndoView_virtualbase_scrollTo(void* self, QModelIndex* index, int hint);
bool QUndoView_override_virtual_indexAt(void* self, intptr_t slot);
QModelIndex* QUndoView_virtualbase_indexAt(const void* self, QPoint* p);
bool QUndoView_override_virtual_doItemsLayout(void* self, intptr_t slot);
void QUndoView_virtualbase_doItemsLayout(void* self);
bool QUndoView_override_virtual_reset(void* self, intptr_t slot);
void QUndoView_virtualbase_reset(void* self);
bool QUndoView_override_virtual_setRootIndex(void* self, intptr_t slot);
void QUndoView_virtualbase_setRootIndex(void* self, QModelIndex* index);
bool QUndoView_override_virtual_event(void* self, intptr_t slot);
bool QUndoView_virtualbase_event(void* self, QEvent* e);
bool QUndoView_override_virtual_scrollContentsBy(void* self, intptr_t slot);
void QUndoView_virtualbase_scrollContentsBy(void* self, int dx, int dy);
bool QUndoView_override_virtual_dataChanged(void* self, intptr_t slot);
void QUndoView_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);
bool QUndoView_override_virtual_rowsInserted(void* self, intptr_t slot);
void QUndoView_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end);
bool QUndoView_override_virtual_rowsAboutToBeRemoved(void* self, intptr_t slot);
void QUndoView_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end);
bool QUndoView_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* e);
bool QUndoView_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e);
bool QUndoView_override_virtual_wheelEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_wheelEvent(void* self, QWheelEvent* e);
bool QUndoView_override_virtual_timerEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_timerEvent(void* self, QTimerEvent* e);
bool QUndoView_override_virtual_resizeEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_resizeEvent(void* self, QResizeEvent* e);
bool QUndoView_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* e);
bool QUndoView_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* e);
bool QUndoView_override_virtual_dropEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_dropEvent(void* self, QDropEvent* e);
bool QUndoView_override_virtual_startDrag(void* self, intptr_t slot);
void QUndoView_virtualbase_startDrag(void* self, int supportedActions);
bool QUndoView_override_virtual_initViewItemOption(void* self, intptr_t slot);
void QUndoView_virtualbase_initViewItemOption(const void* self, QStyleOptionViewItem* option);
bool QUndoView_override_virtual_paintEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_paintEvent(void* self, QPaintEvent* e);
bool QUndoView_override_virtual_horizontalOffset(void* self, intptr_t slot);
int QUndoView_virtualbase_horizontalOffset(const void* self);
bool QUndoView_override_virtual_verticalOffset(void* self, intptr_t slot);
int QUndoView_virtualbase_verticalOffset(const void* self);
bool QUndoView_override_virtual_moveCursor(void* self, intptr_t slot);
QModelIndex* QUndoView_virtualbase_moveCursor(void* self, int cursorAction, int modifiers);
bool QUndoView_override_virtual_setSelection(void* self, intptr_t slot);
void QUndoView_virtualbase_setSelection(void* self, QRect* rect, int command);
bool QUndoView_override_virtual_visualRegionForSelection(void* self, intptr_t slot);
QRegion* QUndoView_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection);
bool QUndoView_override_virtual_selectedIndexes(void* self, intptr_t slot);
struct miqt_array /* of QModelIndex* */  QUndoView_virtualbase_selectedIndexes(const void* self);
bool QUndoView_override_virtual_updateGeometries(void* self, intptr_t slot);
void QUndoView_virtualbase_updateGeometries(void* self);
bool QUndoView_override_virtual_isIndexHidden(void* self, intptr_t slot);
bool QUndoView_virtualbase_isIndexHidden(const void* self, QModelIndex* index);
bool QUndoView_override_virtual_selectionChanged(void* self, intptr_t slot);
void QUndoView_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected);
bool QUndoView_override_virtual_currentChanged(void* self, intptr_t slot);
void QUndoView_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous);
bool QUndoView_override_virtual_viewportSizeHint(void* self, intptr_t slot);
QSize* QUndoView_virtualbase_viewportSizeHint(const void* self);
bool QUndoView_override_virtual_setModel(void* self, intptr_t slot);
void QUndoView_virtualbase_setModel(void* self, QAbstractItemModel* model);
bool QUndoView_override_virtual_setSelectionModel(void* self, intptr_t slot);
void QUndoView_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel);
bool QUndoView_override_virtual_keyboardSearch(void* self, intptr_t slot);
void QUndoView_virtualbase_keyboardSearch(void* self, struct miqt_string search);
bool QUndoView_override_virtual_sizeHintForRow(void* self, intptr_t slot);
int QUndoView_virtualbase_sizeHintForRow(const void* self, int row);
bool QUndoView_override_virtual_sizeHintForColumn(void* self, intptr_t slot);
int QUndoView_virtualbase_sizeHintForColumn(const void* self, int column);
bool QUndoView_override_virtual_itemDelegateForIndex(void* self, intptr_t slot);
QAbstractItemDelegate* QUndoView_virtualbase_itemDelegateForIndex(const void* self, QModelIndex* index);
bool QUndoView_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QUndoView_virtualbase_inputMethodQuery(const void* self, int query);
bool QUndoView_override_virtual_selectAll(void* self, intptr_t slot);
void QUndoView_virtualbase_selectAll(void* self);
bool QUndoView_override_virtual_updateEditorData(void* self, intptr_t slot);
void QUndoView_virtualbase_updateEditorData(void* self);
bool QUndoView_override_virtual_updateEditorGeometries(void* self, intptr_t slot);
void QUndoView_virtualbase_updateEditorGeometries(void* self);
bool QUndoView_override_virtual_verticalScrollbarAction(void* self, intptr_t slot);
void QUndoView_virtualbase_verticalScrollbarAction(void* self, int action);
bool QUndoView_override_virtual_horizontalScrollbarAction(void* self, intptr_t slot);
void QUndoView_virtualbase_horizontalScrollbarAction(void* self, int action);
bool QUndoView_override_virtual_verticalScrollbarValueChanged(void* self, intptr_t slot);
void QUndoView_virtualbase_verticalScrollbarValueChanged(void* self, int value);
bool QUndoView_override_virtual_horizontalScrollbarValueChanged(void* self, intptr_t slot);
void QUndoView_virtualbase_horizontalScrollbarValueChanged(void* self, int value);
bool QUndoView_override_virtual_closeEditor(void* self, intptr_t slot);
void QUndoView_virtualbase_closeEditor(void* self, QWidget* editor, int hint);
bool QUndoView_override_virtual_commitData(void* self, intptr_t slot);
void QUndoView_virtualbase_commitData(void* self, QWidget* editor);
bool QUndoView_override_virtual_editorDestroyed(void* self, intptr_t slot);
void QUndoView_virtualbase_editorDestroyed(void* self, QObject* editor);
bool QUndoView_override_virtual_edit2(void* self, intptr_t slot);
bool QUndoView_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event);
bool QUndoView_override_virtual_selectionCommand(void* self, intptr_t slot);
int QUndoView_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event);
bool QUndoView_override_virtual_focusNextPrevChild(void* self, intptr_t slot);
bool QUndoView_virtualbase_focusNextPrevChild(void* self, bool next);
bool QUndoView_override_virtual_viewportEvent(void* self, intptr_t slot);
bool QUndoView_virtualbase_viewportEvent(void* self, QEvent* event);
bool QUndoView_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
bool QUndoView_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
bool QUndoView_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
bool QUndoView_override_virtual_focusInEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_focusInEvent(void* self, QFocusEvent* event);
bool QUndoView_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
bool QUndoView_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
bool QUndoView_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);
bool QUndoView_override_virtual_eventFilter(void* self, intptr_t slot);
bool QUndoView_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);
bool QUndoView_override_virtual_minimumSizeHint(void* self, intptr_t slot);
QSize* QUndoView_virtualbase_minimumSizeHint(const void* self);
bool QUndoView_override_virtual_sizeHint(void* self, intptr_t slot);
QSize* QUndoView_virtualbase_sizeHint(const void* self);
bool QUndoView_override_virtual_setupViewport(void* self, intptr_t slot);
void QUndoView_virtualbase_setupViewport(void* self, QWidget* viewport);
bool QUndoView_override_virtual_contextMenuEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
bool QUndoView_override_virtual_changeEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_changeEvent(void* self, QEvent* param1);
bool QUndoView_override_virtual_initStyleOption(void* self, intptr_t slot);
void QUndoView_virtualbase_initStyleOption(const void* self, QStyleOptionFrame* option);
bool QUndoView_override_virtual_devType(void* self, intptr_t slot);
int QUndoView_virtualbase_devType(const void* self);
bool QUndoView_override_virtual_setVisible(void* self, intptr_t slot);
void QUndoView_virtualbase_setVisible(void* self, bool visible);
bool QUndoView_override_virtual_heightForWidth(void* self, intptr_t slot);
int QUndoView_virtualbase_heightForWidth(const void* self, int param1);
bool QUndoView_override_virtual_hasHeightForWidth(void* self, intptr_t slot);
bool QUndoView_virtualbase_hasHeightForWidth(const void* self);
bool QUndoView_override_virtual_paintEngine(void* self, intptr_t slot);
QPaintEngine* QUndoView_virtualbase_paintEngine(const void* self);
bool QUndoView_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
bool QUndoView_override_virtual_enterEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_enterEvent(void* self, QEnterEvent* event);
bool QUndoView_override_virtual_leaveEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_leaveEvent(void* self, QEvent* event);
bool QUndoView_override_virtual_moveEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_moveEvent(void* self, QMoveEvent* event);
bool QUndoView_override_virtual_closeEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_closeEvent(void* self, QCloseEvent* event);
bool QUndoView_override_virtual_tabletEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_tabletEvent(void* self, QTabletEvent* event);
bool QUndoView_override_virtual_actionEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_actionEvent(void* self, QActionEvent* event);
bool QUndoView_override_virtual_showEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_showEvent(void* self, QShowEvent* event);
bool QUndoView_override_virtual_hideEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QUndoView_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QUndoView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
bool QUndoView_override_virtual_metric(void* self, intptr_t slot);
int QUndoView_virtualbase_metric(const void* self, int param1);
bool QUndoView_override_virtual_initPainter(void* self, intptr_t slot);
void QUndoView_virtualbase_initPainter(const void* self, QPainter* painter);
bool QUndoView_override_virtual_redirected(void* self, intptr_t slot);
QPaintDevice* QUndoView_virtualbase_redirected(const void* self, QPoint* offset);
bool QUndoView_override_virtual_sharedPainter(void* self, intptr_t slot);
QPainter* QUndoView_virtualbase_sharedPainter(const void* self);
bool QUndoView_override_virtual_childEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_childEvent(void* self, QChildEvent* event);
bool QUndoView_override_virtual_customEvent(void* self, intptr_t slot);
void QUndoView_virtualbase_customEvent(void* self, QEvent* event);
bool QUndoView_override_virtual_connectNotify(void* self, intptr_t slot);
void QUndoView_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QUndoView_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QUndoView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QUndoView_staticMetaObject();
void QUndoView_delete(QUndoView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
