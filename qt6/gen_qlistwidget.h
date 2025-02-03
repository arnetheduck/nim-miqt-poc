#pragma once
#ifndef MIQT_QT6_GEN_QLISTWIDGET_H
#define MIQT_QT6_GEN_QLISTWIDGET_H

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
class QAbstractItemView;
class QAbstractScrollArea;
class QActionEvent;
class QBrush;
class QChildEvent;
class QCloseEvent;
class QContextMenuEvent;
class QDataStream;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEnterEvent;
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
class QListView;
class QListWidget;
class QListWidgetItem;
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
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractItemDelegate QAbstractItemDelegate;
typedef struct QAbstractItemView QAbstractItemView;
typedef struct QAbstractScrollArea QAbstractScrollArea;
typedef struct QActionEvent QActionEvent;
typedef struct QBrush QBrush;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDataStream QDataStream;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEnterEvent QEnterEvent;
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
typedef struct QListView QListView;
typedef struct QListWidget QListWidget;
typedef struct QListWidgetItem QListWidgetItem;
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
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

QListWidgetItem* QListWidgetItem_new();
QListWidgetItem* QListWidgetItem_new2(struct miqt_string text);
QListWidgetItem* QListWidgetItem_new3(QIcon* icon, struct miqt_string text);
QListWidgetItem* QListWidgetItem_new4(QListWidgetItem* other);
QListWidgetItem* QListWidgetItem_new5(QListWidget* listview);
QListWidgetItem* QListWidgetItem_new6(QListWidget* listview, int type);
QListWidgetItem* QListWidgetItem_new7(struct miqt_string text, QListWidget* listview);
QListWidgetItem* QListWidgetItem_new8(struct miqt_string text, QListWidget* listview, int type);
QListWidgetItem* QListWidgetItem_new9(QIcon* icon, struct miqt_string text, QListWidget* listview);
QListWidgetItem* QListWidgetItem_new10(QIcon* icon, struct miqt_string text, QListWidget* listview, int type);
QListWidgetItem* QListWidgetItem_clone(const QListWidgetItem* self);
QListWidget* QListWidgetItem_listWidget(const QListWidgetItem* self);
void QListWidgetItem_setSelected(QListWidgetItem* self, bool select);
bool QListWidgetItem_isSelected(const QListWidgetItem* self);
void QListWidgetItem_setHidden(QListWidgetItem* self, bool hide);
bool QListWidgetItem_isHidden(const QListWidgetItem* self);
int QListWidgetItem_flags(const QListWidgetItem* self);
void QListWidgetItem_setFlags(QListWidgetItem* self, int flags);
struct miqt_string QListWidgetItem_text(const QListWidgetItem* self);
void QListWidgetItem_setText(QListWidgetItem* self, struct miqt_string text);
QIcon* QListWidgetItem_icon(const QListWidgetItem* self);
void QListWidgetItem_setIcon(QListWidgetItem* self, QIcon* icon);
struct miqt_string QListWidgetItem_statusTip(const QListWidgetItem* self);
void QListWidgetItem_setStatusTip(QListWidgetItem* self, struct miqt_string statusTip);
struct miqt_string QListWidgetItem_toolTip(const QListWidgetItem* self);
void QListWidgetItem_setToolTip(QListWidgetItem* self, struct miqt_string toolTip);
struct miqt_string QListWidgetItem_whatsThis(const QListWidgetItem* self);
void QListWidgetItem_setWhatsThis(QListWidgetItem* self, struct miqt_string whatsThis);
QFont* QListWidgetItem_font(const QListWidgetItem* self);
void QListWidgetItem_setFont(QListWidgetItem* self, QFont* font);
int QListWidgetItem_textAlignment(const QListWidgetItem* self);
void QListWidgetItem_setTextAlignment(QListWidgetItem* self, int alignment);
void QListWidgetItem_setTextAlignmentWithAlignment(QListWidgetItem* self, int alignment);
void QListWidgetItem_setTextAlignment2(QListWidgetItem* self, int alignment);
QBrush* QListWidgetItem_background(const QListWidgetItem* self);
void QListWidgetItem_setBackground(QListWidgetItem* self, QBrush* brush);
QBrush* QListWidgetItem_foreground(const QListWidgetItem* self);
void QListWidgetItem_setForeground(QListWidgetItem* self, QBrush* brush);
int QListWidgetItem_checkState(const QListWidgetItem* self);
void QListWidgetItem_setCheckState(QListWidgetItem* self, int state);
QSize* QListWidgetItem_sizeHint(const QListWidgetItem* self);
void QListWidgetItem_setSizeHint(QListWidgetItem* self, QSize* size);
QVariant* QListWidgetItem_data(const QListWidgetItem* self, int role);
void QListWidgetItem_setData(QListWidgetItem* self, int role, QVariant* value);
bool QListWidgetItem_operatorLesser(const QListWidgetItem* self, QListWidgetItem* other);
void QListWidgetItem_read(QListWidgetItem* self, QDataStream* in);
void QListWidgetItem_write(const QListWidgetItem* self, QDataStream* out);
void QListWidgetItem_operatorAssign(QListWidgetItem* self, QListWidgetItem* other);
int QListWidgetItem_type(const QListWidgetItem* self);
bool QListWidgetItem_override_virtual_clone(void* self, intptr_t slot);
QListWidgetItem* QListWidgetItem_virtualbase_clone(const void* self);
bool QListWidgetItem_override_virtual_data(void* self, intptr_t slot);
QVariant* QListWidgetItem_virtualbase_data(const void* self, int role);
bool QListWidgetItem_override_virtual_setData(void* self, intptr_t slot);
void QListWidgetItem_virtualbase_setData(void* self, int role, QVariant* value);
bool QListWidgetItem_override_virtual_operatorLesser(void* self, intptr_t slot);
bool QListWidgetItem_virtualbase_operatorLesser(const void* self, QListWidgetItem* other);
bool QListWidgetItem_override_virtual_read(void* self, intptr_t slot);
void QListWidgetItem_virtualbase_read(void* self, QDataStream* in);
bool QListWidgetItem_override_virtual_write(void* self, intptr_t slot);
void QListWidgetItem_virtualbase_write(const void* self, QDataStream* out);
void QListWidgetItem_delete(QListWidgetItem* self);

