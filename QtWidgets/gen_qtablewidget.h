#pragma once
#ifndef MIQT_QTWIDGETS_GEN_QTABLEWIDGET_H
#define MIQT_QTWIDGETS_GEN_QTABLEWIDGET_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractItemView;
class QAbstractScrollArea;
class QActionEvent;
class QBrush;
class QChildEvent;
class QCloseEvent;
class QColor;
class QContextMenuEvent;
class QDataStream;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEvent;
class QFocusEvent;
class QFont;
class QFrame;
class QHideEvent;
class QIcon;
class QInputMethodEvent;
class QItemSelection;
class QItemSelectionModel;
class QKeyEvent;
class QMargins;
class QMetaMethod;
class QMetaObject;
class QMimeData;
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
class QTableWidget;
class QTableWidgetItem;
class QTableWidgetSelectionRange;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractItemView QAbstractItemView;
typedef struct QAbstractScrollArea QAbstractScrollArea;
typedef struct QActionEvent QActionEvent;
typedef struct QBrush QBrush;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QColor QColor;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDataStream QDataStream;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QFont QFont;
typedef struct QFrame QFrame;
typedef struct QHideEvent QHideEvent;
typedef struct QIcon QIcon;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QItemSelection QItemSelection;
typedef struct QItemSelectionModel QItemSelectionModel;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMargins QMargins;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMimeData QMimeData;
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
typedef struct QTableWidget QTableWidget;
typedef struct QTableWidgetItem QTableWidgetItem;
typedef struct QTableWidgetSelectionRange QTableWidgetSelectionRange;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

QTableWidgetSelectionRange* QTableWidgetSelectionRange_new();
QTableWidgetSelectionRange* QTableWidgetSelectionRange_new2(int top, int left, int bottom, int right);
QTableWidgetSelectionRange* QTableWidgetSelectionRange_new3(QTableWidgetSelectionRange* other);
void QTableWidgetSelectionRange_operatorAssign(QTableWidgetSelectionRange* self, QTableWidgetSelectionRange* other);
int QTableWidgetSelectionRange_topRow(const QTableWidgetSelectionRange* self);
int QTableWidgetSelectionRange_bottomRow(const QTableWidgetSelectionRange* self);
int QTableWidgetSelectionRange_leftColumn(const QTableWidgetSelectionRange* self);
int QTableWidgetSelectionRange_rightColumn(const QTableWidgetSelectionRange* self);
int QTableWidgetSelectionRange_rowCount(const QTableWidgetSelectionRange* self);
int QTableWidgetSelectionRange_columnCount(const QTableWidgetSelectionRange* self);
void QTableWidgetSelectionRange_delete(QTableWidgetSelectionRange* self);

