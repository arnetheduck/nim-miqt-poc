#include <QAbstractSpinBox>
#include <QActionEvent>
#include <QByteArray>
#include <QCalendar>
#include <QCalendarWidget>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDate>
#include <QDateEdit>
#include <QDateTime>
#include <QDateTimeEdit>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QLineEdit>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPoint>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionSpinBox>
#include <QTabletEvent>
#include <QTime>
#include <QTimeEdit>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qdatetimeedit.h>
#include "gen_qdatetimeedit.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QDateTimeEdit_dateTimeChanged(intptr_t, QDateTime*);
void miqt_exec_callback_QDateTimeEdit_dateTimeChanged_release(intptr_t);
void miqt_exec_callback_QDateTimeEdit_timeChanged(intptr_t, QTime*);
void miqt_exec_callback_QDateTimeEdit_timeChanged_release(intptr_t);
void miqt_exec_callback_QDateTimeEdit_dateChanged(intptr_t, QDate*);
void miqt_exec_callback_QDateTimeEdit_dateChanged_release(intptr_t);
void miqt_exec_callback_QTimeEdit_userTimeChanged(intptr_t, QTime*);
void miqt_exec_callback_QTimeEdit_userTimeChanged_release(intptr_t);
void miqt_exec_callback_QDateEdit_userDateChanged(intptr_t, QDate*);
void miqt_exec_callback_QDateEdit_userDateChanged_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQDateTimeEdit final : public QDateTimeEdit {
	struct QDateTimeEdit_VTable* vtbl;
public:

	MiqtVirtualQDateTimeEdit(struct QDateTimeEdit_VTable* vtbl, QWidget* parent): QDateTimeEdit(parent), vtbl(vtbl) {};
	MiqtVirtualQDateTimeEdit(struct QDateTimeEdit_VTable* vtbl): QDateTimeEdit(), vtbl(vtbl) {};
	MiqtVirtualQDateTimeEdit(struct QDateTimeEdit_VTable* vtbl, const QDateTime& dt): QDateTimeEdit(dt), vtbl(vtbl) {};
	MiqtVirtualQDateTimeEdit(struct QDateTimeEdit_VTable* vtbl, const QDate& d): QDateTimeEdit(d), vtbl(vtbl) {};
	MiqtVirtualQDateTimeEdit(struct QDateTimeEdit_VTable* vtbl, const QTime& t): QDateTimeEdit(t), vtbl(vtbl) {};
	MiqtVirtualQDateTimeEdit(struct QDateTimeEdit_VTable* vtbl, const QDateTime& dt, QWidget* parent): QDateTimeEdit(dt, parent), vtbl(vtbl) {};
	MiqtVirtualQDateTimeEdit(struct QDateTimeEdit_VTable* vtbl, const QDate& d, QWidget* parent): QDateTimeEdit(d, parent), vtbl(vtbl) {};
	MiqtVirtualQDateTimeEdit(struct QDateTimeEdit_VTable* vtbl, const QTime& t, QWidget* parent): QDateTimeEdit(t, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQDateTimeEdit() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDateTimeEdit::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QDateTimeEdit_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDateTimeEdit::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QDateTimeEdit_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDateTimeEdit::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QDateTimeEdit_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QDateTimeEdit::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QDateTimeEdit_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void clear() override {
		if (vtbl->clear == 0) {
			QDateTimeEdit::clear();
			return;
		}


		vtbl->clear(vtbl, this);

	}

	friend void QDateTimeEdit_virtualbase_clear(void* self);

	// Subclass to allow providing a Go implementation
	virtual void stepBy(int steps) override {
		if (vtbl->stepBy == 0) {
			QDateTimeEdit::stepBy(steps);
			return;
		}

		int sigval1 = steps;

		vtbl->stepBy(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_stepBy(void* self, int steps);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDateTimeEdit::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QDateTimeEdit_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QDateTimeEdit::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QDateTimeEdit::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QDateTimeEdit::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QDateTimeEdit::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QDateTimeEdit_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual QValidator::State validate(QString& input, int& pos) const override {
		if (vtbl->validate == 0) {
			return QDateTimeEdit::validate(input, pos);
		}

		QString input_ret = input;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray input_b = input_ret.toUtf8();
		struct miqt_string input_ms;
		input_ms.len = input_b.length();
		input_ms.data = static_cast<char*>(malloc(input_ms.len));
		memcpy(input_ms.data, input_b.data(), input_ms.len);
		struct miqt_string sigval1 = input_ms;
		int* sigval2 = &pos;

		int callback_return_value = vtbl->validate(vtbl, this, sigval1, sigval2);

		return static_cast<QValidator::State>(callback_return_value);
	}

	friend int QDateTimeEdit_virtualbase_validate(const void* self, struct miqt_string input, int* pos);

	// Subclass to allow providing a Go implementation
	virtual void fixup(QString& input) const override {
		if (vtbl->fixup == 0) {
			QDateTimeEdit::fixup(input);
			return;
		}

		QString input_ret = input;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray input_b = input_ret.toUtf8();
		struct miqt_string input_ms;
		input_ms.len = input_b.length();
		input_ms.data = static_cast<char*>(malloc(input_ms.len));
		memcpy(input_ms.data, input_b.data(), input_ms.len);
		struct miqt_string sigval1 = input_ms;

		vtbl->fixup(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_fixup(const void* self, struct miqt_string input);

	// Subclass to allow providing a Go implementation
	virtual QDateTime dateTimeFromText(const QString& text) const override {
		if (vtbl->dateTimeFromText == 0) {
			return QDateTimeEdit::dateTimeFromText(text);
		}

		const QString text_ret = text;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray text_b = text_ret.toUtf8();
		struct miqt_string text_ms;
		text_ms.len = text_b.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_b.data(), text_ms.len);
		struct miqt_string sigval1 = text_ms;

		QDateTime* callback_return_value = vtbl->dateTimeFromText(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QDateTime* QDateTimeEdit_virtualbase_dateTimeFromText(const void* self, struct miqt_string text);

	// Subclass to allow providing a Go implementation
	virtual QString textFromDateTime(const QDateTime& dt) const override {
		if (vtbl->textFromDateTime == 0) {
			return QDateTimeEdit::textFromDateTime(dt);
		}

		const QDateTime& dt_ret = dt;
		// Cast returned reference into pointer
		QDateTime* sigval1 = const_cast<QDateTime*>(&dt_ret);

		struct miqt_string callback_return_value = vtbl->textFromDateTime(vtbl, this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);

		return callback_return_value_QString;
	}

	friend struct miqt_string QDateTimeEdit_virtualbase_textFromDateTime(const void* self, QDateTime* dt);

	// Subclass to allow providing a Go implementation
	virtual QAbstractSpinBox::StepEnabled stepEnabled() const override {
		if (vtbl->stepEnabled == 0) {
			return QDateTimeEdit::stepEnabled();
		}


		int callback_return_value = vtbl->stepEnabled(vtbl, this);

		return static_cast<QAbstractSpinBox::StepEnabled>(callback_return_value);
	}

	friend int QDateTimeEdit_virtualbase_stepEnabled(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QDateTimeEdit::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QDateTimeEdit::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QDateTimeEdit::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QDateTimeEdit_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QDateTimeEdit::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QDateTimeEdit_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QDateTimeEdit::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QDateTimeEdit::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QDateTimeEdit::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QDateTimeEdit::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QDateTimeEdit::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_changeEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QDateTimeEdit::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QDateTimeEdit::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QDateTimeEdit::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QDateTimeEdit::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDateTimeEdit::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QDateTimeEdit::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QDateTimeEdit::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QDateTimeEdit_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QDateTimeEdit::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QDateTimeEdit::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDateTimeEdit_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QDateTimeEdit::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QDateTimeEdit_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QDateTimeEdit::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QDateTimeEdit_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QDateTimeEdit::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QDateTimeEdit::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QDateTimeEdit::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QDateTimeEdit::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QDateTimeEdit::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QDateTimeEdit::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QDateTimeEdit::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QDateTimeEdit::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QDateTimeEdit::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QDateTimeEdit::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QDateTimeEdit::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		long* sigval3 = result;

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QDateTimeEdit_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QDateTimeEdit::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDateTimeEdit_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QDateTimeEdit::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QDateTimeEdit::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QDateTimeEdit_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QDateTimeEdit::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QDateTimeEdit_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QDateTimeEdit::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDateTimeEdit::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QDateTimeEdit_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDateTimeEdit::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDateTimeEdit::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDateTimeEdit::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDateTimeEdit::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QDateTimeEdit_protectedbase_initStyleOption(const void* self, QStyleOptionSpinBox* option);
	friend QLineEdit* QDateTimeEdit_protectedbase_lineEdit(const void* self);
	friend void QDateTimeEdit_protectedbase_setLineEdit(void* self, QLineEdit* edit);
	friend void QDateTimeEdit_protectedbase_updateMicroFocus(void* self);
	friend void QDateTimeEdit_protectedbase_create(void* self);
	friend void QDateTimeEdit_protectedbase_destroy(void* self);
	friend bool QDateTimeEdit_protectedbase_focusNextChild(void* self);
	friend bool QDateTimeEdit_protectedbase_focusPreviousChild(void* self);
	friend QObject* QDateTimeEdit_protectedbase_sender(const void* self);
	friend int QDateTimeEdit_protectedbase_senderSignalIndex(const void* self);
	friend int QDateTimeEdit_protectedbase_receivers(const void* self, const char* signal);
	friend bool QDateTimeEdit_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QDateTimeEdit* QDateTimeEdit_new(struct QDateTimeEdit_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQDateTimeEdit(vtbl, parent);
}

QDateTimeEdit* QDateTimeEdit_new2(struct QDateTimeEdit_VTable* vtbl) {
	return new MiqtVirtualQDateTimeEdit(vtbl);
}

QDateTimeEdit* QDateTimeEdit_new3(struct QDateTimeEdit_VTable* vtbl, QDateTime* dt) {
	return new MiqtVirtualQDateTimeEdit(vtbl, *dt);
}

QDateTimeEdit* QDateTimeEdit_new4(struct QDateTimeEdit_VTable* vtbl, QDate* d) {
	return new MiqtVirtualQDateTimeEdit(vtbl, *d);
}

QDateTimeEdit* QDateTimeEdit_new5(struct QDateTimeEdit_VTable* vtbl, QTime* t) {
	return new MiqtVirtualQDateTimeEdit(vtbl, *t);
}

QDateTimeEdit* QDateTimeEdit_new6(struct QDateTimeEdit_VTable* vtbl, QDateTime* dt, QWidget* parent) {
	return new MiqtVirtualQDateTimeEdit(vtbl, *dt, parent);
}

QDateTimeEdit* QDateTimeEdit_new7(struct QDateTimeEdit_VTable* vtbl, QDate* d, QWidget* parent) {
	return new MiqtVirtualQDateTimeEdit(vtbl, *d, parent);
}

QDateTimeEdit* QDateTimeEdit_new8(struct QDateTimeEdit_VTable* vtbl, QTime* t, QWidget* parent) {
	return new MiqtVirtualQDateTimeEdit(vtbl, *t, parent);
}

void QDateTimeEdit_virtbase(QDateTimeEdit* src, QAbstractSpinBox** outptr_QAbstractSpinBox) {
	*outptr_QAbstractSpinBox = static_cast<QAbstractSpinBox*>(src);
}

QMetaObject* QDateTimeEdit_metaObject(const QDateTimeEdit* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDateTimeEdit_metacast(QDateTimeEdit* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDateTimeEdit_metacall(QDateTimeEdit* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QDateTimeEdit_tr(const char* s) {
	QString _ret = QDateTimeEdit::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDateTimeEdit_trUtf8(const char* s) {
	QString _ret = QDateTimeEdit::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QDateTime* QDateTimeEdit_dateTime(const QDateTimeEdit* self) {
	return new QDateTime(self->dateTime());
}

QDate* QDateTimeEdit_date(const QDateTimeEdit* self) {
	return new QDate(self->date());
}

QTime* QDateTimeEdit_time(const QDateTimeEdit* self) {
	return new QTime(self->time());
}

QCalendar* QDateTimeEdit_calendar(const QDateTimeEdit* self) {
	return new QCalendar(self->calendar());
}

void QDateTimeEdit_setCalendar(QDateTimeEdit* self, QCalendar* calendar) {
	self->setCalendar(*calendar);
}

QDateTime* QDateTimeEdit_minimumDateTime(const QDateTimeEdit* self) {
	return new QDateTime(self->minimumDateTime());
}

void QDateTimeEdit_clearMinimumDateTime(QDateTimeEdit* self) {
	self->clearMinimumDateTime();
}

void QDateTimeEdit_setMinimumDateTime(QDateTimeEdit* self, QDateTime* dt) {
	self->setMinimumDateTime(*dt);
}

QDateTime* QDateTimeEdit_maximumDateTime(const QDateTimeEdit* self) {
	return new QDateTime(self->maximumDateTime());
}

void QDateTimeEdit_clearMaximumDateTime(QDateTimeEdit* self) {
	self->clearMaximumDateTime();
}

void QDateTimeEdit_setMaximumDateTime(QDateTimeEdit* self, QDateTime* dt) {
	self->setMaximumDateTime(*dt);
}

void QDateTimeEdit_setDateTimeRange(QDateTimeEdit* self, QDateTime* min, QDateTime* max) {
	self->setDateTimeRange(*min, *max);
}

QDate* QDateTimeEdit_minimumDate(const QDateTimeEdit* self) {
	return new QDate(self->minimumDate());
}

void QDateTimeEdit_setMinimumDate(QDateTimeEdit* self, QDate* min) {
	self->setMinimumDate(*min);
}

void QDateTimeEdit_clearMinimumDate(QDateTimeEdit* self) {
	self->clearMinimumDate();
}

QDate* QDateTimeEdit_maximumDate(const QDateTimeEdit* self) {
	return new QDate(self->maximumDate());
}

void QDateTimeEdit_setMaximumDate(QDateTimeEdit* self, QDate* max) {
	self->setMaximumDate(*max);
}

void QDateTimeEdit_clearMaximumDate(QDateTimeEdit* self) {
	self->clearMaximumDate();
}

void QDateTimeEdit_setDateRange(QDateTimeEdit* self, QDate* min, QDate* max) {
	self->setDateRange(*min, *max);
}

QTime* QDateTimeEdit_minimumTime(const QDateTimeEdit* self) {
	return new QTime(self->minimumTime());
}

void QDateTimeEdit_setMinimumTime(QDateTimeEdit* self, QTime* min) {
	self->setMinimumTime(*min);
}

void QDateTimeEdit_clearMinimumTime(QDateTimeEdit* self) {
	self->clearMinimumTime();
}

QTime* QDateTimeEdit_maximumTime(const QDateTimeEdit* self) {
	return new QTime(self->maximumTime());
}

void QDateTimeEdit_setMaximumTime(QDateTimeEdit* self, QTime* max) {
	self->setMaximumTime(*max);
}

void QDateTimeEdit_clearMaximumTime(QDateTimeEdit* self) {
	self->clearMaximumTime();
}

void QDateTimeEdit_setTimeRange(QDateTimeEdit* self, QTime* min, QTime* max) {
	self->setTimeRange(*min, *max);
}

int QDateTimeEdit_displayedSections(const QDateTimeEdit* self) {
	QDateTimeEdit::Sections _ret = self->displayedSections();
	return static_cast<int>(_ret);
}

int QDateTimeEdit_currentSection(const QDateTimeEdit* self) {
	QDateTimeEdit::Section _ret = self->currentSection();
	return static_cast<int>(_ret);
}

int QDateTimeEdit_sectionAt(const QDateTimeEdit* self, int index) {
	QDateTimeEdit::Section _ret = self->sectionAt(static_cast<int>(index));
	return static_cast<int>(_ret);
}

void QDateTimeEdit_setCurrentSection(QDateTimeEdit* self, int section) {
	self->setCurrentSection(static_cast<QDateTimeEdit::Section>(section));
}

int QDateTimeEdit_currentSectionIndex(const QDateTimeEdit* self) {
	return self->currentSectionIndex();
}

void QDateTimeEdit_setCurrentSectionIndex(QDateTimeEdit* self, int index) {
	self->setCurrentSectionIndex(static_cast<int>(index));
}

QCalendarWidget* QDateTimeEdit_calendarWidget(const QDateTimeEdit* self) {
	return self->calendarWidget();
}

void QDateTimeEdit_setCalendarWidget(QDateTimeEdit* self, QCalendarWidget* calendarWidget) {
	self->setCalendarWidget(calendarWidget);
}

int QDateTimeEdit_sectionCount(const QDateTimeEdit* self) {
	return self->sectionCount();
}

void QDateTimeEdit_setSelectedSection(QDateTimeEdit* self, int section) {
	self->setSelectedSection(static_cast<QDateTimeEdit::Section>(section));
}

struct miqt_string QDateTimeEdit_sectionText(const QDateTimeEdit* self, int section) {
	QString _ret = self->sectionText(static_cast<QDateTimeEdit::Section>(section));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDateTimeEdit_displayFormat(const QDateTimeEdit* self) {
	QString _ret = self->displayFormat();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDateTimeEdit_setDisplayFormat(QDateTimeEdit* self, struct miqt_string format) {
	QString format_QString = QString::fromUtf8(format.data, format.len);
	self->setDisplayFormat(format_QString);
}

bool QDateTimeEdit_calendarPopup(const QDateTimeEdit* self) {
	return self->calendarPopup();
}

void QDateTimeEdit_setCalendarPopup(QDateTimeEdit* self, bool enable) {
	self->setCalendarPopup(enable);
}

int QDateTimeEdit_timeSpec(const QDateTimeEdit* self) {
	Qt::TimeSpec _ret = self->timeSpec();
	return static_cast<int>(_ret);
}

void QDateTimeEdit_setTimeSpec(QDateTimeEdit* self, int spec) {
	self->setTimeSpec(static_cast<Qt::TimeSpec>(spec));
}

QSize* QDateTimeEdit_sizeHint(const QDateTimeEdit* self) {
	return new QSize(self->sizeHint());
}

void QDateTimeEdit_clear(QDateTimeEdit* self) {
	self->clear();
}

void QDateTimeEdit_stepBy(QDateTimeEdit* self, int steps) {
	self->stepBy(static_cast<int>(steps));
}

bool QDateTimeEdit_event(QDateTimeEdit* self, QEvent* event) {
	return self->event(event);
}

void QDateTimeEdit_dateTimeChanged(QDateTimeEdit* self, QDateTime* dateTime) {
	self->dateTimeChanged(*dateTime);
}

void QDateTimeEdit_connect_dateTimeChanged(QDateTimeEdit* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QDateTime& dateTime) {
			const QDateTime& dateTime_ret = dateTime;
			// Cast returned reference into pointer
			QDateTime* sigval1 = const_cast<QDateTime*>(&dateTime_ret);
			miqt_exec_callback_QDateTimeEdit_dateTimeChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QDateTimeEdit_dateTimeChanged_release(slot); }
	};
	MiqtVirtualQDateTimeEdit::connect(self, static_cast<void (QDateTimeEdit::*)(const QDateTime&)>(&QDateTimeEdit::dateTimeChanged), self, caller{slot});
}

void QDateTimeEdit_timeChanged(QDateTimeEdit* self, QTime* time) {
	self->timeChanged(*time);
}

void QDateTimeEdit_connect_timeChanged(QDateTimeEdit* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QTime& time) {
			const QTime& time_ret = time;
			// Cast returned reference into pointer
			QTime* sigval1 = const_cast<QTime*>(&time_ret);
			miqt_exec_callback_QDateTimeEdit_timeChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QDateTimeEdit_timeChanged_release(slot); }
	};
	MiqtVirtualQDateTimeEdit::connect(self, static_cast<void (QDateTimeEdit::*)(const QTime&)>(&QDateTimeEdit::timeChanged), self, caller{slot});
}

void QDateTimeEdit_dateChanged(QDateTimeEdit* self, QDate* date) {
	self->dateChanged(*date);
}

void QDateTimeEdit_connect_dateChanged(QDateTimeEdit* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QDate& date) {
			const QDate& date_ret = date;
			// Cast returned reference into pointer
			QDate* sigval1 = const_cast<QDate*>(&date_ret);
			miqt_exec_callback_QDateTimeEdit_dateChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QDateTimeEdit_dateChanged_release(slot); }
	};
	MiqtVirtualQDateTimeEdit::connect(self, static_cast<void (QDateTimeEdit::*)(const QDate&)>(&QDateTimeEdit::dateChanged), self, caller{slot});
}

void QDateTimeEdit_setDateTime(QDateTimeEdit* self, QDateTime* dateTime) {
	self->setDateTime(*dateTime);
}

void QDateTimeEdit_setDate(QDateTimeEdit* self, QDate* date) {
	self->setDate(*date);
}

void QDateTimeEdit_setTime(QDateTimeEdit* self, QTime* time) {
	self->setTime(*time);
}

struct miqt_string QDateTimeEdit_tr2(const char* s, const char* c) {
	QString _ret = QDateTimeEdit::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDateTimeEdit_tr3(const char* s, const char* c, int n) {
	QString _ret = QDateTimeEdit::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDateTimeEdit_trUtf82(const char* s, const char* c) {
	QString _ret = QDateTimeEdit::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDateTimeEdit_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QDateTimeEdit::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QDateTimeEdit_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::metaObject();

}

void* QDateTimeEdit_virtualbase_metacast(void* self, const char* param1) {

	return ( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::qt_metacast(param1);

}

int QDateTimeEdit_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QDateTimeEdit_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::sizeHint());

}

void QDateTimeEdit_virtualbase_clear(void* self) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::clear();

}

void QDateTimeEdit_virtualbase_stepBy(void* self, int steps) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::stepBy(static_cast<int>(steps));

}

bool QDateTimeEdit_virtualbase_event(void* self, QEvent* event) {

	return ( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::event(event);

}

void QDateTimeEdit_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::keyPressEvent(event);

}

void QDateTimeEdit_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::wheelEvent(event);

}

void QDateTimeEdit_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::focusInEvent(event);

}

bool QDateTimeEdit_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::focusNextPrevChild(next);

}

int QDateTimeEdit_virtualbase_validate(const void* self, struct miqt_string input, int* pos) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	QValidator::State _ret = ( (const MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::validate(input_QString, static_cast<int&>(*pos));
	return static_cast<int>(_ret);

}

void QDateTimeEdit_virtualbase_fixup(const void* self, struct miqt_string input) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	( (const MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::fixup(input_QString);

}

QDateTime* QDateTimeEdit_virtualbase_dateTimeFromText(const void* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);

	return new QDateTime(( (const MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::dateTimeFromText(text_QString));

}

struct miqt_string QDateTimeEdit_virtualbase_textFromDateTime(const void* self, QDateTime* dt) {

	QString _ret = ( (const MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::textFromDateTime(*dt);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;

}

int QDateTimeEdit_virtualbase_stepEnabled(const void* self) {

	MiqtVirtualQDateTimeEdit::StepEnabled _ret = ( (const MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::stepEnabled();
	return static_cast<int>(_ret);

}

void QDateTimeEdit_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::mousePressEvent(event);

}

void QDateTimeEdit_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::paintEvent(event);

}

QSize* QDateTimeEdit_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::minimumSizeHint());

}

QVariant* QDateTimeEdit_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

void QDateTimeEdit_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::resizeEvent(event);

}

void QDateTimeEdit_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::keyReleaseEvent(event);

}

void QDateTimeEdit_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::focusOutEvent(event);

}

void QDateTimeEdit_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::contextMenuEvent(event);

}

void QDateTimeEdit_virtualbase_changeEvent(void* self, QEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::changeEvent(event);

}

void QDateTimeEdit_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::closeEvent(event);

}

void QDateTimeEdit_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::hideEvent(event);

}

void QDateTimeEdit_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::mouseReleaseEvent(event);

}

void QDateTimeEdit_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::mouseMoveEvent(event);

}

