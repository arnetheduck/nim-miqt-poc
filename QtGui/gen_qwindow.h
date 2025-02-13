#pragma once
#ifndef MIQT_QTGUI_GEN_QWINDOW_H
#define MIQT_QTGUI_GEN_QWINDOW_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAccessibleInterface;
class QChildEvent;
class QCursor;
class QEvent;
class QExposeEvent;
class QFocusEvent;
class QHideEvent;
class QIcon;
class QKeyEvent;
class QMargins;
class QMetaMethod;
class QMetaObject;
class QMouseEvent;
class QMoveEvent;
class QObject;
class QPoint;
class QRect;
class QRegion;
class QResizeEvent;
class QScreen;
class QShowEvent;
class QSize;
class QSurface;
class QSurfaceFormat;
class QTabletEvent;
class QTimerEvent;
class QTouchEvent;
class QWheelEvent;
class QWindow;
#else
typedef struct QAccessibleInterface QAccessibleInterface;
typedef struct QChildEvent QChildEvent;
typedef struct QCursor QCursor;
typedef struct QEvent QEvent;
typedef struct QExposeEvent QExposeEvent;
typedef struct QFocusEvent QFocusEvent;
typedef struct QHideEvent QHideEvent;
typedef struct QIcon QIcon;
typedef struct QKeyEvent QKeyEvent;
typedef struct QMargins QMargins;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QObject QObject;
typedef struct QPoint QPoint;
typedef struct QRect QRect;
typedef struct QRegion QRegion;
typedef struct QResizeEvent QResizeEvent;
typedef struct QScreen QScreen;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QSurface QSurface;
typedef struct QSurfaceFormat QSurfaceFormat;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QTouchEvent QTouchEvent;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWindow QWindow;
#endif

