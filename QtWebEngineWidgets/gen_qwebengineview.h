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
class QObject;
class QPaintDevice;
class QPaintEngine;
class QPaintEvent;
class QPainter;
class QPoint;
class QResizeEvent;
class QShowEvent;
class QSize;
class QTabletEvent;
class QTimerEvent;
class QUrl;
class QVariant;
class QWebEngineHistory;
class QWebEngineHttpRequest;
class QWebEnginePage;
class QWebEngineSettings;
class QWebEngineView;
class QWheelEvent;
class QWidget;
#else
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
typedef struct QObject QObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
typedef struct QWebEngineHistory QWebEngineHistory;
typedef struct QWebEngineHttpRequest QWebEngineHttpRequest;
typedef struct QWebEnginePage QWebEnginePage;
typedef struct QWebEngineSettings QWebEngineSettings;
typedef struct QWebEngineView QWebEngineView;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QWebEngineView_VTable {
	void (*destructor)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self);
	QMetaObject* (*metaObject)(struct QWebEngineView_VTable* vtbl, const QWebEngineView* self);
	void* (*metacast)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, const char* param1);
	int (*metacall)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QWebEngineView_VTable* vtbl, const QWebEngineView* self);
	QWebEngineView* (*createWindow)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, int type);
	void (*contextMenuEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QContextMenuEvent* param1);
	bool (*event)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QEvent* param1);
	void (*showEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QShowEvent* param1);
	void (*hideEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QHideEvent* param1);
	void (*closeEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QCloseEvent* param1);
	void (*dragEnterEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QDragEnterEvent* e);
	void (*dragLeaveEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QDragLeaveEvent* e);
	void (*dragMoveEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QDragMoveEvent* e);
	void (*dropEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QDropEvent* e);
	int (*devType)(struct QWebEngineView_VTable* vtbl, const QWebEngineView* self);
	void (*setVisible)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, bool visible);
	QSize* (*minimumSizeHint)(struct QWebEngineView_VTable* vtbl, const QWebEngineView* self);
	int (*heightForWidth)(struct QWebEngineView_VTable* vtbl, const QWebEngineView* self, int param1);
	bool (*hasHeightForWidth)(struct QWebEngineView_VTable* vtbl, const QWebEngineView* self);
	QPaintEngine* (*paintEngine)(struct QWebEngineView_VTable* vtbl, const QWebEngineView* self);
	void (*mousePressEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QMouseEvent* event);
	void (*wheelEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QWheelEvent* event);
	void (*keyPressEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QKeyEvent* event);
	void (*focusInEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QFocusEvent* event);
	void (*enterEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QEvent* event);
	void (*leaveEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QEvent* event);
	void (*paintEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QPaintEvent* event);
	void (*moveEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QMoveEvent* event);
	void (*resizeEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QResizeEvent* event);
	void (*tabletEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QTabletEvent* event);
	void (*actionEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QActionEvent* event);
	bool (*nativeEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, struct miqt_string eventType, void* message, long* result);
	void (*changeEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QEvent* param1);
	int (*metric)(struct QWebEngineView_VTable* vtbl, const QWebEngineView* self, int param1);
	void (*initPainter)(struct QWebEngineView_VTable* vtbl, const QWebEngineView* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QWebEngineView_VTable* vtbl, const QWebEngineView* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QWebEngineView_VTable* vtbl, const QWebEngineView* self);
	void (*inputMethodEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QWebEngineView_VTable* vtbl, const QWebEngineView* self, int param1);
	bool (*focusNextPrevChild)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, bool next);
	bool (*eventFilter)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QTimerEvent* event);
	void (*childEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QChildEvent* event);
	void (*customEvent)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QEvent* event);
	void (*connectNotify)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QWebEngineView_VTable* vtbl, QWebEngineView* self, QMetaMethod* signal);
};
QWebEngineView* QWebEngineView_new(struct QWebEngineView_VTable* vtbl, QWidget* parent);
QWebEngineView* QWebEngineView_new2(struct QWebEngineView_VTable* vtbl);
void QWebEngineView_virtbase(QWebEngineView* src, QWidget** outptr_QWidget);
QMetaObject* QWebEngineView_metaObject(const QWebEngineView* self);
void* QWebEngineView_metacast(QWebEngineView* self, const char* param1);
int QWebEngineView_metacall(QWebEngineView* self, int param1, int param2, void** param3);
struct miqt_string QWebEngineView_tr(const char* s);
struct miqt_string QWebEngineView_trUtf8(const char* s);
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
void QWebEngineView_triggerPageAction(QWebEngineView* self, int action);
double QWebEngineView_zoomFactor(const QWebEngineView* self);
void QWebEngineView_setZoomFactor(QWebEngineView* self, double factor);
void QWebEngineView_findText(QWebEngineView* self, struct miqt_string subString);
QSize* QWebEngineView_sizeHint(const QWebEngineView* self);
QWebEngineSettings* QWebEngineView_settings(const QWebEngineView* self);
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
struct miqt_string QWebEngineView_trUtf82(const char* s, const char* c);
struct miqt_string QWebEngineView_trUtf83(const char* s, const char* c, int n);
void QWebEngineView_setHtml2(QWebEngineView* self, struct miqt_string html, QUrl* baseUrl);
void QWebEngineView_setContent2(QWebEngineView* self, struct miqt_string data, struct miqt_string mimeType);
void QWebEngineView_setContent3(QWebEngineView* self, struct miqt_string data, struct miqt_string mimeType, QUrl* baseUrl);
void QWebEngineView_triggerPageAction2(QWebEngineView* self, int action, bool checked);
void QWebEngineView_findText2(QWebEngineView* self, struct miqt_string subString, int options);
QMetaObject* QWebEngineView_virtualbase_metaObject(const void* self);
void* QWebEngineView_virtualbase_metacast(void* self, const char* param1);
int QWebEngineView_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QWebEngineView_virtualbase_sizeHint(const void* self);
QWebEngineView* QWebEngineView_virtualbase_createWindow(void* self, int type);
void QWebEngineView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
bool QWebEngineView_virtualbase_event(void* self, QEvent* param1);
void QWebEngineView_virtualbase_showEvent(void* self, QShowEvent* param1);
void QWebEngineView_virtualbase_hideEvent(void* self, QHideEvent* param1);
void QWebEngineView_virtualbase_closeEvent(void* self, QCloseEvent* param1);
void QWebEngineView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* e);
void QWebEngineView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* e);
void QWebEngineView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* e);
void QWebEngineView_virtualbase_dropEvent(void* self, QDropEvent* e);
int QWebEngineView_virtualbase_devType(const void* self);
void QWebEngineView_virtualbase_setVisible(void* self, bool visible);
QSize* QWebEngineView_virtualbase_minimumSizeHint(const void* self);
int QWebEngineView_virtualbase_heightForWidth(const void* self, int param1);
bool QWebEngineView_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QWebEngineView_virtualbase_paintEngine(const void* self);
void QWebEngineView_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QWebEngineView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QWebEngineView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QWebEngineView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QWebEngineView_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QWebEngineView_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QWebEngineView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QWebEngineView_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QWebEngineView_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QWebEngineView_virtualbase_enterEvent(void* self, QEvent* event);
void QWebEngineView_virtualbase_leaveEvent(void* self, QEvent* event);
void QWebEngineView_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QWebEngineView_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QWebEngineView_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QWebEngineView_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QWebEngineView_virtualbase_actionEvent(void* self, QActionEvent* event);
bool QWebEngineView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
void QWebEngineView_virtualbase_changeEvent(void* self, QEvent* param1);
int QWebEngineView_virtualbase_metric(const void* self, int param1);
void QWebEngineView_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QWebEngineView_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QWebEngineView_virtualbase_sharedPainter(const void* self);
void QWebEngineView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QWebEngineView_virtualbase_inputMethodQuery(const void* self, int param1);
bool QWebEngineView_virtualbase_focusNextPrevChild(void* self, bool next);
bool QWebEngineView_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QWebEngineView_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QWebEngineView_virtualbase_childEvent(void* self, QChildEvent* event);
void QWebEngineView_virtualbase_customEvent(void* self, QEvent* event);
void QWebEngineView_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QWebEngineView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QWebEngineView_protectedbase_updateMicroFocus(void* self);
void QWebEngineView_protectedbase_create(void* self);
void QWebEngineView_protectedbase_destroy(void* self);
bool QWebEngineView_protectedbase_focusNextChild(void* self);
bool QWebEngineView_protectedbase_focusPreviousChild(void* self);
QObject* QWebEngineView_protectedbase_sender(const void* self);
int QWebEngineView_protectedbase_senderSignalIndex(const void* self);
int QWebEngineView_protectedbase_receivers(const void* self, const char* signal);
bool QWebEngineView_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QWebEngineView_staticMetaObject();
void QWebEngineView_delete(QWebEngineView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
