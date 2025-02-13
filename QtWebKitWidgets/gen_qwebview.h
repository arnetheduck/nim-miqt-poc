#pragma once
#ifndef MIQT_QTWEBKITWIDGETS_GEN_QWEBVIEW_H
#define MIQT_QTWEBKITWIDGETS_GEN_QWEBVIEW_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAction;
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
class QHideEvent;
class QIcon;
class QInputMethodEvent;
class QKeyEvent;
class QMetaMethod;
class QMetaObject;
class QMouseEvent;
class QMoveEvent;
class QNetworkRequest;
class QObject;
class QPaintDevice;
class QPaintEngine;
class QPaintEvent;
class QPainter;
class QPoint;
class QPrinter;
class QResizeEvent;
class QShowEvent;
class QSize;
class QTabletEvent;
class QTimerEvent;
class QUrl;
class QVariant;
class QWebHistory;
class QWebPage;
class QWebSettings;
class QWebView;
class QWheelEvent;
class QWidget;
#else
typedef struct QAction QAction;
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
typedef struct QHideEvent QHideEvent;
typedef struct QIcon QIcon;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QNetworkRequest QNetworkRequest;
typedef struct QObject QObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QPrinter QPrinter;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
typedef struct QWebHistory QWebHistory;
typedef struct QWebPage QWebPage;
typedef struct QWebSettings QWebSettings;
typedef struct QWebView QWebView;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

