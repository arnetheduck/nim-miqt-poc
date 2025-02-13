#pragma once
#ifndef MIQT_QTWEBENGINEWIDGETS_GEN_QWEBENGINEVIEW_H
#define MIQT_QTWEBENGINEWIDGETS_GEN_QWEBENGINEVIEW_H

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
class QEnterEvent;
class QEvent;
class QFocusEvent;
class QHideEvent;
class QIcon;
class QInputMethodEvent;
class QKeyEvent;
class QMenu;
class QMetaMethod;
class QMetaObject;
class QMouseEvent;
class QMoveEvent;
class QObject;
class QPageLayout;
class QPageRanges;
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
class QWebEngineContextMenuRequest;
class QWebEngineHistory;
class QWebEngineHttpRequest;
class QWebEnginePage;
class QWebEngineProfile;
class QWebEngineSettings;
class QWebEngineView;
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
typedef struct QEnterEvent QEnterEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QIcon QIcon;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMenu QMenu;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QObject QObject;
typedef struct QPageLayout QPageLayout;
typedef struct QPageRanges QPageRanges;
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
typedef struct QWebEngineContextMenuRequest QWebEngineContextMenuRequest;
typedef struct QWebEngineHistory QWebEngineHistory;
typedef struct QWebEngineHttpRequest QWebEngineHttpRequest;
typedef struct QWebEnginePage QWebEnginePage;
typedef struct QWebEngineProfile QWebEngineProfile;
typedef struct QWebEngineSettings QWebEngineSettings;
typedef struct QWebEngineView QWebEngineView;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