void QDateTimeEdit_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::timerEvent(event);

}

void QDateTimeEdit_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::showEvent(event);

}

int QDateTimeEdit_virtualbase_devType(const void* self) {

	return ( (const MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::devType();

}

void QDateTimeEdit_virtualbase_setVisible(void* self, bool visible) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::setVisible(visible);

}

int QDateTimeEdit_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::heightForWidth(static_cast<int>(param1));

}

bool QDateTimeEdit_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::hasHeightForWidth();

}

QPaintEngine* QDateTimeEdit_virtualbase_paintEngine(const void* self) {

	return ( (const MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::paintEngine();

}

void QDateTimeEdit_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::mouseDoubleClickEvent(event);

}

void QDateTimeEdit_virtualbase_enterEvent(void* self, QEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::enterEvent(event);

}

void QDateTimeEdit_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::leaveEvent(event);

}

void QDateTimeEdit_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::moveEvent(event);

}

void QDateTimeEdit_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::tabletEvent(event);

}

void QDateTimeEdit_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::actionEvent(event);

}

void QDateTimeEdit_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::dragEnterEvent(event);

}

void QDateTimeEdit_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::dragMoveEvent(event);

}

void QDateTimeEdit_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::dragLeaveEvent(event);

}

void QDateTimeEdit_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::dropEvent(event);

}

