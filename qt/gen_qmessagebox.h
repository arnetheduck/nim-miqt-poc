#pragma once
#ifndef MIQT_QT_GEN_QMESSAGEBOX_H
#define MIQT_QT_GEN_QMESSAGEBOX_H

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
class QCheckBox;
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
class QMessageBox;
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
class QPushButton;
class QResizeEvent;
class QShowEvent;
class QSize;
class QTabletEvent;
class QTimerEvent;
class QVariant;
class QWheelEvent;
class QWidget;
#else
typedef struct QAbstractButton QAbstractButton;
typedef struct QActionEvent QActionEvent;
typedef struct QCheckBox QCheckBox;
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
typedef struct QMessageBox QMessageBox;
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
typedef struct QPushButton QPushButton;
typedef struct QResizeEvent QResizeEvent;
typedef struct QShowEvent QShowEvent;
typedef struct QSize QSize;
typedef struct QTabletEvent QTabletEvent;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
typedef struct QWheelEvent QWheelEvent;
typedef struct QWidget QWidget;
#endif

QMessageBox* QMessageBox_new(QWidget* parent);
QMessageBox* QMessageBox_new2();
QMessageBox* QMessageBox_new3(int icon, struct miqt_string title, struct miqt_string text);
QMessageBox* QMessageBox_new4(struct miqt_string title, struct miqt_string text, int icon, int button0, int button1, int button2);
QMessageBox* QMessageBox_new5(int icon, struct miqt_string title, struct miqt_string text, int buttons);
QMessageBox* QMessageBox_new6(int icon, struct miqt_string title, struct miqt_string text, int buttons, QWidget* parent);
QMessageBox* QMessageBox_new7(int icon, struct miqt_string title, struct miqt_string text, int buttons, QWidget* parent, int flags);
QMessageBox* QMessageBox_new8(struct miqt_string title, struct miqt_string text, int icon, int button0, int button1, int button2, QWidget* parent);
QMessageBox* QMessageBox_new9(struct miqt_string title, struct miqt_string text, int icon, int button0, int button1, int button2, QWidget* parent, int f);
void QMessageBox_virtbase(QMessageBox* src, QDialog** outptr_QDialog);
QMetaObject* QMessageBox_metaObject(const QMessageBox* self);
void* QMessageBox_metacast(QMessageBox* self, const char* param1);
int QMessageBox_metacall(QMessageBox* self, int param1, int param2, void** param3);
struct miqt_string QMessageBox_tr(const char* s);
struct miqt_string QMessageBox_trUtf8(const char* s);
void QMessageBox_addButton(QMessageBox* self, QAbstractButton* button, int role);
QPushButton* QMessageBox_addButton2(QMessageBox* self, struct miqt_string text, int role);
QPushButton* QMessageBox_addButtonWithButton(QMessageBox* self, int button);
void QMessageBox_removeButton(QMessageBox* self, QAbstractButton* button);
struct miqt_array /* of QAbstractButton* */  QMessageBox_buttons(const QMessageBox* self);
int QMessageBox_buttonRole(const QMessageBox* self, QAbstractButton* button);
void QMessageBox_setStandardButtons(QMessageBox* self, int buttons);
int QMessageBox_standardButtons(const QMessageBox* self);
int QMessageBox_standardButton(const QMessageBox* self, QAbstractButton* button);
QAbstractButton* QMessageBox_button(const QMessageBox* self, int which);
QPushButton* QMessageBox_defaultButton(const QMessageBox* self);
void QMessageBox_setDefaultButton(QMessageBox* self, QPushButton* button);
void QMessageBox_setDefaultButtonWithButton(QMessageBox* self, int button);
QAbstractButton* QMessageBox_escapeButton(const QMessageBox* self);
void QMessageBox_setEscapeButton(QMessageBox* self, QAbstractButton* button);
void QMessageBox_setEscapeButtonWithButton(QMessageBox* self, int button);
QAbstractButton* QMessageBox_clickedButton(const QMessageBox* self);
struct miqt_string QMessageBox_text(const QMessageBox* self);
void QMessageBox_setText(QMessageBox* self, struct miqt_string text);
int QMessageBox_icon(const QMessageBox* self);
void QMessageBox_setIcon(QMessageBox* self, int icon);
QPixmap* QMessageBox_iconPixmap(const QMessageBox* self);
void QMessageBox_setIconPixmap(QMessageBox* self, QPixmap* pixmap);
int QMessageBox_textFormat(const QMessageBox* self);
void QMessageBox_setTextFormat(QMessageBox* self, int format);
void QMessageBox_setTextInteractionFlags(QMessageBox* self, int flags);
int QMessageBox_textInteractionFlags(const QMessageBox* self);
void QMessageBox_setCheckBox(QMessageBox* self, QCheckBox* cb);
QCheckBox* QMessageBox_checkBox(const QMessageBox* self);
int QMessageBox_information(QWidget* parent, struct miqt_string title, struct miqt_string text);
int QMessageBox_question(QWidget* parent, struct miqt_string title, struct miqt_string text);
int QMessageBox_warning(QWidget* parent, struct miqt_string title, struct miqt_string text);
int QMessageBox_critical(QWidget* parent, struct miqt_string title, struct miqt_string text);
void QMessageBox_about(QWidget* parent, struct miqt_string title, struct miqt_string text);
void QMessageBox_aboutQt(QWidget* parent);
int QMessageBox_information2(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0);
int QMessageBox_information3(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text);
int QMessageBox_information4(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0);
int QMessageBox_question2(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0);
int QMessageBox_question3(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text);
int QMessageBox_question4(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1);
int QMessageBox_warning2(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1);
int QMessageBox_warning3(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text);
int QMessageBox_warning4(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1);
int QMessageBox_critical2(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1);
int QMessageBox_critical3(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text);
int QMessageBox_critical4(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1);
struct miqt_string QMessageBox_buttonText(const QMessageBox* self, int button);
void QMessageBox_setButtonText(QMessageBox* self, int button, struct miqt_string text);
struct miqt_string QMessageBox_informativeText(const QMessageBox* self);
void QMessageBox_setInformativeText(QMessageBox* self, struct miqt_string text);
struct miqt_string QMessageBox_detailedText(const QMessageBox* self);
void QMessageBox_setDetailedText(QMessageBox* self, struct miqt_string text);
void QMessageBox_setWindowTitle(QMessageBox* self, struct miqt_string title);
void QMessageBox_setWindowModality(QMessageBox* self, int windowModality);
QPixmap* QMessageBox_standardIcon(int icon);
void QMessageBox_buttonClicked(QMessageBox* self, QAbstractButton* button);
void QMessageBox_connect_buttonClicked(QMessageBox* self, intptr_t slot);
bool QMessageBox_event(QMessageBox* self, QEvent* e);
void QMessageBox_resizeEvent(QMessageBox* self, QResizeEvent* event);
void QMessageBox_showEvent(QMessageBox* self, QShowEvent* event);
void QMessageBox_closeEvent(QMessageBox* self, QCloseEvent* event);
void QMessageBox_keyPressEvent(QMessageBox* self, QKeyEvent* event);
void QMessageBox_changeEvent(QMessageBox* self, QEvent* event);
struct miqt_string QMessageBox_tr2(const char* s, const char* c);
struct miqt_string QMessageBox_tr3(const char* s, const char* c, int n);
struct miqt_string QMessageBox_trUtf82(const char* s, const char* c);
struct miqt_string QMessageBox_trUtf83(const char* s, const char* c, int n);
int QMessageBox_information42(QWidget* parent, struct miqt_string title, struct miqt_string text, int buttons);
int QMessageBox_information5(QWidget* parent, struct miqt_string title, struct miqt_string text, int buttons, int defaultButton);
int QMessageBox_question42(QWidget* parent, struct miqt_string title, struct miqt_string text, int buttons);
int QMessageBox_question5(QWidget* parent, struct miqt_string title, struct miqt_string text, int buttons, int defaultButton);
int QMessageBox_warning42(QWidget* parent, struct miqt_string title, struct miqt_string text, int buttons);
int QMessageBox_warning5(QWidget* parent, struct miqt_string title, struct miqt_string text, int buttons, int defaultButton);
int QMessageBox_critical42(QWidget* parent, struct miqt_string title, struct miqt_string text, int buttons);
int QMessageBox_critical5(QWidget* parent, struct miqt_string title, struct miqt_string text, int buttons, int defaultButton);
void QMessageBox_aboutQt2(QWidget* parent, struct miqt_string title);
int QMessageBox_information52(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1);
int QMessageBox_information6(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1, int button2);
int QMessageBox_information53(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text);
int QMessageBox_information62(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text);
int QMessageBox_information7(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text, int defaultButtonNumber);
int QMessageBox_information8(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text, int defaultButtonNumber, int escapeButtonNumber);
int QMessageBox_information54(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1);
int QMessageBox_question52(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1);
int QMessageBox_question6(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1, int button2);
int QMessageBox_question53(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text);
int QMessageBox_question62(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text);
int QMessageBox_question7(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text, int defaultButtonNumber);
int QMessageBox_question8(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text, int defaultButtonNumber, int escapeButtonNumber);
int QMessageBox_warning6(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1, int button2);
int QMessageBox_warning52(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text);
int QMessageBox_warning62(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text);
int QMessageBox_warning7(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text, int defaultButtonNumber);
int QMessageBox_warning8(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text, int defaultButtonNumber, int escapeButtonNumber);
int QMessageBox_critical6(QWidget* parent, struct miqt_string title, struct miqt_string text, int button0, int button1, int button2);
int QMessageBox_critical52(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text);
int QMessageBox_critical62(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text);
int QMessageBox_critical7(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text, int defaultButtonNumber);
int QMessageBox_critical8(QWidget* parent, struct miqt_string title, struct miqt_string text, struct miqt_string button0Text, struct miqt_string button1Text, struct miqt_string button2Text, int defaultButtonNumber, int escapeButtonNumber);
bool QMessageBox_override_virtual_metaObject(void* self, intptr_t slot);
QMetaObject* QMessageBox_virtualbase_metaObject(const void* self);
bool QMessageBox_override_virtual_metacast(void* self, intptr_t slot);
void* QMessageBox_virtualbase_metacast(void* self, const char* param1);
bool QMessageBox_override_virtual_metacall(void* self, intptr_t slot);
int QMessageBox_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QMessageBox_override_virtual_event(void* self, intptr_t slot);
bool QMessageBox_virtualbase_event(void* self, QEvent* e);
bool QMessageBox_override_virtual_resizeEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_resizeEvent(void* self, QResizeEvent* event);
bool QMessageBox_override_virtual_showEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_showEvent(void* self, QShowEvent* event);
bool QMessageBox_override_virtual_closeEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_closeEvent(void* self, QCloseEvent* event);
bool QMessageBox_override_virtual_keyPressEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
bool QMessageBox_override_virtual_changeEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_changeEvent(void* self, QEvent* event);
bool QMessageBox_override_virtual_setVisible(void* self, intptr_t slot);
void QMessageBox_virtualbase_setVisible(void* self, bool visible);
bool QMessageBox_override_virtual_sizeHint(void* self, intptr_t slot);
QSize* QMessageBox_virtualbase_sizeHint(const void* self);
bool QMessageBox_override_virtual_minimumSizeHint(void* self, intptr_t slot);
QSize* QMessageBox_virtualbase_minimumSizeHint(const void* self);
bool QMessageBox_override_virtual_open(void* self, intptr_t slot);
void QMessageBox_virtualbase_open(void* self);
bool QMessageBox_override_virtual_exec(void* self, intptr_t slot);
int QMessageBox_virtualbase_exec(void* self);
bool QMessageBox_override_virtual_done(void* self, intptr_t slot);
void QMessageBox_virtualbase_done(void* self, int param1);
bool QMessageBox_override_virtual_accept(void* self, intptr_t slot);
void QMessageBox_virtualbase_accept(void* self);
bool QMessageBox_override_virtual_reject(void* self, intptr_t slot);
void QMessageBox_virtualbase_reject(void* self);
bool QMessageBox_override_virtual_contextMenuEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
bool QMessageBox_override_virtual_eventFilter(void* self, intptr_t slot);
bool QMessageBox_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);
bool QMessageBox_override_virtual_devType(void* self, intptr_t slot);
int QMessageBox_virtualbase_devType(const void* self);
bool QMessageBox_override_virtual_heightForWidth(void* self, intptr_t slot);
int QMessageBox_virtualbase_heightForWidth(const void* self, int param1);
bool QMessageBox_override_virtual_hasHeightForWidth(void* self, intptr_t slot);
bool QMessageBox_virtualbase_hasHeightForWidth(const void* self);
bool QMessageBox_override_virtual_paintEngine(void* self, intptr_t slot);
QPaintEngine* QMessageBox_virtualbase_paintEngine(const void* self);
bool QMessageBox_override_virtual_mousePressEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
bool QMessageBox_override_virtual_mouseReleaseEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
bool QMessageBox_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
bool QMessageBox_override_virtual_mouseMoveEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
bool QMessageBox_override_virtual_wheelEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_wheelEvent(void* self, QWheelEvent* event);
bool QMessageBox_override_virtual_keyReleaseEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
bool QMessageBox_override_virtual_focusInEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_focusInEvent(void* self, QFocusEvent* event);
bool QMessageBox_override_virtual_focusOutEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
bool QMessageBox_override_virtual_enterEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_enterEvent(void* self, QEvent* event);
bool QMessageBox_override_virtual_leaveEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_leaveEvent(void* self, QEvent* event);
bool QMessageBox_override_virtual_paintEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_paintEvent(void* self, QPaintEvent* event);
bool QMessageBox_override_virtual_moveEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_moveEvent(void* self, QMoveEvent* event);
bool QMessageBox_override_virtual_tabletEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_tabletEvent(void* self, QTabletEvent* event);
bool QMessageBox_override_virtual_actionEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_actionEvent(void* self, QActionEvent* event);
bool QMessageBox_override_virtual_dragEnterEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
bool QMessageBox_override_virtual_dragMoveEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
bool QMessageBox_override_virtual_dragLeaveEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
bool QMessageBox_override_virtual_dropEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_dropEvent(void* self, QDropEvent* event);
bool QMessageBox_override_virtual_hideEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QMessageBox_override_virtual_nativeEvent(void* self, intptr_t slot);
bool QMessageBox_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
bool QMessageBox_override_virtual_metric(void* self, intptr_t slot);
int QMessageBox_virtualbase_metric(const void* self, int param1);
bool QMessageBox_override_virtual_initPainter(void* self, intptr_t slot);
void QMessageBox_virtualbase_initPainter(const void* self, QPainter* painter);
bool QMessageBox_override_virtual_redirected(void* self, intptr_t slot);
QPaintDevice* QMessageBox_virtualbase_redirected(const void* self, QPoint* offset);
bool QMessageBox_override_virtual_sharedPainter(void* self, intptr_t slot);
QPainter* QMessageBox_virtualbase_sharedPainter(const void* self);
bool QMessageBox_override_virtual_inputMethodEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
bool QMessageBox_override_virtual_inputMethodQuery(void* self, intptr_t slot);
QVariant* QMessageBox_virtualbase_inputMethodQuery(const void* self, int param1);
bool QMessageBox_override_virtual_focusNextPrevChild(void* self, intptr_t slot);
bool QMessageBox_virtualbase_focusNextPrevChild(void* self, bool next);
bool QMessageBox_override_virtual_timerEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QMessageBox_override_virtual_childEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_childEvent(void* self, QChildEvent* event);
bool QMessageBox_override_virtual_customEvent(void* self, intptr_t slot);
void QMessageBox_virtualbase_customEvent(void* self, QEvent* event);
bool QMessageBox_override_virtual_connectNotify(void* self, intptr_t slot);
void QMessageBox_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QMessageBox_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QMessageBox_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QMessageBox_staticMetaObject();
void QMessageBox_delete(QMessageBox* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
