#pragma once
#ifndef MIQT_QT6_GEN_QCOMBOBOX_H
#define MIQT_QT6_GEN_QCOMBOBOX_H

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
class QActionEvent;
class QChildEvent;
class QCloseEvent;
class QComboBox;
class QCompleter;
class QContextMenuEvent;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEnterEvent;
class QEvent;
class QFocusEvent;
class QHideEvent;
class QIcon;
class QInputMethodEvent;
class QKeyEvent;
class QLineEdit;
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
class QResizeEvent;
class QShowEvent;
class QSize;
class QStyleOptionComboBox;
class QTabletEvent;
class QTimerEvent;
class QValidator;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractItemDelegate QAbstractItemDelegate;
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QAbstractItemView QAbstractItemView;
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QComboBox QComboBox;
typedef struct QCompleter QCompleter;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEnterEvent QEnterEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QIcon QIcon;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QLineEdit QLineEdit;
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
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QStyleOptionComboBox QStyleOptionComboBox;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QValidator QValidator;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

QComboBox* QComboBox_new(QWidget* parent);
QComboBox* QComboBox_new2();
void QComboBox_virtbase(QComboBox* src, QWidget** outptr_QWidget);
QMetaObject* QComboBox_metaObject(const QComboBox* self);
void* QComboBox_metacast(QComboBox* self, const char* param1);
int QComboBox_metacall(QComboBox* self, int param1, int param2, void** param3);
struct miqt_string QComboBox_tr(const char* s);
int QComboBox_maxVisibleItems(const QComboBox* self);
void QComboBox_setMaxVisibleItems(QComboBox* self, int maxItems);
int QComboBox_count(const QComboBox* self);
void QComboBox_setMaxCount(QComboBox* self, int max);
int QComboBox_maxCount(const QComboBox* self);
bool QComboBox_duplicatesEnabled(const QComboBox* self);
void QComboBox_setDuplicatesEnabled(QComboBox* self, bool enable);
void QComboBox_setFrame(QComboBox* self, bool frame);
bool QComboBox_hasFrame(const QComboBox* self);
int QComboBox_findText(const QComboBox* self, struct miqt_string text);
int QComboBox_findData(const QComboBox* self, QVariant* data);
int QComboBox_insertPolicy(const QComboBox* self);
void QComboBox_setInsertPolicy(QComboBox* self, int policy);
int QComboBox_sizeAdjustPolicy(const QComboBox* self);
void QComboBox_setSizeAdjustPolicy(QComboBox* self, int policy);
int QComboBox_minimumContentsLength(const QComboBox* self);
void QComboBox_setMinimumContentsLength(QComboBox* self, int characters);
QSize* QComboBox_iconSize(const QComboBox* self);
void QComboBox_setIconSize(QComboBox* self, QSize* size);
void QComboBox_setPlaceholderText(QComboBox* self, struct miqt_string placeholderText);
struct miqt_string QComboBox_placeholderText(const QComboBox* self);
bool QComboBox_isEditable(const QComboBox* self);
void QComboBox_setEditable(QComboBox* self, bool editable);
void QComboBox_setLineEdit(QComboBox* self, QLineEdit* edit);
QLineEdit* QComboBox_lineEdit(const QComboBox* self);
void QComboBox_setValidator(QComboBox* self, QValidator* v);
QValidator* QComboBox_validator(const QComboBox* self);
void QComboBox_setCompleter(QComboBox* self, QCompleter* c);
QCompleter* QComboBox_completer(const QComboBox* self);
QAbstractItemDelegate* QComboBox_itemDelegate(const QComboBox* self);
void QComboBox_setItemDelegate(QComboBox* self, QAbstractItemDelegate* delegate);
QAbstractItemModel* QComboBox_model(const QComboBox* self);
void QComboBox_setModel(QComboBox* self, QAbstractItemModel* model);
QModelIndex* QComboBox_rootModelIndex(const QComboBox* self);
void QComboBox_setRootModelIndex(QComboBox* self, QModelIndex* index);
int QComboBox_modelColumn(const QComboBox* self);
void QComboBox_setModelColumn(QComboBox* self, int visibleColumn);
int QComboBox_currentIndex(const QComboBox* self);
struct miqt_string QComboBox_currentText(const QComboBox* self);
QVariant* QComboBox_currentData(const QComboBox* self);
struct miqt_string QComboBox_itemText(const QComboBox* self, int index);
QIcon* QComboBox_itemIcon(const QComboBox* self, int index);
QVariant* QComboBox_itemData(const QComboBox* self, int index);
void QComboBox_addItem(QComboBox* self, struct miqt_string text);
void QComboBox_addItem2(QComboBox* self, QIcon* icon, struct miqt_string text);
void QComboBox_addItems(QComboBox* self, struct miqt_array /* of struct miqt_string */  texts);
void QComboBox_insertItem(QComboBox* self, int index, struct miqt_string text);
void QComboBox_insertItem2(QComboBox* self, int index, QIcon* icon, struct miqt_string text);
void QComboBox_insertItems(QComboBox* self, int index, struct miqt_array /* of struct miqt_string */  texts);
void QComboBox_insertSeparator(QComboBox* self, int index);
void QComboBox_removeItem(QComboBox* self, int index);
void QComboBox_setItemText(QComboBox* self, int index, struct miqt_string text);
void QComboBox_setItemIcon(QComboBox* self, int index, QIcon* icon);
void QComboBox_setItemData(QComboBox* self, int index, QVariant* value);
QAbstractItemView* QComboBox_view(const QComboBox* self);
void QComboBox_setView(QComboBox* self, QAbstractItemView* itemView);
QSize* QComboBox_sizeHint(const QComboBox* self);
QSize* QComboBox_minimumSizeHint(const QComboBox* self);
void QComboBox_showPopup(QComboBox* self);
void QComboBox_hidePopup(QComboBox* self);
bool QComboBox_event(QComboBox* self, QEvent* event);
QVariant* QComboBox_inputMethodQuery(const QComboBox* self, int param1);
QVariant* QComboBox_inputMethodQuery2(const QComboBox* self, int query, QVariant* argument);
void QComboBox_clear(QComboBox* self);
void QComboBox_clearEditText(QComboBox* self);
void QComboBox_setEditText(QComboBox* self, struct miqt_string text);
void QComboBox_setCurrentIndex(QComboBox* self, int index);
void QComboBox_setCurrentText(QComboBox* self, struct miqt_string text);
void QComboBox_editTextChanged(QComboBox* self, struct miqt_string param1);
void QComboBox_connect_editTextChanged(QComboBox* self, intptr_t slot);
void QComboBox_activated(QComboBox* self, int index);
void QComboBox_connect_activated(QComboBox* self, intptr_t slot);
void QComboBox_textActivated(QComboBox* self, struct miqt_string param1);
void QComboBox_connect_textActivated(QComboBox* self, intptr_t slot);
void QComboBox_highlighted(QComboBox* self, int index);
void QComboBox_connect_highlighted(QComboBox* self, intptr_t slot);
void QComboBox_textHighlighted(QComboBox* self, struct miqt_string param1);
void QComboBox_connect_textHighlighted(QComboBox* self, intptr_t slot);
void QComboBox_currentIndexChanged(QComboBox* self, int index);
void QComboBox_connect_currentIndexChanged(QComboBox* self, intptr_t slot);
void QComboBox_currentTextChanged(QComboBox* self, struct miqt_string param1);
void QComboBox_connect_currentTextChanged(QComboBox* self, intptr_t slot);
void QComboBox_focusInEvent(QComboBox* self, QFocusEvent* e);
void QComboBox_focusOutEvent(QComboBox* self, QFocusEvent* e);
void QComboBox_changeEvent(QComboBox* self, QEvent* e);
void QComboBox_resizeEvent(QComboBox* self, QResizeEvent* e);
void QComboBox_paintEvent(QComboBox* self, QPaintEvent* e);
void QComboBox_showEvent(QComboBox* self, QShowEvent* e);
void QComboBox_hideEvent(QComboBox* self, QHideEvent* e);
void QComboBox_mousePressEvent(QComboBox* self, QMouseEvent* e);
void QComboBox_mouseReleaseEvent(QComboBox* self, QMouseEvent* e);
void QComboBox_keyPressEvent(QComboBox* self, QKeyEvent* e);
void QComboBox_keyReleaseEvent(QComboBox* self, QKeyEvent* e);
void QComboBox_wheelEvent(QComboBox* self, QWheelEvent* e);
void QComboBox_contextMenuEvent(QComboBox* self, QContextMenuEvent* e);
void QComboBox_inputMethodEvent(QComboBox* self, QInputMethodEvent* param1);
void QComboBox_initStyleOption(const QComboBox* self, QStyleOptionComboBox* option);
struct miqt_string QComboBox_tr2(const char* s, const char* c);
struct miqt_string QComboBox_tr3(const char* s, const char* c, int n);
int QComboBox_findText2(const QComboBox* self, struct miqt_string text, int flags);
int QComboBox_findData2(const QComboBox* self, QVariant* data, int role);
int QComboBox_findData3(const QComboBox* self, QVariant* data, int role, int flags);
QVariant* QComboBox_currentData1(const QComboBox* self, int role);
QVariant* QComboBox_itemData2(const QComboBox* self, int index, int role);
void QComboBox_addItem22(QComboBox* self, struct miqt_string text, QVariant* userData);
void QComboBox_addItem3(QComboBox* self, QIcon* icon, struct miqt_string text, QVariant* userData);
void QComboBox_insertItem3(QComboBox* self, int index, struct miqt_string text, QVariant* userData);
void QComboBox_insertItem4(QComboBox* self, int index, QIcon* icon, struct miqt_string text, QVariant* userData);
void QComboBox_setItemData3(QComboBox* self, int index, QVariant* value, int role);
bool QComboBox_override_virtual_metaObject(void* self, intptr_t slot);
QMetaObject* QComboBox_virtualbase_metaObject(const void* self);
bool QComboBox_override_virtual_metacast(void* self, intptr_t slot);
void* QComboBox_virtualbase_metacast(void* self, const char* param1);
bool QComboBox_override_virtual_metacall(void* self, intptr_t slot);
int QComboBox_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QComboBox_override_virtual_setModel(void* self, intptr_t slot);
void QComboBox_virtualbase_setModel(void* self, QAbstractItemModel* model);
bool QComboBox_override_virtual_sizeHint(void* self, intptr_t slot);
QSize* QComboBox_virtualbase_sizeHint(const void* self);
bool QComboBox_override_virtual_minimumSizeHint(void* self, intptr_t slot);
QSize* QComboBox_virtualbase_minimumSizeHint(const void* self);
bool QComboBox_override_virtual_showPopup(void* self, intptr_t slot);
void QComboBox_virtualbase_showPopup(void* self);
bool QComboBox_override_virtual_hidePopup(void* self, intptr_t slot);
void QComboBox_virtualbase_hidePopup(void* self);
bool QComboBox_override_virtual_event(void* self, intptr_t slot);
bool QComboBox_virtualbase_event(void* self, QEvent* event);
bool QComboBox_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QComboBox_virtualbase_inputMethodQuery(const void* self, int param1);
bool QComboBox_override_virtual_focusInEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_focusInEvent(void* self, QFocusEvent* e);
bool QComboBox_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_focusOutEvent(void* self, QFocusEvent* e);
bool QComboBox_override_virtual_changeEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_changeEvent(void* self, QEvent* e);
bool QComboBox_override_virtual_resizeEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_resizeEvent(void* self, QResizeEvent* e);
bool QComboBox_override_virtual_paintEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_paintEvent(void* self, QPaintEvent* e);
bool QComboBox_override_virtual_showEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_showEvent(void* self, QShowEvent* e);
bool QComboBox_override_virtual_hideEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_hideEvent(void* self, QHideEvent* e);
bool QComboBox_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_mousePressEvent(void* self, QMouseEvent* e);
bool QComboBox_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e);
bool QComboBox_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_keyPressEvent(void* self, QKeyEvent* e);
bool QComboBox_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e);
bool QComboBox_override_virtual_wheelEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_wheelEvent(void* self, QWheelEvent* e);
bool QComboBox_override_virtual_contextMenuEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* e);
bool QComboBox_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
bool QComboBox_override_virtual_initStyleOption(void* self, intptr_t slot);
void QComboBox_virtualbase_initStyleOption(const void* self, QStyleOptionComboBox* option);
bool QComboBox_override_virtual_devType(void* self, intptr_t slot);
int QComboBox_virtualbase_devType(const void* self);
bool QComboBox_override_virtual_setVisible(void* self, intptr_t slot);
void QComboBox_virtualbase_setVisible(void* self, bool visible);
bool QComboBox_override_virtual_heightForWidth(void* self, intptr_t slot);
int QComboBox_virtualbase_heightForWidth(const void* self, int param1);
bool QComboBox_override_virtual_hasHeightForWidth(void* self, intptr_t slot);
bool QComboBox_virtualbase_hasHeightForWidth(const void* self);
bool QComboBox_override_virtual_paintEngine(void* self, intptr_t slot);
QPaintEngine* QComboBox_virtualbase_paintEngine(const void* self);
bool QComboBox_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
bool QComboBox_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
bool QComboBox_override_virtual_enterEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_enterEvent(void* self, QEnterEvent* event);
bool QComboBox_override_virtual_leaveEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_leaveEvent(void* self, QEvent* event);
bool QComboBox_override_virtual_moveEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_moveEvent(void* self, QMoveEvent* event);
bool QComboBox_override_virtual_closeEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_closeEvent(void* self, QCloseEvent* event);
bool QComboBox_override_virtual_tabletEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_tabletEvent(void* self, QTabletEvent* event);
bool QComboBox_override_virtual_actionEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_actionEvent(void* self, QActionEvent* event);
bool QComboBox_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
bool QComboBox_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
bool QComboBox_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
bool QComboBox_override_virtual_dropEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QComboBox_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QComboBox_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
bool QComboBox_override_virtual_metric(void* self, intptr_t slot);
int QComboBox_virtualbase_metric(const void* self, int param1);
bool QComboBox_override_virtual_initPainter(void* self, intptr_t slot);
void QComboBox_virtualbase_initPainter(const void* self, QPainter* painter);
bool QComboBox_override_virtual_redirected(void* self, intptr_t slot);
QPaintDevice* QComboBox_virtualbase_redirected(const void* self, QPoint* offset);
bool QComboBox_override_virtual_sharedPainter(void* self, intptr_t slot);
QPainter* QComboBox_virtualbase_sharedPainter(const void* self);
bool QComboBox_override_virtual_focusNextPrevChild(void* self, intptr_t slot);
bool QComboBox_virtualbase_focusNextPrevChild(void* self, bool next);
bool QComboBox_override_virtual_eventFilter(void* self, intptr_t slot);
bool QComboBox_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QComboBox_override_virtual_timerEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QComboBox_override_virtual_childEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_childEvent(void* self, QChildEvent* event);
bool QComboBox_override_virtual_customEvent(void* self, intptr_t slot);
void QComboBox_virtualbase_customEvent(void* self, QEvent* event);
bool QComboBox_override_virtual_connectNotify(void* self, intptr_t slot);
void QComboBox_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QComboBox_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QComboBox_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QComboBox_staticMetaObject();
void QComboBox_delete(QComboBox* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