bool QDateTimeEdit_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

int QDateTimeEdit_virtualbase_metric(const void* self, int param1) {

	return ( (const MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::metric(static_cast<MiqtVirtualQDateTimeEdit::PaintDeviceMetric>(param1));

}

void QDateTimeEdit_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::initPainter(painter);

}

QPaintDevice* QDateTimeEdit_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::redirected(offset);

}

QPainter* QDateTimeEdit_virtualbase_sharedPainter(const void* self) {

	return ( (const MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::sharedPainter();

}

void QDateTimeEdit_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::inputMethodEvent(param1);

}

bool QDateTimeEdit_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::eventFilter(watched, event);

}

void QDateTimeEdit_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::childEvent(event);

}

void QDateTimeEdit_virtualbase_customEvent(void* self, QEvent* event) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::customEvent(event);

}

void QDateTimeEdit_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::connectNotify(*signal);

}

void QDateTimeEdit_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (MiqtVirtualQDateTimeEdit*)(self) )->QDateTimeEdit::disconnectNotify(*signal);

}

const QMetaObject* QDateTimeEdit_staticMetaObject() { return &QDateTimeEdit::staticMetaObject; }
void QDateTimeEdit_protectedbase_initStyleOption(const void* self, QStyleOptionSpinBox* option) {
	MiqtVirtualQDateTimeEdit* self_cast = static_cast<MiqtVirtualQDateTimeEdit*>( (QDateTimeEdit*)(self) );
	
	self_cast->initStyleOption(option);

}