QTableWidgetItem* QTableWidgetItem_new();
QTableWidgetItem* QTableWidgetItem_new2(struct miqt_string text);
QTableWidgetItem* QTableWidgetItem_new3(QIcon* icon, struct miqt_string text);
QTableWidgetItem* QTableWidgetItem_new4(QTableWidgetItem* other);
QTableWidgetItem* QTableWidgetItem_new5(int type);
QTableWidgetItem* QTableWidgetItem_new6(struct miqt_string text, int type);
QTableWidgetItem* QTableWidgetItem_new7(QIcon* icon, struct miqt_string text, int type);
QTableWidgetItem* QTableWidgetItem_clone(const QTableWidgetItem* self);
QTableWidget* QTableWidgetItem_tableWidget(const QTableWidgetItem* self);
int QTableWidgetItem_row(const QTableWidgetItem* self);
int QTableWidgetItem_column(const QTableWidgetItem* self);
void QTableWidgetItem_setSelected(QTableWidgetItem* self, bool select);
bool QTableWidgetItem_isSelected(const QTableWidgetItem* self);
int QTableWidgetItem_flags(const QTableWidgetItem* self);
void QTableWidgetItem_setFlags(QTableWidgetItem* self, int flags);
struct miqt_string QTableWidgetItem_text(const QTableWidgetItem* self);
void QTableWidgetItem_setText(QTableWidgetItem* self, struct miqt_string text);
QIcon* QTableWidgetItem_icon(const QTableWidgetItem* self);
void QTableWidgetItem_setIcon(QTableWidgetItem* self, QIcon* icon);
struct miqt_string QTableWidgetItem_statusTip(const QTableWidgetItem* self);
void QTableWidgetItem_setStatusTip(QTableWidgetItem* self, struct miqt_string statusTip);
struct miqt_string QTableWidgetItem_toolTip(const QTableWidgetItem* self);
void QTableWidgetItem_setToolTip(QTableWidgetItem* self, struct miqt_string toolTip);
struct miqt_string QTableWidgetItem_whatsThis(const QTableWidgetItem* self);
void QTableWidgetItem_setWhatsThis(QTableWidgetItem* self, struct miqt_string whatsThis);
QFont* QTableWidgetItem_font(const QTableWidgetItem* self);
void QTableWidgetItem_setFont(QTableWidgetItem* self, QFont* font);
int QTableWidgetItem_textAlignment(const QTableWidgetItem* self);
void QTableWidgetItem_setTextAlignment(QTableWidgetItem* self, int alignment);
QColor* QTableWidgetItem_backgroundColor(const QTableWidgetItem* self);
void QTableWidgetItem_setBackgroundColor(QTableWidgetItem* self, QColor* color);
QBrush* QTableWidgetItem_background(const QTableWidgetItem* self);
void QTableWidgetItem_setBackground(QTableWidgetItem* self, QBrush* brush);
QColor* QTableWidgetItem_textColor(const QTableWidgetItem* self);
void QTableWidgetItem_setTextColor(QTableWidgetItem* self, QColor* color);
QBrush* QTableWidgetItem_foreground(const QTableWidgetItem* self);
void QTableWidgetItem_setForeground(QTableWidgetItem* self, QBrush* brush);
int QTableWidgetItem_checkState(const QTableWidgetItem* self);
void QTableWidgetItem_setCheckState(QTableWidgetItem* self, int state);
QSize* QTableWidgetItem_sizeHint(const QTableWidgetItem* self);
void QTableWidgetItem_setSizeHint(QTableWidgetItem* self, QSize* size);
QVariant* QTableWidgetItem_data(const QTableWidgetItem* self, int role);
void QTableWidgetItem_setData(QTableWidgetItem* self, int role, QVariant* value);
bool QTableWidgetItem_operatorLesser(const QTableWidgetItem* self, QTableWidgetItem* other);
void QTableWidgetItem_read(QTableWidgetItem* self, QDataStream* in);
void QTableWidgetItem_write(const QTableWidgetItem* self, QDataStream* out);
void QTableWidgetItem_operatorAssign(QTableWidgetItem* self, QTableWidgetItem* other);
int QTableWidgetItem_type(const QTableWidgetItem* self);
bool QTableWidgetItem_override_virtual_clone(void* self, intptr_t slot);
QTableWidgetItem* QTableWidgetItem_virtualbase_clone(const void* self);
bool QTableWidgetItem_override_virtual_data(void* self, intptr_t slot);
QVariant* QTableWidgetItem_virtualbase_data(const void* self, int role);
bool QTableWidgetItem_override_virtual_setData(void* self, intptr_t slot);
void QTableWidgetItem_virtualbase_setData(void* self, int role, QVariant* value);
bool QTableWidgetItem_override_virtual_operatorLesser(void* self, intptr_t slot);
bool QTableWidgetItem_virtualbase_operatorLesser(const void* self, QTableWidgetItem* other);
bool QTableWidgetItem_override_virtual_read(void* self, intptr_t slot);
void QTableWidgetItem_virtualbase_read(void* self, QDataStream* in);
bool QTableWidgetItem_override_virtual_write(void* self, intptr_t slot);
void QTableWidgetItem_virtualbase_write(const void* self, QDataStream* out);
void QTableWidgetItem_delete(QTableWidgetItem* self);

