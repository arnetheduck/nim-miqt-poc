#pragma once
#ifndef MIQT_QTWIDGETS_GEN_QTREEWIDGET_H
#define MIQT_QTWIDGETS_GEN_QTREEWIDGET_H

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
class QTabletEvent;
class QTimerEvent;
class QTreeView;
class QTreeWidget;
class QTreeWidgetItem;
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
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTreeView QTreeView;
typedef struct QTreeWidget QTreeWidget;
typedef struct QTreeWidgetItem QTreeWidgetItem;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

QTreeWidgetItem* QTreeWidgetItem_new();
QTreeWidgetItem* QTreeWidgetItem_new2(struct miqt_array /* of struct miqt_string */  strings);
QTreeWidgetItem* QTreeWidgetItem_new3(QTreeWidget* treeview);
QTreeWidgetItem* QTreeWidgetItem_new4(QTreeWidget* treeview, struct miqt_array /* of struct miqt_string */  strings);
QTreeWidgetItem* QTreeWidgetItem_new5(QTreeWidget* treeview, QTreeWidgetItem* after);
QTreeWidgetItem* QTreeWidgetItem_new6(QTreeWidgetItem* parent);
QTreeWidgetItem* QTreeWidgetItem_new7(QTreeWidgetItem* parent, struct miqt_array /* of struct miqt_string */  strings);
QTreeWidgetItem* QTreeWidgetItem_new8(QTreeWidgetItem* parent, QTreeWidgetItem* after);
QTreeWidgetItem* QTreeWidgetItem_new9(QTreeWidgetItem* other);
QTreeWidgetItem* QTreeWidgetItem_new10(int type);
QTreeWidgetItem* QTreeWidgetItem_new11(struct miqt_array /* of struct miqt_string */  strings, int type);
QTreeWidgetItem* QTreeWidgetItem_new12(QTreeWidget* treeview, int type);
QTreeWidgetItem* QTreeWidgetItem_new13(QTreeWidget* treeview, struct miqt_array /* of struct miqt_string */  strings, int type);
QTreeWidgetItem* QTreeWidgetItem_new14(QTreeWidget* treeview, QTreeWidgetItem* after, int type);
QTreeWidgetItem* QTreeWidgetItem_new15(QTreeWidgetItem* parent, int type);
QTreeWidgetItem* QTreeWidgetItem_new16(QTreeWidgetItem* parent, struct miqt_array /* of struct miqt_string */  strings, int type);
QTreeWidgetItem* QTreeWidgetItem_new17(QTreeWidgetItem* parent, QTreeWidgetItem* after, int type);
QTreeWidgetItem* QTreeWidgetItem_clone(const QTreeWidgetItem* self);
QTreeWidget* QTreeWidgetItem_treeWidget(const QTreeWidgetItem* self);
void QTreeWidgetItem_setSelected(QTreeWidgetItem* self, bool select);
bool QTreeWidgetItem_isSelected(const QTreeWidgetItem* self);
void QTreeWidgetItem_setHidden(QTreeWidgetItem* self, bool hide);
bool QTreeWidgetItem_isHidden(const QTreeWidgetItem* self);
void QTreeWidgetItem_setExpanded(QTreeWidgetItem* self, bool expand);
bool QTreeWidgetItem_isExpanded(const QTreeWidgetItem* self);
void QTreeWidgetItem_setFirstColumnSpanned(QTreeWidgetItem* self, bool span);
bool QTreeWidgetItem_isFirstColumnSpanned(const QTreeWidgetItem* self);
void QTreeWidgetItem_setDisabled(QTreeWidgetItem* self, bool disabled);
bool QTreeWidgetItem_isDisabled(const QTreeWidgetItem* self);
void QTreeWidgetItem_setChildIndicatorPolicy(QTreeWidgetItem* self, int policy);
int QTreeWidgetItem_childIndicatorPolicy(const QTreeWidgetItem* self);
int QTreeWidgetItem_flags(const QTreeWidgetItem* self);
void QTreeWidgetItem_setFlags(QTreeWidgetItem* self, int flags);
struct miqt_string QTreeWidgetItem_text(const QTreeWidgetItem* self, int column);
void QTreeWidgetItem_setText(QTreeWidgetItem* self, int column, struct miqt_string text);
QIcon* QTreeWidgetItem_icon(const QTreeWidgetItem* self, int column);
void QTreeWidgetItem_setIcon(QTreeWidgetItem* self, int column, QIcon* icon);
struct miqt_string QTreeWidgetItem_statusTip(const QTreeWidgetItem* self, int column);
void QTreeWidgetItem_setStatusTip(QTreeWidgetItem* self, int column, struct miqt_string statusTip);
struct miqt_string QTreeWidgetItem_toolTip(const QTreeWidgetItem* self, int column);
void QTreeWidgetItem_setToolTip(QTreeWidgetItem* self, int column, struct miqt_string toolTip);
struct miqt_string QTreeWidgetItem_whatsThis(const QTreeWidgetItem* self, int column);
void QTreeWidgetItem_setWhatsThis(QTreeWidgetItem* self, int column, struct miqt_string whatsThis);
QFont* QTreeWidgetItem_font(const QTreeWidgetItem* self, int column);
void QTreeWidgetItem_setFont(QTreeWidgetItem* self, int column, QFont* font);
int QTreeWidgetItem_textAlignment(const QTreeWidgetItem* self, int column);
void QTreeWidgetItem_setTextAlignment(QTreeWidgetItem* self, int column, int alignment);
QColor* QTreeWidgetItem_backgroundColor(const QTreeWidgetItem* self, int column);
void QTreeWidgetItem_setBackgroundColor(QTreeWidgetItem* self, int column, QColor* color);
QBrush* QTreeWidgetItem_background(const QTreeWidgetItem* self, int column);
void QTreeWidgetItem_setBackground(QTreeWidgetItem* self, int column, QBrush* brush);
QColor* QTreeWidgetItem_textColor(const QTreeWidgetItem* self, int column);
void QTreeWidgetItem_setTextColor(QTreeWidgetItem* self, int column, QColor* color);
QBrush* QTreeWidgetItem_foreground(const QTreeWidgetItem* self, int column);
void QTreeWidgetItem_setForeground(QTreeWidgetItem* self, int column, QBrush* brush);
int QTreeWidgetItem_checkState(const QTreeWidgetItem* self, int column);
void QTreeWidgetItem_setCheckState(QTreeWidgetItem* self, int column, int state);
QSize* QTreeWidgetItem_sizeHint(const QTreeWidgetItem* self, int column);
void QTreeWidgetItem_setSizeHint(QTreeWidgetItem* self, int column, QSize* size);
QVariant* QTreeWidgetItem_data(const QTreeWidgetItem* self, int column, int role);
void QTreeWidgetItem_setData(QTreeWidgetItem* self, int column, int role, QVariant* value);
bool QTreeWidgetItem_operatorLesser(const QTreeWidgetItem* self, QTreeWidgetItem* other);
void QTreeWidgetItem_read(QTreeWidgetItem* self, QDataStream* in);
void QTreeWidgetItem_write(const QTreeWidgetItem* self, QDataStream* out);
void QTreeWidgetItem_operatorAssign(QTreeWidgetItem* self, QTreeWidgetItem* other);
QTreeWidgetItem* QTreeWidgetItem_parent(const QTreeWidgetItem* self);
QTreeWidgetItem* QTreeWidgetItem_child(const QTreeWidgetItem* self, int index);
int QTreeWidgetItem_childCount(const QTreeWidgetItem* self);
int QTreeWidgetItem_columnCount(const QTreeWidgetItem* self);
int QTreeWidgetItem_indexOfChild(const QTreeWidgetItem* self, QTreeWidgetItem* child);
void QTreeWidgetItem_addChild(QTreeWidgetItem* self, QTreeWidgetItem* child);
void QTreeWidgetItem_insertChild(QTreeWidgetItem* self, int index, QTreeWidgetItem* child);
void QTreeWidgetItem_removeChild(QTreeWidgetItem* self, QTreeWidgetItem* child);
QTreeWidgetItem* QTreeWidgetItem_takeChild(QTreeWidgetItem* self, int index);
void QTreeWidgetItem_addChildren(QTreeWidgetItem* self, struct miqt_array /* of QTreeWidgetItem* */  children);
void QTreeWidgetItem_insertChildren(QTreeWidgetItem* self, int index, struct miqt_array /* of QTreeWidgetItem* */  children);
struct miqt_array /* of QTreeWidgetItem* */  QTreeWidgetItem_takeChildren(QTreeWidgetItem* self);
int QTreeWidgetItem_type(const QTreeWidgetItem* self);
void QTreeWidgetItem_sortChildren(QTreeWidgetItem* self, int column, int order);
bool QTreeWidgetItem_override_virtual_clone(void* self, intptr_t slot);
QTreeWidgetItem* QTreeWidgetItem_virtualbase_clone(const void* self);
bool QTreeWidgetItem_override_virtual_data(void* self, intptr_t slot);
QVariant* QTreeWidgetItem_virtualbase_data(const void* self, int column, int role);
bool QTreeWidgetItem_override_virtual_setData(void* self, intptr_t slot);
void QTreeWidgetItem_virtualbase_setData(void* self, int column, int role, QVariant* value);
bool QTreeWidgetItem_override_virtual_operatorLesser(void* self, intptr_t slot);
bool QTreeWidgetItem_virtualbase_operatorLesser(const void* self, QTreeWidgetItem* other);
bool QTreeWidgetItem_override_virtual_read(void* self, intptr_t slot);
void QTreeWidgetItem_virtualbase_read(void* self, QDataStream* in);
bool QTreeWidgetItem_override_virtual_write(void* self, intptr_t slot);
void QTreeWidgetItem_virtualbase_write(const void* self, QDataStream* out);
void QTreeWidgetItem_protectedbase_emitDataChanged(bool* _dynamic_cast_ok, void* self);
void QTreeWidgetItem_delete(QTreeWidgetItem* self);