QLineEdit* QDateTimeEdit_protectedbase_lineEdit(const void* self) {
	MiqtVirtualQDateTimeEdit* self_cast = static_cast<MiqtVirtualQDateTimeEdit*>( (QDateTimeEdit*)(self) );
	
	return self_cast->lineEdit();

}

void QDateTimeEdit_protectedbase_setLineEdit(void* self, QLineEdit* edit) {
	MiqtVirtualQDateTimeEdit* self_cast = static_cast<MiqtVirtualQDateTimeEdit*>( (QDateTimeEdit*)(self) );
	
	self_cast->setLineEdit(edit);

}

void QDateTimeEdit_protectedbase_updateMicroFocus(void* self) {
	MiqtVirtualQDateTimeEdit* self_cast = static_cast<MiqtVirtualQDateTimeEdit*>( (QDateTimeEdit*)(self) );
	
	self_cast->updateMicroFocus();

}

void QDateTimeEdit_protectedbase_create(void* self) {
	MiqtVirtualQDateTimeEdit* self_cast = static_cast<MiqtVirtualQDateTimeEdit*>( (QDateTimeEdit*)(self) );
	
	self_cast->create();

}

void QDateTimeEdit_protectedbase_destroy(void* self) {
	MiqtVirtualQDateTimeEdit* self_cast = static_cast<MiqtVirtualQDateTimeEdit*>( (QDateTimeEdit*)(self) );
	
	self_cast->destroy();

}

bool QDateTimeEdit_protectedbase_focusNextChild(void* self) {
	MiqtVirtualQDateTimeEdit* self_cast = static_cast<MiqtVirtualQDateTimeEdit*>( (QDateTimeEdit*)(self) );
	
	return self_cast->focusNextChild();

}