QWindow* QWindow_new();
QWindow* QWindow_new2(QWindow* parent);
QWindow* QWindow_new3(QScreen* screen);
void QWindow_virtbase(QWindow* src, QObject** outptr_QObject, QSurface** outptr_QSurface);
QMetaObject* QWindow_metaObject(const QWindow* self);
void* QWindow_metacast(QWindow* self, const char* param1);
int QWindow_metacall(QWindow* self, int param1, int param2, void** param3);
struct miqt_string QWindow_tr(const char* s);
struct miqt_string QWindow_trUtf8(const char* s);
void QWindow_setSurfaceType(QWindow* self, int surfaceType);
int QWindow_surfaceType(const QWindow* self);
bool QWindow_isVisible(const QWindow* self);
int QWindow_visibility(const QWindow* self);
void QWindow_setVisibility(QWindow* self, int v);
void QWindow_create(QWindow* self);
uintptr_t QWindow_winId(const QWindow* self);
QWindow* QWindow_parent(const QWindow* self, int mode);
QWindow* QWindow_parent2(const QWindow* self);
void QWindow_setParent(QWindow* self, QWindow* parent);
bool QWindow_isTopLevel(const QWindow* self);
bool QWindow_isModal(const QWindow* self);
int QWindow_modality(const QWindow* self);
void QWindow_setModality(QWindow* self, int modality);
void QWindow_setFormat(QWindow* self, QSurfaceFormat* format);
QSurfaceFormat* QWindow_format(const QWindow* self);
QSurfaceFormat* QWindow_requestedFormat(const QWindow* self);
void QWindow_setFlags(QWindow* self, int flags);
int QWindow_flags(const QWindow* self);
void QWindow_setFlag(QWindow* self, int param1);
int QWindow_type(const QWindow* self);
struct miqt_string QWindow_title(const QWindow* self);
void QWindow_setOpacity(QWindow* self, double level);
double QWindow_opacity(const QWindow* self);
void QWindow_setMask(QWindow* self, QRegion* region);
QRegion* QWindow_mask(const QWindow* self);
bool QWindow_isActive(const QWindow* self);
void QWindow_reportContentOrientationChange(QWindow* self, int orientation);
int QWindow_contentOrientation(const QWindow* self);
double QWindow_devicePixelRatio(const QWindow* self);
int QWindow_windowState(const QWindow* self);
int QWindow_windowStates(const QWindow* self);
void QWindow_setWindowState(QWindow* self, int state);
void QWindow_setWindowStates(QWindow* self, int states);
void QWindow_setTransientParent(QWindow* self, QWindow* parent);
QWindow* QWindow_transientParent(const QWindow* self);
bool QWindow_isAncestorOf(const QWindow* self, QWindow* child);
bool QWindow_isExposed(const QWindow* self);
int QWindow_minimumWidth(const QWindow* self);
int QWindow_minimumHeight(const QWindow* self);
int QWindow_maximumWidth(const QWindow* self);
int QWindow_maximumHeight(const QWindow* self);
QSize* QWindow_minimumSize(const QWindow* self);
QSize* QWindow_maximumSize(const QWindow* self);
QSize* QWindow_baseSize(const QWindow* self);
QSize* QWindow_sizeIncrement(const QWindow* self);
void QWindow_setMinimumSize(QWindow* self, QSize* size);
void QWindow_setMaximumSize(QWindow* self, QSize* size);
void QWindow_setBaseSize(QWindow* self, QSize* size);
void QWindow_setSizeIncrement(QWindow* self, QSize* size);
QRect* QWindow_geometry(const QWindow* self);
QMargins* QWindow_frameMargins(const QWindow* self);
QRect* QWindow_frameGeometry(const QWindow* self);
QPoint* QWindow_framePosition(const QWindow* self);
void QWindow_setFramePosition(QWindow* self, QPoint* point);
int QWindow_width(const QWindow* self);
int QWindow_height(const QWindow* self);
int QWindow_x(const QWindow* self);
int QWindow_y(const QWindow* self);
QSize* QWindow_size(const QWindow* self);
QPoint* QWindow_position(const QWindow* self);
void QWindow_setPosition(QWindow* self, QPoint* pt);
void QWindow_setPosition2(QWindow* self, int posx, int posy);
void QWindow_resize(QWindow* self, QSize* newSize);
void QWindow_resize2(QWindow* self, int w, int h);
void QWindow_setFilePath(QWindow* self, struct miqt_string filePath);
struct miqt_string QWindow_filePath(const QWindow* self);
void QWindow_setIcon(QWindow* self, QIcon* icon);
QIcon* QWindow_icon(const QWindow* self);
void QWindow_destroy(QWindow* self);
bool QWindow_setKeyboardGrabEnabled(QWindow* self, bool grab);
bool QWindow_setMouseGrabEnabled(QWindow* self, bool grab);
QScreen* QWindow_screen(const QWindow* self);
void QWindow_setScreen(QWindow* self, QScreen* screen);
QAccessibleInterface* QWindow_accessibleRoot(const QWindow* self);
QObject* QWindow_focusObject(const QWindow* self);
QPoint* QWindow_mapToGlobal(const QWindow* self, QPoint* pos);
QPoint* QWindow_mapFromGlobal(const QWindow* self, QPoint* pos);
QCursor* QWindow_cursor(const QWindow* self);
void QWindow_setCursor(QWindow* self, QCursor* cursor);
void QWindow_unsetCursor(QWindow* self);
QWindow* QWindow_fromWinId(uintptr_t id);
void QWindow_requestActivate(QWindow* self);
void QWindow_setVisible(QWindow* self, bool visible);
void QWindow_show(QWindow* self);
void QWindow_hide(QWindow* self);
void QWindow_showMinimized(QWindow* self);
void QWindow_showMaximized(QWindow* self);
void QWindow_showFullScreen(QWindow* self);
void QWindow_showNormal(QWindow* self);
bool QWindow_close(QWindow* self);
void QWindow_raise(QWindow* self);
void QWindow_lower(QWindow* self);
bool QWindow_startSystemResize(QWindow* self, int edges);
bool QWindow_startSystemMove(QWindow* self);
void QWindow_setTitle(QWindow* self, struct miqt_string title);
void QWindow_setX(QWindow* self, int arg);
void QWindow_setY(QWindow* self, int arg);
void QWindow_setWidth(QWindow* self, int arg);
void QWindow_setHeight(QWindow* self, int arg);
void QWindow_setGeometry(QWindow* self, int posx, int posy, int w, int h);
void QWindow_setGeometryWithRect(QWindow* self, QRect* rect);
void QWindow_setMinimumWidth(QWindow* self, int w);
void QWindow_setMinimumHeight(QWindow* self, int h);
void QWindow_setMaximumWidth(QWindow* self, int w);
void QWindow_setMaximumHeight(QWindow* self, int h);
void QWindow_alert(QWindow* self, int msec);
void QWindow_requestUpdate(QWindow* self);
void QWindow_screenChanged(QWindow* self, QScreen* screen);
void QWindow_connect_screenChanged(QWindow* self, intptr_t slot);
void QWindow_modalityChanged(QWindow* self, int modality);
void QWindow_connect_modalityChanged(QWindow* self, intptr_t slot);
void QWindow_windowStateChanged(QWindow* self, int windowState);
void QWindow_connect_windowStateChanged(QWindow* self, intptr_t slot);
void QWindow_windowTitleChanged(QWindow* self, struct miqt_string title);
void QWindow_connect_windowTitleChanged(QWindow* self, intptr_t slot);
void QWindow_xChanged(QWindow* self, int arg);
void QWindow_connect_xChanged(QWindow* self, intptr_t slot);
void QWindow_yChanged(QWindow* self, int arg);
void QWindow_connect_yChanged(QWindow* self, intptr_t slot);
void QWindow_widthChanged(QWindow* self, int arg);
void QWindow_connect_widthChanged(QWindow* self, intptr_t slot);
void QWindow_heightChanged(QWindow* self, int arg);
void QWindow_connect_heightChanged(QWindow* self, intptr_t slot);
void QWindow_minimumWidthChanged(QWindow* self, int arg);
void QWindow_connect_minimumWidthChanged(QWindow* self, intptr_t slot);
void QWindow_minimumHeightChanged(QWindow* self, int arg);
void QWindow_connect_minimumHeightChanged(QWindow* self, intptr_t slot);
void QWindow_maximumWidthChanged(QWindow* self, int arg);
void QWindow_connect_maximumWidthChanged(QWindow* self, intptr_t slot);
void QWindow_maximumHeightChanged(QWindow* self, int arg);
void QWindow_connect_maximumHeightChanged(QWindow* self, intptr_t slot);
void QWindow_visibleChanged(QWindow* self, bool arg);
void QWindow_connect_visibleChanged(QWindow* self, intptr_t slot);
void QWindow_visibilityChanged(QWindow* self, int visibility);
void QWindow_connect_visibilityChanged(QWindow* self, intptr_t slot);
void QWindow_activeChanged(QWindow* self);
void QWindow_connect_activeChanged(QWindow* self, intptr_t slot);
void QWindow_contentOrientationChanged(QWindow* self, int orientation);
void QWindow_connect_contentOrientationChanged(QWindow* self, intptr_t slot);
void QWindow_focusObjectChanged(QWindow* self, QObject* object);
void QWindow_connect_focusObjectChanged(QWindow* self, intptr_t slot);
void QWindow_opacityChanged(QWindow* self, double opacity);
void QWindow_connect_opacityChanged(QWindow* self, intptr_t slot);
void QWindow_transientParentChanged(QWindow* self, QWindow* transientParent);
void QWindow_connect_transientParentChanged(QWindow* self, intptr_t slot);
void QWindow_exposeEvent(QWindow* self, QExposeEvent* param1);
void QWindow_resizeEvent(QWindow* self, QResizeEvent* param1);
void QWindow_moveEvent(QWindow* self, QMoveEvent* param1);
void QWindow_focusInEvent(QWindow* self, QFocusEvent* param1);
void QWindow_focusOutEvent(QWindow* self, QFocusEvent* param1);
void QWindow_showEvent(QWindow* self, QShowEvent* param1);
void QWindow_hideEvent(QWindow* self, QHideEvent* param1);
bool QWindow_event(QWindow* self, QEvent* param1);
void QWindow_keyPressEvent(QWindow* self, QKeyEvent* param1);
void QWindow_keyReleaseEvent(QWindow* self, QKeyEvent* param1);
void QWindow_mousePressEvent(QWindow* self, QMouseEvent* param1);
void QWindow_mouseReleaseEvent(QWindow* self, QMouseEvent* param1);
void QWindow_mouseDoubleClickEvent(QWindow* self, QMouseEvent* param1);
void QWindow_mouseMoveEvent(QWindow* self, QMouseEvent* param1);
void QWindow_wheelEvent(QWindow* self, QWheelEvent* param1);
void QWindow_touchEvent(QWindow* self, QTouchEvent* param1);
void QWindow_tabletEvent(QWindow* self, QTabletEvent* param1);
bool QWindow_nativeEvent(QWindow* self, struct miqt_string eventType, void* message, long* result);
struct miqt_string QWindow_tr2(const char* s, const char* c);
struct miqt_string QWindow_tr3(const char* s, const char* c, int n);
struct miqt_string QWindow_trUtf82(const char* s, const char* c);
struct miqt_string QWindow_trUtf83(const char* s, const char* c, int n);
void QWindow_setFlag2(QWindow* self, int param1, bool on);
bool QWindow_isAncestorOf2(const QWindow* self, QWindow* child, int mode);
bool QWindow_override_virtual_metacall(void* self, intptr_t slot);
int QWindow_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QWindow_override_virtual_surfaceType(void* self, intptr_t slot);
int QWindow_virtualbase_surfaceType(const void* self);
bool QWindow_override_virtual_format(void* self, intptr_t slot);
QSurfaceFormat* QWindow_virtualbase_format(const void* self);
bool QWindow_override_virtual_size(void* self, intptr_t slot);
QSize* QWindow_virtualbase_size(const void* self);
bool QWindow_override_virtual_accessibleRoot(void* self, intptr_t slot);
QAccessibleInterface* QWindow_virtualbase_accessibleRoot(const void* self);
bool QWindow_override_virtual_focusObject(void* self, intptr_t slot);
QObject* QWindow_virtualbase_focusObject(const void* self);
bool QWindow_override_virtual_exposeEvent(void* self, intptr_t slot);
void QWindow_virtualbase_exposeEvent(void* self, QExposeEvent* param1);
bool QWindow_override_virtual_resizeEvent(void* self, intptr_t slot);
void QWindow_virtualbase_resizeEvent(void* self, QResizeEvent* param1);
bool QWindow_override_virtual_moveEvent(void* self, intptr_t slot);
void QWindow_virtualbase_moveEvent(void* self, QMoveEvent* param1);
bool QWindow_override_virtual_focusInEvent(void* self, intptr_t slot);
void QWindow_virtualbase_focusInEvent(void* self, QFocusEvent* param1);
bool QWindow_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QWindow_virtualbase_focusOutEvent(void* self, QFocusEvent* param1);
bool QWindow_override_virtual_showEvent(void* self, intptr_t slot);
void QWindow_virtualbase_showEvent(void* self, QShowEvent* param1);
bool QWindow_override_virtual_hideEvent(void* self, intptr_t slot);
void QWindow_virtualbase_hideEvent(void* self, QHideEvent* param1);
bool QWindow_override_virtual_event(void* self, intptr_t slot);
bool QWindow_virtualbase_event(void* self, QEvent* param1);
bool QWindow_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QWindow_virtualbase_keyPressEvent(void* self, QKeyEvent* param1);
bool QWindow_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QWindow_virtualbase_keyReleaseEvent(void* self, QKeyEvent* param1);
bool QWindow_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QWindow_virtualbase_mousePressEvent(void* self, QMouseEvent* param1);
bool QWindow_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QWindow_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1);
bool QWindow_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QWindow_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1);
bool QWindow_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QWindow_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1);
bool QWindow_override_virtual_wheelEvent(void* self, intptr_t slot);
void QWindow_virtualbase_wheelEvent(void* self, QWheelEvent* param1);
bool QWindow_override_virtual_touchEvent(void* self, intptr_t slot);
void QWindow_virtualbase_touchEvent(void* self, QTouchEvent* param1);
bool QWindow_override_virtual_tabletEvent(void* self, intptr_t slot);
void QWindow_virtualbase_tabletEvent(void* self, QTabletEvent* param1);
bool QWindow_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QWindow_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
bool QWindow_override_virtual_eventFilter(void* self, intptr_t slot);
bool QWindow_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QWindow_override_virtual_timerEvent(void* self, intptr_t slot);
void QWindow_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QWindow_override_virtual_childEvent(void* self, intptr_t slot);
void QWindow_virtualbase_childEvent(void* self, QChildEvent* event);
bool QWindow_override_virtual_customEvent(void* self, intptr_t slot);
void QWindow_virtualbase_customEvent(void* self, QEvent* event);
bool QWindow_override_virtual_connectNotify(void* self, intptr_t slot);
void QWindow_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QWindow_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QWindow_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QWindow_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QWindow_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QWindow_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QWindow_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QWindow_staticMetaObject();
void QWindow_delete(QWindow* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
