#pragma once
#ifndef MIQT_QT_GEN_QWIZARD_H
#define MIQT_QT_GEN_QWIZARD_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractButton;
class QActionEvent;
class QChildEvent;
class QCloseEvent;
class QContextMenuEvent;
class QDialog;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEvent;
class QFocusEvent;
class QHideEvent;
class QInputMethodEvent;
class QKeyEvent;
class QMetaMethod;
class QMetaObject;
class QMouseEvent;
class QMoveEvent;
class QObject;
class QPaintDevice;
class QPaintEngine;
class QPaintEvent;
class QPainter;
class QPixmap;
class QPoint;
class QResizeEvent;
class QShowEvent;
class QSize;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
class QWizard;
class QWizardPage;
#else
typedef struct QAbstractButton QAbstractButton;
typedef struct QActionEvent QActionEvent;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDialog QDialog;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QObject QObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPixmap QPixmap;
typedef struct QPoint QPoint;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
typedef struct QWizard QWizard;
typedef struct QWizardPage QWizardPage;
#endif

QWizard* QWizard_new(QWidget* parent);
QWizard* QWizard_new2();
QWizard* QWizard_new3(QWidget* parent, int flags);
void QWizard_virtbase(QWizard* src, QDialog** outptr_QDialog);
QMetaObject* QWizard_metaObject(const QWizard* self);
void* QWizard_metacast(QWizard* self, const char* param1);
int QWizard_metacall(QWizard* self, int param1, int param2, void** param3);
struct miqt_string QWizard_tr(const char* s);
struct miqt_string QWizard_trUtf8(const char* s);
int QWizard_addPage(QWizard* self, QWizardPage* page);
void QWizard_setPage(QWizard* self, int id, QWizardPage* page);
void QWizard_removePage(QWizard* self, int id);
QWizardPage* QWizard_page(const QWizard* self, int id);
bool QWizard_hasVisitedPage(const QWizard* self, int id);
struct miqt_array /* of int */  QWizard_visitedPages(const QWizard* self);
struct miqt_array /* of int */  QWizard_visitedIds(const QWizard* self);
struct miqt_array /* of int */  QWizard_pageIds(const QWizard* self);
void QWizard_setStartId(QWizard* self, int id);
int QWizard_startId(const QWizard* self);
QWizardPage* QWizard_currentPage(const QWizard* self);
int QWizard_currentId(const QWizard* self);
bool QWizard_validateCurrentPage(QWizard* self);
int QWizard_nextId(const QWizard* self);
void QWizard_setField(QWizard* self, struct miqt_string name, QVariant* value);
QVariant* QWizard_field(const QWizard* self, struct miqt_string name);
void QWizard_setWizardStyle(QWizard* self, int style);
int QWizard_wizardStyle(const QWizard* self);
void QWizard_setOption(QWizard* self, int option);
bool QWizard_testOption(const QWizard* self, int option);
void QWizard_setOptions(QWizard* self, int options);
int QWizard_options(const QWizard* self);
void QWizard_setButtonText(QWizard* self, int which, struct miqt_string text);
struct miqt_string QWizard_buttonText(const QWizard* self, int which);
void QWizard_setButtonLayout(QWizard* self, struct miqt_array /* of int */  layout);
void QWizard_setButton(QWizard* self, int which, QAbstractButton* button);
QAbstractButton* QWizard_button(const QWizard* self, int which);
void QWizard_setTitleFormat(QWizard* self, int format);
int QWizard_titleFormat(const QWizard* self);
void QWizard_setSubTitleFormat(QWizard* self, int format);
int QWizard_subTitleFormat(const QWizard* self);
void QWizard_setPixmap(QWizard* self, int which, QPixmap* pixmap);
QPixmap* QWizard_pixmap(const QWizard* self, int which);
void QWizard_setSideWidget(QWizard* self, QWidget* widget);
QWidget* QWizard_sideWidget(const QWizard* self);
void QWizard_setDefaultProperty(QWizard* self, const char* className, const char* property, const char* changedSignal);
void QWizard_setVisible(QWizard* self, bool visible);
QSize* QWizard_sizeHint(const QWizard* self);
void QWizard_currentIdChanged(QWizard* self, int id);
void QWizard_connect_currentIdChanged(QWizard* self, intptr_t slot);
void QWizard_helpRequested(QWizard* self);
void QWizard_connect_helpRequested(QWizard* self, intptr_t slot);
void QWizard_customButtonClicked(QWizard* self, int which);
void QWizard_connect_customButtonClicked(QWizard* self, intptr_t slot);
void QWizard_pageAdded(QWizard* self, int id);
void QWizard_connect_pageAdded(QWizard* self, intptr_t slot);
void QWizard_pageRemoved(QWizard* self, int id);
void QWizard_connect_pageRemoved(QWizard* self, intptr_t slot);
void QWizard_back(QWizard* self);
void QWizard_next(QWizard* self);
void QWizard_restart(QWizard* self);
bool QWizard_event(QWizard* self, QEvent* event);
void QWizard_resizeEvent(QWizard* self, QResizeEvent* event);
void QWizard_paintEvent(QWizard* self, QPaintEvent* event);
void QWizard_done(QWizard* self, int result);
void QWizard_initializePage(QWizard* self, int id);
void QWizard_cleanupPage(QWizard* self, int id);
struct miqt_string QWizard_tr2(const char* s, const char* c);
struct miqt_string QWizard_tr3(const char* s, const char* c, int n);
struct miqt_string QWizard_trUtf82(const char* s, const char* c);
struct miqt_string QWizard_trUtf83(const char* s, const char* c, int n);
void QWizard_setOption2(QWizard* self, int option, bool on);
bool QWizard_override_virtual_metaObject(void* self, intptr_t slot);
QMetaObject* QWizard_virtualbase_metaObject(const void* self);
bool QWizard_override_virtual_metacast(void* self, intptr_t slot);
void* QWizard_virtualbase_metacast(void* self, const char* param1);
bool QWizard_override_virtual_metacall(void* self, intptr_t slot);
int QWizard_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QWizard_override_virtual_validateCurrentPage(void* self, intptr_t slot);
bool QWizard_virtualbase_validateCurrentPage(void* self);
bool QWizard_override_virtual_nextId(void* self, intptr_t slot);
int QWizard_virtualbase_nextId(const void* self);
bool QWizard_override_virtual_setVisible(void* self, intptr_t slot);
void QWizard_virtualbase_setVisible(void* self, bool visible);
bool QWizard_override_virtual_sizeHint(void* self, intptr_t slot);
QSize* QWizard_virtualbase_sizeHint(const void* self);
bool QWizard_override_virtual_event(void* self, intptr_t slot);
bool QWizard_virtualbase_event(void* self, QEvent* event);
bool QWizard_override_virtual_resizeEvent(void* self, intptr_t slot);
void QWizard_virtualbase_resizeEvent(void* self, QResizeEvent* event);
bool QWizard_override_virtual_paintEvent(void* self, intptr_t slot);
void QWizard_virtualbase_paintEvent(void* self, QPaintEvent* event);
bool QWizard_override_virtual_done(void* self, intptr_t slot);
void QWizard_virtualbase_done(void* self, int result);
bool QWizard_override_virtual_initializePage(void* self, intptr_t slot);
void QWizard_virtualbase_initializePage(void* self, int id);
bool QWizard_override_virtual_cleanupPage(void* self, intptr_t slot);
void QWizard_virtualbase_cleanupPage(void* self, int id);
bool QWizard_override_virtual_minimumSizeHint(void* self, intptr_t slot);
QSize* QWizard_virtualbase_minimumSizeHint(const void* self);
bool QWizard_override_virtual_open(void* self, intptr_t slot);
void QWizard_virtualbase_open(void* self);
bool QWizard_override_virtual_exec(void* self, intptr_t slot);
int QWizard_virtualbase_exec(void* self);
bool QWizard_override_virtual_accept(void* self, intptr_t slot);
void QWizard_virtualbase_accept(void* self);
bool QWizard_override_virtual_reject(void* self, intptr_t slot);
void QWizard_virtualbase_reject(void* self);
bool QWizard_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QWizard_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
bool QWizard_override_virtual_closeEvent(void* self, intptr_t slot);
void QWizard_virtualbase_closeEvent(void* self, QCloseEvent* param1);
bool QWizard_override_virtual_showEvent(void* self, intptr_t slot);
void QWizard_virtualbase_showEvent(void* self, QShowEvent* param1);
bool QWizard_override_virtual_contextMenuEvent(void* self, intptr_t slot);
void QWizard_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
bool QWizard_override_virtual_eventFilter(void* self, intptr_t slot);
bool QWizard_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);
bool QWizard_override_virtual_devType(void* self, intptr_t slot);
int QWizard_virtualbase_devType(const void* self);
bool QWizard_override_virtual_heightForWidth(void* self, intptr_t slot);
int QWizard_virtualbase_heightForWidth(const void* self, int param1);
bool QWizard_override_virtual_hasHeightForWidth(void* self, intptr_t slot);
bool QWizard_virtualbase_hasHeightForWidth(const void* self);
bool QWizard_override_virtual_paintEngine(void* self, intptr_t slot);
QPaintEngine* QWizard_virtualbase_paintEngine(const void* self);
bool QWizard_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QWizard_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
bool QWizard_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QWizard_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
bool QWizard_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QWizard_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
bool QWizard_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QWizard_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
bool QWizard_override_virtual_wheelEvent(void* self, intptr_t slot);
void QWizard_virtualbase_wheelEvent(void* self, QWheelEvent* event);
bool QWizard_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QWizard_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
bool QWizard_override_virtual_focusInEvent(void* self, intptr_t slot);
void QWizard_virtualbase_focusInEvent(void* self, QFocusEvent* event);
bool QWizard_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QWizard_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
bool QWizard_override_virtual_enterEvent(void* self, intptr_t slot);
void QWizard_virtualbase_enterEvent(void* self, QEvent* event);
bool QWizard_override_virtual_leaveEvent(void* self, intptr_t slot);
void QWizard_virtualbase_leaveEvent(void* self, QEvent* event);
bool QWizard_override_virtual_moveEvent(void* self, intptr_t slot);
void QWizard_virtualbase_moveEvent(void* self, QMoveEvent* event);
bool QWizard_override_virtual_tabletEvent(void* self, intptr_t slot);
void QWizard_virtualbase_tabletEvent(void* self, QTabletEvent* event);
bool QWizard_override_virtual_actionEvent(void* self, intptr_t slot);
void QWizard_virtualbase_actionEvent(void* self, QActionEvent* event);
bool QWizard_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QWizard_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
bool QWizard_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QWizard_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
bool QWizard_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QWizard_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
bool QWizard_override_virtual_dropEvent(void* self, intptr_t slot);
void QWizard_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QWizard_override_virtual_hideEvent(void* self, intptr_t slot);
void QWizard_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QWizard_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QWizard_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
bool QWizard_override_virtual_changeEvent(void* self, intptr_t slot);
void QWizard_virtualbase_changeEvent(void* self, QEvent* param1);
bool QWizard_override_virtual_metric(void* self, intptr_t slot);
int QWizard_virtualbase_metric(const void* self, int param1);
bool QWizard_override_virtual_initPainter(void* self, intptr_t slot);
void QWizard_virtualbase_initPainter(const void* self, QPainter* painter);
bool QWizard_override_virtual_redirected(void* self, intptr_t slot);
QPaintDevice* QWizard_virtualbase_redirected(const void* self, QPoint* offset);
bool QWizard_override_virtual_sharedPainter(void* self, intptr_t slot);
QPainter* QWizard_virtualbase_sharedPainter(const void* self);
bool QWizard_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QWizard_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
bool QWizard_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QWizard_virtualbase_inputMethodQuery(const void* self, int param1);
bool QWizard_override_virtual_focusNextPrevChild(void* self, intptr_t slot);
bool QWizard_virtualbase_focusNextPrevChild(void* self, bool next);
bool QWizard_override_virtual_timerEvent(void* self, intptr_t slot);
void QWizard_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QWizard_override_virtual_childEvent(void* self, intptr_t slot);
void QWizard_virtualbase_childEvent(void* self, QChildEvent* event);
bool QWizard_override_virtual_customEvent(void* self, intptr_t slot);
void QWizard_virtualbase_customEvent(void* self, QEvent* event);
bool QWizard_override_virtual_connectNotify(void* self, intptr_t slot);
void QWizard_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QWizard_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QWizard_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QWizard_staticMetaObject();
void QWizard_delete(QWizard* self);