bool QDateTimeEdit_protectedbase_focusPreviousChild(void* self) {
	MiqtVirtualQDateTimeEdit* self_cast = static_cast<MiqtVirtualQDateTimeEdit*>( (QDateTimeEdit*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QDateTimeEdit_protectedbase_sender(const void* self) {
	MiqtVirtualQDateTimeEdit* self_cast = static_cast<MiqtVirtualQDateTimeEdit*>( (QDateTimeEdit*)(self) );
	
	return self_cast->sender();

}

int QDateTimeEdit_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQDateTimeEdit* self_cast = static_cast<MiqtVirtualQDateTimeEdit*>( (QDateTimeEdit*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QDateTimeEdit_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQDateTimeEdit* self_cast = static_cast<MiqtVirtualQDateTimeEdit*>( (QDateTimeEdit*)(self) );
	
	return self_cast->receivers(signal);

}

bool QDateTimeEdit_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQDateTimeEdit* self_cast = static_cast<MiqtVirtualQDateTimeEdit*>( (QDateTimeEdit*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QDateTimeEdit_delete(QDateTimeEdit* self) {
	delete self;
}

class MiqtVirtualQTimeEdit final : public QTimeEdit {
	struct QTimeEdit_VTable* vtbl;
public:

	MiqtVirtualQTimeEdit(struct QTimeEdit_VTable* vtbl, QWidget* parent): QTimeEdit(parent), vtbl(vtbl) {};
	MiqtVirtualQTimeEdit(struct QTimeEdit_VTable* vtbl): QTimeEdit(), vtbl(vtbl) {};
	MiqtVirtualQTimeEdit(struct QTimeEdit_VTable* vtbl, const QTime& time): QTimeEdit(time), vtbl(vtbl) {};
	MiqtVirtualQTimeEdit(struct QTimeEdit_VTable* vtbl, const QTime& time, QWidget* parent): QTimeEdit(time, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQTimeEdit() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTimeEdit::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QTimeEdit_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTimeEdit::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QTimeEdit_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTimeEdit::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTimeEdit_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QTimeEdit::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QTimeEdit_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void clear() override {
		if (vtbl->clear == 0) {
			QTimeEdit::clear();
			return;
		}


		vtbl->clear(vtbl, this);

	}

	friend void QTimeEdit_virtualbase_clear(void* self);

	// Subclass to allow providing a Go implementation
	virtual void stepBy(int steps) override {
		if (vtbl->stepBy == 0) {
			QTimeEdit::stepBy(steps);
			return;
		}

		int sigval1 = steps;

		vtbl->stepBy(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_stepBy(void* self, int steps);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTimeEdit::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTimeEdit_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QTimeEdit::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QTimeEdit::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QTimeEdit::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QTimeEdit::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QTimeEdit_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual QValidator::State validate(QString& input, int& pos) const override {
		if (vtbl->validate == 0) {
			return QTimeEdit::validate(input, pos);
		}

		QString input_ret = input;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray input_b = input_ret.toUtf8();
		struct miqt_string input_ms;
		input_ms.len = input_b.length();
		input_ms.data = static_cast<char*>(malloc(input_ms.len));
		memcpy(input_ms.data, input_b.data(), input_ms.len);
		struct miqt_string sigval1 = input_ms;
		int* sigval2 = &pos;

		int callback_return_value = vtbl->validate(vtbl, this, sigval1, sigval2);

		return static_cast<QValidator::State>(callback_return_value);
	}

	friend int QTimeEdit_virtualbase_validate(const void* self, struct miqt_string input, int* pos);

	// Subclass to allow providing a Go implementation
	virtual void fixup(QString& input) const override {
		if (vtbl->fixup == 0) {
			QTimeEdit::fixup(input);
			return;
		}

		QString input_ret = input;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray input_b = input_ret.toUtf8();
		struct miqt_string input_ms;
		input_ms.len = input_b.length();
		input_ms.data = static_cast<char*>(malloc(input_ms.len));
		memcpy(input_ms.data, input_b.data(), input_ms.len);
		struct miqt_string sigval1 = input_ms;

		vtbl->fixup(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_fixup(const void* self, struct miqt_string input);

	// Subclass to allow providing a Go implementation
	virtual QDateTime dateTimeFromText(const QString& text) const override {
		if (vtbl->dateTimeFromText == 0) {
			return QTimeEdit::dateTimeFromText(text);
		}

		const QString text_ret = text;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray text_b = text_ret.toUtf8();
		struct miqt_string text_ms;
		text_ms.len = text_b.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_b.data(), text_ms.len);
		struct miqt_string sigval1 = text_ms;

		QDateTime* callback_return_value = vtbl->dateTimeFromText(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QDateTime* QTimeEdit_virtualbase_dateTimeFromText(const void* self, struct miqt_string text);

	// Subclass to allow providing a Go implementation
	virtual QString textFromDateTime(const QDateTime& dt) const override {
		if (vtbl->textFromDateTime == 0) {
			return QTimeEdit::textFromDateTime(dt);
		}

		const QDateTime& dt_ret = dt;
		// Cast returned reference into pointer
		QDateTime* sigval1 = const_cast<QDateTime*>(&dt_ret);

		struct miqt_string callback_return_value = vtbl->textFromDateTime(vtbl, this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);

		return callback_return_value_QString;
	}

	friend struct miqt_string QTimeEdit_virtualbase_textFromDateTime(const void* self, QDateTime* dt);

	// Subclass to allow providing a Go implementation
	virtual QAbstractSpinBox::StepEnabled stepEnabled() const override {
		if (vtbl->stepEnabled == 0) {
			return QTimeEdit::stepEnabled();
		}


		int callback_return_value = vtbl->stepEnabled(vtbl, this);

		return static_cast<QAbstractSpinBox::StepEnabled>(callback_return_value);
	}

	friend int QTimeEdit_virtualbase_stepEnabled(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QTimeEdit::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QTimeEdit::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QTimeEdit::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QTimeEdit_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QTimeEdit::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QTimeEdit_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QTimeEdit::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QTimeEdit::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QTimeEdit::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QTimeEdit::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QTimeEdit::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_changeEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QTimeEdit::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QTimeEdit::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QTimeEdit::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QTimeEdit::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTimeEdit::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QTimeEdit::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QTimeEdit::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QTimeEdit_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QTimeEdit::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QTimeEdit::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTimeEdit_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QTimeEdit::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QTimeEdit_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QTimeEdit::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QTimeEdit_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QTimeEdit::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QTimeEdit::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QTimeEdit::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QTimeEdit::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QTimeEdit::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QTimeEdit::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QTimeEdit::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QTimeEdit::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QTimeEdit::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QTimeEdit::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QTimeEdit::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		long* sigval3 = result;

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QTimeEdit_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QTimeEdit::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTimeEdit_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QTimeEdit::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QTimeEdit::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QTimeEdit_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QTimeEdit::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QTimeEdit_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QTimeEdit::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTimeEdit::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTimeEdit_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTimeEdit::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTimeEdit::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTimeEdit::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTimeEdit::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QTimeEdit_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QTimeEdit_protectedbase_initStyleOption(const void* self, QStyleOptionSpinBox* option);
	friend QLineEdit* QTimeEdit_protectedbase_lineEdit(const void* self);
	friend void QTimeEdit_protectedbase_setLineEdit(void* self, QLineEdit* edit);
	friend void QTimeEdit_protectedbase_updateMicroFocus(void* self);
	friend void QTimeEdit_protectedbase_create(void* self);
	friend void QTimeEdit_protectedbase_destroy(void* self);
	friend bool QTimeEdit_protectedbase_focusNextChild(void* self);
	friend bool QTimeEdit_protectedbase_focusPreviousChild(void* self);
	friend QObject* QTimeEdit_protectedbase_sender(const void* self);
	friend int QTimeEdit_protectedbase_senderSignalIndex(const void* self);
	friend int QTimeEdit_protectedbase_receivers(const void* self, const char* signal);
	friend bool QTimeEdit_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QTimeEdit* QTimeEdit_new(struct QTimeEdit_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQTimeEdit(vtbl, parent);
}

QTimeEdit* QTimeEdit_new2(struct QTimeEdit_VTable* vtbl) {
	return new MiqtVirtualQTimeEdit(vtbl);
}

QTimeEdit* QTimeEdit_new3(struct QTimeEdit_VTable* vtbl, QTime* time) {
	return new MiqtVirtualQTimeEdit(vtbl, *time);
}

QTimeEdit* QTimeEdit_new4(struct QTimeEdit_VTable* vtbl, QTime* time, QWidget* parent) {
	return new MiqtVirtualQTimeEdit(vtbl, *time, parent);
}

void QTimeEdit_virtbase(QTimeEdit* src, QDateTimeEdit** outptr_QDateTimeEdit) {
	*outptr_QDateTimeEdit = static_cast<QDateTimeEdit*>(src);
}

QMetaObject* QTimeEdit_metaObject(const QTimeEdit* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTimeEdit_metacast(QTimeEdit* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTimeEdit_metacall(QTimeEdit* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTimeEdit_tr(const char* s) {
	QString _ret = QTimeEdit::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTimeEdit_trUtf8(const char* s) {
	QString _ret = QTimeEdit::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTimeEdit_userTimeChanged(QTimeEdit* self, QTime* time) {
	self->userTimeChanged(*time);
}

void QTimeEdit_connect_userTimeChanged(QTimeEdit* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QTime& time) {
			const QTime& time_ret = time;
			// Cast returned reference into pointer
			QTime* sigval1 = const_cast<QTime*>(&time_ret);
			miqt_exec_callback_QTimeEdit_userTimeChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QTimeEdit_userTimeChanged_release(slot); }
	};
	MiqtVirtualQTimeEdit::connect(self, static_cast<void (QTimeEdit::*)(const QTime&)>(&QTimeEdit::userTimeChanged), self, caller{slot});
}

struct miqt_string QTimeEdit_tr2(const char* s, const char* c) {
	QString _ret = QTimeEdit::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTimeEdit_tr3(const char* s, const char* c, int n) {
	QString _ret = QTimeEdit::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTimeEdit_trUtf82(const char* s, const char* c) {
	QString _ret = QTimeEdit::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTimeEdit_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QTimeEdit::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QTimeEdit_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::metaObject();

}

void* QTimeEdit_virtualbase_metacast(void* self, const char* param1) {

	return ( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::qt_metacast(param1);

}

int QTimeEdit_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QTimeEdit_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::sizeHint());

}

void QTimeEdit_virtualbase_clear(void* self) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::clear();

}

void QTimeEdit_virtualbase_stepBy(void* self, int steps) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::stepBy(static_cast<int>(steps));

}

bool QTimeEdit_virtualbase_event(void* self, QEvent* event) {

	return ( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::event(event);

}

void QTimeEdit_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::keyPressEvent(event);

}

void QTimeEdit_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::wheelEvent(event);

}

void QTimeEdit_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::focusInEvent(event);

}

bool QTimeEdit_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::focusNextPrevChild(next);

}

int QTimeEdit_virtualbase_validate(const void* self, struct miqt_string input, int* pos) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	QValidator::State _ret = ( (const MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::validate(input_QString, static_cast<int&>(*pos));
	return static_cast<int>(_ret);

}

void QTimeEdit_virtualbase_fixup(const void* self, struct miqt_string input) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	( (const MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::fixup(input_QString);

}

QDateTime* QTimeEdit_virtualbase_dateTimeFromText(const void* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);

	return new QDateTime(( (const MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::dateTimeFromText(text_QString));

}

struct miqt_string QTimeEdit_virtualbase_textFromDateTime(const void* self, QDateTime* dt) {

	QString _ret = ( (const MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::textFromDateTime(*dt);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;

}

int QTimeEdit_virtualbase_stepEnabled(const void* self) {

	MiqtVirtualQTimeEdit::StepEnabled _ret = ( (const MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::stepEnabled();
	return static_cast<int>(_ret);

}

void QTimeEdit_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::mousePressEvent(event);

}

void QTimeEdit_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::paintEvent(event);

}

QSize* QTimeEdit_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::minimumSizeHint());

}

QVariant* QTimeEdit_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

void QTimeEdit_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::resizeEvent(event);

}

void QTimeEdit_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::keyReleaseEvent(event);

}

void QTimeEdit_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::focusOutEvent(event);

}

void QTimeEdit_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::contextMenuEvent(event);

}

void QTimeEdit_virtualbase_changeEvent(void* self, QEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::changeEvent(event);

}

void QTimeEdit_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::closeEvent(event);

}

void QTimeEdit_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::hideEvent(event);

}

void QTimeEdit_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::mouseReleaseEvent(event);

}

void QTimeEdit_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::mouseMoveEvent(event);

}

void QTimeEdit_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::timerEvent(event);

}

void QTimeEdit_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::showEvent(event);

}

int QTimeEdit_virtualbase_devType(const void* self) {

	return ( (const MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::devType();

}

void QTimeEdit_virtualbase_setVisible(void* self, bool visible) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::setVisible(visible);

}

int QTimeEdit_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::heightForWidth(static_cast<int>(param1));

}

bool QTimeEdit_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::hasHeightForWidth();

}

QPaintEngine* QTimeEdit_virtualbase_paintEngine(const void* self) {

	return ( (const MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::paintEngine();

}

void QTimeEdit_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::mouseDoubleClickEvent(event);

}

void QTimeEdit_virtualbase_enterEvent(void* self, QEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::enterEvent(event);

}

void QTimeEdit_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::leaveEvent(event);

}

void QTimeEdit_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::moveEvent(event);

}

void QTimeEdit_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::tabletEvent(event);

}

void QTimeEdit_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::actionEvent(event);

}

void QTimeEdit_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::dragEnterEvent(event);

}

void QTimeEdit_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::dragMoveEvent(event);

}

