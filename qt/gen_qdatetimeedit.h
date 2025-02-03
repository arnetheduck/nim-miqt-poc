#pragma once
#ifndef MIQT_QT_GEN_QDATETIMEEDIT_H
#define MIQT_QT_GEN_QDATETIMEEDIT_H

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
class QCalendar;
class QCalendarWidget;
class QChildEvent;
class QCloseEvent;
class QContextMenuEvent;
class QDate;
class QDateEdit;
class QDateTime;
class QDateTimeEdit;
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
class QTime;
class QTimeEdit;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractSpinBox QAbstractSpinBox;
typedef struct QActionEvent QActionEvent;
typedef struct QCalendar QCalendar;
typedef struct QCalendarWidget QCalendarWidget;
typedef struct QChildEvent QChildEvent;
typedef struct QCloseEvent QCloseEvent;
typedef struct QContextMenuEvent QContextMenuEvent;
typedef struct QDate QDate;
typedef struct QDateEdit QDateEdit;
typedef struct QDateTime QDateTime;
typedef struct QDateTimeEdit QDateTimeEdit;
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
typedef struct QTime QTime;
typedef struct QTimeEdit QTimeEdit;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

QDateTimeEdit* QDateTimeEdit_new(QWidget* parent);
QDateTimeEdit* QDateTimeEdit_new2();
QDateTimeEdit* QDateTimeEdit_new3(QDateTime* dt);
QDateTimeEdit* QDateTimeEdit_new4(QDate* d);
QDateTimeEdit* QDateTimeEdit_new5(QTime* t);
QDateTimeEdit* QDateTimeEdit_new6(QDateTime* dt, QWidget* parent);
QDateTimeEdit* QDateTimeEdit_new7(QDate* d, QWidget* parent);
QDateTimeEdit* QDateTimeEdit_new8(QTime* t, QWidget* parent);
void QDateTimeEdit_virtbase(QDateTimeEdit* src, QAbstractSpinBox** outptr_QAbstractSpinBox);
QMetaObject* QDateTimeEdit_metaObject(const QDateTimeEdit* self);
void* QDateTimeEdit_metacast(QDateTimeEdit* self, const char* param1);
int QDateTimeEdit_metacall(QDateTimeEdit* self, int param1, int param2, void** param3);
struct miqt_string QDateTimeEdit_tr(const char* s);
struct miqt_string QDateTimeEdit_trUtf8(const char* s);
QDateTime* QDateTimeEdit_dateTime(const QDateTimeEdit* self);
QDate* QDateTimeEdit_date(const QDateTimeEdit* self);
QTime* QDateTimeEdit_time(const QDateTimeEdit* self);
QCalendar* QDateTimeEdit_calendar(const QDateTimeEdit* self);
void QDateTimeEdit_setCalendar(QDateTimeEdit* self, QCalendar* calendar);
QDateTime* QDateTimeEdit_minimumDateTime(const QDateTimeEdit* self);
void QDateTimeEdit_clearMinimumDateTime(QDateTimeEdit* self);
void QDateTimeEdit_setMinimumDateTime(QDateTimeEdit* self, QDateTime* dt);
QDateTime* QDateTimeEdit_maximumDateTime(const QDateTimeEdit* self);
void QDateTimeEdit_clearMaximumDateTime(QDateTimeEdit* self);
void QDateTimeEdit_setMaximumDateTime(QDateTimeEdit* self, QDateTime* dt);
void QDateTimeEdit_setDateTimeRange(QDateTimeEdit* self, QDateTime* min, QDateTime* max);
QDate* QDateTimeEdit_minimumDate(const QDateTimeEdit* self);
void QDateTimeEdit_setMinimumDate(QDateTimeEdit* self, QDate* min);
void QDateTimeEdit_clearMinimumDate(QDateTimeEdit* self);
QDate* QDateTimeEdit_maximumDate(const QDateTimeEdit* self);
void QDateTimeEdit_setMaximumDate(QDateTimeEdit* self, QDate* max);
void QDateTimeEdit_clearMaximumDate(QDateTimeEdit* self);
void QDateTimeEdit_setDateRange(QDateTimeEdit* self, QDate* min, QDate* max);
QTime* QDateTimeEdit_minimumTime(const QDateTimeEdit* self);
void QDateTimeEdit_setMinimumTime(QDateTimeEdit* self, QTime* min);
void QDateTimeEdit_clearMinimumTime(QDateTimeEdit* self);
QTime* QDateTimeEdit_maximumTime(const QDateTimeEdit* self);
void QDateTimeEdit_setMaximumTime(QDateTimeEdit* self, QTime* max);
void QDateTimeEdit_clearMaximumTime(QDateTimeEdit* self);
void QDateTimeEdit_setTimeRange(QDateTimeEdit* self, QTime* min, QTime* max);
int QDateTimeEdit_displayedSections(const QDateTimeEdit* self);
int QDateTimeEdit_currentSection(const QDateTimeEdit* self);
int QDateTimeEdit_sectionAt(const QDateTimeEdit* self, int index);
void QDateTimeEdit_setCurrentSection(QDateTimeEdit* self, int section);
int QDateTimeEdit_currentSectionIndex(const QDateTimeEdit* self);
void QDateTimeEdit_setCurrentSectionIndex(QDateTimeEdit* self, int index);
QCalendarWidget* QDateTimeEdit_calendarWidget(const QDateTimeEdit* self);
void QDateTimeEdit_setCalendarWidget(QDateTimeEdit* self, QCalendarWidget* calendarWidget);
int QDateTimeEdit_sectionCount(const QDateTimeEdit* self);
void QDateTimeEdit_setSelectedSection(QDateTimeEdit* self, int section);
struct miqt_string QDateTimeEdit_sectionText(const QDateTimeEdit* self, int section);
struct miqt_string QDateTimeEdit_displayFormat(const QDateTimeEdit* self);
void QDateTimeEdit_setDisplayFormat(QDateTimeEdit* self, struct miqt_string format);
bool QDateTimeEdit_calendarPopup(const QDateTimeEdit* self);
void QDateTimeEdit_setCalendarPopup(QDateTimeEdit* self, bool enable);
int QDateTimeEdit_timeSpec(const QDateTimeEdit* self);
void QDateTimeEdit_setTimeSpec(QDateTimeEdit* self, int spec);
QSize* QDateTimeEdit_sizeHint(const QDateTimeEdit* self);
void QDateTimeEdit_clear(QDateTimeEdit* self);
void QDateTimeEdit_stepBy(QDateTimeEdit* self, int steps);
bool QDateTimeEdit_event(QDateTimeEdit* self, QEvent* event);
void QDateTimeEdit_dateTimeChanged(QDateTimeEdit* self, QDateTime* dateTime);
void QDateTimeEdit_connect_dateTimeChanged(QDateTimeEdit* self, intptr_t slot);
void QDateTimeEdit_timeChanged(QDateTimeEdit* self, QTime* time);
void QDateTimeEdit_connect_timeChanged(QDateTimeEdit* self, intptr_t slot);
void QDateTimeEdit_dateChanged(QDateTimeEdit* self, QDate* date);
void QDateTimeEdit_connect_dateChanged(QDateTimeEdit* self, intptr_t slot);
void QDateTimeEdit_setDateTime(QDateTimeEdit* self, QDateTime* dateTime);
void QDateTimeEdit_setDate(QDateTimeEdit* self, QDate* date);
void QDateTimeEdit_setTime(QDateTimeEdit* self, QTime* time);
void QDateTimeEdit_keyPressEvent(QDateTimeEdit* self, QKeyEvent* event);
void QDateTimeEdit_wheelEvent(QDateTimeEdit* self, QWheelEvent* event);
void QDateTimeEdit_focusInEvent(QDateTimeEdit* self, QFocusEvent* event);
bool QDateTimeEdit_focusNextPrevChild(QDateTimeEdit* self, bool next);
int QDateTimeEdit_validate(const QDateTimeEdit* self, struct miqt_string input, int* pos);
void QDateTimeEdit_fixup(const QDateTimeEdit* self, struct miqt_string input);
QDateTime* QDateTimeEdit_dateTimeFromText(const QDateTimeEdit* self, struct miqt_string text);
struct miqt_string QDateTimeEdit_textFromDateTime(const QDateTimeEdit* self, QDateTime* dt);
int QDateTimeEdit_stepEnabled(const QDateTimeEdit* self);
void QDateTimeEdit_mousePressEvent(QDateTimeEdit* self, QMouseEvent* event);
void QDateTimeEdit_paintEvent(QDateTimeEdit* self, QPaintEvent* event);
struct miqt_string QDateTimeEdit_tr2(const char* s, const char* c);
struct miqt_string QDateTimeEdit_tr3(const char* s, const char* c, int n);
struct miqt_string QDateTimeEdit_trUtf82(const char* s, const char* c);
struct miqt_string QDateTimeEdit_trUtf83(const char* s, const char* c, int n);
bool QDateTimeEdit_override_virtual_metacall(void* self, intptr_t slot);
int QDateTimeEdit_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QDateTimeEdit_override_virtual_sizeHint(void* self, intptr_t slot);
QSize* QDateTimeEdit_virtualbase_sizeHint(const void* self);
bool QDateTimeEdit_override_virtual_clear(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_clear(void* self);
bool QDateTimeEdit_override_virtual_stepBy(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_stepBy(void* self, int steps);
bool QDateTimeEdit_override_virtual_event(void* self, intptr_t slot);
bool QDateTimeEdit_virtualbase_event(void* self, QEvent* event);
bool QDateTimeEdit_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
bool QDateTimeEdit_override_virtual_wheelEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_wheelEvent(void* self, QWheelEvent* event);
bool QDateTimeEdit_override_virtual_focusInEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_focusInEvent(void* self, QFocusEvent* event);
bool QDateTimeEdit_override_virtual_focusNextPrevChild(void* self, intptr_t slot);
bool QDateTimeEdit_virtualbase_focusNextPrevChild(void* self, bool next);
bool QDateTimeEdit_override_virtual_validate(void* self, intptr_t slot);
int QDateTimeEdit_virtualbase_validate(const void* self, struct miqt_string input, int* pos);
bool QDateTimeEdit_override_virtual_fixup(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_fixup(const void* self, struct miqt_string input);
bool QDateTimeEdit_override_virtual_dateTimeFromText(void* self, intptr_t slot);
QDateTime* QDateTimeEdit_virtualbase_dateTimeFromText(const void* self, struct miqt_string text);
bool QDateTimeEdit_override_virtual_textFromDateTime(void* self, intptr_t slot);
struct miqt_string QDateTimeEdit_virtualbase_textFromDateTime(const void* self, QDateTime* dt);
bool QDateTimeEdit_override_virtual_stepEnabled(void* self, intptr_t slot);
int QDateTimeEdit_virtualbase_stepEnabled(const void* self);
bool QDateTimeEdit_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
bool QDateTimeEdit_override_virtual_paintEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_paintEvent(void* self, QPaintEvent* event);
bool QDateTimeEdit_override_virtual_minimumSizeHint(void* self, intptr_t slot);
QSize* QDateTimeEdit_virtualbase_minimumSizeHint(const void* self);
bool QDateTimeEdit_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QDateTimeEdit_virtualbase_inputMethodQuery(const void* self, int param1);
bool QDateTimeEdit_override_virtual_resizeEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_resizeEvent(void* self, QResizeEvent* event);
bool QDateTimeEdit_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
bool QDateTimeEdit_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
bool QDateTimeEdit_override_virtual_contextMenuEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
bool QDateTimeEdit_override_virtual_changeEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_changeEvent(void* self, QEvent* event);
bool QDateTimeEdit_override_virtual_closeEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_closeEvent(void* self, QCloseEvent* event);
bool QDateTimeEdit_override_virtual_hideEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QDateTimeEdit_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
bool QDateTimeEdit_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
bool QDateTimeEdit_override_virtual_timerEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QDateTimeEdit_override_virtual_showEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_showEvent(void* self, QShowEvent* event);
bool QDateTimeEdit_override_virtual_devType(void* self, intptr_t slot);
int QDateTimeEdit_virtualbase_devType(const void* self);
bool QDateTimeEdit_override_virtual_setVisible(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_setVisible(void* self, bool visible);
bool QDateTimeEdit_override_virtual_heightForWidth(void* self, intptr_t slot);
int QDateTimeEdit_virtualbase_heightForWidth(const void* self, int param1);
bool QDateTimeEdit_override_virtual_hasHeightForWidth(void* self, intptr_t slot);
bool QDateTimeEdit_virtualbase_hasHeightForWidth(const void* self);
bool QDateTimeEdit_override_virtual_paintEngine(void* self, intptr_t slot);
QPaintEngine* QDateTimeEdit_virtualbase_paintEngine(const void* self);
bool QDateTimeEdit_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
bool QDateTimeEdit_override_virtual_enterEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_enterEvent(void* self, QEvent* event);
bool QDateTimeEdit_override_virtual_leaveEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_leaveEvent(void* self, QEvent* event);
bool QDateTimeEdit_override_virtual_moveEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_moveEvent(void* self, QMoveEvent* event);
bool QDateTimeEdit_override_virtual_tabletEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_tabletEvent(void* self, QTabletEvent* event);
bool QDateTimeEdit_override_virtual_actionEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_actionEvent(void* self, QActionEvent* event);
bool QDateTimeEdit_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
bool QDateTimeEdit_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
bool QDateTimeEdit_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
bool QDateTimeEdit_override_virtual_dropEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QDateTimeEdit_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QDateTimeEdit_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
bool QDateTimeEdit_override_virtual_metric(void* self, intptr_t slot);
int QDateTimeEdit_virtualbase_metric(const void* self, int param1);
bool QDateTimeEdit_override_virtual_initPainter(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_initPainter(const void* self, QPainter* painter);
bool QDateTimeEdit_override_virtual_redirected(void* self, intptr_t slot);
QPaintDevice* QDateTimeEdit_virtualbase_redirected(const void* self, QPoint* offset);
bool QDateTimeEdit_override_virtual_sharedPainter(void* self, intptr_t slot);
QPainter* QDateTimeEdit_virtualbase_sharedPainter(const void* self);
bool QDateTimeEdit_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
bool QDateTimeEdit_override_virtual_eventFilter(void* self, intptr_t slot);
bool QDateTimeEdit_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QDateTimeEdit_override_virtual_childEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_childEvent(void* self, QChildEvent* event);
bool QDateTimeEdit_override_virtual_customEvent(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_customEvent(void* self, QEvent* event);
bool QDateTimeEdit_override_virtual_connectNotify(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QDateTimeEdit_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QDateTimeEdit_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QDateTimeEdit_delete(QDateTimeEdit* self);

QTimeEdit* QTimeEdit_new(QWidget* parent);
QTimeEdit* QTimeEdit_new2();
QTimeEdit* QTimeEdit_new3(QTime* time);
QTimeEdit* QTimeEdit_new4(QTime* time, QWidget* parent);
void QTimeEdit_virtbase(QTimeEdit* src, QDateTimeEdit** outptr_QDateTimeEdit);
QMetaObject* QTimeEdit_metaObject(const QTimeEdit* self);
void* QTimeEdit_metacast(QTimeEdit* self, const char* param1);
int QTimeEdit_metacall(QTimeEdit* self, int param1, int param2, void** param3);
struct miqt_string QTimeEdit_tr(const char* s);
struct miqt_string QTimeEdit_trUtf8(const char* s);
void QTimeEdit_userTimeChanged(QTimeEdit* self, QTime* time);
void QTimeEdit_connect_userTimeChanged(QTimeEdit* self, intptr_t slot);
struct miqt_string QTimeEdit_tr2(const char* s, const char* c);
struct miqt_string QTimeEdit_tr3(const char* s, const char* c, int n);
struct miqt_string QTimeEdit_trUtf82(const char* s, const char* c);
struct miqt_string QTimeEdit_trUtf83(const char* s, const char* c, int n);
bool QTimeEdit_override_virtual_metacall(void* self, intptr_t slot);
int QTimeEdit_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QTimeEdit_override_virtual_sizeHint(void* self, intptr_t slot);
QSize* QTimeEdit_virtualbase_sizeHint(const void* self);
bool QTimeEdit_override_virtual_clear(void* self, intptr_t slot);
void QTimeEdit_virtualbase_clear(void* self);
bool QTimeEdit_override_virtual_stepBy(void* self, intptr_t slot);
void QTimeEdit_virtualbase_stepBy(void* self, int steps);
bool QTimeEdit_override_virtual_event(void* self, intptr_t slot);
bool QTimeEdit_virtualbase_event(void* self, QEvent* event);
bool QTimeEdit_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
bool QTimeEdit_override_virtual_wheelEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_wheelEvent(void* self, QWheelEvent* event);
bool QTimeEdit_override_virtual_focusInEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_focusInEvent(void* self, QFocusEvent* event);
bool QTimeEdit_override_virtual_focusNextPrevChild(void* self, intptr_t slot);
bool QTimeEdit_virtualbase_focusNextPrevChild(void* self, bool next);
bool QTimeEdit_override_virtual_validate(void* self, intptr_t slot);
int QTimeEdit_virtualbase_validate(const void* self, struct miqt_string input, int* pos);
bool QTimeEdit_override_virtual_fixup(void* self, intptr_t slot);
void QTimeEdit_virtualbase_fixup(const void* self, struct miqt_string input);
bool QTimeEdit_override_virtual_dateTimeFromText(void* self, intptr_t slot);
QDateTime* QTimeEdit_virtualbase_dateTimeFromText(const void* self, struct miqt_string text);
bool QTimeEdit_override_virtual_textFromDateTime(void* self, intptr_t slot);
struct miqt_string QTimeEdit_virtualbase_textFromDateTime(const void* self, QDateTime* dt);
bool QTimeEdit_override_virtual_stepEnabled(void* self, intptr_t slot);
int QTimeEdit_virtualbase_stepEnabled(const void* self);
bool QTimeEdit_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
bool QTimeEdit_override_virtual_paintEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_paintEvent(void* self, QPaintEvent* event);
bool QTimeEdit_override_virtual_minimumSizeHint(void* self, intptr_t slot);
QSize* QTimeEdit_virtualbase_minimumSizeHint(const void* self);
bool QTimeEdit_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QTimeEdit_virtualbase_inputMethodQuery(const void* self, int param1);
bool QTimeEdit_override_virtual_resizeEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_resizeEvent(void* self, QResizeEvent* event);
bool QTimeEdit_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
bool QTimeEdit_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
bool QTimeEdit_override_virtual_contextMenuEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
bool QTimeEdit_override_virtual_changeEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_changeEvent(void* self, QEvent* event);
bool QTimeEdit_override_virtual_closeEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_closeEvent(void* self, QCloseEvent* event);
bool QTimeEdit_override_virtual_hideEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QTimeEdit_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
bool QTimeEdit_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
bool QTimeEdit_override_virtual_timerEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QTimeEdit_override_virtual_showEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_showEvent(void* self, QShowEvent* event);
bool QTimeEdit_override_virtual_devType(void* self, intptr_t slot);
int QTimeEdit_virtualbase_devType(const void* self);
bool QTimeEdit_override_virtual_setVisible(void* self, intptr_t slot);
void QTimeEdit_virtualbase_setVisible(void* self, bool visible);
bool QTimeEdit_override_virtual_heightForWidth(void* self, intptr_t slot);
int QTimeEdit_virtualbase_heightForWidth(const void* self, int param1);
bool QTimeEdit_override_virtual_hasHeightForWidth(void* self, intptr_t slot);
bool QTimeEdit_virtualbase_hasHeightForWidth(const void* self);
bool QTimeEdit_override_virtual_paintEngine(void* self, intptr_t slot);
QPaintEngine* QTimeEdit_virtualbase_paintEngine(const void* self);
bool QTimeEdit_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
bool QTimeEdit_override_virtual_enterEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_enterEvent(void* self, QEvent* event);
bool QTimeEdit_override_virtual_leaveEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_leaveEvent(void* self, QEvent* event);
bool QTimeEdit_override_virtual_moveEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_moveEvent(void* self, QMoveEvent* event);
bool QTimeEdit_override_virtual_tabletEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_tabletEvent(void* self, QTabletEvent* event);
bool QTimeEdit_override_virtual_actionEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_actionEvent(void* self, QActionEvent* event);
bool QTimeEdit_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
bool QTimeEdit_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
bool QTimeEdit_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
bool QTimeEdit_override_virtual_dropEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QTimeEdit_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QTimeEdit_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
bool QTimeEdit_override_virtual_metric(void* self, intptr_t slot);
int QTimeEdit_virtualbase_metric(const void* self, int param1);
bool QTimeEdit_override_virtual_initPainter(void* self, intptr_t slot);
void QTimeEdit_virtualbase_initPainter(const void* self, QPainter* painter);
bool QTimeEdit_override_virtual_redirected(void* self, intptr_t slot);
QPaintDevice* QTimeEdit_virtualbase_redirected(const void* self, QPoint* offset);
bool QTimeEdit_override_virtual_sharedPainter(void* self, intptr_t slot);
QPainter* QTimeEdit_virtualbase_sharedPainter(const void* self);
bool QTimeEdit_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
bool QTimeEdit_override_virtual_eventFilter(void* self, intptr_t slot);
bool QTimeEdit_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QTimeEdit_override_virtual_childEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_childEvent(void* self, QChildEvent* event);
bool QTimeEdit_override_virtual_customEvent(void* self, intptr_t slot);
void QTimeEdit_virtualbase_customEvent(void* self, QEvent* event);
bool QTimeEdit_override_virtual_connectNotify(void* self, intptr_t slot);
void QTimeEdit_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QTimeEdit_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QTimeEdit_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QTimeEdit_delete(QTimeEdit* self);

QDateEdit* QDateEdit_new(QWidget* parent);
QDateEdit* QDateEdit_new2();
QDateEdit* QDateEdit_new3(QDate* date);
QDateEdit* QDateEdit_new4(QDate* date, QWidget* parent);
void QDateEdit_virtbase(QDateEdit* src, QDateTimeEdit** outptr_QDateTimeEdit);
QMetaObject* QDateEdit_metaObject(const QDateEdit* self);
void* QDateEdit_metacast(QDateEdit* self, const char* param1);
int QDateEdit_metacall(QDateEdit* self, int param1, int param2, void** param3);
struct miqt_string QDateEdit_tr(const char* s);
struct miqt_string QDateEdit_trUtf8(const char* s);
void QDateEdit_userDateChanged(QDateEdit* self, QDate* date);
void QDateEdit_connect_userDateChanged(QDateEdit* self, intptr_t slot);
struct miqt_string QDateEdit_tr2(const char* s, const char* c);
struct miqt_string QDateEdit_tr3(const char* s, const char* c, int n);
struct miqt_string QDateEdit_trUtf82(const char* s, const char* c);
struct miqt_string QDateEdit_trUtf83(const char* s, const char* c, int n);
bool QDateEdit_override_virtual_metacall(void* self, intptr_t slot);
int QDateEdit_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QDateEdit_override_virtual_sizeHint(void* self, intptr_t slot);
QSize* QDateEdit_virtualbase_sizeHint(const void* self);
bool QDateEdit_override_virtual_clear(void* self, intptr_t slot);
void QDateEdit_virtualbase_clear(void* self);
bool QDateEdit_override_virtual_stepBy(void* self, intptr_t slot);
void QDateEdit_virtualbase_stepBy(void* self, int steps);
bool QDateEdit_override_virtual_event(void* self, intptr_t slot);
bool QDateEdit_virtualbase_event(void* self, QEvent* event);
bool QDateEdit_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
bool QDateEdit_override_virtual_wheelEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_wheelEvent(void* self, QWheelEvent* event);
bool QDateEdit_override_virtual_focusInEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_focusInEvent(void* self, QFocusEvent* event);
bool QDateEdit_override_virtual_focusNextPrevChild(void* self, intptr_t slot);
bool QDateEdit_virtualbase_focusNextPrevChild(void* self, bool next);
bool QDateEdit_override_virtual_validate(void* self, intptr_t slot);
int QDateEdit_virtualbase_validate(const void* self, struct miqt_string input, int* pos);
bool QDateEdit_override_virtual_fixup(void* self, intptr_t slot);
void QDateEdit_virtualbase_fixup(const void* self, struct miqt_string input);
bool QDateEdit_override_virtual_dateTimeFromText(void* self, intptr_t slot);
QDateTime* QDateEdit_virtualbase_dateTimeFromText(const void* self, struct miqt_string text);
bool QDateEdit_override_virtual_textFromDateTime(void* self, intptr_t slot);
struct miqt_string QDateEdit_virtualbase_textFromDateTime(const void* self, QDateTime* dt);
bool QDateEdit_override_virtual_stepEnabled(void* self, intptr_t slot);
int QDateEdit_virtualbase_stepEnabled(const void* self);
bool QDateEdit_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
bool QDateEdit_override_virtual_paintEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_paintEvent(void* self, QPaintEvent* event);
bool QDateEdit_override_virtual_minimumSizeHint(void* self, intptr_t slot);
QSize* QDateEdit_virtualbase_minimumSizeHint(const void* self);
bool QDateEdit_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QDateEdit_virtualbase_inputMethodQuery(const void* self, int param1);
bool QDateEdit_override_virtual_resizeEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_resizeEvent(void* self, QResizeEvent* event);
bool QDateEdit_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
bool QDateEdit_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
bool QDateEdit_override_virtual_contextMenuEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);
bool QDateEdit_override_virtual_changeEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_changeEvent(void* self, QEvent* event);
bool QDateEdit_override_virtual_closeEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_closeEvent(void* self, QCloseEvent* event);
bool QDateEdit_override_virtual_hideEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QDateEdit_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
bool QDateEdit_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
bool QDateEdit_override_virtual_timerEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QDateEdit_override_virtual_showEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_showEvent(void* self, QShowEvent* event);
bool QDateEdit_override_virtual_devType(void* self, intptr_t slot);
int QDateEdit_virtualbase_devType(const void* self);
bool QDateEdit_override_virtual_setVisible(void* self, intptr_t slot);
void QDateEdit_virtualbase_setVisible(void* self, bool visible);
bool QDateEdit_override_virtual_heightForWidth(void* self, intptr_t slot);
int QDateEdit_virtualbase_heightForWidth(const void* self, int param1);
bool QDateEdit_override_virtual_hasHeightForWidth(void* self, intptr_t slot);
bool QDateEdit_virtualbase_hasHeightForWidth(const void* self);
bool QDateEdit_override_virtual_paintEngine(void* self, intptr_t slot);
QPaintEngine* QDateEdit_virtualbase_paintEngine(const void* self);
bool QDateEdit_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
bool QDateEdit_override_virtual_enterEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_enterEvent(void* self, QEvent* event);
bool QDateEdit_override_virtual_leaveEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_leaveEvent(void* self, QEvent* event);
bool QDateEdit_override_virtual_moveEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_moveEvent(void* self, QMoveEvent* event);
bool QDateEdit_override_virtual_tabletEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_tabletEvent(void* self, QTabletEvent* event);
bool QDateEdit_override_virtual_actionEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_actionEvent(void* self, QActionEvent* event);
bool QDateEdit_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
bool QDateEdit_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
bool QDateEdit_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
bool QDateEdit_override_virtual_dropEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QDateEdit_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QDateEdit_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
bool QDateEdit_override_virtual_metric(void* self, intptr_t slot);
int QDateEdit_virtualbase_metric(const void* self, int param1);
bool QDateEdit_override_virtual_initPainter(void* self, intptr_t slot);
void QDateEdit_virtualbase_initPainter(const void* self, QPainter* painter);
bool QDateEdit_override_virtual_redirected(void* self, intptr_t slot);
QPaintDevice* QDateEdit_virtualbase_redirected(const void* self, QPoint* offset);
bool QDateEdit_override_virtual_sharedPainter(void* self, intptr_t slot);
QPainter* QDateEdit_virtualbase_sharedPainter(const void* self);
bool QDateEdit_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
bool QDateEdit_override_virtual_eventFilter(void* self, intptr_t slot);
bool QDateEdit_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QDateEdit_override_virtual_childEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_childEvent(void* self, QChildEvent* event);
bool QDateEdit_override_virtual_customEvent(void* self, intptr_t slot);
void QDateEdit_virtualbase_customEvent(void* self, QEvent* event);
bool QDateEdit_override_virtual_connectNotify(void* self, intptr_t slot);
void QDateEdit_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QDateEdit_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QDateEdit_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
void QDateEdit_delete(QDateEdit* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
