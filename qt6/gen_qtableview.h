#pragma once
#ifndef MIQT_QT6_GEN_QTABLEVIEW_H
#define MIQT_QT6_GEN_QTABLEVIEW_H

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
class QHeaderView;
class QHideEvent;
class QInputMethodEvent;
class QItemSelection;
class QItemSelectionModel;
class QKeyEvent;
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
class QTableView;
class QTabletEvent;
class QTimerEvent;
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
typedef struct QHeaderView QHeaderView;
typedef struct QHideEvent QHideEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QItemSelection QItemSelection;
typedef struct QItemSelectionModel QItemSelectionModel;
typedef struct QKeyEvent QKeyEvent;
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
typedef struct QTableView QTableView;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

QTableView* QTableView_new(QWidget* parent);
QTableView* QTableView_new2();
void QTableView_virtbase(QTableView* src, QAbstractItemView** outptr_QAbstractItemView);
QMetaObject* QTableView_metaObject(const QTableView* self);
void* QTableView_metacast(QTableView* self, const char* param1);
int QTableView_metacall(QTableView* self, int param1, int param2, void** param3);
struct miqt_string QTableView_tr(const char* s);
void QTableView_setModel(QTableView* self, QAbstractItemModel* model);
void QTableView_setRootIndex(QTableView* self, QModelIndex* index);
void QTableView_setSelectionModel(QTableView* self, QItemSelectionModel* selectionModel);
void QTableView_doItemsLayout(QTableView* self);
QHeaderView* QTableView_horizontalHeader(const QTableView* self);
QHeaderView* QTableView_verticalHeader(const QTableView* self);
void QTableView_setHorizontalHeader(QTableView* self, QHeaderView* header);
void QTableView_setVerticalHeader(QTableView* self, QHeaderView* header);
int QTableView_rowViewportPosition(const QTableView* self, int row);
int QTableView_rowAt(const QTableView* self, int y);
void QTableView_setRowHeight(QTableView* self, int row, int height);
int QTableView_rowHeight(const QTableView* self, int row);
int QTableView_columnViewportPosition(const QTableView* self, int column);
int QTableView_columnAt(const QTableView* self, int x);
void QTableView_setColumnWidth(QTableView* self, int column, int width);
int QTableView_columnWidth(const QTableView* self, int column);
bool QTableView_isRowHidden(const QTableView* self, int row);
void QTableView_setRowHidden(QTableView* self, int row, bool hide);
bool QTableView_isColumnHidden(const QTableView* self, int column);
void QTableView_setColumnHidden(QTableView* self, int column, bool hide);
void QTableView_setSortingEnabled(QTableView* self, bool enable);
bool QTableView_isSortingEnabled(const QTableView* self);
bool QTableView_showGrid(const QTableView* self);
int QTableView_gridStyle(const QTableView* self);
void QTableView_setGridStyle(QTableView* self, int style);
void QTableView_setWordWrap(QTableView* self, bool on);
bool QTableView_wordWrap(const QTableView* self);
void QTableView_setCornerButtonEnabled(QTableView* self, bool enable);
bool QTableView_isCornerButtonEnabled(const QTableView* self);
QRect* QTableView_visualRect(const QTableView* self, QModelIndex* index);
void QTableView_scrollTo(QTableView* self, QModelIndex* index, int hint);
QModelIndex* QTableView_indexAt(const QTableView* self, QPoint* p);
void QTableView_setSpan(QTableView* self, int row, int column, int rowSpan, int columnSpan);
int QTableView_rowSpan(const QTableView* self, int row, int column);
int QTableView_columnSpan(const QTableView* self, int row, int column);
void QTableView_clearSpans(QTableView* self);
void QTableView_selectRow(QTableView* self, int row);
void QTableView_selectColumn(QTableView* self, int column);
void QTableView_hideRow(QTableView* self, int row);
void QTableView_hideColumn(QTableView* self, int column);
void QTableView_showRow(QTableView* self, int row);
void QTableView_showColumn(QTableView* self, int column);
void QTableView_resizeRowToContents(QTableView* self, int row);
void QTableView_resizeRowsToContents(QTableView* self);
void QTableView_resizeColumnToContents(QTableView* self, int column);
void QTableView_resizeColumnsToContents(QTableView* self);
void QTableView_sortByColumn(QTableView* self, int column, int order);
void QTableView_setShowGrid(QTableView* self, bool show);
void QTableView_scrollContentsBy(QTableView* self, int dx, int dy);
void QTableView_initViewItemOption(const QTableView* self, QStyleOptionViewItem* option);
void QTableView_paintEvent(QTableView* self, QPaintEvent* e);
void QTableView_timerEvent(QTableView* self, QTimerEvent* event);
int QTableView_horizontalOffset(const QTableView* self);
int QTableView_verticalOffset(const QTableView* self);
QModelIndex* QTableView_moveCursor(QTableView* self, int cursorAction, int modifiers);
void QTableView_setSelection(QTableView* self, QRect* rect, int command);
QRegion* QTableView_visualRegionForSelection(const QTableView* self, QItemSelection* selection);
struct miqt_array /* of QModelIndex* */  QTableView_selectedIndexes(const QTableView* self);
void QTableView_updateGeometries(QTableView* self);
QSize* QTableView_viewportSizeHint(const QTableView* self);
int QTableView_sizeHintForRow(const QTableView* self, int row);
int QTableView_sizeHintForColumn(const QTableView* self, int column);
void QTableView_verticalScrollbarAction(QTableView* self, int action);
void QTableView_horizontalScrollbarAction(QTableView* self, int action);
bool QTableView_isIndexHidden(const QTableView* self, QModelIndex* index);
void QTableView_selectionChanged(QTableView* self, QItemSelection* selected, QItemSelection* deselected);
void QTableView_currentChanged(QTableView* self, QModelIndex* current, QModelIndex* previous);
struct miqt_string QTableView_tr2(const char* s, const char* c);
struct miqt_string QTableView_tr3(const char* s, const char* c, int n);
bool QTableView_override_virtual_metaObject(void* self, intptr_t slot);
QMetaObject* QTableView_virtualbase_metaObject(const void* self);
bool QTableView_override_virtual_metacast(void* self, intptr_t slot);
void* QTableView_virtualbase_metacast(void* self, const char* param1);
bool QTableView_override_virtual_metacall(void* self, intptr_t slot);
int QTableView_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QTableView_override_virtual_setModel(void* self, intptr_t slot);
void QTableView_virtualbase_setModel(void* self, QAbstractItemModel* model);
bool QTableView_override_virtual_setRootIndex(void* self, intptr_t slot);
void QTableView_virtualbase_setRootIndex(void* self, QModelIndex* index);
bool QTableView_override_virtual_setSelectionModel(void* self, intptr_t slot);
void QTableView_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel);
bool QTableView_override_virtual_doItemsLayout(void* self, intptr_t slot);
void QTableView_virtualbase_doItemsLayout(void* self);
bool QTableView_override_virtual_visualRect(void* self, intptr_t slot);
QRect* QTableView_virtualbase_visualRect(const void* self, QModelIndex* index);
bool QTableView_override_virtual_scrollTo(void* self, intptr_t slot);
void QTableView_virtualbase_scrollTo(void* self, QModelIndex* index, int hint);
bool QTableView_override_virtual_indexAt(void* self, intptr_t slot);
QModelIndex* QTableView_virtualbase_indexAt(const void* self, QPoint* p);
bool QTableView_override_virtual_scrollContentsBy(void* self, intptr_t slot);
void QTableView_virtualbase_scrollContentsBy(void* self, int dx, int dy);
bool QTableView_override_virtual_initViewItemOption(void* self, intptr_t slot);
void QTableView_virtualbase_initViewItemOption(const void* self, QStyleOptionViewItem* option);
bool QTableView_override_virtual_paintEvent(void* self, intptr_t slot);
void QTableView_virtualbase_paintEvent(void* self, QPaintEvent* e);
bool QTableView_override_virtual_timerEvent(void* self, intptr_t slot);
void QTableView_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QTableView_override_virtual_horizontalOffset(void* self, intptr_t slot);
int QTableView_virtualbase_horizontalOffset(const void* self);
bool QTableView_override_virtual_verticalOffset(void* self, intptr_t slot);
int QTableView_virtualbase_verticalOffset(const void* self);
bool QTableView_override_virtual_moveCursor(void* self, intptr_t slot);
QModelIndex* QTableView_virtualbase_moveCursor(void* self, int cursorAction, int modifiers);
bool QTableView_override_virtual_setSelection(void* self, intptr_t slot);
void QTableView_virtualbase_setSelection(void* self, QRect* rect, int command);
bool QTableView_override_virtual_visualRegionForSelection(void* self, intptr_t slot);
QRegion* QTableView_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection);
bool QTableView_override_virtual_selectedIndexes(void* self, intptr_t slot);
struct miqt_array /* of QModelIndex* */  QTableView_virtualbase_selectedIndexes(const void* self);
bool QTableView_override_virtual_updateGeometries(void* self, intptr_t slot);
void QTableView_virtualbase_updateGeometries(void* self);
bool QTableView_override_virtual_viewportSizeHint(void* self, intptr_t slot);
QSize* QTableView_virtualbase_viewportSizeHint(const void* self);
bool QTableView_override_virtual_sizeHintForRow(void* self, intptr_t slot);
int QTableView_virtualbase_sizeHintForRow(const void* self, int row);
bool QTableView_override_virtual_sizeHintForColumn(void* self, intptr_t slot);
int QTableView_virtualbase_sizeHintForColumn(const void* self, int column);
bool QTableView_override_virtual_verticalScrollbarAction(void* self, intptr_t slot);
void QTableView_virtualbase_verticalScrollbarAction(void* self, int action);
bool QTableView_override_virtual_horizontalScrollbarAction(void* self, intptr_t slot);
void QTableView_virtualbase_horizontalScrollbarAction(void* self, int action);
bool QTableView_override_virtual_isIndexHidden(void* self, intptr_t slot);
bool QTableView_virtualbase_isIndexHidden(const void* self, QModelIndex* index);
bool QTableView_override_virtual_selectionChanged(void* self, intptr_t slot);
void QTableView_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected);
bool QTableView_override_virtual_currentChanged(void* self, intptr_t slot);
void QTableView_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous);
bool QTableView_override_virtual_keyboardSearch(void* self, intptr_t slot);
void QTableView_virtualbase_keyboardSearch(void* self, struct miqt_string search);
bool QTableView_override_virtual_itemDelegateForIndex(void* self, intptr_t slot);
QAbstractItemDelegate* QTableView_virtualbase_itemDelegateForIndex(const void* self, QModelIndex* index);
bool QTableView_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QTableView_virtualbase_inputMethodQuery(const void* self, int query);
bool QTableView_override_virtual_reset(void* self, intptr_t slot);
void QTableView_virtualbase_reset(void* self);
bool QTableView_override_virtual_selectAll(void* self, intptr_t slot);
void QTableView_virtualbase_selectAll(void* self);
bool QTableView_override_virtual_dataChanged(void* self, intptr_t slot);
void QTableView_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);
bool QTableView_override_virtual_rowsInserted(void* self, intptr_t slot);
void QTableView_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end);
bool QTableView_override_virtual_rowsAboutToBeRemoved(void* self, intptr_t slot);
void QTableView_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end);
bool QTableView_override_virtual_updateEditorData(void* self, intptr_t slot);
void QTableView_virtualbase_updateEditorData(void* self);
bool QTableView_override_virtual_updateEditorGeometries(void* self, intptr_t slot);
void QTableView_virtualbase_updateEditorGeometries(void* self);
bool QTableView_override_virtual_verticalScrollbarValueChanged(void* self, intptr_t slot);
void QTableView_virtualbase_verticalScrollbarValueChanged(void* self, int value);
bool QTableView_override_virtual_horizontalScrollbarValueChanged(void* self, intptr_t slot);
void QTableView_virtualbase_horizontalScrollbarValueChanged(void* self, int value);
bool QTableView_override_virtual_closeEditor(void* self, intptr_t slot);
void QTableView_virtualbase_closeEditor(void* self, QWidget* editor, int hint);
bool QTableView_override_virtual_commitData(void* self, intptr_t slot);
void QTableView_virtualbase_commitData(void* self, QWidget* editor);
bool QTableView_override_virtual_editorDestroyed(void* self, intptr_t slot);
void QTableView_virtualbase_editorDestroyed(void* self, QObject* editor);
bool QTableView_override_virtual_edit2(void* self, intptr_t slot);
bool QTableView_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event);
bool QTableView_override_virtual_selectionCommand(void* self, intptr_t slot);
int QTableView_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event);
bool QTableView_override_virtual_startDrag(void* self, intptr_t slot);
void QTableView_virtualbase_startDrag(void* self, int supportedActions);
bool QTableView_override_virtual_focusNextPrevChild(void* self, intptr_t slot);
bool QTableView_virtualbase_focusNextPrevChild(void* self, bool next);
bool QTableView_override_virtual_event(void* self, intptr_t slot);
bool QTableView_virtualbase_event(void* self, QEvent* event);
bool QTableView_override_virtual_viewportEvent(void* self, intptr_t slot);
bool QTableView_virtualbase_viewportEvent(void* self, QEvent* event);
bool QTableView_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QTableView_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
bool QTableView_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QTableView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
bool QTableView_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QTableView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
bool QTableView_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QTableView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
bool QTableView_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QTableView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
bool QTableView_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QTableView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
bool QTableView_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QTableView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
bool QTableView_override_virtual_dropEvent(void* self, intptr_t slot);
void QTableView_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QTableView_override_virtual_focusInEvent(void* self, intptr_t slot);
void QTableView_virtualbase_focusInEvent(void* self, QFocusEvent* event);
bool QTableView_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QTableView_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
bool QTableView_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QTableView_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
bool QTableView_override_virtual_resizeEvent(void* self, intptr_t slot);
void QTableView_virtualbase_resizeEvent(void* self, QResizeEvent* event);
bool QTableView_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QTableView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);
bool QTableView_override_virtual_eventFilter(void* self, intptr_t slot);
bool QTableView_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);
bool QTableView_override_virtual_minimumSizeHint(void* self, intptr_t slot);
QSize* QTableView_virtualbase_minimumSizeHint(const void* self);
bool QTableView_override_virtual_sizeHint(void* self, intptr_t slot);
QSize* QTableView_virtualbase_sizeHint(const void* self);
bool QTableView_override_virtual_setupViewport(void* self, intptr_t slot);
void QTableView_virtualbase_setupViewport(void* self, QWidget* viewport);
bool QTableView_override_virtual_wheelEvent(void* self, intptr_t slot);
void QTableView_virtualbase_wheelEvent(void* self, QWheelEvent* param1);
bool QTableView_override_virtual_contextMenuEvent(void* self, intptr_t slot);
void QTableView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
bool QTableView_override_virtual_changeEvent(void* self, intptr_t slot);
void QTableView_virtualbase_changeEvent(void* self, QEvent* param1);
bool QTableView_override_virtual_initStyleOption(void* self, intptr_t slot);
void QTableView_virtualbase_initStyleOption(const void* self, QStyleOptionFrame* option);
bool QTableView_override_virtual_devType(void* self, intptr_t slot);
int QTableView_virtualbase_devType(const void* self);
bool QTableView_override_virtual_setVisible(void* self, intptr_t slot);
void QTableView_virtualbase_setVisible(void* self, bool visible);
bool QTableView_override_virtual_heightForWidth(void* self, intptr_t slot);
int QTableView_virtualbase_heightForWidth(const void* self, int param1);
bool QTableView_override_virtual_hasHeightForWidth(void* self, intptr_t slot);
bool QTableView_virtualbase_hasHeightForWidth(const void* self);
bool QTableView_override_virtual_paintEngine(void* self, intptr_t slot);
QPaintEngine* QTableView_virtualbase_paintEngine(const void* self);
bool QTableView_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QTableView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
bool QTableView_override_virtual_enterEvent(void* self, intptr_t slot);
void QTableView_virtualbase_enterEvent(void* self, QEnterEvent* event);
bool QTableView_override_virtual_leaveEvent(void* self, intptr_t slot);
void QTableView_virtualbase_leaveEvent(void* self, QEvent* event);
bool QTableView_override_virtual_moveEvent(void* self, intptr_t slot);
void QTableView_virtualbase_moveEvent(void* self, QMoveEvent* event);
bool QTableView_override_virtual_closeEvent(void* self, intptr_t slot);
void QTableView_virtualbase_closeEvent(void* self, QCloseEvent* event);
bool QTableView_override_virtual_tabletEvent(void* self, intptr_t slot);
void QTableView_virtualbase_tabletEvent(void* self, QTabletEvent* event);
bool QTableView_override_virtual_actionEvent(void* self, intptr_t slot);
void QTableView_virtualbase_actionEvent(void* self, QActionEvent* event);
bool QTableView_override_virtual_showEvent(void* self, intptr_t slot);
void QTableView_virtualbase_showEvent(void* self, QShowEvent* event);
bool QTableView_override_virtual_hideEvent(void* self, intptr_t slot);
void QTableView_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QTableView_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QTableView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
bool QTableView_override_virtual_metric(void* self, intptr_t slot);
int QTableView_virtualbase_metric(const void* self, int param1);
bool QTableView_override_virtual_initPainter(void* self, intptr_t slot);
void QTableView_virtualbase_initPainter(const void* self, QPainter* painter);
bool QTableView_override_virtual_redirected(void* self, intptr_t slot);
QPaintDevice* QTableView_virtualbase_redirected(const void* self, QPoint* offset);
bool QTableView_override_virtual_sharedPainter(void* self, intptr_t slot);
QPainter* QTableView_virtualbase_sharedPainter(const void* self);
bool QTableView_override_virtual_childEvent(void* self, intptr_t slot);
void QTableView_virtualbase_childEvent(void* self, QChildEvent* event);
bool QTableView_override_virtual_customEvent(void* self, intptr_t slot);
void QTableView_virtualbase_customEvent(void* self, QEvent* event);
bool QTableView_override_virtual_connectNotify(void* self, intptr_t slot);
void QTableView_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QTableView_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QTableView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QTableView_staticMetaObject();
void QTableView_delete(QTableView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