void QTimeEdit_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::dragLeaveEvent(event);

}

void QTimeEdit_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::dropEvent(event);

}

bool QTimeEdit_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

int QTimeEdit_virtualbase_metric(const void* self, int param1) {

	return ( (const MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::metric(static_cast<MiqtVirtualQTimeEdit::PaintDeviceMetric>(param1));

}

void QTimeEdit_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::initPainter(painter);

}

QPaintDevice* QTimeEdit_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::redirected(offset);

}

QPainter* QTimeEdit_virtualbase_sharedPainter(const void* self) {

	return ( (const MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::sharedPainter();

}

void QTimeEdit_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::inputMethodEvent(param1);

}

bool QTimeEdit_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::eventFilter(watched, event);

}

void QTimeEdit_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::childEvent(event);

}

void QTimeEdit_virtualbase_customEvent(void* self, QEvent* event) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::customEvent(event);

}

void QTimeEdit_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::connectNotify(*signal);

}

void QTimeEdit_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (MiqtVirtualQTimeEdit*)(self) )->QTimeEdit::disconnectNotify(*signal);

}

const QMetaObject* QTimeEdit_staticMetaObject() { return &QTimeEdit::staticMetaObject; }
void QTimeEdit_protectedbase_initStyleOption(const void* self, QStyleOptionSpinBox* option) {
	MiqtVirtualQTimeEdit* self_cast = static_cast<MiqtVirtualQTimeEdit*>( (QTimeEdit*)(self) );
	
	self_cast->initStyleOption(option);

}

QLineEdit* QTimeEdit_protectedbase_lineEdit(const void* self) {
	MiqtVirtualQTimeEdit* self_cast = static_cast<MiqtVirtualQTimeEdit*>( (QTimeEdit*)(self) );
	
	return self_cast->lineEdit();

}

void QTimeEdit_protectedbase_setLineEdit(void* self, QLineEdit* edit) {
	MiqtVirtualQTimeEdit* self_cast = static_cast<MiqtVirtualQTimeEdit*>( (QTimeEdit*)(self) );
	
	self_cast->setLineEdit(edit);

}

void QTimeEdit_protectedbase_updateMicroFocus(void* self) {
	MiqtVirtualQTimeEdit* self_cast = static_cast<MiqtVirtualQTimeEdit*>( (QTimeEdit*)(self) );
	
	self_cast->updateMicroFocus();

}

void QTimeEdit_protectedbase_create(void* self) {
	MiqtVirtualQTimeEdit* self_cast = static_cast<MiqtVirtualQTimeEdit*>( (QTimeEdit*)(self) );
	
	self_cast->create();

}

void QTimeEdit_protectedbase_destroy(void* self) {
	MiqtVirtualQTimeEdit* self_cast = static_cast<MiqtVirtualQTimeEdit*>( (QTimeEdit*)(self) );
	
	self_cast->destroy();

}

bool QTimeEdit_protectedbase_focusNextChild(void* self) {
	MiqtVirtualQTimeEdit* self_cast = static_cast<MiqtVirtualQTimeEdit*>( (QTimeEdit*)(self) );
	
	return self_cast->focusNextChild();

}

