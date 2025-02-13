#pragma once
#ifndef MIQT_QTWIDGETS_GEN_QCALENDARWIDGET_H
#define MIQT_QTWIDGETS_GEN_QCALENDARWIDGET_H

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
class QCalendar;
class QCalendarWidget;
class QChildEvent;
class QCloseEvent;
class QContextMenuEvent;
class QDate;
class QDragEnterEvent;
class QDragLeaveEvent;
class QDragMoveEvent;
class QDropEvent;
class QEnterEvent;
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
class QRect;
class QResizeEvent;
class QShowEvent;
class QSize;
class QTabletEvent;
class QTextCharFormat;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QActionEvent QActionEvent;
typedef struct QCalendar QCalendar;
typedef struct QCalendarWidget QCalendarWidget;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDate QDate;
typedef struct QDragEnterEvent QDragEnterEvent;
typedef struct QDragLeaveEvent QDragLeaveEvent;
typedef struct QDragMoveEvent QDragMoveEvent;
typedef struct QDropEvent QDropEvent;
typedef struct QEnterEvent QEnterEvent;
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
typedef struct QRect QRect;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTextCharFormat QTextCharFormat;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

struct QCalendarWidget_VTable {
	void (*destructor)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self);
	QMetaObject* (*metaObject)(struct QCalendarWidget_VTable* vtbl, const QCalendarWidget* self);
	void* (*metacast)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, const char* param1);
	int (*metacall)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, int param1, int param2, void** param3);
	QSize* (*sizeHint)(struct QCalendarWidget_VTable* vtbl, const QCalendarWidget* self);
	QSize* (*minimumSizeHint)(struct QCalendarWidget_VTable* vtbl, const QCalendarWidget* self);
	bool (*event)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QEvent* event);
	bool (*eventFilter)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QObject* watched, QEvent* event);
	void (*mousePressEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QMouseEvent* event);
	void (*resizeEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QResizeEvent* event);
	void (*keyPressEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QKeyEvent* event);
	void (*paintCell)(struct QCalendarWidget_VTable* vtbl, const QCalendarWidget* self, QPainter* painter, QRect* rect, QDate* date);
	int (*devType)(struct QCalendarWidget_VTable* vtbl, const QCalendarWidget* self);
	void (*setVisible)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, bool visible);
	int (*heightForWidth)(struct QCalendarWidget_VTable* vtbl, const QCalendarWidget* self, int param1);
	bool (*hasHeightForWidth)(struct QCalendarWidget_VTable* vtbl, const QCalendarWidget* self);
	QPaintEngine* (*paintEngine)(struct QCalendarWidget_VTable* vtbl, const QCalendarWidget* self);
	void (*mouseReleaseEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QMouseEvent* event);
	void (*wheelEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QWheelEvent* event);
	void (*keyReleaseEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QKeyEvent* event);
	void (*focusInEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QFocusEvent* event);
	void (*enterEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QEnterEvent* event);
	void (*leaveEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QEvent* event);
	void (*paintEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QPaintEvent* event);
	void (*moveEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QMoveEvent* event);
	void (*closeEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QCloseEvent* event);
	void (*contextMenuEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QContextMenuEvent* event);
	void (*tabletEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QTabletEvent* event);
	void (*actionEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QDropEvent* event);
	void (*showEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QShowEvent* event);
	void (*hideEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QHideEvent* event);
	bool (*nativeEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, struct miqt_string eventType, void* message, intptr_t* result);
	void (*changeEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QEvent* param1);
	int (*metric)(struct QCalendarWidget_VTable* vtbl, const QCalendarWidget* self, int param1);
	void (*initPainter)(struct QCalendarWidget_VTable* vtbl, const QCalendarWidget* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QCalendarWidget_VTable* vtbl, const QCalendarWidget* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QCalendarWidget_VTable* vtbl, const QCalendarWidget* self);
	void (*inputMethodEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QCalendarWidget_VTable* vtbl, const QCalendarWidget* self, int param1);
	bool (*focusNextPrevChild)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, bool next);
	void (*timerEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QTimerEvent* event);
	void (*childEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QChildEvent* event);
	void (*customEvent)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QEvent* event);
	void (*connectNotify)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QCalendarWidget_VTable* vtbl, QCalendarWidget* self, QMetaMethod* signal);
};
QCalendarWidget* QCalendarWidget_new(struct QCalendarWidget_VTable* vtbl, QWidget* parent);
QCalendarWidget* QCalendarWidget_new2(struct QCalendarWidget_VTable* vtbl);
void QCalendarWidget_virtbase(QCalendarWidget* src, QWidget** outptr_QWidget);
QMetaObject* QCalendarWidget_metaObject(const QCalendarWidget* self);
void* QCalendarWidget_metacast(QCalendarWidget* self, const char* param1);
int QCalendarWidget_metacall(QCalendarWidget* self, int param1, int param2, void** param3);
struct miqt_string QCalendarWidget_tr(const char* s);
QSize* QCalendarWidget_sizeHint(const QCalendarWidget* self);
QSize* QCalendarWidget_minimumSizeHint(const QCalendarWidget* self);
QDate* QCalendarWidget_selectedDate(const QCalendarWidget* self);
int QCalendarWidget_yearShown(const QCalendarWidget* self);
int QCalendarWidget_monthShown(const QCalendarWidget* self);
QDate* QCalendarWidget_minimumDate(const QCalendarWidget* self);
void QCalendarWidget_setMinimumDate(QCalendarWidget* self, QDate* date);
QDate* QCalendarWidget_maximumDate(const QCalendarWidget* self);
void QCalendarWidget_setMaximumDate(QCalendarWidget* self, QDate* date);
int QCalendarWidget_firstDayOfWeek(const QCalendarWidget* self);
void QCalendarWidget_setFirstDayOfWeek(QCalendarWidget* self, int dayOfWeek);
bool QCalendarWidget_isNavigationBarVisible(const QCalendarWidget* self);
bool QCalendarWidget_isGridVisible(const QCalendarWidget* self);
QCalendar* QCalendarWidget_calendar(const QCalendarWidget* self);
void QCalendarWidget_setCalendar(QCalendarWidget* self, QCalendar* calendar);
int QCalendarWidget_selectionMode(const QCalendarWidget* self);
void QCalendarWidget_setSelectionMode(QCalendarWidget* self, int mode);
int QCalendarWidget_horizontalHeaderFormat(const QCalendarWidget* self);
void QCalendarWidget_setHorizontalHeaderFormat(QCalendarWidget* self, int format);
int QCalendarWidget_verticalHeaderFormat(const QCalendarWidget* self);
void QCalendarWidget_setVerticalHeaderFormat(QCalendarWidget* self, int format);
QTextCharFormat* QCalendarWidget_headerTextFormat(const QCalendarWidget* self);
void QCalendarWidget_setHeaderTextFormat(QCalendarWidget* self, QTextCharFormat* format);
QTextCharFormat* QCalendarWidget_weekdayTextFormat(const QCalendarWidget* self, int dayOfWeek);
void QCalendarWidget_setWeekdayTextFormat(QCalendarWidget* self, int dayOfWeek, QTextCharFormat* format);
struct miqt_map /* of QDate* to QTextCharFormat* */  QCalendarWidget_dateTextFormat(const QCalendarWidget* self);
QTextCharFormat* QCalendarWidget_dateTextFormatWithDate(const QCalendarWidget* self, QDate* date);
void QCalendarWidget_setDateTextFormat(QCalendarWidget* self, QDate* date, QTextCharFormat* format);
bool QCalendarWidget_isDateEditEnabled(const QCalendarWidget* self);
void QCalendarWidget_setDateEditEnabled(QCalendarWidget* self, bool enable);
int QCalendarWidget_dateEditAcceptDelay(const QCalendarWidget* self);
void QCalendarWidget_setDateEditAcceptDelay(QCalendarWidget* self, int delay);
bool QCalendarWidget_event(QCalendarWidget* self, QEvent* event);
bool QCalendarWidget_eventFilter(QCalendarWidget* self, QObject* watched, QEvent* event);
void QCalendarWidget_mousePressEvent(QCalendarWidget* self, QMouseEvent* event);
void QCalendarWidget_resizeEvent(QCalendarWidget* self, QResizeEvent* event);
void QCalendarWidget_keyPressEvent(QCalendarWidget* self, QKeyEvent* event);
void QCalendarWidget_paintCell(const QCalendarWidget* self, QPainter* painter, QRect* rect, QDate* date);
void QCalendarWidget_setSelectedDate(QCalendarWidget* self, QDate* date);
void QCalendarWidget_setDateRange(QCalendarWidget* self, QDate* min, QDate* max);
void QCalendarWidget_setCurrentPage(QCalendarWidget* self, int year, int month);
void QCalendarWidget_setGridVisible(QCalendarWidget* self, bool show);
void QCalendarWidget_setNavigationBarVisible(QCalendarWidget* self, bool visible);
void QCalendarWidget_showNextMonth(QCalendarWidget* self);
void QCalendarWidget_showPreviousMonth(QCalendarWidget* self);
void QCalendarWidget_showNextYear(QCalendarWidget* self);
void QCalendarWidget_showPreviousYear(QCalendarWidget* self);
void QCalendarWidget_showSelectedDate(QCalendarWidget* self);
void QCalendarWidget_showToday(QCalendarWidget* self);
void QCalendarWidget_selectionChanged(QCalendarWidget* self);
void QCalendarWidget_connect_selectionChanged(QCalendarWidget* self, intptr_t slot);
void QCalendarWidget_clicked(QCalendarWidget* self, QDate* date);
void QCalendarWidget_connect_clicked(QCalendarWidget* self, intptr_t slot);
void QCalendarWidget_activated(QCalendarWidget* self, QDate* date);
void QCalendarWidget_connect_activated(QCalendarWidget* self, intptr_t slot);
void QCalendarWidget_currentPageChanged(QCalendarWidget* self, int year, int month);
void QCalendarWidget_connect_currentPageChanged(QCalendarWidget* self, intptr_t slot);
struct miqt_string QCalendarWidget_tr2(const char* s, const char* c);
struct miqt_string QCalendarWidget_tr3(const char* s, const char* c, int n);
QMetaObject* QCalendarWidget_virtualbase_metaObject(const void* self);
void* QCalendarWidget_virtualbase_metacast(void* self, const char* param1);
int QCalendarWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3);
QSize* QCalendarWidget_virtualbase_sizeHint(const void* self);
QSize* QCalendarWidget_virtualbase_minimumSizeHint(const void* self);
bool QCalendarWidget_virtualbase_event(void* self, QEvent* event);
bool QCalendarWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QCalendarWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QCalendarWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QCalendarWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QCalendarWidget_virtualbase_paintCell(const void* self, QPainter* painter, QRect* rect, QDate* date);
int QCalendarWidget_virtualbase_devType(const void* self);
void QCalendarWidget_virtualbase_setVisible(void* self, bool visible);
int QCalendarWidget_virtualbase_heightForWidth(const void* self, int param1);
bool QCalendarWidget_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QCalendarWidget_virtualbase_paintEngine(const void* self);
void QCalendarWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QCalendarWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QCalendarWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QCalendarWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QCalendarWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QCalendarWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QCalendarWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QCalendarWidget_virtualbase_enterEvent(void* self, QEnterEvent* event);
void QCalendarWidget_virtualbase_leaveEvent(void* self, QEvent* event);
void QCalendarWidget_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QCalendarWidget_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QCalendarWidget_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QCalendarWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
void QCalendarWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QCalendarWidget_virtualbase_actionEvent(void* self, QActionEvent* event);
void QCalendarWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QCalendarWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QCalendarWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QCalendarWidget_virtualbase_dropEvent(void* self, QDropEvent* event);
void QCalendarWidget_virtualbase_showEvent(void* self, QShowEvent* event);
void QCalendarWidget_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QCalendarWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);
void QCalendarWidget_virtualbase_changeEvent(void* self, QEvent* param1);
int QCalendarWidget_virtualbase_metric(const void* self, int param1);
void QCalendarWidget_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QCalendarWidget_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QCalendarWidget_virtualbase_sharedPainter(const void* self);
void QCalendarWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QCalendarWidget_virtualbase_inputMethodQuery(const void* self, int param1);
bool QCalendarWidget_virtualbase_focusNextPrevChild(void* self, bool next);
void QCalendarWidget_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QCalendarWidget_virtualbase_childEvent(void* self, QChildEvent* event);
void QCalendarWidget_virtualbase_customEvent(void* self, QEvent* event);
void QCalendarWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QCalendarWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QCalendarWidget_protectedbase_updateCell(void* self, QDate* date);
void QCalendarWidget_protectedbase_updateCells(void* self);
void QCalendarWidget_protectedbase_updateMicroFocus(void* self);
void QCalendarWidget_protectedbase_create(void* self);
void QCalendarWidget_protectedbase_destroy(void* self);
bool QCalendarWidget_protectedbase_focusNextChild(void* self);
bool QCalendarWidget_protectedbase_focusPreviousChild(void* self);
QObject* QCalendarWidget_protectedbase_sender(const void* self);
int QCalendarWidget_protectedbase_senderSignalIndex(const void* self);
int QCalendarWidget_protectedbase_receivers(const void* self, const char* signal);
bool QCalendarWidget_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
const QMetaObject* QCalendarWidget_staticMetaObject();
void QCalendarWidget_delete(QCalendarWidget* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