QWebView* QWebView_new(QWidget* parent);
QWebView* QWebView_new2();
void QWebView_virtbase(QWebView* src, QWidget** outptr_QWidget);
QMetaObject* QWebView_metaObject(const QWebView* self);
void* QWebView_metacast(QWebView* self, const char* param1);
struct miqt_string QWebView_tr(const char* s);
struct miqt_string QWebView_trUtf8(const char* s);
QWebPage* QWebView_page(const QWebView* self);
void QWebView_setPage(QWebView* self, QWebPage* page);
void QWebView_load(QWebView* self, QUrl* url);
void QWebView_loadWithRequest(QWebView* self, QNetworkRequest* request);
void QWebView_setHtml(QWebView* self, struct miqt_string html);
void QWebView_setContent(QWebView* self, struct miqt_string data);
QWebHistory* QWebView_history(const QWebView* self);
QWebSettings* QWebView_settings(const QWebView* self);
struct miqt_string QWebView_title(const QWebView* self);
void QWebView_setUrl(QWebView* self, QUrl* url);
QUrl* QWebView_url(const QWebView* self);
QIcon* QWebView_icon(const QWebView* self);
bool QWebView_hasSelection(const QWebView* self);
struct miqt_string QWebView_selectedText(const QWebView* self);
struct miqt_string QWebView_selectedHtml(const QWebView* self);
QAction* QWebView_pageAction(const QWebView* self, int action);
void QWebView_triggerPageAction(QWebView* self, int action);
bool QWebView_isModified(const QWebView* self);
QVariant* QWebView_inputMethodQuery(const QWebView* self, int property);
QSize* QWebView_sizeHint(const QWebView* self);
double QWebView_zoomFactor(const QWebView* self);
void QWebView_setZoomFactor(QWebView* self, double factor);
void QWebView_setTextSizeMultiplier(QWebView* self, double factor);
double QWebView_textSizeMultiplier(const QWebView* self);
int QWebView_renderHints(const QWebView* self);
void QWebView_setRenderHints(QWebView* self, int hints);
void QWebView_setRenderHint(QWebView* self, int hint);
bool QWebView_findText(QWebView* self, struct miqt_string subString);
bool QWebView_event(QWebView* self, QEvent* param1);
void QWebView_stop(QWebView* self);
void QWebView_back(QWebView* self);
void QWebView_forward(QWebView* self);
void QWebView_reload(QWebView* self);
void QWebView_print(const QWebView* self, QPrinter* param1);
void QWebView_loadStarted(QWebView* self);
void QWebView_connect_loadStarted(QWebView* self, intptr_t slot);
void QWebView_loadProgress(QWebView* self, int progress);
void QWebView_connect_loadProgress(QWebView* self, intptr_t slot);
void QWebView_loadFinished(QWebView* self, bool param1);
void QWebView_connect_loadFinished(QWebView* self, intptr_t slot);
void QWebView_titleChanged(QWebView* self, struct miqt_string title);
void QWebView_connect_titleChanged(QWebView* self, intptr_t slot);
void QWebView_statusBarMessage(QWebView* self, struct miqt_string text);
void QWebView_connect_statusBarMessage(QWebView* self, intptr_t slot);
void QWebView_linkClicked(QWebView* self, QUrl* param1);
void QWebView_connect_linkClicked(QWebView* self, intptr_t slot);
void QWebView_selectionChanged(QWebView* self);
void QWebView_connect_selectionChanged(QWebView* self, intptr_t slot);
void QWebView_iconChanged(QWebView* self);
void QWebView_connect_iconChanged(QWebView* self, intptr_t slot);
void QWebView_urlChanged(QWebView* self, QUrl* param1);
void QWebView_connect_urlChanged(QWebView* self, intptr_t slot);
void QWebView_resizeEvent(QWebView* self, QResizeEvent* param1);
void QWebView_paintEvent(QWebView* self, QPaintEvent* param1);
QWebView* QWebView_createWindow(QWebView* self, int type);
void QWebView_changeEvent(QWebView* self, QEvent* param1);
void QWebView_mouseMoveEvent(QWebView* self, QMouseEvent* param1);
void QWebView_mousePressEvent(QWebView* self, QMouseEvent* param1);
void QWebView_mouseDoubleClickEvent(QWebView* self, QMouseEvent* param1);
void QWebView_mouseReleaseEvent(QWebView* self, QMouseEvent* param1);
void QWebView_contextMenuEvent(QWebView* self, QContextMenuEvent* param1);
void QWebView_wheelEvent(QWebView* self, QWheelEvent* param1);
void QWebView_keyPressEvent(QWebView* self, QKeyEvent* param1);
void QWebView_keyReleaseEvent(QWebView* self, QKeyEvent* param1);
void QWebView_dragEnterEvent(QWebView* self, QDragEnterEvent* param1);
void QWebView_dragLeaveEvent(QWebView* self, QDragLeaveEvent* param1);
void QWebView_dragMoveEvent(QWebView* self, QDragMoveEvent* param1);
void QWebView_dropEvent(QWebView* self, QDropEvent* param1);
void QWebView_focusInEvent(QWebView* self, QFocusEvent* param1);
void QWebView_focusOutEvent(QWebView* self, QFocusEvent* param1);
void QWebView_inputMethodEvent(QWebView* self, QInputMethodEvent* param1);
bool QWebView_focusNextPrevChild(QWebView* self, bool next);
struct miqt_string QWebView_tr2(const char* s, const char* c);
struct miqt_string QWebView_tr3(const char* s, const char* c, int n);
struct miqt_string QWebView_trUtf82(const char* s, const char* c);
struct miqt_string QWebView_trUtf83(const char* s, const char* c, int n);
void QWebView_load2(QWebView* self, QNetworkRequest* request, int operation);
void QWebView_load3(QWebView* self, QNetworkRequest* request, int operation, struct miqt_string body);
void QWebView_setHtml2(QWebView* self, struct miqt_string html, QUrl* baseUrl);
void QWebView_setContent2(QWebView* self, struct miqt_string data, struct miqt_string mimeType);
void QWebView_setContent3(QWebView* self, struct miqt_string data, struct miqt_string mimeType, QUrl* baseUrl);
void QWebView_triggerPageAction2(QWebView* self, int action, bool checked);
void QWebView_setRenderHint2(QWebView* self, int hint, bool enabled);
bool QWebView_findText2(QWebView* self, struct miqt_string subString, int options);
bool QWebView_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QWebView_virtualbase_inputMethodQuery(const void* self, int property);
bool QWebView_override_virtual_sizeHint(void* self, intptr_t slot);
QSize* QWebView_virtualbase_sizeHint(const void* self);
bool QWebView_override_virtual_event(void* self, intptr_t slot);
bool QWebView_virtualbase_event(void* self, QEvent* param1);
bool QWebView_override_virtual_resizeEvent(void* self, intptr_t slot);
void QWebView_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
bool QWebView_override_virtual_paintEvent(void* self, intptr_t slot);
void QWebView_virtualbase_paintEvent(void* self, QPaintEvent* param1);
bool QWebView_override_virtual_createWindow(void* self, intptr_t slot);
QWebView* QWebView_virtualbase_createWindow(void* self, int type);
bool QWebView_override_virtual_changeEvent(void* self, intptr_t slot);
void QWebView_virtualbase_changeEvent(void* self, QEvent* param1);
bool QWebView_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QWebView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);
bool QWebView_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QWebView_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);
bool QWebView_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QWebView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1);
bool QWebView_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QWebView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);
bool QWebView_override_virtual_contextMenuEvent(void* self, intptr_t slot);
void QWebView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
bool QWebView_override_virtual_wheelEvent(void* self, intptr_t slot);
void QWebView_virtualbase_wheelEvent(void* self, QWheelEvent* param1);
bool QWebView_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QWebView_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
bool QWebView_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QWebView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* param1);
bool QWebView_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QWebView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1);
bool QWebView_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QWebView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1);
bool QWebView_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QWebView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1);
bool QWebView_override_virtual_dropEvent(void* self, intptr_t slot);
void QWebView_virtualbase_dropEvent(void* self, QDropEvent* param1);
bool QWebView_override_virtual_focusInEvent(void* self, intptr_t slot);
void QWebView_virtualbase_focusInEvent(void* self, QFocusEvent* param1);
bool QWebView_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QWebView_virtualbase_focusOutEvent(void* self, QFocusEvent* param1);
bool QWebView_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QWebView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
bool QWebView_override_virtual_focusNextPrevChild(void* self, intptr_t slot);
bool QWebView_virtualbase_focusNextPrevChild(void* self, bool next);
bool QWebView_override_virtual_devType(void* self, intptr_t slot);
int QWebView_virtualbase_devType(const void* self);
bool QWebView_override_virtual_setVisible(void* self, intptr_t slot);
void QWebView_virtualbase_setVisible(void* self, bool visible);
bool QWebView_override_virtual_minimumSizeHint(void* self, intptr_t slot);
QSize* QWebView_virtualbase_minimumSizeHint(const void* self);
bool QWebView_override_virtual_heightForWidth(void* self, intptr_t slot);
int QWebView_virtualbase_heightForWidth(const void* self, int param1);
bool QWebView_override_virtual_hasHeightForWidth(void* self, intptr_t slot);
bool QWebView_virtualbase_hasHeightForWidth(const void* self);
bool QWebView_override_virtual_paintEngine(void* self, intptr_t slot);
QPaintEngine* QWebView_virtualbase_paintEngine(const void* self);
bool QWebView_override_virtual_enterEvent(void* self, intptr_t slot);
void QWebView_virtualbase_enterEvent(void* self, QEvent* event);
bool QWebView_override_virtual_leaveEvent(void* self, intptr_t slot);
void QWebView_virtualbase_leaveEvent(void* self, QEvent* event);
bool QWebView_override_virtual_moveEvent(void* self, intptr_t slot);
void QWebView_virtualbase_moveEvent(void* self, QMoveEvent* event);
bool QWebView_override_virtual_closeEvent(void* self, intptr_t slot);
void QWebView_virtualbase_closeEvent(void* self, QCloseEvent* event);
bool QWebView_override_virtual_tabletEvent(void* self, intptr_t slot);
void QWebView_virtualbase_tabletEvent(void* self, QTabletEvent* event);
bool QWebView_override_virtual_actionEvent(void* self, intptr_t slot);
void QWebView_virtualbase_actionEvent(void* self, QActionEvent* event);
bool QWebView_override_virtual_showEvent(void* self, intptr_t slot);
void QWebView_virtualbase_showEvent(void* self, QShowEvent* event);
bool QWebView_override_virtual_hideEvent(void* self, intptr_t slot);
void QWebView_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QWebView_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QWebView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
bool QWebView_override_virtual_metric(void* self, intptr_t slot);
int QWebView_virtualbase_metric(const void* self, int param1);
bool QWebView_override_virtual_initPainter(void* self, intptr_t slot);
void QWebView_virtualbase_initPainter(const void* self, QPainter* painter);
bool QWebView_override_virtual_redirected(void* self, intptr_t slot);
QPaintDevice* QWebView_virtualbase_redirected(const void* self, QPoint* offset);
bool QWebView_override_virtual_sharedPainter(void* self, intptr_t slot);
QPainter* QWebView_virtualbase_sharedPainter(const void* self);
bool QWebView_override_virtual_eventFilter(void* self, intptr_t slot);
bool QWebView_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QWebView_override_virtual_timerEvent(void* self, intptr_t slot);
void QWebView_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QWebView_override_virtual_childEvent(void* self, intptr_t slot);
void QWebView_virtualbase_childEvent(void* self, QChildEvent* event);
bool QWebView_override_virtual_customEvent(void* self, intptr_t slot);
void QWebView_virtualbase_customEvent(void* self, QEvent* event);
bool QWebView_override_virtual_connectNotify(void* self, intptr_t slot);
void QWebView_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QWebView_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QWebView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QWebView_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QWebView_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QWebView_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QWebView_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QWebView_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QWebView_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QWebView_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QWebView_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QWebView_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
void QWebView_delete(QWebView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