QWizardPage* QWizardPage_new(QWidget* parent);
QWizardPage* QWizardPage_new2();
void QWizardPage_virtbase(QWizardPage* src, QWidget** outptr_QWidget);
QMetaObject* QWizardPage_metaObject(const QWizardPage* self);
void* QWizardPage_metacast(QWizardPage* self, const char* param1);
int QWizardPage_metacall(QWizardPage* self, int param1, int param2, void** param3);
struct miqt_string QWizardPage_tr(const char* s);
struct miqt_string QWizardPage_trUtf8(const char* s);
void QWizardPage_setTitle(QWizardPage* self, struct miqt_string title);
struct miqt_string QWizardPage_title(const QWizardPage* self);
void QWizardPage_setSubTitle(QWizardPage* self, struct miqt_string subTitle);
struct miqt_string QWizardPage_subTitle(const QWizardPage* self);
void QWizardPage_setPixmap(QWizardPage* self, int which, QPixmap* pixmap);
QPixmap* QWizardPage_pixmap(const QWizardPage* self, int which);
void QWizardPage_setFinalPage(QWizardPage* self, bool finalPage);
bool QWizardPage_isFinalPage(const QWizardPage* self);
void QWizardPage_setCommitPage(QWizardPage* self, bool commitPage);
bool QWizardPage_isCommitPage(const QWizardPage* self);
void QWizardPage_setButtonText(QWizardPage* self, int which, struct miqt_string text);
struct miqt_string QWizardPage_buttonText(const QWizardPage* self, int which);
void QWizardPage_initializePage(QWizardPage* self);
void QWizardPage_cleanupPage(QWizardPage* self);
bool QWizardPage_validatePage(QWizardPage* self);
bool QWizardPage_isComplete(const QWizardPage* self);
int QWizardPage_nextId(const QWizardPage* self);
void QWizardPage_completeChanged(QWizardPage* self);
void QWizardPage_connect_completeChanged(QWizardPage* self, intptr_t slot);
struct miqt_string QWizardPage_tr2(const char* s, const char* c);
struct miqt_string QWizardPage_tr3(const char* s, const char* c, int n);
struct miqt_string QWizardPage_trUtf82(const char* s, const char* c);
struct miqt_string QWizardPage_trUtf83(const char* s, const char* c, int n);
bool QWizardPage_override_virtual_metaObject(void* self, intptr_t slot);
QMetaObject* QWizardPage_virtualbase_metaObject(const void* self);
bool QWizardPage_override_virtual_metacast(void* self, intptr_t slot);
void* QWizardPage_virtualbase_metacast(void* self, const char* param1);
bool QWizardPage_override_virtual_metacall(void* self, intptr_t slot);
int QWizardPage_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QWizardPage_override_virtual_initializePage(void* self, intptr_t slot);
void QWizardPage_virtualbase_initializePage(void* self);
bool QWizardPage_override_virtual_cleanupPage(void* self, intptr_t slot);
void QWizardPage_virtualbase_cleanupPage(void* self);
bool QWizardPage_override_virtual_validatePage(void* self, intptr_t slot);
bool QWizardPage_virtualbase_validatePage(void* self);
bool QWizardPage_override_virtual_isComplete(void* self, intptr_t slot);
bool QWizardPage_virtualbase_isComplete(const void* self);
bool QWizardPage_override_virtual_nextId(void* self, intptr_t slot);
int QWizardPage_virtualbase_nextId(const void* self);
bool QWizardPage_override_virtual_devType(void* self, intptr_t slot);
int QWizardPage_virtualbase_devType(const void* self);
bool QWizardPage_override_virtual_setVisible(void* self, intptr_t slot);
void QWizardPage_virtualbase_setVisible(void* self, bool visible);
bool QWizardPage_override_virtual_sizeHint(void* self, intptr_t slot);
QSize* QWizardPage_virtualbase_sizeHint(const void* self);
bool QWizardPage_override_virtual_minimumSizeHint(void* self, intptr_t slot);
QSize* QWizardPage_virtualbase_minimumSizeHint(const void* self);
bool QWizardPage_override_virtual_heightForWidth(void* self, intptr_t slot);
int QWizardPage_virtualbase_heightForWidth(const void* self, int param1);
bool QWizardPage_override_virtual_hasHeightForWidth(void* self, intptr_t slot);
bool QWizardPage_virtualbase_hasHeightForWidth(const void* self);
bool QWizardPage_override_virtual_paintEngine(void* self, intptr_t slot);
QPaintEngine* QWizardPage_virtualbase_paintEngine(const void* self);
bool QWizardPage_override_virtual_event(void* self, intptr_t slot);
bool QWizardPage_virtualbase_event(void* self, QEvent* event);
bool QWizardPage_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
bool QWizardPage_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
bool QWizardPage_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
bool QWizardPage_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
bool QWizardPage_override_virtual_wheelEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_wheelEvent(void* self, QWheelEvent* event);
bool QWizardPage_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
bool QWizardPage_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
bool QWizardPage_override_virtual_focusInEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_focusInEvent(void* self, QFocusEvent* event);
bool QWizardPage_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
bool QWizardPage_override_virtual_enterEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_enterEvent(void* self, QEvent* event);
bool QWizardPage_override_virtual_leaveEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_leaveEvent(void* self, QEvent* event);
bool QWizardPage_override_virtual_paintEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_paintEvent(void* self, QPaintEvent* event);
bool QWizardPage_override_virtual_moveEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_moveEvent(void* self, QMoveEvent* event);
bool QWizardPage_override_virtual_resizeEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_resizeEvent(void* self, QResizeEvent* event);
bool QWizardPage_override_virtual_closeEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_closeEvent(void* self, QCloseEvent* event);
bool QWizardPage_override_virtual_contextMenuEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
bool QWizardPage_override_virtual_tabletEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_tabletEvent(void* self, QTabletEvent* event);
bool QWizardPage_override_virtual_actionEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_actionEvent(void* self, QActionEvent* event);
bool QWizardPage_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
bool QWizardPage_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
bool QWizardPage_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
bool QWizardPage_override_virtual_dropEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QWizardPage_override_virtual_showEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_showEvent(void* self, QShowEvent* event);
bool QWizardPage_override_virtual_hideEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QWizardPage_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QWizardPage_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
bool QWizardPage_override_virtual_changeEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_changeEvent(void* self, QEvent* param1);
bool QWizardPage_override_virtual_metric(void* self, intptr_t slot);
int QWizardPage_virtualbase_metric(const void* self, int param1);
bool QWizardPage_override_virtual_initPainter(void* self, intptr_t slot);
void QWizardPage_virtualbase_initPainter(const void* self, QPainter* painter);
bool QWizardPage_override_virtual_redirected(void* self, intptr_t slot);
QPaintDevice* QWizardPage_virtualbase_redirected(const void* self, QPoint* offset);
bool QWizardPage_override_virtual_sharedPainter(void* self, intptr_t slot);
QPainter* QWizardPage_virtualbase_sharedPainter(const void* self);
bool QWizardPage_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
bool QWizardPage_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QWizardPage_virtualbase_inputMethodQuery(const void* self, int param1);
bool QWizardPage_override_virtual_focusNextPrevChild(void* self, intptr_t slot);
bool QWizardPage_virtualbase_focusNextPrevChild(void* self, bool next);
bool QWizardPage_override_virtual_eventFilter(void* self, intptr_t slot);
bool QWizardPage_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QWizardPage_override_virtual_timerEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QWizardPage_override_virtual_childEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_childEvent(void* self, QChildEvent* event);
bool QWizardPage_override_virtual_customEvent(void* self, intptr_t slot);
void QWizardPage_virtualbase_customEvent(void* self, QEvent* event);
bool QWizardPage_override_virtual_connectNotify(void* self, intptr_t slot);
void QWizardPage_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QWizardPage_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QWizardPage_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QWizardPage_staticMetaObject();
void QWizardPage_delete(QWizardPage* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