bool QTimeEdit_protectedbase_focusPreviousChild(void* self) {
	MiqtVirtualQTimeEdit* self_cast = static_cast<MiqtVirtualQTimeEdit*>( (QTimeEdit*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QTimeEdit_protectedbase_sender(const void* self) {
	MiqtVirtualQTimeEdit* self_cast = static_cast<MiqtVirtualQTimeEdit*>( (QTimeEdit*)(self) );
	
	return self_cast->sender();

}

int QTimeEdit_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQTimeEdit* self_cast = static_cast<MiqtVirtualQTimeEdit*>( (QTimeEdit*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QTimeEdit_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQTimeEdit* self_cast = static_cast<MiqtVirtualQTimeEdit*>( (QTimeEdit*)(self) );
	
	return self_cast->receivers(signal);

}

bool QTimeEdit_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQTimeEdit* self_cast = static_cast<MiqtVirtualQTimeEdit*>( (QTimeEdit*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QTimeEdit_delete(QTimeEdit* self) {
	delete self;
}

class MiqtVirtualQDateEdit final : public QDateEdit {
	struct QDateEdit_VTable* vtbl;
public:

	MiqtVirtualQDateEdit(struct QDateEdit_VTable* vtbl, QWidget* parent): QDateEdit(parent), vtbl(vtbl) {};
	MiqtVirtualQDateEdit(struct QDateEdit_VTable* vtbl): QDateEdit(), vtbl(vtbl) {};
	MiqtVirtualQDateEdit(struct QDateEdit_VTable* vtbl, const QDate& date): QDateEdit(date), vtbl(vtbl) {};
	MiqtVirtualQDateEdit(struct QDateEdit_VTable* vtbl, const QDate& date, QWidget* parent): QDateEdit(date, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQDateEdit() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDateEdit::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QDateEdit_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDateEdit::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QDateEdit_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDateEdit::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QDateEdit_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QDateEdit::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QDateEdit_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void clear() override {
		if (vtbl->clear == 0) {
			QDateEdit::clear();
			return;
		}


		vtbl->clear(vtbl, this);

	}

	friend void QDateEdit_virtualbase_clear(void* self);

	// Subclass to allow providing a Go implementation
	virtual void stepBy(int steps) override {
		if (vtbl->stepBy == 0) {
			QDateEdit::stepBy(steps);
			return;
		}

		int sigval1 = steps;

		vtbl->stepBy(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_stepBy(void* self, int steps);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDateEdit::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QDateEdit_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QDateEdit::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QDateEdit::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QDateEdit::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QDateEdit::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QDateEdit_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual QValidator::State validate(QString& input, int& pos) const override {
		if (vtbl->validate == 0) {
			return QDateEdit::validate(input, pos);
		}

		QString input_ret = input;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray input_b = input_ret.toUtf8();
		struct miqt_string input_ms;
		input_ms.len = input_b.length();
		input_ms.data = static_cast<char*>(malloc(input_ms.len));
		memcpy(input_ms.data, input_b.data(), input_ms.len);
		struct miqt_string sigval1 = input_ms;
		int* sigval2 = &pos;

		int callback_return_value = vtbl->validate(vtbl, this, sigval1, sigval2);

		return static_cast<QValidator::State>(callback_return_value);
	}

	friend int QDateEdit_virtualbase_validate(const void* self, struct miqt_string input, int* pos);

	// Subclass to allow providing a Go implementation
	virtual void fixup(QString& input) const override {
		if (vtbl->fixup == 0) {
			QDateEdit::fixup(input);
			return;
		}

		QString input_ret = input;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray input_b = input_ret.toUtf8();
		struct miqt_string input_ms;
		input_ms.len = input_b.length();
		input_ms.data = static_cast<char*>(malloc(input_ms.len));
		memcpy(input_ms.data, input_b.data(), input_ms.len);
		struct miqt_string sigval1 = input_ms;

		vtbl->fixup(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_fixup(const void* self, struct miqt_string input);

	// Subclass to allow providing a Go implementation
	virtual QDateTime dateTimeFromText(const QString& text) const override {
		if (vtbl->dateTimeFromText == 0) {
			return QDateEdit::dateTimeFromText(text);
		}

		const QString text_ret = text;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray text_b = text_ret.toUtf8();
		struct miqt_string text_ms;
		text_ms.len = text_b.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_b.data(), text_ms.len);
		struct miqt_string sigval1 = text_ms;

		QDateTime* callback_return_value = vtbl->dateTimeFromText(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QDateTime* QDateEdit_virtualbase_dateTimeFromText(const void* self, struct miqt_string text);

	// Subclass to allow providing a Go implementation
	virtual QString textFromDateTime(const QDateTime& dt) const override {
		if (vtbl->textFromDateTime == 0) {
			return QDateEdit::textFromDateTime(dt);
		}

		const QDateTime& dt_ret = dt;
		// Cast returned reference into pointer
		QDateTime* sigval1 = const_cast<QDateTime*>(&dt_ret);

		struct miqt_string callback_return_value = vtbl->textFromDateTime(vtbl, this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);

		return callback_return_value_QString;
	}

	friend struct miqt_string QDateEdit_virtualbase_textFromDateTime(const void* self, QDateTime* dt);

	// Subclass to allow providing a Go implementation
	virtual QAbstractSpinBox::StepEnabled stepEnabled() const override {
		if (vtbl->stepEnabled == 0) {
			return QDateEdit::stepEnabled();
		}


		int callback_return_value = vtbl->stepEnabled(vtbl, this);

		return static_cast<QAbstractSpinBox::StepEnabled>(callback_return_value);
	}

	friend int QDateEdit_virtualbase_stepEnabled(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QDateEdit::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QDateEdit::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QDateEdit::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QDateEdit_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QDateEdit::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QDateEdit_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QDateEdit::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QDateEdit::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QDateEdit::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QDateEdit::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QDateEdit::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_changeEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QDateEdit::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QDateEdit::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QDateEdit::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QDateEdit::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDateEdit::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QDateEdit::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QDateEdit::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QDateEdit_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QDateEdit::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QDateEdit::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDateEdit_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QDateEdit::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QDateEdit_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QDateEdit::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QDateEdit_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QDateEdit::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QDateEdit::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_enterEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QDateEdit::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QDateEdit::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QDateEdit::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QDateEdit::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QDateEdit::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QDateEdit::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QDateEdit::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QDateEdit::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QDateEdit::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		long* sigval3 = result;

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	friend bool QDateEdit_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QDateEdit::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDateEdit_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QDateEdit::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QDateEdit::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QDateEdit_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QDateEdit::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QDateEdit_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QDateEdit::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDateEdit::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QDateEdit_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDateEdit::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDateEdit::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDateEdit::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDateEdit::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QDateEdit_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QDateEdit_protectedbase_initStyleOption(const void* self, QStyleOptionSpinBox* option);
	friend QLineEdit* QDateEdit_protectedbase_lineEdit(const void* self);
	friend void QDateEdit_protectedbase_setLineEdit(void* self, QLineEdit* edit);
	friend void QDateEdit_protectedbase_updateMicroFocus(void* self);
	friend void QDateEdit_protectedbase_create(void* self);
	friend void QDateEdit_protectedbase_destroy(void* self);
	friend bool QDateEdit_protectedbase_focusNextChild(void* self);
	friend bool QDateEdit_protectedbase_focusPreviousChild(void* self);
	friend QObject* QDateEdit_protectedbase_sender(const void* self);
	friend int QDateEdit_protectedbase_senderSignalIndex(const void* self);
	friend int QDateEdit_protectedbase_receivers(const void* self, const char* signal);
	friend bool QDateEdit_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QDateEdit* QDateEdit_new(struct QDateEdit_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQDateEdit(vtbl, parent);
}

QDateEdit* QDateEdit_new2(struct QDateEdit_VTable* vtbl) {
	return new MiqtVirtualQDateEdit(vtbl);
}

QDateEdit* QDateEdit_new3(struct QDateEdit_VTable* vtbl, QDate* date) {
	return new MiqtVirtualQDateEdit(vtbl, *date);
}

QDateEdit* QDateEdit_new4(struct QDateEdit_VTable* vtbl, QDate* date, QWidget* parent) {
	return new MiqtVirtualQDateEdit(vtbl, *date, parent);
}

void QDateEdit_virtbase(QDateEdit* src, QDateTimeEdit** outptr_QDateTimeEdit) {
	*outptr_QDateTimeEdit = static_cast<QDateTimeEdit*>(src);
}

QMetaObject* QDateEdit_metaObject(const QDateEdit* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDateEdit_metacast(QDateEdit* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDateEdit_metacall(QDateEdit* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QDateEdit_tr(const char* s) {
	QString _ret = QDateEdit::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDateEdit_trUtf8(const char* s) {
	QString _ret = QDateEdit::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDateEdit_userDateChanged(QDateEdit* self, QDate* date) {
	self->userDateChanged(*date);
}

void QDateEdit_connect_userDateChanged(QDateEdit* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QDate& date) {
			const QDate& date_ret = date;
			// Cast returned reference into pointer
			QDate* sigval1 = const_cast<QDate*>(&date_ret);
			miqt_exec_callback_QDateEdit_userDateChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QDateEdit_userDateChanged_release(slot); }
	};
	MiqtVirtualQDateEdit::connect(self, static_cast<void (QDateEdit::*)(const QDate&)>(&QDateEdit::userDateChanged), self, caller{slot});
}

struct miqt_string QDateEdit_tr2(const char* s, const char* c) {
	QString _ret = QDateEdit::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDateEdit_tr3(const char* s, const char* c, int n) {
	QString _ret = QDateEdit::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDateEdit_trUtf82(const char* s, const char* c) {
	QString _ret = QDateEdit::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDateEdit_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QDateEdit::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QDateEdit_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const MiqtVirtualQDateEdit*)(self) )->QDateEdit::metaObject();

}

void* QDateEdit_virtualbase_metacast(void* self, const char* param1) {

	return ( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::qt_metacast(param1);

}

int QDateEdit_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QDateEdit_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const MiqtVirtualQDateEdit*)(self) )->QDateEdit::sizeHint());

}

void QDateEdit_virtualbase_clear(void* self) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::clear();

}

void QDateEdit_virtualbase_stepBy(void* self, int steps) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::stepBy(static_cast<int>(steps));

}

bool QDateEdit_virtualbase_event(void* self, QEvent* event) {

	return ( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::event(event);

}

void QDateEdit_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::keyPressEvent(event);

}

void QDateEdit_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::wheelEvent(event);

}

void QDateEdit_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::focusInEvent(event);

}

bool QDateEdit_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::focusNextPrevChild(next);

}

int QDateEdit_virtualbase_validate(const void* self, struct miqt_string input, int* pos) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	QValidator::State _ret = ( (const MiqtVirtualQDateEdit*)(self) )->QDateEdit::validate(input_QString, static_cast<int&>(*pos));
	return static_cast<int>(_ret);

}

void QDateEdit_virtualbase_fixup(const void* self, struct miqt_string input) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	( (const MiqtVirtualQDateEdit*)(self) )->QDateEdit::fixup(input_QString);

}

QDateTime* QDateEdit_virtualbase_dateTimeFromText(const void* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);

	return new QDateTime(( (const MiqtVirtualQDateEdit*)(self) )->QDateEdit::dateTimeFromText(text_QString));

}

struct miqt_string QDateEdit_virtualbase_textFromDateTime(const void* self, QDateTime* dt) {

	QString _ret = ( (const MiqtVirtualQDateEdit*)(self) )->QDateEdit::textFromDateTime(*dt);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;

}

int QDateEdit_virtualbase_stepEnabled(const void* self) {

	MiqtVirtualQDateEdit::StepEnabled _ret = ( (const MiqtVirtualQDateEdit*)(self) )->QDateEdit::stepEnabled();
	return static_cast<int>(_ret);

}

void QDateEdit_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::mousePressEvent(event);

}

void QDateEdit_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::paintEvent(event);

}

QSize* QDateEdit_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const MiqtVirtualQDateEdit*)(self) )->QDateEdit::minimumSizeHint());

}

