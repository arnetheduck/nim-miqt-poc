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

struct QMessageBox_VTable {
	void (*destructor)(struct QMessageBox_VTable* vtbl, QMessageBox* self);
	QMetaObject* (*metaObject)(struct QMessageBox_VTable* vtbl, const QMessageBox* self);
	void* (*metacast)(struct QMessageBox_VTable* vtbl, QMessageBox* self, const char* param1);
	int (*metacall)(struct QMessageBox_VTable* vtbl, QMessageBox* self, int param1, int param2, void** param3);
	bool (*event)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QEvent* e);
	void (*resizeEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QResizeEvent* event);
	void (*showEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QShowEvent* event);
	void (*closeEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QCloseEvent* event);
	void (*keyPressEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QKeyEvent* event);
	void (*changeEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QEvent* event);
	void (*setVisible)(struct QMessageBox_VTable* vtbl, QMessageBox* self, bool visible);
	QSize* (*sizeHint)(struct QMessageBox_VTable* vtbl, const QMessageBox* self);
	QSize* (*minimumSizeHint)(struct QMessageBox_VTable* vtbl, const QMessageBox* self);
	void (*open)(struct QMessageBox_VTable* vtbl, QMessageBox* self);
	int (*exec)(struct QMessageBox_VTable* vtbl, QMessageBox* self);
	void (*done)(struct QMessageBox_VTable* vtbl, QMessageBox* self, int param1);
	void (*accept)(struct QMessageBox_VTable* vtbl, QMessageBox* self);
	void (*reject)(struct QMessageBox_VTable* vtbl, QMessageBox* self);
	void (*contextMenuEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QContextMenuEvent* param1);
	bool (*eventFilter)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QObject* param1, QEvent* param2);
	int (*devType)(struct QMessageBox_VTable* vtbl, const QMessageBox* self);
	int (*heightForWidth)(struct QMessageBox_VTable* vtbl, const QMessageBox* self, int param1);
	bool (*hasHeightForWidth)(struct QMessageBox_VTable* vtbl, const QMessageBox* self);
	QPaintEngine* (*paintEngine)(struct QMessageBox_VTable* vtbl, const QMessageBox* self);
	void (*mousePressEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QMouseEvent* event);
	void (*mouseReleaseEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QMouseEvent* event);
	void (*mouseDoubleClickEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QMouseEvent* event);
	void (*mouseMoveEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QMouseEvent* event);
	void (*wheelEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QWheelEvent* event);
	void (*keyReleaseEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QKeyEvent* event);
	void (*focusInEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QFocusEvent* event);
	void (*focusOutEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QFocusEvent* event);
	void (*enterEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QEvent* event);
	void (*leaveEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QEvent* event);
	void (*paintEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QPaintEvent* event);
	void (*moveEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QMoveEvent* event);
	void (*tabletEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QTabletEvent* event);
	void (*actionEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QActionEvent* event);
	void (*dragEnterEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QDragEnterEvent* event);
	void (*dragMoveEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QDragMoveEvent* event);
	void (*dragLeaveEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QDragLeaveEvent* event);
	void (*dropEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QDropEvent* event);
	void (*hideEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QHideEvent* event);
	bool (*nativeEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, struct miqt_string eventType, void* message, long* result);
	int (*metric)(struct QMessageBox_VTable* vtbl, const QMessageBox* self, int param1);
	void (*initPainter)(struct QMessageBox_VTable* vtbl, const QMessageBox* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QMessageBox_VTable* vtbl, const QMessageBox* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QMessageBox_VTable* vtbl, const QMessageBox* self);
	void (*inputMethodEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QInputMethodEvent* param1);
	QVariant* (*inputMethodQuery)(struct QMessageBox_VTable* vtbl, const QMessageBox* self, int param1);
	bool (*focusNextPrevChild)(struct QMessageBox_VTable* vtbl, QMessageBox* self, bool next);
	void (*timerEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QTimerEvent* event);
	void (*childEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QChildEvent* event);
	void (*customEvent)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QEvent* event);
	void (*connectNotify)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QMessageBox_VTable* vtbl, QMessageBox* self, QMetaMethod* signal);
};
QMessageBox* QMessageBox_new(struct QMessageBox_VTable* vtbl, QWidget* parent);
QMessageBox* QMessageBox_new2(struct QMessageBox_VTable* vtbl);
QMessageBox* QMessageBox_new3(struct QMessageBox_VTable* vtbl, int icon, struct miqt_string title, struct miqt_string text);
QMessageBox* QMessageBox_new4(struct QMessageBox_VTable* vtbl, struct miqt_string title, struct miqt_string text, int icon, int button0, int button1, int button2);
QMessageBox* QMessageBox_new5(struct QMessageBox_VTable* vtbl, int icon, struct miqt_string title, struct miqt_string text, int buttons);
QMessageBox* QMessageBox_new6(struct QMessageBox_VTable* vtbl, int icon, struct miqt_string title, struct miqt_string text, int buttons, QWidget* parent);
QMessageBox* QMessageBox_new7(struct QMessageBox_VTable* vtbl, int icon, struct miqt_string title, struct miqt_string text, int buttons, QWidget* parent, int flags);
QMessageBox* QMessageBox_new8(struct QMessageBox_VTable* vtbl, struct miqt_string title, struct miqt_string text, int icon, int button0, int button1, int button2, QWidget* parent);
QMessageBox* QMessageBox_new9(struct QMessageBox_VTable* vtbl, struct miqt_string title, struct miqt_string text, int icon, int button0, int button1, int button2, QWidget* parent, int f);
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
QMetaObject* QMessageBox_virtualbase_metaObject(const void* self);
void* QMessageBox_virtualbase_metacast(void* self, const char* param1);
int QMessageBox_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QMessageBox_virtualbase_event(void* self, QEvent* e);
void QMessageBox_virtualbase_resizeEvent(void* self, QResizeEvent* event);
void QMessageBox_virtualbase_showEvent(void* self, QShowEvent* event);
void QMessageBox_virtualbase_closeEvent(void* self, QCloseEvent* event);
void QMessageBox_virtualbase_keyPressEvent(void* self, QKeyEvent* event);
void QMessageBox_virtualbase_changeEvent(void* self, QEvent* event);
void QMessageBox_virtualbase_setVisible(void* self, bool visible);
QSize* QMessageBox_virtualbase_sizeHint(const void* self);
QSize* QMessageBox_virtualbase_minimumSizeHint(const void* self);
void QMessageBox_virtualbase_open(void* self);
int QMessageBox_virtualbase_exec(void* self);
void QMessageBox_virtualbase_done(void* self, int param1);
void QMessageBox_virtualbase_accept(void* self);
void QMessageBox_virtualbase_reject(void* self);
void QMessageBox_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1);
bool QMessageBox_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2);
int QMessageBox_virtualbase_devType(const void* self);
int QMessageBox_virtualbase_heightForWidth(const void* self, int param1);
bool QMessageBox_virtualbase_hasHeightForWidth(const void* self);
QPaintEngine* QMessageBox_virtualbase_paintEngine(const void* self);
void QMessageBox_virtualbase_mousePressEvent(void* self, QMouseEvent* event);
void QMessageBox_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);
void QMessageBox_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);
void QMessageBox_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);
void QMessageBox_virtualbase_wheelEvent(void* self, QWheelEvent* event);
void QMessageBox_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);
void QMessageBox_virtualbase_focusInEvent(void* self, QFocusEvent* event);
void QMessageBox_virtualbase_focusOutEvent(void* self, QFocusEvent* event);
void QMessageBox_virtualbase_enterEvent(void* self, QEvent* event);
void QMessageBox_virtualbase_leaveEvent(void* self, QEvent* event);
void QMessageBox_virtualbase_paintEvent(void* self, QPaintEvent* event);
void QMessageBox_virtualbase_moveEvent(void* self, QMoveEvent* event);
void QMessageBox_virtualbase_tabletEvent(void* self, QTabletEvent* event);
void QMessageBox_virtualbase_actionEvent(void* self, QActionEvent* event);
void QMessageBox_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);
void QMessageBox_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);
void QMessageBox_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);
void QMessageBox_virtualbase_dropEvent(void* self, QDropEvent* event);
void QMessageBox_virtualbase_hideEvent(void* self, QHideEvent* event);
bool QMessageBox_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);
int QMessageBox_virtualbase_metric(const void* self, int param1);
void QMessageBox_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QMessageBox_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QMessageBox_virtualbase_sharedPainter(const void* self);
void QMessageBox_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);
QVariant* QMessageBox_virtualbase_inputMethodQuery(const void* self, int param1);
bool QMessageBox_virtualbase_focusNextPrevChild(void* self, bool next);
void QMessageBox_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QMessageBox_virtualbase_childEvent(void* self, QChildEvent* event);
void QMessageBox_virtualbase_customEvent(void* self, QEvent* event);
void QMessageBox_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QMessageBox_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QMessageBox_staticMetaObject();
void QMessageBox_delete(QMessageBox* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