QTableWidget* QTableWidget_new(QWidget* parent);
QTableWidget* QTableWidget_new2();
QTableWidget* QTableWidget_new3(int rows, int columns);
QTableWidget* QTableWidget_new4(int rows, int columns, QWidget* parent);
void QTableWidget_virtbase(QTableWidget* src, QTableView** outptr_QTableView);
QMetaObject* QTableWidget_metaObject(const QTableWidget* self);
void* QTableWidget_metacast(QTableWidget* self, const char* param1);
int QTableWidget_metacall(QTableWidget* self, int param1, int param2, void** param3);
struct miqt_string QTableWidget_tr(const char* s);
struct miqt_string QTableWidget_trUtf8(const char* s);
void QTableWidget_setRowCount(QTableWidget* self, int rows);
int QTableWidget_rowCount(const QTableWidget* self);
void QTableWidget_setColumnCount(QTableWidget* self, int columns);
int QTableWidget_columnCount(const QTableWidget* self);
int QTableWidget_row(const QTableWidget* self, QTableWidgetItem* item);
int QTableWidget_column(const QTableWidget* self, QTableWidgetItem* item);
QTableWidgetItem* QTableWidget_item(const QTableWidget* self, int row, int column);
void QTableWidget_setItem(QTableWidget* self, int row, int column, QTableWidgetItem* item);
QTableWidgetItem* QTableWidget_takeItem(QTableWidget* self, int row, int column);
QTableWidgetItem* QTableWidget_verticalHeaderItem(const QTableWidget* self, int row);
void QTableWidget_setVerticalHeaderItem(QTableWidget* self, int row, QTableWidgetItem* item);
QTableWidgetItem* QTableWidget_takeVerticalHeaderItem(QTableWidget* self, int row);
QTableWidgetItem* QTableWidget_horizontalHeaderItem(const QTableWidget* self, int column);
void QTableWidget_setHorizontalHeaderItem(QTableWidget* self, int column, QTableWidgetItem* item);
QTableWidgetItem* QTableWidget_takeHorizontalHeaderItem(QTableWidget* self, int column);
void QTableWidget_setVerticalHeaderLabels(QTableWidget* self, struct miqt_array /* of struct miqt_string */  labels);
void QTableWidget_setHorizontalHeaderLabels(QTableWidget* self, struct miqt_array /* of struct miqt_string */  labels);
int QTableWidget_currentRow(const QTableWidget* self);
int QTableWidget_currentColumn(const QTableWidget* self);
QTableWidgetItem* QTableWidget_currentItem(const QTableWidget* self);
void QTableWidget_setCurrentItem(QTableWidget* self, QTableWidgetItem* item);
void QTableWidget_setCurrentItem2(QTableWidget* self, QTableWidgetItem* item, int command);
void QTableWidget_setCurrentCell(QTableWidget* self, int row, int column);
void QTableWidget_setCurrentCell2(QTableWidget* self, int row, int column, int command);
void QTableWidget_sortItems(QTableWidget* self, int column);
void QTableWidget_setSortingEnabled(QTableWidget* self, bool enable);
bool QTableWidget_isSortingEnabled(const QTableWidget* self);
void QTableWidget_editItem(QTableWidget* self, QTableWidgetItem* item);
void QTableWidget_openPersistentEditor(QTableWidget* self, QTableWidgetItem* item);
void QTableWidget_closePersistentEditor(QTableWidget* self, QTableWidgetItem* item);
bool QTableWidget_isPersistentEditorOpen(const QTableWidget* self, QTableWidgetItem* item);
QWidget* QTableWidget_cellWidget(const QTableWidget* self, int row, int column);
void QTableWidget_setCellWidget(QTableWidget* self, int row, int column, QWidget* widget);
void QTableWidget_removeCellWidget(QTableWidget* self, int row, int column);
bool QTableWidget_isItemSelected(const QTableWidget* self, QTableWidgetItem* item);
void QTableWidget_setItemSelected(QTableWidget* self, QTableWidgetItem* item, bool select);
void QTableWidget_setRangeSelected(QTableWidget* self, QTableWidgetSelectionRange* range, bool select);
struct miqt_array /* of QTableWidgetSelectionRange* */  QTableWidget_selectedRanges(const QTableWidget* self);
struct miqt_array /* of QTableWidgetItem* */  QTableWidget_selectedItems(const QTableWidget* self);
struct miqt_array /* of QTableWidgetItem* */  QTableWidget_findItems(const QTableWidget* self, struct miqt_string text, int flags);
int QTableWidget_visualRow(const QTableWidget* self, int logicalRow);
int QTableWidget_visualColumn(const QTableWidget* self, int logicalColumn);
QTableWidgetItem* QTableWidget_itemAt(const QTableWidget* self, QPoint* p);
QTableWidgetItem* QTableWidget_itemAt2(const QTableWidget* self, int x, int y);
QRect* QTableWidget_visualItemRect(const QTableWidget* self, QTableWidgetItem* item);
QTableWidgetItem* QTableWidget_itemPrototype(const QTableWidget* self);
void QTableWidget_setItemPrototype(QTableWidget* self, QTableWidgetItem* item);
void QTableWidget_scrollToItem(QTableWidget* self, QTableWidgetItem* item);
void QTableWidget_insertRow(QTableWidget* self, int row);
void QTableWidget_insertColumn(QTableWidget* self, int column);
void QTableWidget_removeRow(QTableWidget* self, int row);
void QTableWidget_removeColumn(QTableWidget* self, int column);
void QTableWidget_clear(QTableWidget* self);
void QTableWidget_clearContents(QTableWidget* self);
void QTableWidget_itemPressed(QTableWidget* self, QTableWidgetItem* item);
void QTableWidget_connect_itemPressed(QTableWidget* self, intptr_t slot);
void QTableWidget_itemClicked(QTableWidget* self, QTableWidgetItem* item);
void QTableWidget_connect_itemClicked(QTableWidget* self, intptr_t slot);
void QTableWidget_itemDoubleClicked(QTableWidget* self, QTableWidgetItem* item);
void QTableWidget_connect_itemDoubleClicked(QTableWidget* self, intptr_t slot);
void QTableWidget_itemActivated(QTableWidget* self, QTableWidgetItem* item);
void QTableWidget_connect_itemActivated(QTableWidget* self, intptr_t slot);
void QTableWidget_itemEntered(QTableWidget* self, QTableWidgetItem* item);
void QTableWidget_connect_itemEntered(QTableWidget* self, intptr_t slot);
void QTableWidget_itemChanged(QTableWidget* self, QTableWidgetItem* item);
void QTableWidget_connect_itemChanged(QTableWidget* self, intptr_t slot);
void QTableWidget_currentItemChanged(QTableWidget* self, QTableWidgetItem* current, QTableWidgetItem* previous);
void QTableWidget_connect_currentItemChanged(QTableWidget* self, intptr_t slot);
void QTableWidget_itemSelectionChanged(QTableWidget* self);
void QTableWidget_connect_itemSelectionChanged(QTableWidget* self, intptr_t slot);
void QTableWidget_cellPressed(QTableWidget* self, int row, int column);
void QTableWidget_connect_cellPressed(QTableWidget* self, intptr_t slot);
void QTableWidget_cellClicked(QTableWidget* self, int row, int column);
void QTableWidget_connect_cellClicked(QTableWidget* self, intptr_t slot);
void QTableWidget_cellDoubleClicked(QTableWidget* self, int row, int column);
void QTableWidget_connect_cellDoubleClicked(QTableWidget* self, intptr_t slot);
void QTableWidget_cellActivated(QTableWidget* self, int row, int column);
void QTableWidget_connect_cellActivated(QTableWidget* self, intptr_t slot);
void QTableWidget_cellEntered(QTableWidget* self, int row, int column);
void QTableWidget_connect_cellEntered(QTableWidget* self, intptr_t slot);
void QTableWidget_cellChanged(QTableWidget* self, int row, int column);
void QTableWidget_connect_cellChanged(QTableWidget* self, intptr_t slot);
void QTableWidget_currentCellChanged(QTableWidget* self, int currentRow, int currentColumn, int previousRow, int previousColumn);
void QTableWidget_connect_currentCellChanged(QTableWidget* self, intptr_t slot);
bool QTableWidget_event(QTableWidget* self, QEvent* e);
struct miqt_array /* of struct miqt_string */  QTableWidget_mimeTypes(const QTableWidget* self);
QMimeData* QTableWidget_mimeData(const QTableWidget* self, struct miqt_array /* of QTableWidgetItem* */  items);
bool QTableWidget_dropMimeData(QTableWidget* self, int row, int column, QMimeData* data, int action);
int QTableWidget_supportedDropActions(const QTableWidget* self);
void QTableWidget_dropEvent(QTableWidget* self, QDropEvent* event);
struct miqt_string QTableWidget_tr2(const char* s, const char* c);
struct miqt_string QTableWidget_tr3(const char* s, const char* c, int n);
struct miqt_string QTableWidget_trUtf82(const char* s, const char* c);
struct miqt_string QTableWidget_trUtf83(const char* s, const char* c, int n);
void QTableWidget_sortItems2(QTableWidget* self, int column, int order);
void QTableWidget_scrollToItem2(QTableWidget* self, QTableWidgetItem* item, int hint);
bool QTableWidget_override_virtual_metaObject(void* self, intptr_t slot);
QMetaObject* QTableWidget_virtualbase_metaObject(const void* self);
bool QTableWidget_override_virtual_metacast(void* self, intptr_t slot);
void* QTableWidget_virtualbase_metacast(void* self, const char* param1);
bool QTableWidget_override_virtual_metacall(void* self, intptr_t slot);
int QTableWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QTableWidget_override_virtual_event(void* self, intptr_t slot);
bool QTableWidget_virtualbase_event(void* self, QEvent* e);
bool QTableWidget_override_virtual_mimeTypes(void* self, intptr_t slot);
struct miqt_array /* of struct miqt_string */  QTableWidget_virtualbase_mimeTypes(const void* self);
bool QTableWidget_override_virtual_mimeData(void* self, intptr_t slot);
QMimeData* QTableWidget_virtualbase_mimeData(const void* self, struct miqt_array /* of QTableWidgetItem* */  items);
bool QTableWidget_override_virtual_dropMimeData(void* self, intptr_t slot);
bool QTableWidget_virtualbase_dropMimeData(void* self, int row, int column, QMimeData* data, int action);
bool QTableWidget_override_virtual_supportedDropActions(void* self, intptr_t slot);
int QTableWidget_virtualbase_supportedDropActions(const void* self);
bool QTableWidget_override_virtual_dropEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QTableWidget_override_virtual_setRootIndex(void* self, intptr_t slot);
void QTableWidget_virtualbase_setRootIndex(void* self, QModelIndex* index);
bool QTableWidget_override_virtual_setSelectionModel(void* self, intptr_t slot);
void QTableWidget_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel);
bool QTableWidget_override_virtual_doItemsLayout(void* self, intptr_t slot);
void QTableWidget_virtualbase_doItemsLayout(void* self);
bool QTableWidget_override_virtual_visualRect(void* self, intptr_t slot);
QRect* QTableWidget_virtualbase_visualRect(const void* self, QModelIndex* index);
bool QTableWidget_override_virtual_scrollTo(void* self, intptr_t slot);
void QTableWidget_virtualbase_scrollTo(void* self, QModelIndex* index, int hint);
bool QTableWidget_override_virtual_indexAt(void* self, intptr_t slot);
QModelIndex* QTableWidget_virtualbase_indexAt(const void* self, QPoint* p);
bool QTableWidget_override_virtual_scrollContentsBy(void* self, intptr_t slot);
void QTableWidget_virtualbase_scrollContentsBy(void* self, int dx, int dy);
bool QTableWidget_override_virtual_viewOptions(void* self, intptr_t slot);
QStyleOptionViewItem* QTableWidget_virtualbase_viewOptions(const void* self);
bool QTableWidget_override_virtual_paintEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_paintEvent(void* self, QPaintEvent* e);
bool QTableWidget_override_virtual_timerEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QTableWidget_override_virtual_horizontalOffset(void* self, intptr_t slot);
int QTableWidget_virtualbase_horizontalOffset(const void* self);
bool QTableWidget_override_virtual_verticalOffset(void* self, intptr_t slot);
int QTableWidget_virtualbase_verticalOffset(const void* self);
bool QTableWidget_override_virtual_moveCursor(void* self, intptr_t slot);
QModelIndex* QTableWidget_virtualbase_moveCursor(void* self, int cursorAction, int modifiers);
bool QTableWidget_override_virtual_setSelection(void* self, intptr_t slot);
void QTableWidget_virtualbase_setSelection(void* self, QRect* rect, int command);
bool QTableWidget_override_virtual_visualRegionForSelection(void* self, intptr_t slot);
QRegion* QTableWidget_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection);
bool QTableWidget_override_virtual_selectedIndexes(void* self, intptr_t slot);
struct miqt_array /* of QModelIndex* */  QTableWidget_virtualbase_selectedIndexes(const void* self);
bool QTableWidget_override_virtual_updateGeometries(void* self, intptr_t slot);
void QTableWidget_virtualbase_updateGeometries(void* self);
bool QTableWidget_override_virtual_viewportSizeHint(void* self, intptr_t slot);
QSize* QTableWidget_virtualbase_viewportSizeHint(const void* self);
bool QTableWidget_override_virtual_sizeHintForRow(void* self, intptr_t slot);
int QTableWidget_virtualbase_sizeHintForRow(const void* self, int row);
bool QTableWidget_override_virtual_sizeHintForColumn(void* self, intptr_t slot);
int QTableWidget_virtualbase_sizeHintForColumn(const void* self, int column);
bool QTableWidget_override_virtual_verticalScrollbarAction(void* self, intptr_t slot);
void QTableWidget_virtualbase_verticalScrollbarAction(void* self, int action);
bool QTableWidget_override_virtual_horizontalScrollbarAction(void* self, intptr_t slot);
void QTableWidget_virtualbase_horizontalScrollbarAction(void* self, int action);
bool QTableWidget_override_virtual_isIndexHidden(void* self, intptr_t slot);
bool QTableWidget_virtualbase_isIndexHidden(const void* self, QModelIndex* index);
bool QTableWidget_override_virtual_selectionChanged(void* self, intptr_t slot);
void QTableWidget_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected);
bool QTableWidget_override_virtual_currentChanged(void* self, intptr_t slot);
void QTableWidget_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous);
bool QTableWidget_override_virtual_keyboardSearch(void* self, intptr_t slot);
void QTableWidget_virtualbase_keyboardSearch(void* self, struct miqt_string search);
bool QTableWidget_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QTableWidget_virtualbase_inputMethodQuery(const void* self, int query);
bool QTableWidget_override_virtual_reset(void* self, intptr_t slot);
void QTableWidget_virtualbase_reset(void* self);
bool QTableWidget_override_virtual_selectAll(void* self, intptr_t slot);
void QTableWidget_virtualbase_selectAll(void* self);
bool QTableWidget_override_virtual_dataChanged(void* self, intptr_t slot);
void QTableWidget_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);
bool QTableWidget_override_virtual_rowsInserted(void* self, intptr_t slot);
void QTableWidget_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end);
bool QTableWidget_override_virtual_rowsAboutToBeRemoved(void* self, intptr_t slot);
void QTableWidget_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end);
bool QTableWidget_override_virtual_updateEditorData(void* self, intptr_t slot);
void QTableWidget_virtualbase_updateEditorData(void* self);
bool QTableWidget_override_virtual_updateEditorGeometries(void* self, intptr_t slot);
void QTableWidget_virtualbase_updateEditorGeometries(void* self);
bool QTableWidget_override_virtual_verticalScrollbarValueChanged(void* self, intptr_t slot);
void QTableWidget_virtualbase_verticalScrollbarValueChanged(void* self, int value);
bool QTableWidget_override_virtual_horizontalScrollbarValueChanged(void* self, intptr_t slot);
void QTableWidget_virtualbase_horizontalScrollbarValueChanged(void* self, int value);
bool QTableWidget_override_virtual_closeEditor(void* self, intptr_t slot);
void QTableWidget_virtualbase_closeEditor(void* self, QWidget* editor, int hint);
bool QTableWidget_override_virtual_commitData(void* self, intptr_t slot);
void QTableWidget_virtualbase_commitData(void* self, QWidget* editor);
bool QTableWidget_override_virtual_editorDestroyed(void* self, intptr_t slot);
void QTableWidget_virtualbase_editorDestroyed(void* self, QObject* editor);
bool QTableWidget_override_virtual_edit2(void* self, intptr_t slot);
bool QTableWidget_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event);
bool QTableWidget_override_virtual_selectionCommand(void* self, intptr_t slot);
int QTableWidget_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event);
bool QTableWidget_override_virtual_startDrag(void* self, intptr_t slot);
void QTableWidget_virtualbase_startDrag(void* self, int supportedActions);
bool QTableWidget_override_virtual_focusNextPrevChild(void* self, intptr_t slot);
bool QTableWidget_virtualbase_focusNextPrevChild(void* self, bool next);
bool QTableWidget_override_virtual_viewportEvent(void* self, intptr_t slot);
bool QTableWidget_virtualbase_viewportEvent(void* self, QEvent* event);
bool QTableWidget_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
bool QTableWidget_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
bool QTableWidget_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
bool QTableWidget_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
bool QTableWidget_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
bool QTableWidget_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
bool QTableWidget_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
bool QTableWidget_override_virtual_focusInEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event);
bool QTableWidget_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
bool QTableWidget_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
bool QTableWidget_override_virtual_resizeEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event);
bool QTableWidget_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);
bool QTableWidget_override_virtual_eventFilter(void* self, intptr_t slot);
bool QTableWidget_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);
bool QTableWidget_override_virtual_minimumSizeHint(void* self, intptr_t slot);
QSize* QTableWidget_virtualbase_minimumSizeHint(const void* self);
bool QTableWidget_override_virtual_sizeHint(void* self, intptr_t slot);
QSize* QTableWidget_virtualbase_sizeHint(const void* self);
bool QTableWidget_override_virtual_setupViewport(void* self, intptr_t slot);
void QTableWidget_virtualbase_setupViewport(void* self, QWidget* viewport);
bool QTableWidget_override_virtual_wheelEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_wheelEvent(void* self, QWheelEvent* param1);
bool QTableWidget_override_virtual_contextMenuEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
bool QTableWidget_override_virtual_changeEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_changeEvent(void* self, QEvent* param1);
bool QTableWidget_override_virtual_devType(void* self, intptr_t slot);
int QTableWidget_virtualbase_devType(const void* self);
bool QTableWidget_override_virtual_setVisible(void* self, intptr_t slot);
void QTableWidget_virtualbase_setVisible(void* self, bool visible);
bool QTableWidget_override_virtual_heightForWidth(void* self, intptr_t slot);
int QTableWidget_virtualbase_heightForWidth(const void* self, int param1);
bool QTableWidget_override_virtual_hasHeightForWidth(void* self, intptr_t slot);
bool QTableWidget_virtualbase_hasHeightForWidth(const void* self);
bool QTableWidget_override_virtual_paintEngine(void* self, intptr_t slot);
QPaintEngine* QTableWidget_virtualbase_paintEngine(const void* self);
bool QTableWidget_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
bool QTableWidget_override_virtual_enterEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_enterEvent(void* self, QEvent* event);
bool QTableWidget_override_virtual_leaveEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_leaveEvent(void* self, QEvent* event);
bool QTableWidget_override_virtual_moveEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_moveEvent(void* self, QMoveEvent* event);
bool QTableWidget_override_virtual_closeEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_closeEvent(void* self, QCloseEvent* event);
bool QTableWidget_override_virtual_tabletEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event);
bool QTableWidget_override_virtual_actionEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_actionEvent(void* self, QActionEvent* event);
bool QTableWidget_override_virtual_showEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_showEvent(void* self, QShowEvent* event);
bool QTableWidget_override_virtual_hideEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QTableWidget_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QTableWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
bool QTableWidget_override_virtual_metric(void* self, intptr_t slot);
int QTableWidget_virtualbase_metric(const void* self, int param1);
bool QTableWidget_override_virtual_initPainter(void* self, intptr_t slot);
void QTableWidget_virtualbase_initPainter(const void* self, QPainter* painter);
bool QTableWidget_override_virtual_redirected(void* self, intptr_t slot);
QPaintDevice* QTableWidget_virtualbase_redirected(const void* self, QPoint* offset);
bool QTableWidget_override_virtual_sharedPainter(void* self, intptr_t slot);
QPainter* QTableWidget_virtualbase_sharedPainter(const void* self);
bool QTableWidget_override_virtual_childEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_childEvent(void* self, QChildEvent* event);
bool QTableWidget_override_virtual_customEvent(void* self, intptr_t slot);
void QTableWidget_virtualbase_customEvent(void* self, QEvent* event);
bool QTableWidget_override_virtual_connectNotify(void* self, intptr_t slot);
void QTableWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QTableWidget_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QTableWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
struct miqt_array /* of QTableWidgetItem* */  QTableWidget_protectedbase_items(bool* _dynamic_cast_ok, const void* self, QMimeData* data);
QModelIndex* QTableWidget_protectedbase_indexFromItem(bool* _dynamic_cast_ok, const void* self, QTableWidgetItem* item);
QModelIndex* QTableWidget_protectedbase_indexFromItemWithItem(bool* _dynamic_cast_ok, const void* self, QTableWidgetItem* item);
QTableWidgetItem* QTableWidget_protectedbase_itemFromIndex(bool* _dynamic_cast_ok, const void* self, QModelIndex* index);
void QTableWidget_protectedbase_rowMoved(bool* _dynamic_cast_ok, void* self, int row, int oldIndex, int newIndex);
void QTableWidget_protectedbase_columnMoved(bool* _dynamic_cast_ok, void* self, int column, int oldIndex, int newIndex);
void QTableWidget_protectedbase_rowResized(bool* _dynamic_cast_ok, void* self, int row, int oldHeight, int newHeight);
void QTableWidget_protectedbase_columnResized(bool* _dynamic_cast_ok, void* self, int column, int oldWidth, int newWidth);
void QTableWidget_protectedbase_rowCountChanged(bool* _dynamic_cast_ok, void* self, int oldCount, int newCount);
void QTableWidget_protectedbase_columnCountChanged(bool* _dynamic_cast_ok, void* self, int oldCount, int newCount);
void QTableWidget_protectedbase_setHorizontalStepsPerItem(bool* _dynamic_cast_ok, void* self, int steps);
int QTableWidget_protectedbase_horizontalStepsPerItem(bool* _dynamic_cast_ok, const void* self);
void QTableWidget_protectedbase_setVerticalStepsPerItem(bool* _dynamic_cast_ok, void* self, int steps);
int QTableWidget_protectedbase_verticalStepsPerItem(bool* _dynamic_cast_ok, const void* self);
int QTableWidget_protectedbase_state(bool* _dynamic_cast_ok, const void* self);
void QTableWidget_protectedbase_setState(bool* _dynamic_cast_ok, void* self, int state);
void QTableWidget_protectedbase_scheduleDelayedItemsLayout(bool* _dynamic_cast_ok, void* self);
void QTableWidget_protectedbase_executeDelayedItemsLayout(bool* _dynamic_cast_ok, void* self);
void QTableWidget_protectedbase_setDirtyRegion(bool* _dynamic_cast_ok, void* self, QRegion* region);
void QTableWidget_protectedbase_scrollDirtyRegion(bool* _dynamic_cast_ok, void* self, int dx, int dy);
QPoint* QTableWidget_protectedbase_dirtyRegionOffset(bool* _dynamic_cast_ok, const void* self);
void QTableWidget_protectedbase_startAutoScroll(bool* _dynamic_cast_ok, void* self);
void QTableWidget_protectedbase_stopAutoScroll(bool* _dynamic_cast_ok, void* self);
void QTableWidget_protectedbase_doAutoScroll(bool* _dynamic_cast_ok, void* self);
int QTableWidget_protectedbase_dropIndicatorPosition(bool* _dynamic_cast_ok, const void* self);
void QTableWidget_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom);
QMargins* QTableWidget_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self);
void QTableWidget_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1);
void QTableWidget_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option);
void QTableWidget_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QTableWidget_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QTableWidget_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QTableWidget_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QTableWidget_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QTableWidget_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QTableWidget_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QTableWidget_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QTableWidget_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QTableWidget_staticMetaObject();
void QTableWidget_delete(QTableWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