QVariant* QDateEdit_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const MiqtVirtualQDateEdit*)(self) )->QDateEdit::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

void QDateEdit_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::resizeEvent(event);

}

void QDateEdit_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::keyReleaseEvent(event);

}

void QDateEdit_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::focusOutEvent(event);

}

void QDateEdit_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::contextMenuEvent(event);

}

void QDateEdit_virtualbase_changeEvent(void* self, QEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::changeEvent(event);

}

void QDateEdit_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::closeEvent(event);

}

void QDateEdit_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::hideEvent(event);

}

void QDateEdit_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::mouseReleaseEvent(event);

}

void QDateEdit_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::mouseMoveEvent(event);

}

void QDateEdit_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::timerEvent(event);

}

void QDateEdit_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::showEvent(event);

}

int QDateEdit_virtualbase_devType(const void* self) {

	return ( (const MiqtVirtualQDateEdit*)(self) )->QDateEdit::devType();

}

void QDateEdit_virtualbase_setVisible(void* self, bool visible) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::setVisible(visible);

}

int QDateEdit_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const MiqtVirtualQDateEdit*)(self) )->QDateEdit::heightForWidth(static_cast<int>(param1));

}

bool QDateEdit_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const MiqtVirtualQDateEdit*)(self) )->QDateEdit::hasHeightForWidth();

}

QPaintEngine* QDateEdit_virtualbase_paintEngine(const void* self) {

	return ( (const MiqtVirtualQDateEdit*)(self) )->QDateEdit::paintEngine();

}

void QDateEdit_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::mouseDoubleClickEvent(event);

}

void QDateEdit_virtualbase_enterEvent(void* self, QEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::enterEvent(event);

}

void QDateEdit_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::leaveEvent(event);

}

void QDateEdit_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::moveEvent(event);

}

void QDateEdit_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::tabletEvent(event);

}

void QDateEdit_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::actionEvent(event);

}

void QDateEdit_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::dragEnterEvent(event);

}

void QDateEdit_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::dragMoveEvent(event);

}

void QDateEdit_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::dragLeaveEvent(event);

}

void QDateEdit_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::dropEvent(event);

}

bool QDateEdit_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

}

int QDateEdit_virtualbase_metric(const void* self, int param1) {

	return ( (const MiqtVirtualQDateEdit*)(self) )->QDateEdit::metric(static_cast<MiqtVirtualQDateEdit::PaintDeviceMetric>(param1));

}

void QDateEdit_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const MiqtVirtualQDateEdit*)(self) )->QDateEdit::initPainter(painter);

}

QPaintDevice* QDateEdit_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const MiqtVirtualQDateEdit*)(self) )->QDateEdit::redirected(offset);

}

QPainter* QDateEdit_virtualbase_sharedPainter(const void* self) {

	return ( (const MiqtVirtualQDateEdit*)(self) )->QDateEdit::sharedPainter();

}

void QDateEdit_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::inputMethodEvent(param1);

}

bool QDateEdit_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::eventFilter(watched, event);

}

void QDateEdit_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::childEvent(event);

}

void QDateEdit_virtualbase_customEvent(void* self, QEvent* event) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::customEvent(event);

}

void QDateEdit_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::connectNotify(*signal);

}

void QDateEdit_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (MiqtVirtualQDateEdit*)(self) )->QDateEdit::disconnectNotify(*signal);

}

const QMetaObject* QDateEdit_staticMetaObject() { return &QDateEdit::staticMetaObject; }
void QDateEdit_protectedbase_initStyleOption(const void* self, QStyleOptionSpinBox* option) {
	MiqtVirtualQDateEdit* self_cast = static_cast<MiqtVirtualQDateEdit*>( (QDateEdit*)(self) );
	
	self_cast->initStyleOption(option);

}

QLineEdit* QDateEdit_protectedbase_lineEdit(const void* self) {
	MiqtVirtualQDateEdit* self_cast = static_cast<MiqtVirtualQDateEdit*>( (QDateEdit*)(self) );
	
	return self_cast->lineEdit();

}

void QDateEdit_protectedbase_setLineEdit(void* self, QLineEdit* edit) {
	MiqtVirtualQDateEdit* self_cast = static_cast<MiqtVirtualQDateEdit*>( (QDateEdit*)(self) );
	
	self_cast->setLineEdit(edit);

}

void QDateEdit_protectedbase_updateMicroFocus(void* self) {
	MiqtVirtualQDateEdit* self_cast = static_cast<MiqtVirtualQDateEdit*>( (QDateEdit*)(self) );
	
	self_cast->updateMicroFocus();

}

void QDateEdit_protectedbase_create(void* self) {
	MiqtVirtualQDateEdit* self_cast = static_cast<MiqtVirtualQDateEdit*>( (QDateEdit*)(self) );
	
	self_cast->create();

}

void QDateEdit_protectedbase_destroy(void* self) {
	MiqtVirtualQDateEdit* self_cast = static_cast<MiqtVirtualQDateEdit*>( (QDateEdit*)(self) );
	
	self_cast->destroy();

}

bool QDateEdit_protectedbase_focusNextChild(void* self) {
	MiqtVirtualQDateEdit* self_cast = static_cast<MiqtVirtualQDateEdit*>( (QDateEdit*)(self) );
	
	return self_cast->focusNextChild();

}

bool QDateEdit_protectedbase_focusPreviousChild(void* self) {
	MiqtVirtualQDateEdit* self_cast = static_cast<MiqtVirtualQDateEdit*>( (QDateEdit*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QDateEdit_protectedbase_sender(const void* self) {
	MiqtVirtualQDateEdit* self_cast = static_cast<MiqtVirtualQDateEdit*>( (QDateEdit*)(self) );
	
	return self_cast->sender();

}

int QDateEdit_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQDateEdit* self_cast = static_cast<MiqtVirtualQDateEdit*>( (QDateEdit*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QDateEdit_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQDateEdit* self_cast = static_cast<MiqtVirtualQDateEdit*>( (QDateEdit*)(self) );
	
	return self_cast->receivers(signal);

}

bool QDateEdit_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQDateEdit* self_cast = static_cast<MiqtVirtualQDateEdit*>( (QDateEdit*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QDateEdit_delete(QDateEdit* self) {
	delete self;
}