QTreeWidget* QTreeWidget_new(QWidget* parent);
QTreeWidget* QTreeWidget_new2();
void QTreeWidget_virtbase(QTreeWidget* src, QTreeView** outptr_QTreeView);
QMetaObject* QTreeWidget_metaObject(const QTreeWidget* self);
void* QTreeWidget_metacast(QTreeWidget* self, const char* param1);
int QTreeWidget_metacall(QTreeWidget* self, int param1, int param2, void** param3);
struct miqt_string QTreeWidget_tr(const char* s);
struct miqt_string QTreeWidget_trUtf8(const char* s);
int QTreeWidget_columnCount(const QTreeWidget* self);
void QTreeWidget_setColumnCount(QTreeWidget* self, int columns);
QTreeWidgetItem* QTreeWidget_invisibleRootItem(const QTreeWidget* self);
QTreeWidgetItem* QTreeWidget_topLevelItem(const QTreeWidget* self, int index);
int QTreeWidget_topLevelItemCount(const QTreeWidget* self);
void QTreeWidget_insertTopLevelItem(QTreeWidget* self, int index, QTreeWidgetItem* item);
void QTreeWidget_addTopLevelItem(QTreeWidget* self, QTreeWidgetItem* item);
QTreeWidgetItem* QTreeWidget_takeTopLevelItem(QTreeWidget* self, int index);
int QTreeWidget_indexOfTopLevelItem(const QTreeWidget* self, QTreeWidgetItem* item);
void QTreeWidget_insertTopLevelItems(QTreeWidget* self, int index, struct miqt_array /* of QTreeWidgetItem* */  items);
void QTreeWidget_addTopLevelItems(QTreeWidget* self, struct miqt_array /* of QTreeWidgetItem* */  items);
QTreeWidgetItem* QTreeWidget_headerItem(const QTreeWidget* self);
void QTreeWidget_setHeaderItem(QTreeWidget* self, QTreeWidgetItem* item);
void QTreeWidget_setHeaderLabels(QTreeWidget* self, struct miqt_array /* of struct miqt_string */  labels);
void QTreeWidget_setHeaderLabel(QTreeWidget* self, struct miqt_string label);
QTreeWidgetItem* QTreeWidget_currentItem(const QTreeWidget* self);
int QTreeWidget_currentColumn(const QTreeWidget* self);
void QTreeWidget_setCurrentItem(QTreeWidget* self, QTreeWidgetItem* item);
void QTreeWidget_setCurrentItem2(QTreeWidget* self, QTreeWidgetItem* item, int column);
void QTreeWidget_setCurrentItem3(QTreeWidget* self, QTreeWidgetItem* item, int column, int command);
QTreeWidgetItem* QTreeWidget_itemAt(const QTreeWidget* self, QPoint* p);
QTreeWidgetItem* QTreeWidget_itemAt2(const QTreeWidget* self, int x, int y);
QRect* QTreeWidget_visualItemRect(const QTreeWidget* self, QTreeWidgetItem* item);
int QTreeWidget_sortColumn(const QTreeWidget* self);
void QTreeWidget_sortItems(QTreeWidget* self, int column, int order);
void QTreeWidget_editItem(QTreeWidget* self, QTreeWidgetItem* item);
void QTreeWidget_openPersistentEditor(QTreeWidget* self, QTreeWidgetItem* item);
void QTreeWidget_closePersistentEditor(QTreeWidget* self, QTreeWidgetItem* item);
bool QTreeWidget_isPersistentEditorOpen(const QTreeWidget* self, QTreeWidgetItem* item);
QWidget* QTreeWidget_itemWidget(const QTreeWidget* self, QTreeWidgetItem* item, int column);
void QTreeWidget_setItemWidget(QTreeWidget* self, QTreeWidgetItem* item, int column, QWidget* widget);
void QTreeWidget_removeItemWidget(QTreeWidget* self, QTreeWidgetItem* item, int column);
bool QTreeWidget_isItemSelected(const QTreeWidget* self, QTreeWidgetItem* item);
void QTreeWidget_setItemSelected(QTreeWidget* self, QTreeWidgetItem* item, bool select);
struct miqt_array /* of QTreeWidgetItem* */  QTreeWidget_selectedItems(const QTreeWidget* self);
struct miqt_array /* of QTreeWidgetItem* */  QTreeWidget_findItems(const QTreeWidget* self, struct miqt_string text, int flags);
bool QTreeWidget_isItemHidden(const QTreeWidget* self, QTreeWidgetItem* item);
void QTreeWidget_setItemHidden(QTreeWidget* self, QTreeWidgetItem* item, bool hide);
bool QTreeWidget_isItemExpanded(const QTreeWidget* self, QTreeWidgetItem* item);
void QTreeWidget_setItemExpanded(QTreeWidget* self, QTreeWidgetItem* item, bool expand);
bool QTreeWidget_isFirstItemColumnSpanned(const QTreeWidget* self, QTreeWidgetItem* item);
void QTreeWidget_setFirstItemColumnSpanned(QTreeWidget* self, QTreeWidgetItem* item, bool span);
QTreeWidgetItem* QTreeWidget_itemAbove(const QTreeWidget* self, QTreeWidgetItem* item);
QTreeWidgetItem* QTreeWidget_itemBelow(const QTreeWidget* self, QTreeWidgetItem* item);
void QTreeWidget_setSelectionModel(QTreeWidget* self, QItemSelectionModel* selectionModel);
void QTreeWidget_scrollToItem(QTreeWidget* self, QTreeWidgetItem* item);
void QTreeWidget_expandItem(QTreeWidget* self, QTreeWidgetItem* item);
void QTreeWidget_collapseItem(QTreeWidget* self, QTreeWidgetItem* item);
void QTreeWidget_clear(QTreeWidget* self);
void QTreeWidget_itemPressed(QTreeWidget* self, QTreeWidgetItem* item, int column);
void QTreeWidget_connect_itemPressed(QTreeWidget* self, intptr_t slot);
void QTreeWidget_itemClicked(QTreeWidget* self, QTreeWidgetItem* item, int column);
void QTreeWidget_connect_itemClicked(QTreeWidget* self, intptr_t slot);
void QTreeWidget_itemDoubleClicked(QTreeWidget* self, QTreeWidgetItem* item, int column);
void QTreeWidget_connect_itemDoubleClicked(QTreeWidget* self, intptr_t slot);
void QTreeWidget_itemActivated(QTreeWidget* self, QTreeWidgetItem* item, int column);
void QTreeWidget_connect_itemActivated(QTreeWidget* self, intptr_t slot);
void QTreeWidget_itemEntered(QTreeWidget* self, QTreeWidgetItem* item, int column);
void QTreeWidget_connect_itemEntered(QTreeWidget* self, intptr_t slot);
void QTreeWidget_itemChanged(QTreeWidget* self, QTreeWidgetItem* item, int column);
void QTreeWidget_connect_itemChanged(QTreeWidget* self, intptr_t slot);
void QTreeWidget_itemExpanded(QTreeWidget* self, QTreeWidgetItem* item);
void QTreeWidget_connect_itemExpanded(QTreeWidget* self, intptr_t slot);
void QTreeWidget_itemCollapsed(QTreeWidget* self, QTreeWidgetItem* item);
void QTreeWidget_connect_itemCollapsed(QTreeWidget* self, intptr_t slot);
void QTreeWidget_currentItemChanged(QTreeWidget* self, QTreeWidgetItem* current, QTreeWidgetItem* previous);
void QTreeWidget_connect_currentItemChanged(QTreeWidget* self, intptr_t slot);
void QTreeWidget_itemSelectionChanged(QTreeWidget* self);
void QTreeWidget_connect_itemSelectionChanged(QTreeWidget* self, intptr_t slot);
bool QTreeWidget_event(QTreeWidget* self, QEvent* e);
struct miqt_array /* of struct miqt_string */  QTreeWidget_mimeTypes(const QTreeWidget* self);
QMimeData* QTreeWidget_mimeData(const QTreeWidget* self, struct miqt_array /* of QTreeWidgetItem* */  items);
bool QTreeWidget_dropMimeData(QTreeWidget* self, QTreeWidgetItem* parent, int index, QMimeData* data, int action);
int QTreeWidget_supportedDropActions(const QTreeWidget* self);
void QTreeWidget_dropEvent(QTreeWidget* self, QDropEvent* event);
struct miqt_string QTreeWidget_tr2(const char* s, const char* c);
struct miqt_string QTreeWidget_tr3(const char* s, const char* c, int n);
struct miqt_string QTreeWidget_trUtf82(const char* s, const char* c);
struct miqt_string QTreeWidget_trUtf83(const char* s, const char* c, int n);
void QTreeWidget_editItem2(QTreeWidget* self, QTreeWidgetItem* item, int column);
void QTreeWidget_openPersistentEditor2(QTreeWidget* self, QTreeWidgetItem* item, int column);
void QTreeWidget_closePersistentEditor2(QTreeWidget* self, QTreeWidgetItem* item, int column);
bool QTreeWidget_isPersistentEditorOpen2(const QTreeWidget* self, QTreeWidgetItem* item, int column);
struct miqt_array /* of QTreeWidgetItem* */  QTreeWidget_findItems3(const QTreeWidget* self, struct miqt_string text, int flags, int column);
void QTreeWidget_scrollToItem2(QTreeWidget* self, QTreeWidgetItem* item, int hint);
bool QTreeWidget_override_virtual_metaObject(void* self, intptr_t slot);
QMetaObject* QTreeWidget_virtualbase_metaObject(const void* self);
bool QTreeWidget_override_virtual_metacast(void* self, intptr_t slot);
void* QTreeWidget_virtualbase_metacast(void* self, const char* param1);
bool QTreeWidget_override_virtual_metacall(void* self, intptr_t slot);
int QTreeWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QTreeWidget_override_virtual_setSelectionModel(void* self, intptr_t slot);
void QTreeWidget_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel);
bool QTreeWidget_override_virtual_event(void* self, intptr_t slot);
bool QTreeWidget_virtualbase_event(void* self, QEvent* e);
bool QTreeWidget_override_virtual_mimeTypes(void* self, intptr_t slot);
struct miqt_array /* of struct miqt_string */  QTreeWidget_virtualbase_mimeTypes(const void* self);
bool QTreeWidget_override_virtual_mimeData(void* self, intptr_t slot);
QMimeData* QTreeWidget_virtualbase_mimeData(const void* self, struct miqt_array /* of QTreeWidgetItem* */  items);
bool QTreeWidget_override_virtual_dropMimeData(void* self, intptr_t slot);
bool QTreeWidget_virtualbase_dropMimeData(void* self, QTreeWidgetItem* parent, int index, QMimeData* data, int action);
bool QTreeWidget_override_virtual_supportedDropActions(void* self, intptr_t slot);
int QTreeWidget_virtualbase_supportedDropActions(const void* self);
bool QTreeWidget_override_virtual_dropEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QTreeWidget_override_virtual_setRootIndex(void* self, intptr_t slot);
void QTreeWidget_virtualbase_setRootIndex(void* self, QModelIndex* index);
bool QTreeWidget_override_virtual_keyboardSearch(void* self, intptr_t slot);
void QTreeWidget_virtualbase_keyboardSearch(void* self, struct miqt_string search);
bool QTreeWidget_override_virtual_visualRect(void* self, intptr_t slot);
QRect* QTreeWidget_virtualbase_visualRect(const void* self, QModelIndex* index);
bool QTreeWidget_override_virtual_scrollTo(void* self, intptr_t slot);
void QTreeWidget_virtualbase_scrollTo(void* self, QModelIndex* index, int hint);
bool QTreeWidget_override_virtual_indexAt(void* self, intptr_t slot);
QModelIndex* QTreeWidget_virtualbase_indexAt(const void* self, QPoint* p);
bool QTreeWidget_override_virtual_doItemsLayout(void* self, intptr_t slot);
void QTreeWidget_virtualbase_doItemsLayout(void* self);
bool QTreeWidget_override_virtual_reset(void* self, intptr_t slot);
void QTreeWidget_virtualbase_reset(void* self);
bool QTreeWidget_override_virtual_dataChanged(void* self, intptr_t slot);
void QTreeWidget_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);
bool QTreeWidget_override_virtual_selectAll(void* self, intptr_t slot);
void QTreeWidget_virtualbase_selectAll(void* self);
bool QTreeWidget_override_virtual_verticalScrollbarValueChanged(void* self, intptr_t slot);
void QTreeWidget_virtualbase_verticalScrollbarValueChanged(void* self, int value);
bool QTreeWidget_override_virtual_scrollContentsBy(void* self, intptr_t slot);
void QTreeWidget_virtualbase_scrollContentsBy(void* self, int dx, int dy);
bool QTreeWidget_override_virtual_rowsInserted(void* self, intptr_t slot);
void QTreeWidget_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end);
bool QTreeWidget_override_virtual_rowsAboutToBeRemoved(void* self, intptr_t slot);
void QTreeWidget_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end);
bool QTreeWidget_override_virtual_moveCursor(void* self, intptr_t slot);
QModelIndex* QTreeWidget_virtualbase_moveCursor(void* self, int cursorAction, int modifiers);
bool QTreeWidget_override_virtual_horizontalOffset(void* self, intptr_t slot);
int QTreeWidget_virtualbase_horizontalOffset(const void* self);
bool QTreeWidget_override_virtual_verticalOffset(void* self, intptr_t slot);
int QTreeWidget_virtualbase_verticalOffset(const void* self);
bool QTreeWidget_override_virtual_setSelection(void* self, intptr_t slot);
void QTreeWidget_virtualbase_setSelection(void* self, QRect* rect, int command);
bool QTreeWidget_override_virtual_visualRegionForSelection(void* self, intptr_t slot);
QRegion* QTreeWidget_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection);
bool QTreeWidget_override_virtual_selectedIndexes(void* self, intptr_t slot);
struct miqt_array /* of QModelIndex* */  QTreeWidget_virtualbase_selectedIndexes(const void* self);
bool QTreeWidget_override_virtual_timerEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QTreeWidget_override_virtual_paintEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_paintEvent(void* self, QPaintEvent* event);
bool QTreeWidget_override_virtual_drawRow(void* self, intptr_t slot);
void QTreeWidget_virtualbase_drawRow(const void* self, QPainter* painter, QStyleOptionViewItem* options, QModelIndex* index);
bool QTreeWidget_override_virtual_drawBranches(void* self, intptr_t slot);
void QTreeWidget_virtualbase_drawBranches(const void* self, QPainter* painter, QRect* rect, QModelIndex* index);
bool QTreeWidget_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
bool QTreeWidget_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
bool QTreeWidget_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
bool QTreeWidget_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
bool QTreeWidget_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
bool QTreeWidget_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
bool QTreeWidget_override_virtual_viewportEvent(void* self, intptr_t slot);
bool QTreeWidget_virtualbase_viewportEvent(void* self, QEvent* event);
bool QTreeWidget_override_virtual_updateGeometries(void* self, intptr_t slot);
void QTreeWidget_virtualbase_updateGeometries(void* self);
bool QTreeWidget_override_virtual_viewportSizeHint(void* self, intptr_t slot);
QSize* QTreeWidget_virtualbase_viewportSizeHint(const void* self);
bool QTreeWidget_override_virtual_sizeHintForColumn(void* self, intptr_t slot);
int QTreeWidget_virtualbase_sizeHintForColumn(const void* self, int column);
bool QTreeWidget_override_virtual_horizontalScrollbarAction(void* self, intptr_t slot);
void QTreeWidget_virtualbase_horizontalScrollbarAction(void* self, int action);
bool QTreeWidget_override_virtual_isIndexHidden(void* self, intptr_t slot);
bool QTreeWidget_virtualbase_isIndexHidden(const void* self, QModelIndex* index);
bool QTreeWidget_override_virtual_selectionChanged(void* self, intptr_t slot);
void QTreeWidget_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected);
bool QTreeWidget_override_virtual_currentChanged(void* self, intptr_t slot);
void QTreeWidget_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous);
bool QTreeWidget_override_virtual_sizeHintForRow(void* self, intptr_t slot);
int QTreeWidget_virtualbase_sizeHintForRow(const void* self, int row);
bool QTreeWidget_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QTreeWidget_virtualbase_inputMethodQuery(const void* self, int query);
bool QTreeWidget_override_virtual_updateEditorData(void* self, intptr_t slot);
void QTreeWidget_virtualbase_updateEditorData(void* self);
bool QTreeWidget_override_virtual_updateEditorGeometries(void* self, intptr_t slot);
void QTreeWidget_virtualbase_updateEditorGeometries(void* self);
bool QTreeWidget_override_virtual_verticalScrollbarAction(void* self, intptr_t slot);
void QTreeWidget_virtualbase_verticalScrollbarAction(void* self, int action);
bool QTreeWidget_override_virtual_horizontalScrollbarValueChanged(void* self, intptr_t slot);
void QTreeWidget_virtualbase_horizontalScrollbarValueChanged(void* self, int value);
bool QTreeWidget_override_virtual_closeEditor(void* self, intptr_t slot);
void QTreeWidget_virtualbase_closeEditor(void* self, QWidget* editor, int hint);
bool QTreeWidget_override_virtual_commitData(void* self, intptr_t slot);
void QTreeWidget_virtualbase_commitData(void* self, QWidget* editor);
bool QTreeWidget_override_virtual_editorDestroyed(void* self, intptr_t slot);
void QTreeWidget_virtualbase_editorDestroyed(void* self, QObject* editor);
bool QTreeWidget_override_virtual_edit2(void* self, intptr_t slot);
bool QTreeWidget_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event);
bool QTreeWidget_override_virtual_selectionCommand(void* self, intptr_t slot);
int QTreeWidget_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event);
bool QTreeWidget_override_virtual_startDrag(void* self, intptr_t slot);
void QTreeWidget_virtualbase_startDrag(void* self, int supportedActions);
bool QTreeWidget_override_virtual_viewOptions(void* self, intptr_t slot);
QStyleOptionViewItem* QTreeWidget_virtualbase_viewOptions(const void* self);
bool QTreeWidget_override_virtual_focusNextPrevChild(void* self, intptr_t slot);
bool QTreeWidget_virtualbase_focusNextPrevChild(void* self, bool next);
bool QTreeWidget_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
bool QTreeWidget_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
bool QTreeWidget_override_virtual_focusInEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event);
bool QTreeWidget_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
bool QTreeWidget_override_virtual_resizeEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event);
bool QTreeWidget_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);
bool QTreeWidget_override_virtual_eventFilter(void* self, intptr_t slot);
bool QTreeWidget_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);
bool QTreeWidget_override_virtual_minimumSizeHint(void* self, intptr_t slot);
QSize* QTreeWidget_virtualbase_minimumSizeHint(const void* self);
bool QTreeWidget_override_virtual_sizeHint(void* self, intptr_t slot);
QSize* QTreeWidget_virtualbase_sizeHint(const void* self);
bool QTreeWidget_override_virtual_setupViewport(void* self, intptr_t slot);
void QTreeWidget_virtualbase_setupViewport(void* self, QWidget* viewport);
bool QTreeWidget_override_virtual_wheelEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_wheelEvent(void* self, QWheelEvent* param1);
bool QTreeWidget_override_virtual_contextMenuEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
bool QTreeWidget_override_virtual_changeEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_changeEvent(void* self, QEvent* param1);
bool QTreeWidget_override_virtual_devType(void* self, intptr_t slot);
int QTreeWidget_virtualbase_devType(const void* self);
bool QTreeWidget_override_virtual_setVisible(void* self, intptr_t slot);
void QTreeWidget_virtualbase_setVisible(void* self, bool visible);
bool QTreeWidget_override_virtual_heightForWidth(void* self, intptr_t slot);
int QTreeWidget_virtualbase_heightForWidth(const void* self, int param1);
bool QTreeWidget_override_virtual_hasHeightForWidth(void* self, intptr_t slot);
bool QTreeWidget_virtualbase_hasHeightForWidth(const void* self);
bool QTreeWidget_override_virtual_paintEngine(void* self, intptr_t slot);
QPaintEngine* QTreeWidget_virtualbase_paintEngine(const void* self);
bool QTreeWidget_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
bool QTreeWidget_override_virtual_enterEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_enterEvent(void* self, QEvent* event);
bool QTreeWidget_override_virtual_leaveEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_leaveEvent(void* self, QEvent* event);
bool QTreeWidget_override_virtual_moveEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_moveEvent(void* self, QMoveEvent* event);
bool QTreeWidget_override_virtual_closeEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_closeEvent(void* self, QCloseEvent* event);
bool QTreeWidget_override_virtual_tabletEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event);
bool QTreeWidget_override_virtual_actionEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_actionEvent(void* self, QActionEvent* event);
bool QTreeWidget_override_virtual_showEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_showEvent(void* self, QShowEvent* event);
bool QTreeWidget_override_virtual_hideEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QTreeWidget_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QTreeWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
bool QTreeWidget_override_virtual_metric(void* self, intptr_t slot);
int QTreeWidget_virtualbase_metric(const void* self, int param1);
bool QTreeWidget_override_virtual_initPainter(void* self, intptr_t slot);
void QTreeWidget_virtualbase_initPainter(const void* self, QPainter* painter);
bool QTreeWidget_override_virtual_redirected(void* self, intptr_t slot);
QPaintDevice* QTreeWidget_virtualbase_redirected(const void* self, QPoint* offset);
bool QTreeWidget_override_virtual_sharedPainter(void* self, intptr_t slot);
QPainter* QTreeWidget_virtualbase_sharedPainter(const void* self);
bool QTreeWidget_override_virtual_childEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_childEvent(void* self, QChildEvent* event);
bool QTreeWidget_override_virtual_customEvent(void* self, intptr_t slot);
void QTreeWidget_virtualbase_customEvent(void* self, QEvent* event);
bool QTreeWidget_override_virtual_connectNotify(void* self, intptr_t slot);
void QTreeWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QTreeWidget_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QTreeWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
struct miqt_array /* of QTreeWidgetItem* */  QTreeWidget_protectedbase_items(bool* _dynamic_cast_ok, const void* self, QMimeData* data);
QModelIndex* QTreeWidget_protectedbase_indexFromItem(bool* _dynamic_cast_ok, const void* self, QTreeWidgetItem* item);
QModelIndex* QTreeWidget_protectedbase_indexFromItemWithItem(bool* _dynamic_cast_ok, const void* self, QTreeWidgetItem* item);
QTreeWidgetItem* QTreeWidget_protectedbase_itemFromIndex(bool* _dynamic_cast_ok, const void* self, QModelIndex* index);
QModelIndex* QTreeWidget_protectedbase_indexFromItem2(bool* _dynamic_cast_ok, const void* self, QTreeWidgetItem* item, int column);
QModelIndex* QTreeWidget_protectedbase_indexFromItem22(bool* _dynamic_cast_ok, const void* self, QTreeWidgetItem* item, int column);
void QTreeWidget_protectedbase_columnResized(bool* _dynamic_cast_ok, void* self, int column, int oldSize, int newSize);
void QTreeWidget_protectedbase_columnCountChanged(bool* _dynamic_cast_ok, void* self, int oldCount, int newCount);
void QTreeWidget_protectedbase_columnMoved(bool* _dynamic_cast_ok, void* self);
void QTreeWidget_protectedbase_reexpand(bool* _dynamic_cast_ok, void* self);
void QTreeWidget_protectedbase_rowsRemoved(bool* _dynamic_cast_ok, void* self, QModelIndex* parent, int first, int last);
void QTreeWidget_protectedbase_drawTree(bool* _dynamic_cast_ok, const void* self, QPainter* painter, QRegion* region);
int QTreeWidget_protectedbase_indexRowSizeHint(bool* _dynamic_cast_ok, const void* self, QModelIndex* index);
int QTreeWidget_protectedbase_rowHeight(bool* _dynamic_cast_ok, const void* self, QModelIndex* index);
void QTreeWidget_protectedbase_setHorizontalStepsPerItem(bool* _dynamic_cast_ok, void* self, int steps);
int QTreeWidget_protectedbase_horizontalStepsPerItem(bool* _dynamic_cast_ok, const void* self);
void QTreeWidget_protectedbase_setVerticalStepsPerItem(bool* _dynamic_cast_ok, void* self, int steps);
int QTreeWidget_protectedbase_verticalStepsPerItem(bool* _dynamic_cast_ok, const void* self);
int QTreeWidget_protectedbase_state(bool* _dynamic_cast_ok, const void* self);
void QTreeWidget_protectedbase_setState(bool* _dynamic_cast_ok, void* self, int state);
void QTreeWidget_protectedbase_scheduleDelayedItemsLayout(bool* _dynamic_cast_ok, void* self);
void QTreeWidget_protectedbase_executeDelayedItemsLayout(bool* _dynamic_cast_ok, void* self);
void QTreeWidget_protectedbase_setDirtyRegion(bool* _dynamic_cast_ok, void* self, QRegion* region);
void QTreeWidget_protectedbase_scrollDirtyRegion(bool* _dynamic_cast_ok, void* self, int dx, int dy);
QPoint* QTreeWidget_protectedbase_dirtyRegionOffset(bool* _dynamic_cast_ok, const void* self);
void QTreeWidget_protectedbase_startAutoScroll(bool* _dynamic_cast_ok, void* self);
void QTreeWidget_protectedbase_stopAutoScroll(bool* _dynamic_cast_ok, void* self);
void QTreeWidget_protectedbase_doAutoScroll(bool* _dynamic_cast_ok, void* self);
int QTreeWidget_protectedbase_dropIndicatorPosition(bool* _dynamic_cast_ok, const void* self);
void QTreeWidget_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom);
QMargins* QTreeWidget_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self);
void QTreeWidget_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1);
void QTreeWidget_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option);
void QTreeWidget_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QTreeWidget_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QTreeWidget_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QTreeWidget_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QTreeWidget_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QTreeWidget_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QTreeWidget_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QTreeWidget_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QTreeWidget_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QTreeWidget_staticMetaObject();
void QTreeWidget_delete(QTreeWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