QWebEngineView* QWebEngineView_new(QWidget* parent);
QWebEngineView* QWebEngineView_new2();
QWebEngineView* QWebEngineView_new3(QWebEngineProfile* profile);
QWebEngineView* QWebEngineView_new4(QWebEnginePage* page);
QWebEngineView* QWebEngineView_new5(QWebEngineProfile* profile, QWidget* parent);
QWebEngineView* QWebEngineView_new6(QWebEnginePage* page, QWidget* parent);
void QWebEngineView_virtbase(QWebEngineView* src, QWidget** outptr_QWidget);
QMetaObject* QWebEngineView_metaObject(const QWebEngineView* self);
void* QWebEngineView_metacast(QWebEngineView* self, const char* param1);
struct miqt_string QWebEngineView_tr(const char* s);
QWebEngineView* QWebEngineView_forPage(QWebEnginePage* page);
QWebEnginePage* QWebEngineView_page(const QWebEngineView* self);
void QWebEngineView_setPage(QWebEngineView* self, QWebEnginePage* page);
void QWebEngineView_load(QWebEngineView* self, QUrl* url);
void QWebEngineView_loadWithRequest(QWebEngineView* self, QWebEngineHttpRequest* request);
void QWebEngineView_setHtml(QWebEngineView* self, struct miqt_string html);
void QWebEngineView_setContent(QWebEngineView* self, struct miqt_string data);
QWebEngineHistory* QWebEngineView_history(const QWebEngineView* self);
struct miqt_string QWebEngineView_title(const QWebEngineView* self);
void QWebEngineView_setUrl(QWebEngineView* self, QUrl* url);
QUrl* QWebEngineView_url(const QWebEngineView* self);
QUrl* QWebEngineView_iconUrl(const QWebEngineView* self);
QIcon* QWebEngineView_icon(const QWebEngineView* self);
bool QWebEngineView_hasSelection(const QWebEngineView* self);
struct miqt_string QWebEngineView_selectedText(const QWebEngineView* self);
QAction* QWebEngineView_pageAction(const QWebEngineView* self, int action);
void QWebEngineView_triggerPageAction(QWebEngineView* self, int action);
double QWebEngineView_zoomFactor(const QWebEngineView* self);
void QWebEngineView_setZoomFactor(QWebEngineView* self, double factor);
QSize* QWebEngineView_sizeHint(const QWebEngineView* self);
QWebEngineSettings* QWebEngineView_settings(const QWebEngineView* self);
QMenu* QWebEngineView_createStandardContextMenu(QWebEngineView* self);
QWebEngineContextMenuRequest* QWebEngineView_lastContextMenuRequest(const QWebEngineView* self);
void QWebEngineView_printToPdf(QWebEngineView* self, struct miqt_string filePath);
void QWebEngineView_print(QWebEngineView* self, QPrinter* printer);
void QWebEngineView_stop(QWebEngineView* self);
void QWebEngineView_back(QWebEngineView* self);
void QWebEngineView_forward(QWebEngineView* self);
void QWebEngineView_reload(QWebEngineView* self);
void QWebEngineView_loadStarted(QWebEngineView* self);
void QWebEngineView_connect_loadStarted(QWebEngineView* self, intptr_t slot);
void QWebEngineView_loadProgress(QWebEngineView* self, int progress);
void QWebEngineView_connect_loadProgress(QWebEngineView* self, intptr_t slot);
void QWebEngineView_loadFinished(QWebEngineView* self, bool param1);
void QWebEngineView_connect_loadFinished(QWebEngineView* self, intptr_t slot);
void QWebEngineView_titleChanged(QWebEngineView* self, struct miqt_string title);
void QWebEngineView_connect_titleChanged(QWebEngineView* self, intptr_t slot);
void QWebEngineView_selectionChanged(QWebEngineView* self);
void QWebEngineView_connect_selectionChanged(QWebEngineView* self, intptr_t slot);
void QWebEngineView_urlChanged(QWebEngineView* self, QUrl* param1);
void QWebEngineView_connect_urlChanged(QWebEngineView* self, intptr_t slot);
void QWebEngineView_iconUrlChanged(QWebEngineView* self, QUrl* param1);
void QWebEngineView_connect_iconUrlChanged(QWebEngineView* self, intptr_t slot);
void QWebEngineView_iconChanged(QWebEngineView* self, QIcon* param1);
void QWebEngineView_connect_iconChanged(QWebEngineView* self, intptr_t slot);
void QWebEngineView_renderProcessTerminated(QWebEngineView* self, int terminationStatus, int exitCode);
void QWebEngineView_connect_renderProcessTerminated(QWebEngineView* self, intptr_t slot);
void QWebEngineView_pdfPrintingFinished(QWebEngineView* self, struct miqt_string filePath, bool success);
void QWebEngineView_connect_pdfPrintingFinished(QWebEngineView* self, intptr_t slot);
void QWebEngineView_printRequested(QWebEngineView* self);
void QWebEngineView_connect_printRequested(QWebEngineView* self, intptr_t slot);
void QWebEngineView_printFinished(QWebEngineView* self, bool success);
void QWebEngineView_connect_printFinished(QWebEngineView* self, intptr_t slot);
QWebEngineView* QWebEngineView_createWindow(QWebEngineView* self, int type);
void QWebEngineView_contextMenuEvent(QWebEngineView* self, QContextMenuEvent* param1);
bool QWebEngineView_event(QWebEngineView* self, QEvent* param1);
void QWebEngineView_showEvent(QWebEngineView* self, QShowEvent* param1);
void QWebEngineView_hideEvent(QWebEngineView* self, QHideEvent* param1);
void QWebEngineView_closeEvent(QWebEngineView* self, QCloseEvent* param1);
void QWebEngineView_dragEnterEvent(QWebEngineView* self, QDragEnterEvent* e);
void QWebEngineView_dragLeaveEvent(QWebEngineView* self, QDragLeaveEvent* e);
void QWebEngineView_dragMoveEvent(QWebEngineView* self, QDragMoveEvent* e);
void QWebEngineView_dropEvent(QWebEngineView* self, QDropEvent* e);
struct miqt_string QWebEngineView_tr2(const char* s, const char* c);
struct miqt_string QWebEngineView_tr3(const char* s, const char* c, int n);
void QWebEngineView_setHtml2(QWebEngineView* self, struct miqt_string html, QUrl* baseUrl);
void QWebEngineView_setContent2(QWebEngineView* self, struct miqt_string data, struct miqt_string mimeType);
void QWebEngineView_setContent3(QWebEngineView* self, struct miqt_string data, struct miqt_string mimeType, QUrl* baseUrl);
void QWebEngineView_triggerPageAction2(QWebEngineView* self, int action, bool checked);
void QWebEngineView_printToPdf2(QWebEngineView* self, struct miqt_string filePath, QPageLayout* layout);
void QWebEngineView_printToPdf3(QWebEngineView* self, struct miqt_string filePath, QPageLayout* layout, QPageRanges* ranges);
bool QWebEngineView_override_virtual_sizeHint(void* self, intptr_t slot);
QSize* QWebEngineView_virtualbase_sizeHint(const void* self);
bool QWebEngineView_override_virtual_createWindow(void* self, intptr_t slot);
QWebEngineView* QWebEngineView_virtualbase_createWindow(void* self, int type);
bool QWebEngineView_override_virtual_contextMenuEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
bool QWebEngineView_override_virtual_event(void* self, intptr_t slot);
bool QWebEngineView_virtualbase_event(void* self, QEvent* param1);
bool QWebEngineView_override_virtual_showEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_showEvent(void* self, QShowEvent* param1);
bool QWebEngineView_override_virtual_hideEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_hideEvent(void* self, QHideEvent* param1);
bool QWebEngineView_override_virtual_closeEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_closeEvent(void* self, QCloseEvent* param1);
bool QWebEngineView_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* e);
bool QWebEngineView_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* e);
bool QWebEngineView_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* e);
bool QWebEngineView_override_virtual_dropEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_dropEvent(void* self, QDropEvent* e);
bool QWebEngineView_override_virtual_devType(void* self, intptr_t slot);
int QWebEngineView_virtualbase_devType(const void* self);
bool QWebEngineView_override_virtual_setVisible(void* self, intptr_t slot);
void QWebEngineView_virtualbase_setVisible(void* self, bool visible);
bool QWebEngineView_override_virtual_minimumSizeHint(void* self, intptr_t slot);
QSize* QWebEngineView_virtualbase_minimumSizeHint(const void* self);
bool QWebEngineView_override_virtual_heightForWidth(void* self, intptr_t slot);
int QWebEngineView_virtualbase_heightForWidth(const void* self, int param1);
bool QWebEngineView_override_virtual_hasHeightForWidth(void* self, intptr_t slot);
bool QWebEngineView_virtualbase_hasHeightForWidth(const void* self);
bool QWebEngineView_override_virtual_paintEngine(void* self, intptr_t slot);
QPaintEngine* QWebEngineView_virtualbase_paintEngine(const void* self);
bool QWebEngineView_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
bool QWebEngineView_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
bool QWebEngineView_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
bool QWebEngineView_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
bool QWebEngineView_override_virtual_wheelEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_wheelEvent(void* self, QWheelEvent* event);
bool QWebEngineView_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
bool QWebEngineView_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
bool QWebEngineView_override_virtual_focusInEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_focusInEvent(void* self, QFocusEvent* event);
bool QWebEngineView_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
bool QWebEngineView_override_virtual_enterEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_enterEvent(void* self, QEnterEvent* event);
bool QWebEngineView_override_virtual_leaveEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_leaveEvent(void* self, QEvent* event);
bool QWebEngineView_override_virtual_paintEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_paintEvent(void* self, QPaintEvent* event);
bool QWebEngineView_override_virtual_moveEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_moveEvent(void* self, QMoveEvent* event);
bool QWebEngineView_override_virtual_resizeEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_resizeEvent(void* self, QResizeEvent* event);
bool QWebEngineView_override_virtual_tabletEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_tabletEvent(void* self, QTabletEvent* event);
bool QWebEngineView_override_virtual_actionEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_actionEvent(void* self, QActionEvent* event);
bool QWebEngineView_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QWebEngineView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
bool QWebEngineView_override_virtual_changeEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_changeEvent(void* self, QEvent* param1);
bool QWebEngineView_override_virtual_metric(void* self, intptr_t slot);
int QWebEngineView_virtualbase_metric(const void* self, int param1);
bool QWebEngineView_override_virtual_initPainter(void* self, intptr_t slot);
void QWebEngineView_virtualbase_initPainter(const void* self, QPainter* painter);
bool QWebEngineView_override_virtual_redirected(void* self, intptr_t slot);
QPaintDevice* QWebEngineView_virtualbase_redirected(const void* self, QPoint* offset);
bool QWebEngineView_override_virtual_sharedPainter(void* self, intptr_t slot);
QPainter* QWebEngineView_virtualbase_sharedPainter(const void* self);
bool QWebEngineView_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
bool QWebEngineView_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QWebEngineView_virtualbase_inputMethodQuery(const void* self, int param1);
bool QWebEngineView_override_virtual_focusNextPrevChild(void* self, intptr_t slot);
bool QWebEngineView_virtualbase_focusNextPrevChild(void* self, bool next);
bool QWebEngineView_override_virtual_eventFilter(void* self, intptr_t slot);
bool QWebEngineView_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QWebEngineView_override_virtual_timerEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QWebEngineView_override_virtual_childEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_childEvent(void* self, QChildEvent* event);
bool QWebEngineView_override_virtual_customEvent(void* self, intptr_t slot);
void QWebEngineView_virtualbase_customEvent(void* self, QEvent* event);
bool QWebEngineView_override_virtual_connectNotify(void* self, intptr_t slot);
void QWebEngineView_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QWebEngineView_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QWebEngineView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QWebEngineView_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
void QWebEngineView_protectedbase_create(bool* _dynamic_cast_ok, void* self);
void QWebEngineView_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
bool QWebEngineView_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
bool QWebEngineView_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
QObject* QWebEngineView_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QWebEngineView_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QWebEngineView_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QWebEngineView_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
void QWebEngineView_delete(QWebEngineView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