QListWidget* QListWidget_new(QWidget* parent);
QListWidget* QListWidget_new2();
void QListWidget_virtbase(QListWidget* src, QListView** outptr_QListView);
QMetaObject* QListWidget_metaObject(const QListWidget* self);
void* QListWidget_metacast(QListWidget* self, const char* param1);
int QListWidget_metacall(QListWidget* self, int param1, int param2, void** param3);
struct miqt_string QListWidget_tr(const char* s);
void QListWidget_setSelectionModel(QListWidget* self, QItemSelectionModel* selectionModel);
QListWidgetItem* QListWidget_item(const QListWidget* self, int row);
int QListWidget_row(const QListWidget* self, QListWidgetItem* item);
void QListWidget_insertItem(QListWidget* self, int row, QListWidgetItem* item);
void QListWidget_insertItem2(QListWidget* self, int row, struct miqt_string label);
void QListWidget_insertItems(QListWidget* self, int row, struct miqt_array /* of struct miqt_string */  labels);
void QListWidget_addItem(QListWidget* self, struct miqt_string label);
void QListWidget_addItemWithItem(QListWidget* self, QListWidgetItem* item);
void QListWidget_addItems(QListWidget* self, struct miqt_array /* of struct miqt_string */  labels);
QListWidgetItem* QListWidget_takeItem(QListWidget* self, int row);
int QListWidget_count(const QListWidget* self);
QListWidgetItem* QListWidget_currentItem(const QListWidget* self);
void QListWidget_setCurrentItem(QListWidget* self, QListWidgetItem* item);
void QListWidget_setCurrentItem2(QListWidget* self, QListWidgetItem* item, int command);
int QListWidget_currentRow(const QListWidget* self);
void QListWidget_setCurrentRow(QListWidget* self, int row);
void QListWidget_setCurrentRow2(QListWidget* self, int row, int command);
QListWidgetItem* QListWidget_itemAt(const QListWidget* self, QPoint* p);
QListWidgetItem* QListWidget_itemAt2(const QListWidget* self, int x, int y);
QRect* QListWidget_visualItemRect(const QListWidget* self, QListWidgetItem* item);
void QListWidget_sortItems(QListWidget* self);
void QListWidget_setSortingEnabled(QListWidget* self, bool enable);
bool QListWidget_isSortingEnabled(const QListWidget* self);
void QListWidget_editItem(QListWidget* self, QListWidgetItem* item);
void QListWidget_openPersistentEditor(QListWidget* self, QListWidgetItem* item);
void QListWidget_closePersistentEditor(QListWidget* self, QListWidgetItem* item);
bool QListWidget_isPersistentEditorOpen(const QListWidget* self, QListWidgetItem* item);
QWidget* QListWidget_itemWidget(const QListWidget* self, QListWidgetItem* item);
void QListWidget_setItemWidget(QListWidget* self, QListWidgetItem* item, QWidget* widget);
void QListWidget_removeItemWidget(QListWidget* self, QListWidgetItem* item);
struct miqt_array /* of QListWidgetItem* */  QListWidget_selectedItems(const QListWidget* self);
struct miqt_array /* of QListWidgetItem* */  QListWidget_findItems(const QListWidget* self, struct miqt_string text, int flags);
struct miqt_array /* of QListWidgetItem* */  QListWidget_items(const QListWidget* self, QMimeData* data);
QModelIndex* QListWidget_indexFromItem(const QListWidget* self, QListWidgetItem* item);
QListWidgetItem* QListWidget_itemFromIndex(const QListWidget* self, QModelIndex* index);
void QListWidget_dropEvent(QListWidget* self, QDropEvent* event);
void QListWidget_scrollToItem(QListWidget* self, QListWidgetItem* item);
void QListWidget_clear(QListWidget* self);
void QListWidget_itemPressed(QListWidget* self, QListWidgetItem* item);
void QListWidget_connect_itemPressed(QListWidget* self, intptr_t slot);
void QListWidget_itemClicked(QListWidget* self, QListWidgetItem* item);
void QListWidget_connect_itemClicked(QListWidget* self, intptr_t slot);
void QListWidget_itemDoubleClicked(QListWidget* self, QListWidgetItem* item);
void QListWidget_connect_itemDoubleClicked(QListWidget* self, intptr_t slot);
void QListWidget_itemActivated(QListWidget* self, QListWidgetItem* item);
void QListWidget_connect_itemActivated(QListWidget* self, intptr_t slot);
void QListWidget_itemEntered(QListWidget* self, QListWidgetItem* item);
void QListWidget_connect_itemEntered(QListWidget* self, intptr_t slot);
void QListWidget_itemChanged(QListWidget* self, QListWidgetItem* item);
void QListWidget_connect_itemChanged(QListWidget* self, intptr_t slot);
void QListWidget_currentItemChanged(QListWidget* self, QListWidgetItem* current, QListWidgetItem* previous);
void QListWidget_connect_currentItemChanged(QListWidget* self, intptr_t slot);
void QListWidget_currentTextChanged(QListWidget* self, struct miqt_string currentText);
void QListWidget_connect_currentTextChanged(QListWidget* self, intptr_t slot);
void QListWidget_currentRowChanged(QListWidget* self, int currentRow);
void QListWidget_connect_currentRowChanged(QListWidget* self, intptr_t slot);
void QListWidget_itemSelectionChanged(QListWidget* self);
void QListWidget_connect_itemSelectionChanged(QListWidget* self, intptr_t slot);
bool QListWidget_event(QListWidget* self, QEvent* e);
struct miqt_array /* of struct miqt_string */  QListWidget_mimeTypes(const QListWidget* self);
QMimeData* QListWidget_mimeData(const QListWidget* self, struct miqt_array /* of QListWidgetItem* */  items);
bool QListWidget_dropMimeData(QListWidget* self, int index, QMimeData* data, int action);
int QListWidget_supportedDropActions(const QListWidget* self);
struct miqt_string QListWidget_tr2(const char* s, const char* c);
struct miqt_string QListWidget_tr3(const char* s, const char* c, int n);
void QListWidget_sortItems1(QListWidget* self, int order);
void QListWidget_scrollToItem2(QListWidget* self, QListWidgetItem* item, int hint);
bool QListWidget_override_virtual_metacall(void* self, intptr_t slot);
int QListWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QListWidget_override_virtual_setSelectionModel(void* self, intptr_t slot);
void QListWidget_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel);
bool QListWidget_override_virtual_dropEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QListWidget_override_virtual_event(void* self, intptr_t slot);
bool QListWidget_virtualbase_event(void* self, QEvent* e);
bool QListWidget_override_virtual_mimeTypes(void* self, intptr_t slot);
struct miqt_array /* of struct miqt_string */  QListWidget_virtualbase_mimeTypes(const void* self);
bool QListWidget_override_virtual_mimeData(void* self, intptr_t slot);
QMimeData* QListWidget_virtualbase_mimeData(const void* self, struct miqt_array /* of QListWidgetItem* */  items);
bool QListWidget_override_virtual_dropMimeData(void* self, intptr_t slot);
bool QListWidget_virtualbase_dropMimeData(void* self, int index, QMimeData* data, int action);
bool QListWidget_override_virtual_supportedDropActions(void* self, intptr_t slot);
int QListWidget_virtualbase_supportedDropActions(const void* self);
bool QListWidget_override_virtual_visualRect(void* self, intptr_t slot);
QRect* QListWidget_virtualbase_visualRect(const void* self, QModelIndex* index);
bool QListWidget_override_virtual_scrollTo(void* self, intptr_t slot);
void QListWidget_virtualbase_scrollTo(void* self, QModelIndex* index, int hint);
bool QListWidget_override_virtual_indexAt(void* self, intptr_t slot);
QModelIndex* QListWidget_virtualbase_indexAt(const void* self, QPoint* p);
bool QListWidget_override_virtual_doItemsLayout(void* self, intptr_t slot);
void QListWidget_virtualbase_doItemsLayout(void* self);
bool QListWidget_override_virtual_reset(void* self, intptr_t slot);
void QListWidget_virtualbase_reset(void* self);
bool QListWidget_override_virtual_setRootIndex(void* self, intptr_t slot);
void QListWidget_virtualbase_setRootIndex(void* self, QModelIndex* index);
bool QListWidget_override_virtual_scrollContentsBy(void* self, intptr_t slot);
void QListWidget_virtualbase_scrollContentsBy(void* self, int dx, int dy);
bool QListWidget_override_virtual_dataChanged(void* self, intptr_t slot);
void QListWidget_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);
bool QListWidget_override_virtual_rowsInserted(void* self, intptr_t slot);
void QListWidget_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end);
bool QListWidget_override_virtual_rowsAboutToBeRemoved(void* self, intptr_t slot);
void QListWidget_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end);
bool QListWidget_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* e);
bool QListWidget_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e);
bool QListWidget_override_virtual_wheelEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_wheelEvent(void* self, QWheelEvent* e);
bool QListWidget_override_virtual_timerEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_timerEvent(void* self, QTimerEvent* e);
bool QListWidget_override_virtual_resizeEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_resizeEvent(void* self, QResizeEvent* e);
bool QListWidget_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* e);
bool QListWidget_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* e);
bool QListWidget_override_virtual_startDrag(void* self, intptr_t slot);
void QListWidget_virtualbase_startDrag(void* self, int supportedActions);
bool QListWidget_override_virtual_initViewItemOption(void* self, intptr_t slot);
void QListWidget_virtualbase_initViewItemOption(const void* self, QStyleOptionViewItem* option);
bool QListWidget_override_virtual_paintEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_paintEvent(void* self, QPaintEvent* e);
bool QListWidget_override_virtual_horizontalOffset(void* self, intptr_t slot);
int QListWidget_virtualbase_horizontalOffset(const void* self);
bool QListWidget_override_virtual_verticalOffset(void* self, intptr_t slot);
int QListWidget_virtualbase_verticalOffset(const void* self);
bool QListWidget_override_virtual_moveCursor(void* self, intptr_t slot);
QModelIndex* QListWidget_virtualbase_moveCursor(void* self, int cursorAction, int modifiers);
bool QListWidget_override_virtual_setSelection(void* self, intptr_t slot);
void QListWidget_virtualbase_setSelection(void* self, QRect* rect, int command);
bool QListWidget_override_virtual_visualRegionForSelection(void* self, intptr_t slot);
QRegion* QListWidget_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection);
bool QListWidget_override_virtual_selectedIndexes(void* self, intptr_t slot);
struct miqt_array /* of QModelIndex* */  QListWidget_virtualbase_selectedIndexes(const void* self);
bool QListWidget_override_virtual_updateGeometries(void* self, intptr_t slot);
void QListWidget_virtualbase_updateGeometries(void* self);
bool QListWidget_override_virtual_isIndexHidden(void* self, intptr_t slot);
bool QListWidget_virtualbase_isIndexHidden(const void* self, QModelIndex* index);
bool QListWidget_override_virtual_selectionChanged(void* self, intptr_t slot);
void QListWidget_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected);
bool QListWidget_override_virtual_currentChanged(void* self, intptr_t slot);
void QListWidget_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous);
bool QListWidget_override_virtual_viewportSizeHint(void* self, intptr_t slot);
QSize* QListWidget_virtualbase_viewportSizeHint(const void* self);
bool QListWidget_override_virtual_keyboardSearch(void* self, intptr_t slot);
void QListWidget_virtualbase_keyboardSearch(void* self, struct miqt_string search);
bool QListWidget_override_virtual_sizeHintForRow(void* self, intptr_t slot);
int QListWidget_virtualbase_sizeHintForRow(const void* self, int row);
bool QListWidget_override_virtual_sizeHintForColumn(void* self, intptr_t slot);
int QListWidget_virtualbase_sizeHintForColumn(const void* self, int column);
bool QListWidget_override_virtual_itemDelegateForIndex(void* self, intptr_t slot);
QAbstractItemDelegate* QListWidget_virtualbase_itemDelegateForIndex(const void* self, QModelIndex* index);
bool QListWidget_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QListWidget_virtualbase_inputMethodQuery(const void* self, int query);
bool QListWidget_override_virtual_selectAll(void* self, intptr_t slot);
void QListWidget_virtualbase_selectAll(void* self);
bool QListWidget_override_virtual_updateEditorData(void* self, intptr_t slot);
void QListWidget_virtualbase_updateEditorData(void* self);
bool QListWidget_override_virtual_updateEditorGeometries(void* self, intptr_t slot);
void QListWidget_virtualbase_updateEditorGeometries(void* self);
bool QListWidget_override_virtual_verticalScrollbarAction(void* self, intptr_t slot);
void QListWidget_virtualbase_verticalScrollbarAction(void* self, int action);
bool QListWidget_override_virtual_horizontalScrollbarAction(void* self, intptr_t slot);
void QListWidget_virtualbase_horizontalScrollbarAction(void* self, int action);
bool QListWidget_override_virtual_verticalScrollbarValueChanged(void* self, intptr_t slot);
void QListWidget_virtualbase_verticalScrollbarValueChanged(void* self, int value);
bool QListWidget_override_virtual_horizontalScrollbarValueChanged(void* self, intptr_t slot);
void QListWidget_virtualbase_horizontalScrollbarValueChanged(void* self, int value);
bool QListWidget_override_virtual_closeEditor(void* self, intptr_t slot);
void QListWidget_virtualbase_closeEditor(void* self, QWidget* editor, int hint);
bool QListWidget_override_virtual_commitData(void* self, intptr_t slot);
void QListWidget_virtualbase_commitData(void* self, QWidget* editor);
bool QListWidget_override_virtual_editorDestroyed(void* self, intptr_t slot);
void QListWidget_virtualbase_editorDestroyed(void* self, QObject* editor);
bool QListWidget_override_virtual_edit2(void* self, intptr_t slot);
bool QListWidget_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event);
bool QListWidget_override_virtual_selectionCommand(void* self, intptr_t slot);
int QListWidget_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event);
bool QListWidget_override_virtual_focusNextPrevChild(void* self, intptr_t slot);
bool QListWidget_virtualbase_focusNextPrevChild(void* self, bool next);
bool QListWidget_override_virtual_viewportEvent(void* self, intptr_t slot);
bool QListWidget_virtualbase_viewportEvent(void* self, QEvent* event);
bool QListWidget_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
bool QListWidget_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
bool QListWidget_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
bool QListWidget_override_virtual_focusInEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event);
bool QListWidget_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
bool QListWidget_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
bool QListWidget_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);
bool QListWidget_override_virtual_eventFilter(void* self, intptr_t slot);
bool QListWidget_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);
bool QListWidget_override_virtual_minimumSizeHint(void* self, intptr_t slot);
QSize* QListWidget_virtualbase_minimumSizeHint(const void* self);
bool QListWidget_override_virtual_sizeHint(void* self, intptr_t slot);
QSize* QListWidget_virtualbase_sizeHint(const void* self);
bool QListWidget_override_virtual_setupViewport(void* self, intptr_t slot);
void QListWidget_virtualbase_setupViewport(void* self, QWidget* viewport);
bool QListWidget_override_virtual_contextMenuEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
bool QListWidget_override_virtual_changeEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_changeEvent(void* self, QEvent* param1);
bool QListWidget_override_virtual_initStyleOption(void* self, intptr_t slot);
void QListWidget_virtualbase_initStyleOption(const void* self, QStyleOptionFrame* option);
bool QListWidget_override_virtual_devType(void* self, intptr_t slot);
int QListWidget_virtualbase_devType(const void* self);
bool QListWidget_override_virtual_setVisible(void* self, intptr_t slot);
void QListWidget_virtualbase_setVisible(void* self, bool visible);
bool QListWidget_override_virtual_heightForWidth(void* self, intptr_t slot);
int QListWidget_virtualbase_heightForWidth(const void* self, int param1);
bool QListWidget_override_virtual_hasHeightForWidth(void* self, intptr_t slot);
bool QListWidget_virtualbase_hasHeightForWidth(const void* self);
bool QListWidget_override_virtual_paintEngine(void* self, intptr_t slot);
QPaintEngine* QListWidget_virtualbase_paintEngine(const void* self);
bool QListWidget_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
bool QListWidget_override_virtual_enterEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_enterEvent(void* self, QEnterEvent* event);
bool QListWidget_override_virtual_leaveEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_leaveEvent(void* self, QEvent* event);
bool QListWidget_override_virtual_moveEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_moveEvent(void* self, QMoveEvent* event);
bool QListWidget_override_virtual_closeEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_closeEvent(void* self, QCloseEvent* event);
bool QListWidget_override_virtual_tabletEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event);
bool QListWidget_override_virtual_actionEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_actionEvent(void* self, QActionEvent* event);
bool QListWidget_override_virtual_showEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_showEvent(void* self, QShowEvent* event);
bool QListWidget_override_virtual_hideEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QListWidget_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QListWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
bool QListWidget_override_virtual_metric(void* self, intptr_t slot);
int QListWidget_virtualbase_metric(const void* self, int param1);
bool QListWidget_override_virtual_initPainter(void* self, intptr_t slot);
void QListWidget_virtualbase_initPainter(const void* self, QPainter* painter);
bool QListWidget_override_virtual_redirected(void* self, intptr_t slot);
QPaintDevice* QListWidget_virtualbase_redirected(const void* self, QPoint* offset);
bool QListWidget_override_virtual_sharedPainter(void* self, intptr_t slot);
QPainter* QListWidget_virtualbase_sharedPainter(const void* self);
bool QListWidget_override_virtual_childEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_childEvent(void* self, QChildEvent* event);
bool QListWidget_override_virtual_customEvent(void* self, intptr_t slot);
void QListWidget_virtualbase_customEvent(void* self, QEvent* event);
bool QListWidget_override_virtual_connectNotify(void* self, intptr_t slot);
void QListWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QListWidget_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QListWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QListWidget_delete(QListWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
