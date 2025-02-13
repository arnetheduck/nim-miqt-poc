#pragma once
#ifndef MIQT_QTWEBKITWIDGETS_GEN_QGRAPHICSWEBVIEW_H
#define MIQT_QTWEBKITWIDGETS_GEN_QGRAPHICSWEBVIEW_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QCloseEvent;
class QEvent;
class QFocusEvent;
class QGraphicsItem;
class QGraphicsLayoutItem;
class QGraphicsObject;
class QGraphicsSceneContextMenuEvent;
class QGraphicsSceneDragDropEvent;
class QGraphicsSceneHoverEvent;
class QGraphicsSceneMouseEvent;
class QGraphicsSceneMoveEvent;
class QGraphicsSceneResizeEvent;
class QGraphicsSceneWheelEvent;
class QGraphicsWebView;
class QGraphicsWidget;
class QHideEvent;
class QIcon;
class QInputMethodEvent;
class QKeyEvent;
class QMetaMethod;
class QMetaObject;
class QNetworkRequest;
class QObject;
class QPainter;
class QPainterPath;
class QPointF;
class QRectF;
class QShowEvent;
class QSizeF;
class QStyleOption;
class QStyleOptionGraphicsItem;
class QTimerEvent;
class QUrl;
class QVariant;
class QWebHistory;
class QWebPage;
class QWebSettings;
class QWidget;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QEvent QEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QGraphicsItem QGraphicsItem;
typedef struct QGraphicsLayoutItem QGraphicsLayoutItem;
typedef struct QGraphicsObject QGraphicsObject;
typedef struct QGraphicsSceneContextMenuEvent QGraphicsSceneContextMenuEvent;
typedef struct QGraphicsSceneDragDropEvent QGraphicsSceneDragDropEvent;
typedef struct QGraphicsSceneHoverEvent QGraphicsSceneHoverEvent;
typedef struct QGraphicsSceneMouseEvent QGraphicsSceneMouseEvent;
typedef struct QGraphicsSceneMoveEvent QGraphicsSceneMoveEvent;
typedef struct QGraphicsSceneResizeEvent QGraphicsSceneResizeEvent;
typedef struct QGraphicsSceneWheelEvent QGraphicsSceneWheelEvent;
typedef struct QGraphicsWebView QGraphicsWebView;
typedef struct QGraphicsWidget QGraphicsWidget;
typedef struct QHideEvent QHideEvent;
typedef struct QIcon QIcon;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QNetworkRequest QNetworkRequest;
typedef struct QObject QObject;
typedef struct QPainter QPainter;
typedef struct QPainterPath QPainterPath;
typedef struct QPointF QPointF;
typedef struct QRectF QRectF;
typedef struct QShowEvent QShowEvent;
typedef struct QSizeF QSizeF;
typedef struct QStyleOption QStyleOption;
typedef struct QStyleOptionGraphicsItem QStyleOptionGraphicsItem;
typedef struct QTimerEvent QTimerEvent;
typedef struct QUrl QUrl;
typedef struct QVariant QVariant;
typedef struct QWebHistory QWebHistory;
typedef struct QWebPage QWebPage;
typedef struct QWebSettings QWebSettings;
typedef struct QWidget QWidget;
#endif

