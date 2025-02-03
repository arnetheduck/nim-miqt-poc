#pragma once
#ifndef MIQT_QT_GEN_QHEADERVIEW_H
#define MIQT_QT_GEN_QHEADERVIEW_H

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
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
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
typedef struct QStyleOptionViewItem QStyleOptionViewItem;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

QHeaderView* QHeaderView_new(int orientation);
QHeaderView* QHeaderView_new2(int orientation, QWidget* parent);
void QHeaderView_virtbase(QHeaderView* src, QAbstractItemView** outptr_QAbstractItemView);
QMetaObject* QHeaderView_metaObject(const QHeaderView* self);
void* QHeaderView_metacast(QHeaderView* self, const char* param1);
int QHeaderView_metacall(QHeaderView* self, int param1, int param2, void** param3);
struct miqt_string QHeaderView_tr(const char* s);
struct miqt_string QHeaderView_trUtf8(const char* s);
void QHeaderView_setModel(QHeaderView* self, QAbstractItemModel* model);
int QHeaderView_orientation(const QHeaderView* self);
int QHeaderView_offset(const QHeaderView* self);
int QHeaderView_length(const QHeaderView* self);
QSize* QHeaderView_sizeHint(const QHeaderView* self);
void QHeaderView_setVisible(QHeaderView* self, bool v);
int QHeaderView_sectionSizeHint(const QHeaderView* self, int logicalIndex);
int QHeaderView_visualIndexAt(const QHeaderView* self, int position);
int QHeaderView_logicalIndexAt(const QHeaderView* self, int position);
int QHeaderView_logicalIndexAt2(const QHeaderView* self, int x, int y);
int QHeaderView_logicalIndexAtWithPos(const QHeaderView* self, QPoint* pos);
int QHeaderView_sectionSize(const QHeaderView* self, int logicalIndex);
int QHeaderView_sectionPosition(const QHeaderView* self, int logicalIndex);
int QHeaderView_sectionViewportPosition(const QHeaderView* self, int logicalIndex);
void QHeaderView_moveSection(QHeaderView* self, int from, int to);
void QHeaderView_swapSections(QHeaderView* self, int first, int second);
void QHeaderView_resizeSection(QHeaderView* self, int logicalIndex, int size);
void QHeaderView_resizeSections(QHeaderView* self, int mode);
bool QHeaderView_isSectionHidden(const QHeaderView* self, int logicalIndex);
void QHeaderView_setSectionHidden(QHeaderView* self, int logicalIndex, bool hide);
int QHeaderView_hiddenSectionCount(const QHeaderView* self);
void QHeaderView_hideSection(QHeaderView* self, int logicalIndex);
void QHeaderView_showSection(QHeaderView* self, int logicalIndex);
int QHeaderView_count(const QHeaderView* self);
int QHeaderView_visualIndex(const QHeaderView* self, int logicalIndex);
int QHeaderView_logicalIndex(const QHeaderView* self, int visualIndex);
void QHeaderView_setSectionsMovable(QHeaderView* self, bool movable);
bool QHeaderView_sectionsMovable(const QHeaderView* self);
void QHeaderView_setFirstSectionMovable(QHeaderView* self, bool movable);
bool QHeaderView_isFirstSectionMovable(const QHeaderView* self);
void QHeaderView_setSectionsClickable(QHeaderView* self, bool clickable);
bool QHeaderView_sectionsClickable(const QHeaderView* self);
void QHeaderView_setHighlightSections(QHeaderView* self, bool highlight);
bool QHeaderView_highlightSections(const QHeaderView* self);
int QHeaderView_sectionResizeMode(const QHeaderView* self, int logicalIndex);
void QHeaderView_setSectionResizeMode(QHeaderView* self, int mode);
void QHeaderView_setSectionResizeMode2(QHeaderView* self, int logicalIndex, int mode);
void QHeaderView_setResizeContentsPrecision(QHeaderView* self, int precision);
int QHeaderView_resizeContentsPrecision(const QHeaderView* self);
int QHeaderView_stretchSectionCount(const QHeaderView* self);
void QHeaderView_setSortIndicatorShown(QHeaderView* self, bool show);
bool QHeaderView_isSortIndicatorShown(const QHeaderView* self);
void QHeaderView_setSortIndicator(QHeaderView* self, int logicalIndex, int order);
int QHeaderView_sortIndicatorSection(const QHeaderView* self);
int QHeaderView_sortIndicatorOrder(const QHeaderView* self);
bool QHeaderView_stretchLastSection(const QHeaderView* self);
void QHeaderView_setStretchLastSection(QHeaderView* self, bool stretch);
bool QHeaderView_cascadingSectionResizes(const QHeaderView* self);
void QHeaderView_setCascadingSectionResizes(QHeaderView* self, bool enable);
int QHeaderView_defaultSectionSize(const QHeaderView* self);
void QHeaderView_setDefaultSectionSize(QHeaderView* self, int size);
void QHeaderView_resetDefaultSectionSize(QHeaderView* self);
int QHeaderView_minimumSectionSize(const QHeaderView* self);
void QHeaderView_setMinimumSectionSize(QHeaderView* self, int size);
int QHeaderView_maximumSectionSize(const QHeaderView* self);
void QHeaderView_setMaximumSectionSize(QHeaderView* self, int size);
int QHeaderView_defaultAlignment(const QHeaderView* self);
void QHeaderView_setDefaultAlignment(QHeaderView* self, int alignment);
void QHeaderView_doItemsLayout(QHeaderView* self);
bool QHeaderView_sectionsMoved(const QHeaderView* self);
bool QHeaderView_sectionsHidden(const QHeaderView* self);
struct miqt_string QHeaderView_saveState(const QHeaderView* self);
bool QHeaderView_restoreState(QHeaderView* self, struct miqt_string state);
void QHeaderView_reset(QHeaderView* self);
void QHeaderView_setOffset(QHeaderView* self, int offset);
void QHeaderView_setOffsetToSectionPosition(QHeaderView* self, int visualIndex);
void QHeaderView_setOffsetToLastSection(QHeaderView* self);
void QHeaderView_headerDataChanged(QHeaderView* self, int orientation, int logicalFirst, int logicalLast);
void QHeaderView_sectionMoved(QHeaderView* self, int logicalIndex, int oldVisualIndex, int newVisualIndex);
void QHeaderView_connect_sectionMoved(QHeaderView* self, intptr_t slot);
void QHeaderView_sectionResized(QHeaderView* self, int logicalIndex, int oldSize, int newSize);
void QHeaderView_connect_sectionResized(QHeaderView* self, intptr_t slot);
void QHeaderView_sectionPressed(QHeaderView* self, int logicalIndex);
void QHeaderView_connect_sectionPressed(QHeaderView* self, intptr_t slot);
void QHeaderView_sectionClicked(QHeaderView* self, int logicalIndex);
void QHeaderView_connect_sectionClicked(QHeaderView* self, intptr_t slot);
void QHeaderView_sectionEntered(QHeaderView* self, int logicalIndex);
void QHeaderView_connect_sectionEntered(QHeaderView* self, intptr_t slot);
void QHeaderView_sectionDoubleClicked(QHeaderView* self, int logicalIndex);
void QHeaderView_connect_sectionDoubleClicked(QHeaderView* self, intptr_t slot);
void QHeaderView_sectionCountChanged(QHeaderView* self, int oldCount, int newCount);
void QHeaderView_connect_sectionCountChanged(QHeaderView* self, intptr_t slot);
void QHeaderView_sectionHandleDoubleClicked(QHeaderView* self, int logicalIndex);
void QHeaderView_connect_sectionHandleDoubleClicked(QHeaderView* self, intptr_t slot);
void QHeaderView_geometriesChanged(QHeaderView* self);
void QHeaderView_connect_geometriesChanged(QHeaderView* self, intptr_t slot);
void QHeaderView_sortIndicatorChanged(QHeaderView* self, int logicalIndex, int order);
void QHeaderView_connect_sortIndicatorChanged(QHeaderView* self, intptr_t slot);
void QHeaderView_currentChanged(QHeaderView* self, QModelIndex* current, QModelIndex* old);
bool QHeaderView_event(QHeaderView* self, QEvent* e);
void QHeaderView_paintEvent(QHeaderView* self, QPaintEvent* e);
void QHeaderView_mousePressEvent(QHeaderView* self, QMouseEvent* e);
void QHeaderView_mouseMoveEvent(QHeaderView* self, QMouseEvent* e);
void QHeaderView_mouseReleaseEvent(QHeaderView* self, QMouseEvent* e);
void QHeaderView_mouseDoubleClickEvent(QHeaderView* self, QMouseEvent* e);
bool QHeaderView_viewportEvent(QHeaderView* self, QEvent* e);
void QHeaderView_paintSection(const QHeaderView* self, QPainter* painter, QRect* rect, int logicalIndex);
QSize* QHeaderView_sectionSizeFromContents(const QHeaderView* self, int logicalIndex);
int QHeaderView_horizontalOffset(const QHeaderView* self);
int QHeaderView_verticalOffset(const QHeaderView* self);
void QHeaderView_updateGeometries(QHeaderView* self);
void QHeaderView_scrollContentsBy(QHeaderView* self, int dx, int dy);
void QHeaderView_dataChanged(QHeaderView* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);
void QHeaderView_rowsInserted(QHeaderView* self, QModelIndex* parent, int start, int end);
QRect* QHeaderView_visualRect(const QHeaderView* self, QModelIndex* index);
void QHeaderView_scrollTo(QHeaderView* self, QModelIndex* index, int hint);
QModelIndex* QHeaderView_indexAt(const QHeaderView* self, QPoint* p);
bool QHeaderView_isIndexHidden(const QHeaderView* self, QModelIndex* index);
QModelIndex* QHeaderView_moveCursor(QHeaderView* self, int param1, int param2);
void QHeaderView_setSelection(QHeaderView* self, QRect* rect, int flags);
QRegion* QHeaderView_visualRegionForSelection(const QHeaderView* self, QItemSelection* selection);
struct miqt_string QHeaderView_tr2(const char* s, const char* c);
struct miqt_string QHeaderView_tr3(const char* s, const char* c, int n);
struct miqt_string QHeaderView_trUtf82(const char* s, const char* c);
struct miqt_string QHeaderView_trUtf83(const char* s, const char* c, int n);
bool QHeaderView_override_virtual_metacall(void* self, intptr_t slot);
int QHeaderView_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QHeaderView_override_virtual_setModel(void* self, intptr_t slot);
void QHeaderView_virtualbase_setModel(void* self, QAbstractItemModel* model);
bool QHeaderView_override_virtual_sizeHint(void* self, intptr_t slot);
QSize* QHeaderView_virtualbase_sizeHint(const void* self);
bool QHeaderView_override_virtual_setVisible(void* self, intptr_t slot);
void QHeaderView_virtualbase_setVisible(void* self, bool v);
bool QHeaderView_override_virtual_doItemsLayout(void* self, intptr_t slot);
void QHeaderView_virtualbase_doItemsLayout(void* self);
bool QHeaderView_override_virtual_reset(void* self, intptr_t slot);
void QHeaderView_virtualbase_reset(void* self);
bool QHeaderView_override_virtual_currentChanged(void* self, intptr_t slot);
void QHeaderView_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* old);
bool QHeaderView_override_virtual_event(void* self, intptr_t slot);
bool QHeaderView_virtualbase_event(void* self, QEvent* e);
bool QHeaderView_override_virtual_paintEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_paintEvent(void* self, QPaintEvent* e);
bool QHeaderView_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_mousePressEvent(void* self, QMouseEvent* e);
bool QHeaderView_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* e);
bool QHeaderView_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e);
bool QHeaderView_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* e);
bool QHeaderView_override_virtual_viewportEvent(void* self, intptr_t slot);
bool QHeaderView_virtualbase_viewportEvent(void* self, QEvent* e);
bool QHeaderView_override_virtual_paintSection(void* self, intptr_t slot);
void QHeaderView_virtualbase_paintSection(const void* self, QPainter* painter, QRect* rect, int logicalIndex);
bool QHeaderView_override_virtual_sectionSizeFromContents(void* self, intptr_t slot);
QSize* QHeaderView_virtualbase_sectionSizeFromContents(const void* self, int logicalIndex);
bool QHeaderView_override_virtual_horizontalOffset(void* self, intptr_t slot);
int QHeaderView_virtualbase_horizontalOffset(const void* self);
bool QHeaderView_override_virtual_verticalOffset(void* self, intptr_t slot);
int QHeaderView_virtualbase_verticalOffset(const void* self);
bool QHeaderView_override_virtual_updateGeometries(void* self, intptr_t slot);
void QHeaderView_virtualbase_updateGeometries(void* self);
bool QHeaderView_override_virtual_scrollContentsBy(void* self, intptr_t slot);
void QHeaderView_virtualbase_scrollContentsBy(void* self, int dx, int dy);
bool QHeaderView_override_virtual_dataChanged(void* self, intptr_t slot);
void QHeaderView_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles);
bool QHeaderView_override_virtual_rowsInserted(void* self, intptr_t slot);
void QHeaderView_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end);
bool QHeaderView_override_virtual_visualRect(void* self, intptr_t slot);
QRect* QHeaderView_virtualbase_visualRect(const void* self, QModelIndex* index);
bool QHeaderView_override_virtual_scrollTo(void* self, intptr_t slot);
void QHeaderView_virtualbase_scrollTo(void* self, QModelIndex* index, int hint);
bool QHeaderView_override_virtual_indexAt(void* self, intptr_t slot);
QModelIndex* QHeaderView_virtualbase_indexAt(const void* self, QPoint* p);
bool QHeaderView_override_virtual_isIndexHidden(void* self, intptr_t slot);
bool QHeaderView_virtualbase_isIndexHidden(const void* self, QModelIndex* index);
bool QHeaderView_override_virtual_moveCursor(void* self, intptr_t slot);
QModelIndex* QHeaderView_virtualbase_moveCursor(void* self, int param1, int param2);
bool QHeaderView_override_virtual_setSelection(void* self, intptr_t slot);
void QHeaderView_virtualbase_setSelection(void* self, QRect* rect, int flags);
bool QHeaderView_override_virtual_visualRegionForSelection(void* self, intptr_t slot);
QRegion* QHeaderView_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection);
bool QHeaderView_override_virtual_setSelectionModel(void* self, intptr_t slot);
void QHeaderView_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel);
bool QHeaderView_override_virtual_keyboardSearch(void* self, intptr_t slot);
void QHeaderView_virtualbase_keyboardSearch(void* self, struct miqt_string search);
bool QHeaderView_override_virtual_sizeHintForRow(void* self, intptr_t slot);
int QHeaderView_virtualbase_sizeHintForRow(const void* self, int row);
bool QHeaderView_override_virtual_sizeHintForColumn(void* self, intptr_t slot);
int QHeaderView_virtualbase_sizeHintForColumn(const void* self, int column);
bool QHeaderView_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QHeaderView_virtualbase_inputMethodQuery(const void* self, int query);
bool QHeaderView_override_virtual_setRootIndex(void* self, intptr_t slot);
void QHeaderView_virtualbase_setRootIndex(void* self, QModelIndex* index);
bool QHeaderView_override_virtual_selectAll(void* self, intptr_t slot);
void QHeaderView_virtualbase_selectAll(void* self);
bool QHeaderView_override_virtual_rowsAboutToBeRemoved(void* self, intptr_t slot);
void QHeaderView_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end);
bool QHeaderView_override_virtual_selectionChanged(void* self, intptr_t slot);
void QHeaderView_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected);
bool QHeaderView_override_virtual_updateEditorData(void* self, intptr_t slot);
void QHeaderView_virtualbase_updateEditorData(void* self);
bool QHeaderView_override_virtual_updateEditorGeometries(void* self, intptr_t slot);
void QHeaderView_virtualbase_updateEditorGeometries(void* self);
bool QHeaderView_override_virtual_verticalScrollbarAction(void* self, intptr_t slot);
void QHeaderView_virtualbase_verticalScrollbarAction(void* self, int action);
bool QHeaderView_override_virtual_horizontalScrollbarAction(void* self, intptr_t slot);
void QHeaderView_virtualbase_horizontalScrollbarAction(void* self, int action);
bool QHeaderView_override_virtual_verticalScrollbarValueChanged(void* self, intptr_t slot);
void QHeaderView_virtualbase_verticalScrollbarValueChanged(void* self, int value);
bool QHeaderView_override_virtual_horizontalScrollbarValueChanged(void* self, intptr_t slot);
void QHeaderView_virtualbase_horizontalScrollbarValueChanged(void* self, int value);
bool QHeaderView_override_virtual_closeEditor(void* self, intptr_t slot);
void QHeaderView_virtualbase_closeEditor(void* self, QWidget* editor, int hint);
bool QHeaderView_override_virtual_commitData(void* self, intptr_t slot);
void QHeaderView_virtualbase_commitData(void* self, QWidget* editor);
bool QHeaderView_override_virtual_editorDestroyed(void* self, intptr_t slot);
void QHeaderView_virtualbase_editorDestroyed(void* self, QObject* editor);
bool QHeaderView_override_virtual_selectedIndexes(void* self, intptr_t slot);
struct miqt_array /* of QModelIndex* */  QHeaderView_virtualbase_selectedIndexes(const void* self);
bool QHeaderView_override_virtual_edit2(void* self, intptr_t slot);
bool QHeaderView_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event);
bool QHeaderView_override_virtual_selectionCommand(void* self, intptr_t slot);
int QHeaderView_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event);
bool QHeaderView_override_virtual_startDrag(void* self, intptr_t slot);
void QHeaderView_virtualbase_startDrag(void* self, int supportedActions);
bool QHeaderView_override_virtual_viewOptions(void* self, intptr_t slot);
QStyleOptionViewItem* QHeaderView_virtualbase_viewOptions(const void* self);
bool QHeaderView_override_virtual_focusNextPrevChild(void* self, intptr_t slot);
bool QHeaderView_virtualbase_focusNextPrevChild(void* self, bool next);
bool QHeaderView_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
bool QHeaderView_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
bool QHeaderView_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
bool QHeaderView_override_virtual_dropEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QHeaderView_override_virtual_focusInEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_focusInEvent(void* self, QFocusEvent* event);
bool QHeaderView_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
bool QHeaderView_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
bool QHeaderView_override_virtual_resizeEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_resizeEvent(void* self, QResizeEvent* event);
bool QHeaderView_override_virtual_timerEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QHeaderView_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event);
bool QHeaderView_override_virtual_eventFilter(void* self, intptr_t slot);
bool QHeaderView_virtualbase_eventFilter(void* self, QObject* object, QEvent* event);
bool QHeaderView_override_virtual_viewportSizeHint(void* self, intptr_t slot);
QSize* QHeaderView_virtualbase_viewportSizeHint(const void* self);
bool QHeaderView_override_virtual_minimumSizeHint(void* self, intptr_t slot);
QSize* QHeaderView_virtualbase_minimumSizeHint(const void* self);
bool QHeaderView_override_virtual_setupViewport(void* self, intptr_t slot);
void QHeaderView_virtualbase_setupViewport(void* self, QWidget* viewport);
bool QHeaderView_override_virtual_wheelEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_wheelEvent(void* self, QWheelEvent* param1);
bool QHeaderView_override_virtual_contextMenuEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
bool QHeaderView_override_virtual_changeEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_changeEvent(void* self, QEvent* param1);
bool QHeaderView_override_virtual_devType(void* self, intptr_t slot);
int QHeaderView_virtualbase_devType(const void* self);
bool QHeaderView_override_virtual_heightForWidth(void* self, intptr_t slot);
int QHeaderView_virtualbase_heightForWidth(const void* self, int param1);
bool QHeaderView_override_virtual_hasHeightForWidth(void* self, intptr_t slot);
bool QHeaderView_virtualbase_hasHeightForWidth(const void* self);
bool QHeaderView_override_virtual_paintEngine(void* self, intptr_t slot);
QPaintEngine* QHeaderView_virtualbase_paintEngine(const void* self);
bool QHeaderView_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
bool QHeaderView_override_virtual_enterEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_enterEvent(void* self, QEvent* event);
bool QHeaderView_override_virtual_leaveEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_leaveEvent(void* self, QEvent* event);
bool QHeaderView_override_virtual_moveEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_moveEvent(void* self, QMoveEvent* event);
bool QHeaderView_override_virtual_closeEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_closeEvent(void* self, QCloseEvent* event);
bool QHeaderView_override_virtual_tabletEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_tabletEvent(void* self, QTabletEvent* event);
bool QHeaderView_override_virtual_actionEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_actionEvent(void* self, QActionEvent* event);
bool QHeaderView_override_virtual_showEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_showEvent(void* self, QShowEvent* event);
bool QHeaderView_override_virtual_hideEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QHeaderView_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QHeaderView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
bool QHeaderView_override_virtual_metric(void* self, intptr_t slot);
int QHeaderView_virtualbase_metric(const void* self, int param1);
bool QHeaderView_override_virtual_initPainter(void* self, intptr_t slot);
void QHeaderView_virtualbase_initPainter(const void* self, QPainter* painter);
bool QHeaderView_override_virtual_redirected(void* self, intptr_t slot);
QPaintDevice* QHeaderView_virtualbase_redirected(const void* self, QPoint* offset);
bool QHeaderView_override_virtual_sharedPainter(void* self, intptr_t slot);
QPainter* QHeaderView_virtualbase_sharedPainter(const void* self);
bool QHeaderView_override_virtual_childEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_childEvent(void* self, QChildEvent* event);
bool QHeaderView_override_virtual_customEvent(void* self, intptr_t slot);
void QHeaderView_virtualbase_customEvent(void* self, QEvent* event);
bool QHeaderView_override_virtual_connectNotify(void* self, intptr_t slot);
void QHeaderView_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QHeaderView_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QHeaderView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QHeaderView_delete(QHeaderView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
