#pragma once
#ifndef MIQT_QT_GEN_QLABEL_H
#define MIQT_QT_GEN_QLABEL_H

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
class QFrame;
class QHideEvent;
class QInputMethodEvent;
class QKeyEvent;
class QLabel;
class QMetaMethod;
class QMetaObject;
class QMouseEvent;
class QMoveEvent;
class QMovie;
class QObject;
class QPaintDevice;
class QPaintEngine;
class QPaintEvent;
class QPainter;
class QPicture;
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
typedef struct QFrame QFrame;
typedef struct QHideEvent QHideEvent;
typedef struct QInputMethodEvent QInputMethodEvent;
typedef struct QKeyEvent QKeyEvent;
typedef struct QLabel QLabel;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMouseEvent QMouseEvent;
typedef struct QMoveEvent QMoveEvent;
typedef struct QMovie QMovie;
typedef struct QObject QObject;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPaintEvent QPaintEvent;
typedef struct QPainter QPainter;
typedef struct QPicture QPicture;
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
#endif

struct QLabel_VTable {
	void (*destructor)(struct QLabel_VTable* vtbl, QLabel* self);
	QMetaObject* (*metaObject)(struct QLabel_VTable* vtbl, const QLabel* self);
	void* (*metacast)(struct QLabel_VTable* vtbl, QLabel* self, const char* param1);
	int (*metacall)(struct QLabel_VTable* vtbl, QLabel* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QLabel_VTable* vtbl, const QLabel* self);
	QSize* (*minimumSizeHint)(struct QLabel_VTable* vtbl, const QLabel* self);
	int (*heightForWidth)(struct QLabel_VTable* vtbl, const QLabel* self, int param1);
	bool (*event)(struct QLabel_VTable* vtbl, QLabel* self, QEvent* e);
	void (*keyPressEvent)(struct QLabel_VTable* vtbl, QLabel* self, QKeyEvent* ev);
	void (*paintEvent)(struct QLabel_VTable* vtbl, QLabel* self, QPaintEvent* param1);
	void (*changeEvent)(struct QLabel_VTable* vtbl, QLabel* self, QEvent* param1);
	void (*mousePressEvent)(struct QLabel_VTable* vtbl, QLabel* self, QMouseEvent* ev);
	void (*mouseMoveEvent)(struct QLabel_VTable* vtbl, QLabel* self, QMouseEvent* ev);
	void (*mouseReleaseEvent)(struct QLabel_VTable* vtbl, QLabel* self, QMouseEvent* ev);
	void (*contextMenuEvent)(struct QLabel_VTable* vtbl, QLabel* self, QContextMenuEvent* ev);
	void (*focusInEvent)(struct QLabel_VTable* vtbl, QLabel* self, QFocusEvent* ev);
	void (*focusOutEvent)(struct QLabel_VTable* vtbl, QLabel* self, QFocusEvent* ev);
	bool (*focusNextPrevChild)(struct QLabel_VTable* vtbl, QLabel* self, bool next);
	int (*devType)(struct QLabel_VTable* vtbl, const QLabel* self);
	void (*setVisible)(struct QLabel_VTable* vtbl, QLabel* self, bool visible);
	bool (*hasHeightForWidth)(struct QLabel_VTable* vtbl, const QLabel* self);
	QPaintEngine* (*paintEngine)(struct QLabel_VTable* vtbl, const QLabel* self);
	void (*mouseDoubleClickEvent)(struct QLabel_VTable* vtbl, QLabel* self, QMouseEvent* event);
	void (*wheelEvent)(struct QLabel_VTable* vtbl, QLabel* self, QWheelEvent* event);
	void (*keyReleaseEvent)(struct QLabel_VTable* vtbl, QLabel* self, QKeyEvent* event);
	void (*enterEvent)(struct QLabel_VTable* vtbl, QLabel* self, QEvent* event);
	void (*leaveEvent)(struct QLabel_VTable* vtbl, QLabel* self, QEvent* event);
	void (*moveEvent)(struct QLabel_VTable* vtbl, QLabel* self, QMoveEvent* event);
	void (*resizeEvent)(struct QLabel_VTable* vtbl, QLabel* self, QResizeEvent* event);
	void (*closeEvent)(struct QLabel_VTable* vtbl, QLabel* self, QCloseEvent* event);
	void (*tabletEvent)(struct QLabel_VTable* vtbl, QLabel* self, QTabletEvent* event);
	void (*actionEvent)(struct QLabel_VTable* vtbl, QLabel* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QLabel_VTable* vtbl, QLabel* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QLabel_VTable* vtbl, QLabel* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QLabel_VTable* vtbl, QLabel* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QLabel_VTable* vtbl, QLabel* self, QDropEvent* event);
	void (*showEvent)(struct QLabel_VTable* vtbl, QLabel* self, QShowEvent* event);
	void (*hideEvent)(struct QLabel_VTable* vtbl, QLabel* self, QHideEvent* event);
	bool (*nativeEvent)(struct QLabel_VTable* vtbl, QLabel* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QLabel_VTable* vtbl, const QLabel* self, int param1);
	void (*initPainter)(struct QLabel_VTable* vtbl, const QLabel* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QLabel_VTable* vtbl, const QLabel* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QLabel_VTable* vtbl, const QLabel* self);
	void (*inputMethodEvent)(struct QLabel_VTable* vtbl, QLabel* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QLabel_VTable* vtbl, const QLabel* self, int param1);
	bool (*eventFilter)(struct QLabel_VTable* vtbl, QLabel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QLabel_VTable* vtbl, QLabel* self, QTimerEvent* event);
	void (*childEvent)(struct QLabel_VTable* vtbl, QLabel* self, QChildEvent* event);
	void (*customEvent)(struct QLabel_VTable* vtbl, QLabel* self, QEvent* event);
	void (*connectNotify)(struct QLabel_VTable* vtbl, QLabel* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QLabel_VTable* vtbl, QLabel* self, QMetaMethod* signal);
};
QLabel* QLabel_new(struct QLabel_VTable* vtbl, QWidget* parent);
QLabel* QLabel_new2(struct QLabel_VTable* vtbl);
QLabel* QLabel_new3(struct QLabel_VTable* vtbl, struct miqt_string text);
QLabel* QLabel_new4(struct QLabel_VTable* vtbl, QWidget* parent, int f);
QLabel* QLabel_new5(struct QLabel_VTable* vtbl, struct miqt_string text, QWidget* parent);
QLabel* QLabel_new6(struct QLabel_VTable* vtbl, struct miqt_string text, QWidget* parent, int f);
void QLabel_virtbase(QLabel* src, QFrame** outptr_QFrame);
QMetaObject* QLabel_metaObject(const QLabel* self);
void* QLabel_metacast(QLabel* self, const char* param1);
int QLabel_metacall(QLabel* self, int param1, int param2, void** param3);
struct miqt_string QLabel_tr(const char* s);
struct miqt_string QLabel_trUtf8(const char* s);
struct miqt_string QLabel_text(const QLabel* self);
QPixmap* QLabel_pixmap(const QLabel* self);
QPixmap* QLabel_pixmapWithQtReturnByValueConstant(const QLabel* self, int param1);
QPicture* QLabel_picture(const QLabel* self);
QPicture* QLabel_pictureWithQtReturnByValueConstant(const QLabel* self, int param1);
QMovie* QLabel_movie(const QLabel* self);
int QLabel_textFormat(const QLabel* self);
void QLabel_setTextFormat(QLabel* self, int textFormat);
int QLabel_alignment(const QLabel* self);
void QLabel_setAlignment(QLabel* self, int alignment);
void QLabel_setWordWrap(QLabel* self, bool on);
bool QLabel_wordWrap(const QLabel* self);
int QLabel_indent(const QLabel* self);
void QLabel_setIndent(QLabel* self, int indent);
int QLabel_margin(const QLabel* self);
void QLabel_setMargin(QLabel* self, int margin);
bool QLabel_hasScaledContents(const QLabel* self);
void QLabel_setScaledContents(QLabel* self, bool scaledContents);
QSize* QLabel_sizeHint(const QLabel* self);
QSize* QLabel_minimumSizeHint(const QLabel* self);
void QLabel_setBuddy(QLabel* self, QWidget* buddy);
QWidget* QLabel_buddy(const QLabel* self);
int QLabel_heightForWidth(const QLabel* self, int param1);
bool QLabel_openExternalLinks(const QLabel* self);
void QLabel_setOpenExternalLinks(QLabel* self, bool open);
void QLabel_setTextInteractionFlags(QLabel* self, int flags);
int QLabel_textInteractionFlags(const QLabel* self);
void QLabel_setSelection(QLabel* self, int param1, int param2);
bool QLabel_hasSelectedText(const QLabel* self);
struct miqt_string QLabel_selectedText(const QLabel* self);
int QLabel_selectionStart(const QLabel* self);
void QLabel_setText(QLabel* self, struct miqt_string text);
void QLabel_setPixmap(QLabel* self, QPixmap* pixmap);
void QLabel_setPicture(QLabel* self, QPicture* picture);
void QLabel_setMovie(QLabel* self, QMovie* movie);
void QLabel_setNum(QLabel* self, int num);
void QLabel_setNumWithNum(QLabel* self, double num);
void QLabel_clear(QLabel* self);
void QLabel_linkActivated(QLabel* self, struct miqt_string link);
void QLabel_connect_linkActivated(QLabel* self, intptr_t slot);
void QLabel_linkHovered(QLabel* self, struct miqt_string link);
void QLabel_connect_linkHovered(QLabel* self, intptr_t slot);
bool QLabel_event(QLabel* self, QEvent* e);
void QLabel_keyPressEvent(QLabel* self, QKeyEvent* ev);
void QLabel_paintEvent(QLabel* self, QPaintEvent* param1);
void QLabel_changeEvent(QLabel* self, QEvent* param1);
void QLabel_mousePressEvent(QLabel* self, QMouseEvent* ev);
void QLabel_mouseMoveEvent(QLabel* self, QMouseEvent* ev);
void QLabel_mouseReleaseEvent(QLabel* self, QMouseEvent* ev);
void QLabel_contextMenuEvent(QLabel* self, QContextMenuEvent* ev);
void QLabel_focusInEvent(QLabel* self, QFocusEvent* ev);
void QLabel_focusOutEvent(QLabel* self, QFocusEvent* ev);
bool QLabel_focusNextPrevChild(QLabel* self, bool next);
struct miqt_string QLabel_tr2(const char* s, const char* c);
struct miqt_string QLabel_tr3(const char* s, const char* c, int n);
struct miqt_string QLabel_trUtf82(const char* s, const char* c);
struct miqt_string QLabel_trUtf83(const char* s, const char* c, int n);
QMetaObject* QLabel_virtualbase_metaObject(const void* self);
void* QLabel_virtualbase_metacast(void* self, const char* param1);
int QLabel_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QLabel_virtualbase_sizeHint(const void* self);
QSize* QLabel_virtualbase_minimumSizeHint(const void* self);
int QLabel_virtualbase_heightForWidth(const void* self, int param1);
bool QLabel_virtualbase_event(void* self, QEvent* e);
void QLabel_virtualbase_keyPressEvent(void* self, QKeyEvent* ev);
void QLabel_virtualbase_paintEvent(void* self, QPaintEvent* param1);
void QLabel_virtualbase_changeEvent(void* self, QEvent* param1);
void QLabel_virtualbase_mousePressEvent(void* self, QMouseEvent* ev);
void QLabel_virtualbase_mouseMoveEvent(void* self, QMouseEvent* ev);
void QLabel_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* ev);
void QLabel_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* ev);
void QLabel_virtualbase_focusInEvent(void* self, QFocusEvent* ev);
void QLabel_virtualbase_focusOutEvent(void* self, QFocusEvent* ev);
bool QLabel_virtualbase_focusNextPrevChild(void* self, bool next);
int QLabel_virtualbase_devType(const void* self);
void QLabel_virtualbase_setVisible(void* self, bool visible);
bool QLabel_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QLabel_virtualbase_paintEngine(const void* self);
void QLabel_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QLabel_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QLabel_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QLabel_virtualbase_enterEvent(void* self, QEvent* event);
void QLabel_virtualbase_leaveEvent(void* self, QEvent* event);
void QLabel_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QLabel_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QLabel_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QLabel_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QLabel_virtualbase_actionEvent(void* self, QActionEvent* event);
void QLabel_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QLabel_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QLabel_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QLabel_virtualbase_dropEvent(void* self, QDropEvent* event);
void QLabel_virtualbase_showEvent(void* self, QShowEvent* event);
void QLabel_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QLabel_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QLabel_virtualbase_metric(const void* self, int param1);
void QLabel_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QLabel_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QLabel_virtualbase_sharedPainter(const void* self);
void QLabel_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QLabel_virtualbase_inputMethodQuery(const void* self, int param1);
bool QLabel_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QLabel_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QLabel_virtualbase_childEvent(void* self, QChildEvent* event);
void QLabel_virtualbase_customEvent(void* self, QEvent* event);
void QLabel_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QLabel_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QLabel_staticMetaObject();
void QLabel_delete(QLabel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