QGraphicsWebView* QGraphicsWebView_new();
QGraphicsWebView* QGraphicsWebView_new2(QGraphicsItem* parent);
void QGraphicsWebView_virtbase(QGraphicsWebView* src, QGraphicsWidget** outptr_QGraphicsWidget);
QMetaObject* QGraphicsWebView_metaObject(const QGraphicsWebView* self);
void* QGraphicsWebView_metacast(QGraphicsWebView* self, const char* param1);
int QGraphicsWebView_metacall(QGraphicsWebView* self, int param1, int param2, void** param3);
struct miqt_string QGraphicsWebView_tr(const char* s);
struct miqt_string QGraphicsWebView_trUtf8(const char* s);
QWebPage* QGraphicsWebView_page(const QGraphicsWebView* self);
void QGraphicsWebView_setPage(QGraphicsWebView* self, QWebPage* page);
QUrl* QGraphicsWebView_url(const QGraphicsWebView* self);
void QGraphicsWebView_setUrl(QGraphicsWebView* self, QUrl* url);
struct miqt_string QGraphicsWebView_title(const QGraphicsWebView* self);
QIcon* QGraphicsWebView_icon(const QGraphicsWebView* self);
double QGraphicsWebView_zoomFactor(const QGraphicsWebView* self);
void QGraphicsWebView_setZoomFactor(QGraphicsWebView* self, double zoomFactor);
bool QGraphicsWebView_isModified(const QGraphicsWebView* self);
void QGraphicsWebView_load(QGraphicsWebView* self, QUrl* url);
void QGraphicsWebView_loadWithRequest(QGraphicsWebView* self, QNetworkRequest* request);
void QGraphicsWebView_setHtml(QGraphicsWebView* self, struct miqt_string html);
void QGraphicsWebView_setContent(QGraphicsWebView* self, struct miqt_string data);
QWebHistory* QGraphicsWebView_history(const QGraphicsWebView* self);
QWebSettings* QGraphicsWebView_settings(const QGraphicsWebView* self);
void QGraphicsWebView_triggerPageAction(QGraphicsWebView* self, int action);
bool QGraphicsWebView_findText(QGraphicsWebView* self, struct miqt_string subString);
bool QGraphicsWebView_resizesToContents(const QGraphicsWebView* self);
void QGraphicsWebView_setResizesToContents(QGraphicsWebView* self, bool enabled);
bool QGraphicsWebView_isTiledBackingStoreFrozen(const QGraphicsWebView* self);
void QGraphicsWebView_setTiledBackingStoreFrozen(QGraphicsWebView* self, bool frozen);
void QGraphicsWebView_setGeometry(QGraphicsWebView* self, QRectF* rect);
void QGraphicsWebView_updateGeometry(QGraphicsWebView* self);
void QGraphicsWebView_paint(QGraphicsWebView* self, QPainter* param1, QStyleOptionGraphicsItem* options, QWidget* widget);
QVariant* QGraphicsWebView_itemChange(QGraphicsWebView* self, int change, QVariant* value);
bool QGraphicsWebView_event(QGraphicsWebView* self, QEvent* param1);
QSizeF* QGraphicsWebView_sizeHint(const QGraphicsWebView* self, int which, QSizeF* constraint);
QVariant* QGraphicsWebView_inputMethodQuery(const QGraphicsWebView* self, int query);
int QGraphicsWebView_renderHints(const QGraphicsWebView* self);
void QGraphicsWebView_setRenderHints(QGraphicsWebView* self, int renderHints);
void QGraphicsWebView_setRenderHint(QGraphicsWebView* self, int param1);
void QGraphicsWebView_stop(QGraphicsWebView* self);
void QGraphicsWebView_back(QGraphicsWebView* self);
void QGraphicsWebView_forward(QGraphicsWebView* self);
void QGraphicsWebView_reload(QGraphicsWebView* self);
void QGraphicsWebView_loadStarted(QGraphicsWebView* self);
void QGraphicsWebView_connect_loadStarted(QGraphicsWebView* self, intptr_t slot);
void QGraphicsWebView_loadFinished(QGraphicsWebView* self, bool param1);
void QGraphicsWebView_connect_loadFinished(QGraphicsWebView* self, intptr_t slot);
void QGraphicsWebView_loadProgress(QGraphicsWebView* self, int progress);
void QGraphicsWebView_connect_loadProgress(QGraphicsWebView* self, intptr_t slot);
void QGraphicsWebView_urlChanged(QGraphicsWebView* self, QUrl* param1);
void QGraphicsWebView_connect_urlChanged(QGraphicsWebView* self, intptr_t slot);
void QGraphicsWebView_titleChanged(QGraphicsWebView* self, struct miqt_string param1);
void QGraphicsWebView_connect_titleChanged(QGraphicsWebView* self, intptr_t slot);
void QGraphicsWebView_iconChanged(QGraphicsWebView* self);
void QGraphicsWebView_connect_iconChanged(QGraphicsWebView* self, intptr_t slot);
void QGraphicsWebView_statusBarMessage(QGraphicsWebView* self, struct miqt_string message);
void QGraphicsWebView_connect_statusBarMessage(QGraphicsWebView* self, intptr_t slot);
void QGraphicsWebView_linkClicked(QGraphicsWebView* self, QUrl* param1);
void QGraphicsWebView_connect_linkClicked(QGraphicsWebView* self, intptr_t slot);
void QGraphicsWebView_mousePressEvent(QGraphicsWebView* self, QGraphicsSceneMouseEvent* param1);
void QGraphicsWebView_mouseDoubleClickEvent(QGraphicsWebView* self, QGraphicsSceneMouseEvent* param1);
void QGraphicsWebView_mouseReleaseEvent(QGraphicsWebView* self, QGraphicsSceneMouseEvent* param1);
void QGraphicsWebView_mouseMoveEvent(QGraphicsWebView* self, QGraphicsSceneMouseEvent* param1);
void QGraphicsWebView_hoverMoveEvent(QGraphicsWebView* self, QGraphicsSceneHoverEvent* param1);
void QGraphicsWebView_hoverLeaveEvent(QGraphicsWebView* self, QGraphicsSceneHoverEvent* param1);
void QGraphicsWebView_wheelEvent(QGraphicsWebView* self, QGraphicsSceneWheelEvent* param1);
void QGraphicsWebView_keyPressEvent(QGraphicsWebView* self, QKeyEvent* param1);
void QGraphicsWebView_keyReleaseEvent(QGraphicsWebView* self, QKeyEvent* param1);
void QGraphicsWebView_contextMenuEvent(QGraphicsWebView* self, QGraphicsSceneContextMenuEvent* param1);
void QGraphicsWebView_dragEnterEvent(QGraphicsWebView* self, QGraphicsSceneDragDropEvent* param1);
void QGraphicsWebView_dragLeaveEvent(QGraphicsWebView* self, QGraphicsSceneDragDropEvent* param1);
void QGraphicsWebView_dragMoveEvent(QGraphicsWebView* self, QGraphicsSceneDragDropEvent* param1);
void QGraphicsWebView_dropEvent(QGraphicsWebView* self, QGraphicsSceneDragDropEvent* param1);
void QGraphicsWebView_focusInEvent(QGraphicsWebView* self, QFocusEvent* param1);
void QGraphicsWebView_focusOutEvent(QGraphicsWebView* self, QFocusEvent* param1);
void QGraphicsWebView_inputMethodEvent(QGraphicsWebView* self, QInputMethodEvent* param1);
bool QGraphicsWebView_focusNextPrevChild(QGraphicsWebView* self, bool next);
bool QGraphicsWebView_sceneEvent(QGraphicsWebView* self, QEvent* param1);
struct miqt_string QGraphicsWebView_tr2(const char* s, const char* c);
struct miqt_string QGraphicsWebView_tr3(const char* s, const char* c, int n);
struct miqt_string QGraphicsWebView_trUtf82(const char* s, const char* c);
struct miqt_string QGraphicsWebView_trUtf83(const char* s, const char* c, int n);
void QGraphicsWebView_load2(QGraphicsWebView* self, QNetworkRequest* request, int operation);
void QGraphicsWebView_load3(QGraphicsWebView* self, QNetworkRequest* request, int operation, struct miqt_string body);
void QGraphicsWebView_setHtml2(QGraphicsWebView* self, struct miqt_string html, QUrl* baseUrl);
void QGraphicsWebView_setContent2(QGraphicsWebView* self, struct miqt_string data, struct miqt_string mimeType);
void QGraphicsWebView_setContent3(QGraphicsWebView* self, struct miqt_string data, struct miqt_string mimeType, QUrl* baseUrl);
void QGraphicsWebView_triggerPageAction2(QGraphicsWebView* self, int action, bool checked);
bool QGraphicsWebView_findText2(QGraphicsWebView* self, struct miqt_string subString, int options);
void QGraphicsWebView_setRenderHint2(QGraphicsWebView* self, int param1, bool enabled);
bool QGraphicsWebView_override_virtual_metaObject(void* self, intptr_t slot);
QMetaObject* QGraphicsWebView_virtualbase_metaObject(const void* self);
bool QGraphicsWebView_override_virtual_metacast(void* self, intptr_t slot);
void* QGraphicsWebView_virtualbase_metacast(void* self, const char* param1);
bool QGraphicsWebView_override_virtual_metacall(void* self, intptr_t slot);
int QGraphicsWebView_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QGraphicsWebView_override_virtual_setGeometry(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_setGeometry(void* self, QRectF* rect);
bool QGraphicsWebView_override_virtual_updateGeometry(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_updateGeometry(void* self);
bool QGraphicsWebView_override_virtual_paint(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_paint(void* self, QPainter* param1, QStyleOptionGraphicsItem* options, QWidget* widget);
bool QGraphicsWebView_override_virtual_itemChange(void* self, intptr_t slot);
QVariant* QGraphicsWebView_virtualbase_itemChange(void* self, int change, QVariant* value);
bool QGraphicsWebView_override_virtual_event(void* self, intptr_t slot);
bool QGraphicsWebView_virtualbase_event(void* self, QEvent* param1);
bool QGraphicsWebView_override_virtual_sizeHint(void* self, intptr_t slot);
QSizeF* QGraphicsWebView_virtualbase_sizeHint(const void* self, int which, QSizeF* constraint);
bool QGraphicsWebView_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QGraphicsWebView_virtualbase_inputMethodQuery(const void* self, int query);
bool QGraphicsWebView_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_mousePressEvent(void* self, QGraphicsSceneMouseEvent* param1);
bool QGraphicsWebView_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_mouseDoubleClickEvent(void* self, QGraphicsSceneMouseEvent* param1);
bool QGraphicsWebView_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_mouseReleaseEvent(void* self, QGraphicsSceneMouseEvent* param1);
bool QGraphicsWebView_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_mouseMoveEvent(void* self, QGraphicsSceneMouseEvent* param1);
bool QGraphicsWebView_override_virtual_hoverMoveEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_hoverMoveEvent(void* self, QGraphicsSceneHoverEvent* param1);
bool QGraphicsWebView_override_virtual_hoverLeaveEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_hoverLeaveEvent(void* self, QGraphicsSceneHoverEvent* param1);
bool QGraphicsWebView_override_virtual_wheelEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_wheelEvent(void* self, QGraphicsSceneWheelEvent* param1);
bool QGraphicsWebView_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
bool QGraphicsWebView_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* param1);
bool QGraphicsWebView_override_virtual_contextMenuEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_contextMenuEvent(void* self, QGraphicsSceneContextMenuEvent* param1);
bool QGraphicsWebView_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_dragEnterEvent(void* self, QGraphicsSceneDragDropEvent* param1);
bool QGraphicsWebView_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_dragLeaveEvent(void* self, QGraphicsSceneDragDropEvent* param1);
bool QGraphicsWebView_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_dragMoveEvent(void* self, QGraphicsSceneDragDropEvent* param1);
bool QGraphicsWebView_override_virtual_dropEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_dropEvent(void* self, QGraphicsSceneDragDropEvent* param1);
bool QGraphicsWebView_override_virtual_focusInEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_focusInEvent(void* self, QFocusEvent* param1);
bool QGraphicsWebView_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_focusOutEvent(void* self, QFocusEvent* param1);
bool QGraphicsWebView_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
bool QGraphicsWebView_override_virtual_focusNextPrevChild(void* self, intptr_t slot);
bool QGraphicsWebView_virtualbase_focusNextPrevChild(void* self, bool next);
bool QGraphicsWebView_override_virtual_sceneEvent(void* self, intptr_t slot);
bool QGraphicsWebView_virtualbase_sceneEvent(void* self, QEvent* param1);
bool QGraphicsWebView_override_virtual_getContentsMargins(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_getContentsMargins(const void* self, double* left, double* top, double* right, double* bottom);
bool QGraphicsWebView_override_virtual_type(void* self, intptr_t slot);
int QGraphicsWebView_virtualbase_type(const void* self);
bool QGraphicsWebView_override_virtual_paintWindowFrame(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_paintWindowFrame(void* self, QPainter* painter, QStyleOptionGraphicsItem* option, QWidget* widget);
bool QGraphicsWebView_override_virtual_boundingRect(void* self, intptr_t slot);
QRectF* QGraphicsWebView_virtualbase_boundingRect(const void* self);
bool QGraphicsWebView_override_virtual_shape(void* self, intptr_t slot);
QPainterPath* QGraphicsWebView_virtualbase_shape(const void* self);
bool QGraphicsWebView_override_virtual_initStyleOption(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_initStyleOption(const void* self, QStyleOption* option);
bool QGraphicsWebView_override_virtual_propertyChange(void* self, intptr_t slot);
QVariant* QGraphicsWebView_virtualbase_propertyChange(void* self, struct miqt_string propertyName, QVariant* value);
bool QGraphicsWebView_override_virtual_windowFrameEvent(void* self, intptr_t slot);
bool QGraphicsWebView_virtualbase_windowFrameEvent(void* self, QEvent* e);
bool QGraphicsWebView_override_virtual_windowFrameSectionAt(void* self, intptr_t slot);
int QGraphicsWebView_virtualbase_windowFrameSectionAt(const void* self, QPointF* pos);
bool QGraphicsWebView_override_virtual_changeEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_changeEvent(void* self, QEvent* event);
bool QGraphicsWebView_override_virtual_closeEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_closeEvent(void* self, QCloseEvent* event);
bool QGraphicsWebView_override_virtual_hideEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QGraphicsWebView_override_virtual_moveEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_moveEvent(void* self, QGraphicsSceneMoveEvent* event);
bool QGraphicsWebView_override_virtual_polishEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_polishEvent(void* self);
bool QGraphicsWebView_override_virtual_resizeEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_resizeEvent(void* self, QGraphicsSceneResizeEvent* event);
bool QGraphicsWebView_override_virtual_showEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_showEvent(void* self, QShowEvent* event);
bool QGraphicsWebView_override_virtual_grabMouseEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_grabMouseEvent(void* self, QEvent* event);
bool QGraphicsWebView_override_virtual_ungrabMouseEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_ungrabMouseEvent(void* self, QEvent* event);
bool QGraphicsWebView_override_virtual_grabKeyboardEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_grabKeyboardEvent(void* self, QEvent* event);
bool QGraphicsWebView_override_virtual_ungrabKeyboardEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_ungrabKeyboardEvent(void* self, QEvent* event);
bool QGraphicsWebView_override_virtual_eventFilter(void* self, intptr_t slot);
bool QGraphicsWebView_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QGraphicsWebView_override_virtual_timerEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QGraphicsWebView_override_virtual_childEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_childEvent(void* self, QChildEvent* event);
bool QGraphicsWebView_override_virtual_customEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_customEvent(void* self, QEvent* event);
bool QGraphicsWebView_override_virtual_connectNotify(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QGraphicsWebView_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
bool QGraphicsWebView_override_virtual_advance(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_advance(void* self, int phase);
bool QGraphicsWebView_override_virtual_contains(void* self, intptr_t slot);
bool QGraphicsWebView_virtualbase_contains(const void* self, QPointF* point);
bool QGraphicsWebView_override_virtual_collidesWithItem(void* self, intptr_t slot);
bool QGraphicsWebView_virtualbase_collidesWithItem(const void* self, QGraphicsItem* other, int mode);
bool QGraphicsWebView_override_virtual_collidesWithPath(void* self, intptr_t slot);
bool QGraphicsWebView_virtualbase_collidesWithPath(const void* self, QPainterPath* path, int mode);
bool QGraphicsWebView_override_virtual_isObscuredBy(void* self, intptr_t slot);
bool QGraphicsWebView_virtualbase_isObscuredBy(const void* self, QGraphicsItem* item);
bool QGraphicsWebView_override_virtual_opaqueArea(void* self, intptr_t slot);
QPainterPath* QGraphicsWebView_virtualbase_opaqueArea(const void* self);
bool QGraphicsWebView_override_virtual_sceneEventFilter(void* self, intptr_t slot);
bool QGraphicsWebView_virtualbase_sceneEventFilter(void* self, QGraphicsItem* watched, QEvent* event);
bool QGraphicsWebView_override_virtual_hoverEnterEvent(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_hoverEnterEvent(void* self, QGraphicsSceneHoverEvent* event);
bool QGraphicsWebView_override_virtual_supportsExtension(void* self, intptr_t slot);
bool QGraphicsWebView_virtualbase_supportsExtension(const void* self, int extension);
bool QGraphicsWebView_override_virtual_setExtension(void* self, intptr_t slot);
void QGraphicsWebView_virtualbase_setExtension(void* self, int extension, QVariant* variant);
bool QGraphicsWebView_override_virtual_extension(void* self, intptr_t slot);
QVariant* QGraphicsWebView_virtualbase_extension(const void* self, QVariant* variant);
void QGraphicsWebView_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
QObject* QGraphicsWebView_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QGraphicsWebView_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QGraphicsWebView_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QGraphicsWebView_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
void QGraphicsWebView_protectedbase_addToIndex(bool* _dynamic_cast_ok, void* self);
void QGraphicsWebView_protectedbase_removeFromIndex(bool* _dynamic_cast_ok, void* self);
void QGraphicsWebView_protectedbase_prepareGeometryChange(bool* _dynamic_cast_ok, void* self);
void QGraphicsWebView_protectedbase_setGraphicsItem(bool* _dynamic_cast_ok, void* self, QGraphicsItem* item);
void QGraphicsWebView_protectedbase_setOwnedByLayout(bool* _dynamic_cast_ok, void* self, bool ownedByLayout);
const QMetaObject* QGraphicsWebView_staticMetaObject();
void QGraphicsWebView_delete(QGraphicsWebView* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
