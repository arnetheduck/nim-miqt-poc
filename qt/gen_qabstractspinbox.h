#pragma once
#ifndef MIQT_QT_GEN_QABSTRACTSPINBOX_H
#define MIQT_QT_GEN_QABSTRACTSPINBOX_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractSpinBox;
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
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractSpinBox QAbstractSpinBox;
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
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QAbstractSpinBox_VTable {
	void (*destructor)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self);
	QMetaObject* (*metaObject)(struct QAbstractSpinBox_VTable* vtbl, const QAbstractSpinBox* self);
	void* (*metacast)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, const char* param1);
	int (*metacall)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QAbstractSpinBox_VTable* vtbl, const QAbstractSpinBox* self);
	QSize* (*minimumSizeHint)(struct QAbstractSpinBox_VTable* vtbl, const QAbstractSpinBox* self);
	bool (*event)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QEvent* event);
	QVariant* (*inputMethodQuery)(struct QAbstractSpinBox_VTable* vtbl, const QAbstractSpinBox* self, int param1);
	int (*validate)(struct QAbstractSpinBox_VTable* vtbl, const QAbstractSpinBox* self, struct miqt_string input, int* pos);
	void (*fixup)(struct QAbstractSpinBox_VTable* vtbl, const QAbstractSpinBox* self, struct miqt_string input);
	void (*stepBy)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, int steps);
	void (*clear)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self);
	void (*resizeEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QResizeEvent* event);
	void (*keyPressEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QKeyEvent* event);
	void (*keyReleaseEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QKeyEvent* event);
	void (*wheelEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QWheelEvent* event);
	void (*focusInEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QFocusEvent* event);
	void (*contextMenuEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QContextMenuEvent* event);
	void (*changeEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QEvent* event);
	void (*closeEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QCloseEvent* event);
	void (*hideEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QHideEvent* event);
	void (*mousePressEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QMouseEvent* event);
	void (*timerEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QTimerEvent* event);
	void (*paintEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QPaintEvent* event);
	void (*showEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QShowEvent* event);
	int (*stepEnabled)(struct QAbstractSpinBox_VTable* vtbl, const QAbstractSpinBox* self);
	int (*devType)(struct QAbstractSpinBox_VTable* vtbl, const QAbstractSpinBox* self);
	void (*setVisible)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, bool visible);
	int (*heightForWidth)(struct QAbstractSpinBox_VTable* vtbl, const QAbstractSpinBox* self, int param1);
	bool (*hasHeightForWidth)(struct QAbstractSpinBox_VTable* vtbl, const QAbstractSpinBox* self);
	QPaintEngine* (*paintEngine)(struct QAbstractSpinBox_VTable* vtbl, const QAbstractSpinBox* self);
	void (*mouseDoubleClickEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QMouseEvent* event);
	void (*enterEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QEvent* event);
	void (*leaveEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QEvent* event);
	void (*moveEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QMoveEvent* event);
	void (*tabletEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QTabletEvent* event);
	void (*actionEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QDropEvent* event);
	bool (*nativeEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QAbstractSpinBox_VTable* vtbl, const QAbstractSpinBox* self, int param1);
	void (*initPainter)(struct QAbstractSpinBox_VTable* vtbl, const QAbstractSpinBox* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QAbstractSpinBox_VTable* vtbl, const QAbstractSpinBox* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QAbstractSpinBox_VTable* vtbl, const QAbstractSpinBox* self);
	void (*inputMethodEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QInputMethodEvent* param1);
	bool (*focusNextPrevChild)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, bool next);
	bool (*eventFilter)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QObject* watched, QEvent* event);
	void (*childEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QChildEvent* event);
	void (*customEvent)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QEvent* event);
	void (*connectNotify)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QAbstractSpinBox_VTable* vtbl, QAbstractSpinBox* self, QMetaMethod* signal);
};
QAbstractSpinBox* QAbstractSpinBox_new(struct QAbstractSpinBox_VTable* vtbl, QWidget* parent);
QAbstractSpinBox* QAbstractSpinBox_new2(struct QAbstractSpinBox_VTable* vtbl);
void QAbstractSpinBox_virtbase(QAbstractSpinBox* src, QWidget** outptr_QWidget);
QMetaObject* QAbstractSpinBox_metaObject(const QAbstractSpinBox* self);
void* QAbstractSpinBox_metacast(QAbstractSpinBox* self, const char* param1);
int QAbstractSpinBox_metacall(QAbstractSpinBox* self, int param1, int param2, void** param3);
struct miqt_string QAbstractSpinBox_tr(const char* s);
struct miqt_string QAbstractSpinBox_trUtf8(const char* s);
int QAbstractSpinBox_buttonSymbols(const QAbstractSpinBox* self);
void QAbstractSpinBox_setButtonSymbols(QAbstractSpinBox* self, int bs);
void QAbstractSpinBox_setCorrectionMode(QAbstractSpinBox* self, int cm);
int QAbstractSpinBox_correctionMode(const QAbstractSpinBox* self);
bool QAbstractSpinBox_hasAcceptableInput(const QAbstractSpinBox* self);
struct miqt_string QAbstractSpinBox_text(const QAbstractSpinBox* self);
struct miqt_string QAbstractSpinBox_specialValueText(const QAbstractSpinBox* self);
void QAbstractSpinBox_setSpecialValueText(QAbstractSpinBox* self, struct miqt_string txt);
bool QAbstractSpinBox_wrapping(const QAbstractSpinBox* self);
void QAbstractSpinBox_setWrapping(QAbstractSpinBox* self, bool w);
void QAbstractSpinBox_setReadOnly(QAbstractSpinBox* self, bool r);
bool QAbstractSpinBox_isReadOnly(const QAbstractSpinBox* self);
void QAbstractSpinBox_setKeyboardTracking(QAbstractSpinBox* self, bool kt);
bool QAbstractSpinBox_keyboardTracking(const QAbstractSpinBox* self);
void QAbstractSpinBox_setAlignment(QAbstractSpinBox* self, int flag);
int QAbstractSpinBox_alignment(const QAbstractSpinBox* self);
void QAbstractSpinBox_setFrame(QAbstractSpinBox* self, bool frame);
bool QAbstractSpinBox_hasFrame(const QAbstractSpinBox* self);
void QAbstractSpinBox_setAccelerated(QAbstractSpinBox* self, bool on);
bool QAbstractSpinBox_isAccelerated(const QAbstractSpinBox* self);
void QAbstractSpinBox_setGroupSeparatorShown(QAbstractSpinBox* self, bool shown);
bool QAbstractSpinBox_isGroupSeparatorShown(const QAbstractSpinBox* self);
QSize* QAbstractSpinBox_sizeHint(const QAbstractSpinBox* self);
QSize* QAbstractSpinBox_minimumSizeHint(const QAbstractSpinBox* self);
void QAbstractSpinBox_interpretText(QAbstractSpinBox* self);
bool QAbstractSpinBox_event(QAbstractSpinBox* self, QEvent* event);
QVariant* QAbstractSpinBox_inputMethodQuery(const QAbstractSpinBox* self, int param1);
int QAbstractSpinBox_validate(const QAbstractSpinBox* self, struct miqt_string input, int* pos);
void QAbstractSpinBox_fixup(const QAbstractSpinBox* self, struct miqt_string input);
void QAbstractSpinBox_stepBy(QAbstractSpinBox* self, int steps);
void QAbstractSpinBox_stepUp(QAbstractSpinBox* self);
void QAbstractSpinBox_stepDown(QAbstractSpinBox* self);
void QAbstractSpinBox_selectAll(QAbstractSpinBox* self);
void QAbstractSpinBox_clear(QAbstractSpinBox* self);
void QAbstractSpinBox_resizeEvent(QAbstractSpinBox* self, QResizeEvent* event);
void QAbstractSpinBox_keyPressEvent(QAbstractSpinBox* self, QKeyEvent* event);
void QAbstractSpinBox_keyReleaseEvent(QAbstractSpinBox* self, QKeyEvent* event);
void QAbstractSpinBox_wheelEvent(QAbstractSpinBox* self, QWheelEvent* event);
void QAbstractSpinBox_focusInEvent(QAbstractSpinBox* self, QFocusEvent* event);
void QAbstractSpinBox_focusOutEvent(QAbstractSpinBox* self, QFocusEvent* event);
void QAbstractSpinBox_contextMenuEvent(QAbstractSpinBox* self, QContextMenuEvent* event);
void QAbstractSpinBox_changeEvent(QAbstractSpinBox* self, QEvent* event);
void QAbstractSpinBox_closeEvent(QAbstractSpinBox* self, QCloseEvent* event);
void QAbstractSpinBox_hideEvent(QAbstractSpinBox* self, QHideEvent* event);
void QAbstractSpinBox_mousePressEvent(QAbstractSpinBox* self, QMouseEvent* event);
void QAbstractSpinBox_mouseReleaseEvent(QAbstractSpinBox* self, QMouseEvent* event);
void QAbstractSpinBox_mouseMoveEvent(QAbstractSpinBox* self, QMouseEvent* event);
void QAbstractSpinBox_timerEvent(QAbstractSpinBox* self, QTimerEvent* event);
void QAbstractSpinBox_paintEvent(QAbstractSpinBox* self, QPaintEvent* event);
void QAbstractSpinBox_showEvent(QAbstractSpinBox* self, QShowEvent* event);
int QAbstractSpinBox_stepEnabled(const QAbstractSpinBox* self);
void QAbstractSpinBox_editingFinished(QAbstractSpinBox* self);
void QAbstractSpinBox_connect_editingFinished(QAbstractSpinBox* self, intptr_t slot);
struct miqt_string QAbstractSpinBox_tr2(const char* s, const char* c);
struct miqt_string QAbstractSpinBox_tr3(const char* s, const char* c, int n);
struct miqt_string QAbstractSpinBox_trUtf82(const char* s, const char* c);
struct miqt_string QAbstractSpinBox_trUtf83(const char* s, const char* c, int n);
QMetaObject* QAbstractSpinBox_virtualbase_metaObject(const void* self);
void* QAbstractSpinBox_virtualbase_metacast(void* self, const char* param1);
int QAbstractSpinBox_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QAbstractSpinBox_virtualbase_sizeHint(const void* self);
QSize* QAbstractSpinBox_virtualbase_minimumSizeHint(const void* self);
bool QAbstractSpinBox_virtualbase_event(void* self, QEvent* event);
QVariant* QAbstractSpinBox_virtualbase_inputMethodQuery(const void* self, int param1);
int QAbstractSpinBox_virtualbase_validate(const void* self, struct miqt_string input, int* pos);
void QAbstractSpinBox_virtualbase_fixup(const void* self, struct miqt_string input);
void QAbstractSpinBox_virtualbase_stepBy(void* self, int steps);
void QAbstractSpinBox_virtualbase_clear(void* self);
void QAbstractSpinBox_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QAbstractSpinBox_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QAbstractSpinBox_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QAbstractSpinBox_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QAbstractSpinBox_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QAbstractSpinBox_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QAbstractSpinBox_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QAbstractSpinBox_virtualbase_changeEvent(void* self, QEvent* event);
void QAbstractSpinBox_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QAbstractSpinBox_virtualbase_hideEvent(void* self, QHideEvent* event);
void QAbstractSpinBox_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QAbstractSpinBox_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QAbstractSpinBox_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QAbstractSpinBox_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QAbstractSpinBox_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QAbstractSpinBox_virtualbase_showEvent(void* self, QShowEvent* event);
int QAbstractSpinBox_virtualbase_stepEnabled(const void* self);
int QAbstractSpinBox_virtualbase_devType(const void* self);
void QAbstractSpinBox_virtualbase_setVisible(void* self, bool visible);
int QAbstractSpinBox_virtualbase_heightForWidth(const void* self, int param1);
bool QAbstractSpinBox_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QAbstractSpinBox_virtualbase_paintEngine(const void* self);
void QAbstractSpinBox_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QAbstractSpinBox_virtualbase_enterEvent(void* self, QEvent* event);
void QAbstractSpinBox_virtualbase_leaveEvent(void* self, QEvent* event);
void QAbstractSpinBox_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QAbstractSpinBox_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QAbstractSpinBox_virtualbase_actionEvent(void* self, QActionEvent* event);
void QAbstractSpinBox_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QAbstractSpinBox_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QAbstractSpinBox_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QAbstractSpinBox_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QAbstractSpinBox_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QAbstractSpinBox_virtualbase_metric(const void* self, int param1);
void QAbstractSpinBox_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QAbstractSpinBox_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QAbstractSpinBox_virtualbase_sharedPainter(const void* self);
void QAbstractSpinBox_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
bool QAbstractSpinBox_virtualbase_focusNextPrevChild(void* self, bool next);
bool QAbstractSpinBox_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QAbstractSpinBox_virtualbase_childEvent(void* self, QChildEvent* event);
void QAbstractSpinBox_virtualbase_customEvent(void* self, QEvent* event);
void QAbstractSpinBox_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QAbstractSpinBox_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QAbstractSpinBox_staticMetaObject();
void QAbstractSpinBox_delete(QAbstractSpinBox* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
