#include <QAbstractSpinBox>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDoubleSpinBox>
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
#include <QSpinBox>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionSpinBox>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qspinbox.h>
#include "gen_qspinbox.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QSpinBox_valueChanged(intptr_t, int);
void miqt_exec_callback_QSpinBox_textChanged(intptr_t, struct miqt_string);
void miqt_exec_callback_QSpinBox_valueChangedWithQString(intptr_t, struct miqt_string);
void miqt_exec_callback_QDoubleSpinBox_valueChanged(intptr_t, double);
void miqt_exec_callback_QDoubleSpinBox_textChanged(intptr_t, struct miqt_string);
void miqt_exec_callback_QDoubleSpinBox_valueChangedWithQString(intptr_t, struct miqt_string);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQSpinBox final : public QSpinBox {
	struct QSpinBox_VTable* vtbl;
public:

	MiqtVirtualQSpinBox(struct QSpinBox_VTable* vtbl, QWidget* parent): QSpinBox(parent), vtbl(vtbl) {};
	MiqtVirtualQSpinBox(struct QSpinBox_VTable* vtbl): QSpinBox(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSpinBox() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSpinBox::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QSpinBox::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSpinBox::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QSpinBox::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSpinBox::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metacall(int param1, int param2, void** param3) {

		return QSpinBox::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSpinBox::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QSpinBox::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual QValidator::State validate(QString& input, int& pos) const override {
		if (vtbl->validate == 0) {
			return QSpinBox::validate(input, pos);
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

	// Wrapper to allow calling protected method
	int virtualbase_validate(struct miqt_string input, int* pos) const {
		QString input_QString = QString::fromUtf8(input.data, input.len);

		QValidator::State _ret = QSpinBox::validate(input_QString, static_cast<int&>(*pos));
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual int valueFromText(const QString& text) const override {
		if (vtbl->valueFromText == 0) {
			return QSpinBox::valueFromText(text);
		}

		const QString text_ret = text;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray text_b = text_ret.toUtf8();
		struct miqt_string text_ms;
		text_ms.len = text_b.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_b.data(), text_ms.len);
		struct miqt_string sigval1 = text_ms;

		int callback_return_value = vtbl->valueFromText(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_valueFromText(struct miqt_string text) const {
		QString text_QString = QString::fromUtf8(text.data, text.len);

		return QSpinBox::valueFromText(text_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual QString textFromValue(int val) const override {
		if (vtbl->textFromValue == 0) {
			return QSpinBox::textFromValue(val);
		}

		int sigval1 = val;

		struct miqt_string callback_return_value = vtbl->textFromValue(vtbl, this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);

		return callback_return_value_QString;
	}

	// Wrapper to allow calling protected method
	struct miqt_string virtualbase_textFromValue(int val) const {

		QString _ret = QSpinBox::textFromValue(static_cast<int>(val));
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _b = _ret.toUtf8();
		struct miqt_string _ms;
		_ms.len = _b.length();
		_ms.data = static_cast<char*>(malloc(_ms.len));
		memcpy(_ms.data, _b.data(), _ms.len);
		return _ms;

	}

	// Subclass to allow providing a Go implementation
	virtual void fixup(QString& str) const override {
		if (vtbl->fixup == 0) {
			QSpinBox::fixup(str);
			return;
		}

		QString str_ret = str;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray str_b = str_ret.toUtf8();
		struct miqt_string str_ms;
		str_ms.len = str_b.length();
		str_ms.data = static_cast<char*>(malloc(str_ms.len));
		memcpy(str_ms.data, str_b.data(), str_ms.len);
		struct miqt_string sigval1 = str_ms;

		vtbl->fixup(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_fixup(struct miqt_string str) const {
		QString str_QString = QString::fromUtf8(str.data, str.len);

		QSpinBox::fixup(str_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QSpinBox::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QSpinBox::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QSpinBox::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QSpinBox::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QSpinBox::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QSpinBox::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual void stepBy(int steps) override {
		if (vtbl->stepBy == 0) {
			QSpinBox::stepBy(steps);
			return;
		}

		int sigval1 = steps;

		vtbl->stepBy(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_stepBy(int steps) {

		QSpinBox::stepBy(static_cast<int>(steps));

	}

	// Subclass to allow providing a Go implementation
	virtual void clear() override {
		if (vtbl->clear == 0) {
			QSpinBox::clear();
			return;
		}


		vtbl->clear(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_clear() {

		QSpinBox::clear();

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QSpinBox::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* event) {

		QSpinBox::resizeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QSpinBox::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QSpinBox::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QSpinBox::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QSpinBox::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QSpinBox::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QSpinBox::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QSpinBox::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QSpinBox::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QSpinBox::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QSpinBox::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QSpinBox::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* event) {

		QSpinBox::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QSpinBox::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* event) {

		QSpinBox::changeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QSpinBox::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QSpinBox::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QSpinBox::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QSpinBox::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QSpinBox::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QSpinBox::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QSpinBox::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QSpinBox::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QSpinBox::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QSpinBox::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSpinBox::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QSpinBox::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QSpinBox::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* event) {

		QSpinBox::paintEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QSpinBox::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QSpinBox::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual QAbstractSpinBox::StepEnabled stepEnabled() const override {
		if (vtbl->stepEnabled == 0) {
			return QSpinBox::stepEnabled();
		}


		int callback_return_value = vtbl->stepEnabled(vtbl, this);

		return static_cast<QAbstractSpinBox::StepEnabled>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_stepEnabled() const {

		QAbstractSpinBox::StepEnabled _ret = QSpinBox::stepEnabled();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QSpinBox::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QSpinBox::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QSpinBox::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QSpinBox::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QSpinBox::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QSpinBox::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QSpinBox::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QSpinBox::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QSpinBox::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QSpinBox::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QSpinBox::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QSpinBox::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QSpinBox::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEvent* event) {

		QSpinBox::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QSpinBox::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QSpinBox::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QSpinBox::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QSpinBox::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QSpinBox::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QSpinBox::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QSpinBox::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QSpinBox::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QSpinBox::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QSpinBox::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QSpinBox::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QSpinBox::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QSpinBox::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QSpinBox::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QSpinBox::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QSpinBox::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QSpinBox::nativeEvent(eventType, message, result);
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

	// Wrapper to allow calling protected method
	bool virtualbase_nativeEvent(struct miqt_string eventType, void* message, long* result) {
		QByteArray eventType_QByteArray(eventType.data, eventType.len);

		return QSpinBox::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QSpinBox::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QSpinBox::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QSpinBox::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QSpinBox::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QSpinBox::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QSpinBox::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QSpinBox::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QSpinBox::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QSpinBox::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QSpinBox::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QSpinBox::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QSpinBox::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSpinBox::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QSpinBox::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSpinBox::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QSpinBox::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSpinBox::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QSpinBox::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSpinBox::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QSpinBox::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSpinBox::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QSpinBox::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QSpinBox_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionSpinBox* option);
	friend QLineEdit* QSpinBox_protectedbase_lineEdit(bool* _dynamic_cast_ok, const void* self);
	friend void QSpinBox_protectedbase_setLineEdit(bool* _dynamic_cast_ok, void* self, QLineEdit* edit);
	friend void QSpinBox_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QSpinBox_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QSpinBox_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QSpinBox_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QSpinBox_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QSpinBox_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QSpinBox_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QSpinBox_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QSpinBox_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QSpinBox* QSpinBox_new(struct QSpinBox_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQSpinBox(vtbl, parent);
}

QSpinBox* QSpinBox_new2(struct QSpinBox_VTable* vtbl) {
	return new MiqtVirtualQSpinBox(vtbl);
}

void QSpinBox_virtbase(QSpinBox* src, QAbstractSpinBox** outptr_QAbstractSpinBox) {
	*outptr_QAbstractSpinBox = static_cast<QAbstractSpinBox*>(src);
}

QMetaObject* QSpinBox_metaObject(const QSpinBox* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSpinBox_metacast(QSpinBox* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSpinBox_metacall(QSpinBox* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSpinBox_tr(const char* s) {
	QString _ret = QSpinBox::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSpinBox_trUtf8(const char* s) {
	QString _ret = QSpinBox::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QSpinBox_value(const QSpinBox* self) {
	return self->value();
}

struct miqt_string QSpinBox_prefix(const QSpinBox* self) {
	QString _ret = self->prefix();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSpinBox_setPrefix(QSpinBox* self, struct miqt_string prefix) {
	QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);
	self->setPrefix(prefix_QString);
}

struct miqt_string QSpinBox_suffix(const QSpinBox* self) {
	QString _ret = self->suffix();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSpinBox_setSuffix(QSpinBox* self, struct miqt_string suffix) {
	QString suffix_QString = QString::fromUtf8(suffix.data, suffix.len);
	self->setSuffix(suffix_QString);
}

struct miqt_string QSpinBox_cleanText(const QSpinBox* self) {
	QString _ret = self->cleanText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QSpinBox_singleStep(const QSpinBox* self) {
	return self->singleStep();
}

void QSpinBox_setSingleStep(QSpinBox* self, int val) {
	self->setSingleStep(static_cast<int>(val));
}

int QSpinBox_minimum(const QSpinBox* self) {
	return self->minimum();
}

void QSpinBox_setMinimum(QSpinBox* self, int min) {
	self->setMinimum(static_cast<int>(min));
}

int QSpinBox_maximum(const QSpinBox* self) {
	return self->maximum();
}

void QSpinBox_setMaximum(QSpinBox* self, int max) {
	self->setMaximum(static_cast<int>(max));
}

void QSpinBox_setRange(QSpinBox* self, int min, int max) {
	self->setRange(static_cast<int>(min), static_cast<int>(max));
}

int QSpinBox_stepType(const QSpinBox* self) {
	QAbstractSpinBox::StepType _ret = self->stepType();
	return static_cast<int>(_ret);
}

void QSpinBox_setStepType(QSpinBox* self, int stepType) {
	self->setStepType(static_cast<QAbstractSpinBox::StepType>(stepType));
}

int QSpinBox_displayIntegerBase(const QSpinBox* self) {
	return self->displayIntegerBase();
}

void QSpinBox_setDisplayIntegerBase(QSpinBox* self, int base) {
	self->setDisplayIntegerBase(static_cast<int>(base));
}

void QSpinBox_setValue(QSpinBox* self, int val) {
	self->setValue(static_cast<int>(val));
}

void QSpinBox_valueChanged(QSpinBox* self, int param1) {
	self->valueChanged(static_cast<int>(param1));
}

void QSpinBox_connect_valueChanged(QSpinBox* self, intptr_t slot) {
	MiqtVirtualQSpinBox::connect(self, static_cast<void (QSpinBox::*)(int)>(&QSpinBox::valueChanged), self, [=](int param1) {
		int sigval1 = param1;
		miqt_exec_callback_QSpinBox_valueChanged(slot, sigval1);
	});
}

void QSpinBox_textChanged(QSpinBox* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->textChanged(param1_QString);
}

void QSpinBox_connect_textChanged(QSpinBox* self, intptr_t slot) {
	MiqtVirtualQSpinBox::connect(self, static_cast<void (QSpinBox::*)(const QString&)>(&QSpinBox::textChanged), self, [=](const QString& param1) {
		const QString param1_ret = param1;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray param1_b = param1_ret.toUtf8();
		struct miqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct miqt_string sigval1 = param1_ms;
		miqt_exec_callback_QSpinBox_textChanged(slot, sigval1);
	});
}

void QSpinBox_valueChangedWithQString(QSpinBox* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->valueChanged(param1_QString);
}

void QSpinBox_connect_valueChangedWithQString(QSpinBox* self, intptr_t slot) {
	MiqtVirtualQSpinBox::connect(self, static_cast<void (QSpinBox::*)(const QString&)>(&QSpinBox::valueChanged), self, [=](const QString& param1) {
		const QString param1_ret = param1;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray param1_b = param1_ret.toUtf8();
		struct miqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct miqt_string sigval1 = param1_ms;
		miqt_exec_callback_QSpinBox_valueChangedWithQString(slot, sigval1);
	});
}

struct miqt_string QSpinBox_tr2(const char* s, const char* c) {
	QString _ret = QSpinBox::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSpinBox_tr3(const char* s, const char* c, int n) {
	QString _ret = QSpinBox::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSpinBox_trUtf82(const char* s, const char* c) {
	QString _ret = QSpinBox::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSpinBox_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSpinBox::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSpinBox_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQSpinBox*)(self) )->virtualbase_metaObject();
}

void* QSpinBox_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQSpinBox*)(self) )->virtualbase_metacast(param1);
}

int QSpinBox_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQSpinBox*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QSpinBox_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQSpinBox*)(self) )->virtualbase_event(event);
}

int QSpinBox_virtualbase_validate(const void* self, struct miqt_string input, int* pos) {
	return ( (const MiqtVirtualQSpinBox*)(self) )->virtualbase_validate(input, pos);
}

int QSpinBox_virtualbase_valueFromText(const void* self, struct miqt_string text) {
	return ( (const MiqtVirtualQSpinBox*)(self) )->virtualbase_valueFromText(text);
}

struct miqt_string QSpinBox_virtualbase_textFromValue(const void* self, int val) {
	return ( (const MiqtVirtualQSpinBox*)(self) )->virtualbase_textFromValue(val);
}

void QSpinBox_virtualbase_fixup(const void* self, struct miqt_string str) {
	( (const MiqtVirtualQSpinBox*)(self) )->virtualbase_fixup(str);
}

QSize* QSpinBox_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQSpinBox*)(self) )->virtualbase_sizeHint();
}

QSize* QSpinBox_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQSpinBox*)(self) )->virtualbase_minimumSizeHint();
}

QVariant* QSpinBox_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQSpinBox*)(self) )->virtualbase_inputMethodQuery(param1);
}

void QSpinBox_virtualbase_stepBy(void* self, int steps) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_stepBy(steps);
}

void QSpinBox_virtualbase_clear(void* self) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_clear();
}

void QSpinBox_virtualbase_resizeEvent(void* self, QResizeEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_resizeEvent(event);
}

void QSpinBox_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_keyPressEvent(event);
}

void QSpinBox_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QSpinBox_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_wheelEvent(event);
}

void QSpinBox_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_focusInEvent(event);
}

void QSpinBox_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_focusOutEvent(event);
}

void QSpinBox_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_contextMenuEvent(event);
}

void QSpinBox_virtualbase_changeEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_changeEvent(event);
}

void QSpinBox_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_closeEvent(event);
}

void QSpinBox_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_hideEvent(event);
}

void QSpinBox_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_mousePressEvent(event);
}

void QSpinBox_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QSpinBox_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QSpinBox_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_timerEvent(event);
}

void QSpinBox_virtualbase_paintEvent(void* self, QPaintEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_paintEvent(event);
}

void QSpinBox_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_showEvent(event);
}

int QSpinBox_virtualbase_stepEnabled(const void* self) {
	return ( (const MiqtVirtualQSpinBox*)(self) )->virtualbase_stepEnabled();
}

int QSpinBox_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQSpinBox*)(self) )->virtualbase_devType();
}

void QSpinBox_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_setVisible(visible);
}

int QSpinBox_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQSpinBox*)(self) )->virtualbase_heightForWidth(param1);
}

bool QSpinBox_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQSpinBox*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QSpinBox_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQSpinBox*)(self) )->virtualbase_paintEngine();
}

void QSpinBox_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QSpinBox_virtualbase_enterEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_enterEvent(event);
}

void QSpinBox_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_leaveEvent(event);
}

void QSpinBox_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_moveEvent(event);
}

void QSpinBox_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_tabletEvent(event);
}

void QSpinBox_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_actionEvent(event);
}

void QSpinBox_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_dragEnterEvent(event);
}

void QSpinBox_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_dragMoveEvent(event);
}

void QSpinBox_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QSpinBox_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_dropEvent(event);
}

bool QSpinBox_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	return ( (MiqtVirtualQSpinBox*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

int QSpinBox_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQSpinBox*)(self) )->virtualbase_metric(param1);
}

void QSpinBox_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQSpinBox*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QSpinBox_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQSpinBox*)(self) )->virtualbase_redirected(offset);
}

QPainter* QSpinBox_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQSpinBox*)(self) )->virtualbase_sharedPainter();
}

void QSpinBox_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_inputMethodEvent(param1);
}

bool QSpinBox_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQSpinBox*)(self) )->virtualbase_focusNextPrevChild(next);
}

bool QSpinBox_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQSpinBox*)(self) )->virtualbase_eventFilter(watched, event);
}

void QSpinBox_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_childEvent(event);
}

void QSpinBox_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_customEvent(event);
}

void QSpinBox_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_connectNotify(signal);
}

void QSpinBox_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSpinBox*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QSpinBox_staticMetaObject() { return &QSpinBox::staticMetaObject; }
void QSpinBox_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionSpinBox* option) {
	MiqtVirtualQSpinBox* self_cast = dynamic_cast<MiqtVirtualQSpinBox*>( (QSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->initStyleOption(option);

}

QLineEdit* QSpinBox_protectedbase_lineEdit(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQSpinBox* self_cast = dynamic_cast<MiqtVirtualQSpinBox*>( (QSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->lineEdit();

}

void QSpinBox_protectedbase_setLineEdit(bool* _dynamic_cast_ok, void* self, QLineEdit* edit) {
	MiqtVirtualQSpinBox* self_cast = dynamic_cast<MiqtVirtualQSpinBox*>( (QSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setLineEdit(edit);

}

void QSpinBox_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQSpinBox* self_cast = dynamic_cast<MiqtVirtualQSpinBox*>( (QSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QSpinBox_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQSpinBox* self_cast = dynamic_cast<MiqtVirtualQSpinBox*>( (QSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QSpinBox_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQSpinBox* self_cast = dynamic_cast<MiqtVirtualQSpinBox*>( (QSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QSpinBox_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQSpinBox* self_cast = dynamic_cast<MiqtVirtualQSpinBox*>( (QSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QSpinBox_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQSpinBox* self_cast = dynamic_cast<MiqtVirtualQSpinBox*>( (QSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QSpinBox_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQSpinBox* self_cast = dynamic_cast<MiqtVirtualQSpinBox*>( (QSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QSpinBox_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQSpinBox* self_cast = dynamic_cast<MiqtVirtualQSpinBox*>( (QSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QSpinBox_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	MiqtVirtualQSpinBox* self_cast = dynamic_cast<MiqtVirtualQSpinBox*>( (QSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QSpinBox_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	MiqtVirtualQSpinBox* self_cast = dynamic_cast<MiqtVirtualQSpinBox*>( (QSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QSpinBox_delete(QSpinBox* self) {
	delete self;
}

class MiqtVirtualQDoubleSpinBox final : public QDoubleSpinBox {
	struct QDoubleSpinBox_VTable* vtbl;
public:

	MiqtVirtualQDoubleSpinBox(struct QDoubleSpinBox_VTable* vtbl, QWidget* parent): QDoubleSpinBox(parent), vtbl(vtbl) {};
	MiqtVirtualQDoubleSpinBox(struct QDoubleSpinBox_VTable* vtbl): QDoubleSpinBox(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQDoubleSpinBox() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDoubleSpinBox::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QDoubleSpinBox::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDoubleSpinBox::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QDoubleSpinBox::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDoubleSpinBox::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metacall(int param1, int param2, void** param3) {

		return QDoubleSpinBox::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QValidator::State validate(QString& input, int& pos) const override {
		if (vtbl->validate == 0) {
			return QDoubleSpinBox::validate(input, pos);
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

	// Wrapper to allow calling protected method
	int virtualbase_validate(struct miqt_string input, int* pos) const {
		QString input_QString = QString::fromUtf8(input.data, input.len);

		QValidator::State _ret = QDoubleSpinBox::validate(input_QString, static_cast<int&>(*pos));
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual double valueFromText(const QString& text) const override {
		if (vtbl->valueFromText == 0) {
			return QDoubleSpinBox::valueFromText(text);
		}

		const QString text_ret = text;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray text_b = text_ret.toUtf8();
		struct miqt_string text_ms;
		text_ms.len = text_b.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_b.data(), text_ms.len);
		struct miqt_string sigval1 = text_ms;

		double callback_return_value = vtbl->valueFromText(vtbl, this, sigval1);

		return static_cast<double>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	double virtualbase_valueFromText(struct miqt_string text) const {
		QString text_QString = QString::fromUtf8(text.data, text.len);

		return QDoubleSpinBox::valueFromText(text_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual QString textFromValue(double val) const override {
		if (vtbl->textFromValue == 0) {
			return QDoubleSpinBox::textFromValue(val);
		}

		double sigval1 = val;

		struct miqt_string callback_return_value = vtbl->textFromValue(vtbl, this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);

		return callback_return_value_QString;
	}

	// Wrapper to allow calling protected method
	struct miqt_string virtualbase_textFromValue(double val) const {

		QString _ret = QDoubleSpinBox::textFromValue(static_cast<double>(val));
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _b = _ret.toUtf8();
		struct miqt_string _ms;
		_ms.len = _b.length();
		_ms.data = static_cast<char*>(malloc(_ms.len));
		memcpy(_ms.data, _b.data(), _ms.len);
		return _ms;

	}

	// Subclass to allow providing a Go implementation
	virtual void fixup(QString& str) const override {
		if (vtbl->fixup == 0) {
			QDoubleSpinBox::fixup(str);
			return;
		}

		QString str_ret = str;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray str_b = str_ret.toUtf8();
		struct miqt_string str_ms;
		str_ms.len = str_b.length();
		str_ms.data = static_cast<char*>(malloc(str_ms.len));
		memcpy(str_ms.data, str_b.data(), str_ms.len);
		struct miqt_string sigval1 = str_ms;

		vtbl->fixup(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_fixup(struct miqt_string str) const {
		QString str_QString = QString::fromUtf8(str.data, str.len);

		QDoubleSpinBox::fixup(str_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QDoubleSpinBox::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QDoubleSpinBox::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QDoubleSpinBox::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QDoubleSpinBox::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDoubleSpinBox::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QDoubleSpinBox::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QDoubleSpinBox::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QDoubleSpinBox::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual void stepBy(int steps) override {
		if (vtbl->stepBy == 0) {
			QDoubleSpinBox::stepBy(steps);
			return;
		}

		int sigval1 = steps;

		vtbl->stepBy(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_stepBy(int steps) {

		QDoubleSpinBox::stepBy(static_cast<int>(steps));

	}

	// Subclass to allow providing a Go implementation
	virtual void clear() override {
		if (vtbl->clear == 0) {
			QDoubleSpinBox::clear();
			return;
		}


		vtbl->clear(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_clear() {

		QDoubleSpinBox::clear();

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QDoubleSpinBox::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* event) {

		QDoubleSpinBox::resizeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QDoubleSpinBox::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QDoubleSpinBox::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QDoubleSpinBox::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QDoubleSpinBox::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QDoubleSpinBox::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QDoubleSpinBox::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QDoubleSpinBox::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QDoubleSpinBox::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QDoubleSpinBox::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QDoubleSpinBox::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QDoubleSpinBox::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* event) {

		QDoubleSpinBox::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QDoubleSpinBox::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* event) {

		QDoubleSpinBox::changeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QDoubleSpinBox::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QDoubleSpinBox::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QDoubleSpinBox::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QDoubleSpinBox::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QDoubleSpinBox::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QDoubleSpinBox::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QDoubleSpinBox::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QDoubleSpinBox::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QDoubleSpinBox::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QDoubleSpinBox::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDoubleSpinBox::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QDoubleSpinBox::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QDoubleSpinBox::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* event) {

		QDoubleSpinBox::paintEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QDoubleSpinBox::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QDoubleSpinBox::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual QAbstractSpinBox::StepEnabled stepEnabled() const override {
		if (vtbl->stepEnabled == 0) {
			return QDoubleSpinBox::stepEnabled();
		}


		int callback_return_value = vtbl->stepEnabled(vtbl, this);

		return static_cast<QAbstractSpinBox::StepEnabled>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_stepEnabled() const {

		QAbstractSpinBox::StepEnabled _ret = QDoubleSpinBox::stepEnabled();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QDoubleSpinBox::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QDoubleSpinBox::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QDoubleSpinBox::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QDoubleSpinBox::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QDoubleSpinBox::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QDoubleSpinBox::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QDoubleSpinBox::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QDoubleSpinBox::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QDoubleSpinBox::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QDoubleSpinBox::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QDoubleSpinBox::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QDoubleSpinBox::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QDoubleSpinBox::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEvent* event) {

		QDoubleSpinBox::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QDoubleSpinBox::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QDoubleSpinBox::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QDoubleSpinBox::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QDoubleSpinBox::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QDoubleSpinBox::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QDoubleSpinBox::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QDoubleSpinBox::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QDoubleSpinBox::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QDoubleSpinBox::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QDoubleSpinBox::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QDoubleSpinBox::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QDoubleSpinBox::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QDoubleSpinBox::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QDoubleSpinBox::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QDoubleSpinBox::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QDoubleSpinBox::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QDoubleSpinBox::nativeEvent(eventType, message, result);
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

	// Wrapper to allow calling protected method
	bool virtualbase_nativeEvent(struct miqt_string eventType, void* message, long* result) {
		QByteArray eventType_QByteArray(eventType.data, eventType.len);

		return QDoubleSpinBox::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QDoubleSpinBox::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QDoubleSpinBox::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QDoubleSpinBox::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QDoubleSpinBox::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QDoubleSpinBox::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QDoubleSpinBox::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QDoubleSpinBox::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QDoubleSpinBox::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QDoubleSpinBox::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QDoubleSpinBox::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QDoubleSpinBox::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QDoubleSpinBox::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDoubleSpinBox::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QDoubleSpinBox::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDoubleSpinBox::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QDoubleSpinBox::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDoubleSpinBox::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QDoubleSpinBox::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDoubleSpinBox::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QDoubleSpinBox::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDoubleSpinBox::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QDoubleSpinBox::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QDoubleSpinBox_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionSpinBox* option);
	friend QLineEdit* QDoubleSpinBox_protectedbase_lineEdit(bool* _dynamic_cast_ok, const void* self);
	friend void QDoubleSpinBox_protectedbase_setLineEdit(bool* _dynamic_cast_ok, void* self, QLineEdit* edit);
	friend void QDoubleSpinBox_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QDoubleSpinBox_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QDoubleSpinBox_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QDoubleSpinBox_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QDoubleSpinBox_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QDoubleSpinBox_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QDoubleSpinBox_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QDoubleSpinBox_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QDoubleSpinBox_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QDoubleSpinBox* QDoubleSpinBox_new(struct QDoubleSpinBox_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQDoubleSpinBox(vtbl, parent);
}

QDoubleSpinBox* QDoubleSpinBox_new2(struct QDoubleSpinBox_VTable* vtbl) {
	return new MiqtVirtualQDoubleSpinBox(vtbl);
}

void QDoubleSpinBox_virtbase(QDoubleSpinBox* src, QAbstractSpinBox** outptr_QAbstractSpinBox) {
	*outptr_QAbstractSpinBox = static_cast<QAbstractSpinBox*>(src);
}

QMetaObject* QDoubleSpinBox_metaObject(const QDoubleSpinBox* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDoubleSpinBox_metacast(QDoubleSpinBox* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDoubleSpinBox_metacall(QDoubleSpinBox* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QDoubleSpinBox_tr(const char* s) {
	QString _ret = QDoubleSpinBox::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDoubleSpinBox_trUtf8(const char* s) {
	QString _ret = QDoubleSpinBox::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

double QDoubleSpinBox_value(const QDoubleSpinBox* self) {
	return self->value();
}

struct miqt_string QDoubleSpinBox_prefix(const QDoubleSpinBox* self) {
	QString _ret = self->prefix();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDoubleSpinBox_setPrefix(QDoubleSpinBox* self, struct miqt_string prefix) {
	QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);
	self->setPrefix(prefix_QString);
}

struct miqt_string QDoubleSpinBox_suffix(const QDoubleSpinBox* self) {
	QString _ret = self->suffix();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDoubleSpinBox_setSuffix(QDoubleSpinBox* self, struct miqt_string suffix) {
	QString suffix_QString = QString::fromUtf8(suffix.data, suffix.len);
	self->setSuffix(suffix_QString);
}

struct miqt_string QDoubleSpinBox_cleanText(const QDoubleSpinBox* self) {
	QString _ret = self->cleanText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

double QDoubleSpinBox_singleStep(const QDoubleSpinBox* self) {
	return self->singleStep();
}

void QDoubleSpinBox_setSingleStep(QDoubleSpinBox* self, double val) {
	self->setSingleStep(static_cast<double>(val));
}

double QDoubleSpinBox_minimum(const QDoubleSpinBox* self) {
	return self->minimum();
}

void QDoubleSpinBox_setMinimum(QDoubleSpinBox* self, double min) {
	self->setMinimum(static_cast<double>(min));
}

double QDoubleSpinBox_maximum(const QDoubleSpinBox* self) {
	return self->maximum();
}

void QDoubleSpinBox_setMaximum(QDoubleSpinBox* self, double max) {
	self->setMaximum(static_cast<double>(max));
}

void QDoubleSpinBox_setRange(QDoubleSpinBox* self, double min, double max) {
	self->setRange(static_cast<double>(min), static_cast<double>(max));
}

int QDoubleSpinBox_stepType(const QDoubleSpinBox* self) {
	QAbstractSpinBox::StepType _ret = self->stepType();
	return static_cast<int>(_ret);
}

void QDoubleSpinBox_setStepType(QDoubleSpinBox* self, int stepType) {
	self->setStepType(static_cast<QAbstractSpinBox::StepType>(stepType));
}

int QDoubleSpinBox_decimals(const QDoubleSpinBox* self) {
	return self->decimals();
}

void QDoubleSpinBox_setDecimals(QDoubleSpinBox* self, int prec) {
	self->setDecimals(static_cast<int>(prec));
}

int QDoubleSpinBox_validate(const QDoubleSpinBox* self, struct miqt_string input, int* pos) {
	QString input_QString = QString::fromUtf8(input.data, input.len);
	QValidator::State _ret = self->validate(input_QString, static_cast<int&>(*pos));
	return static_cast<int>(_ret);
}

double QDoubleSpinBox_valueFromText(const QDoubleSpinBox* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->valueFromText(text_QString);
}

struct miqt_string QDoubleSpinBox_textFromValue(const QDoubleSpinBox* self, double val) {
	QString _ret = self->textFromValue(static_cast<double>(val));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDoubleSpinBox_fixup(const QDoubleSpinBox* self, struct miqt_string str) {
	QString str_QString = QString::fromUtf8(str.data, str.len);
	self->fixup(str_QString);
}

void QDoubleSpinBox_setValue(QDoubleSpinBox* self, double val) {
	self->setValue(static_cast<double>(val));
}

void QDoubleSpinBox_valueChanged(QDoubleSpinBox* self, double param1) {
	self->valueChanged(static_cast<double>(param1));
}

void QDoubleSpinBox_connect_valueChanged(QDoubleSpinBox* self, intptr_t slot) {
	MiqtVirtualQDoubleSpinBox::connect(self, static_cast<void (QDoubleSpinBox::*)(double)>(&QDoubleSpinBox::valueChanged), self, [=](double param1) {
		double sigval1 = param1;
		miqt_exec_callback_QDoubleSpinBox_valueChanged(slot, sigval1);
	});
}

void QDoubleSpinBox_textChanged(QDoubleSpinBox* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->textChanged(param1_QString);
}

void QDoubleSpinBox_connect_textChanged(QDoubleSpinBox* self, intptr_t slot) {
	MiqtVirtualQDoubleSpinBox::connect(self, static_cast<void (QDoubleSpinBox::*)(const QString&)>(&QDoubleSpinBox::textChanged), self, [=](const QString& param1) {
		const QString param1_ret = param1;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray param1_b = param1_ret.toUtf8();
		struct miqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct miqt_string sigval1 = param1_ms;
		miqt_exec_callback_QDoubleSpinBox_textChanged(slot, sigval1);
	});
}

void QDoubleSpinBox_valueChangedWithQString(QDoubleSpinBox* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->valueChanged(param1_QString);
}

void QDoubleSpinBox_connect_valueChangedWithQString(QDoubleSpinBox* self, intptr_t slot) {
	MiqtVirtualQDoubleSpinBox::connect(self, static_cast<void (QDoubleSpinBox::*)(const QString&)>(&QDoubleSpinBox::valueChanged), self, [=](const QString& param1) {
		const QString param1_ret = param1;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray param1_b = param1_ret.toUtf8();
		struct miqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct miqt_string sigval1 = param1_ms;
		miqt_exec_callback_QDoubleSpinBox_valueChangedWithQString(slot, sigval1);
	});
}

struct miqt_string QDoubleSpinBox_tr2(const char* s, const char* c) {
	QString _ret = QDoubleSpinBox::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDoubleSpinBox_tr3(const char* s, const char* c, int n) {
	QString _ret = QDoubleSpinBox::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDoubleSpinBox_trUtf82(const char* s, const char* c) {
	QString _ret = QDoubleSpinBox::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDoubleSpinBox_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QDoubleSpinBox::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QDoubleSpinBox_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_metaObject();
}

void* QDoubleSpinBox_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_metacast(param1);
}

int QDoubleSpinBox_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_metacall(param1, param2, param3);
}

int QDoubleSpinBox_virtualbase_validate(const void* self, struct miqt_string input, int* pos) {
	return ( (const MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_validate(input, pos);
}

double QDoubleSpinBox_virtualbase_valueFromText(const void* self, struct miqt_string text) {
	return ( (const MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_valueFromText(text);
}

struct miqt_string QDoubleSpinBox_virtualbase_textFromValue(const void* self, double val) {
	return ( (const MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_textFromValue(val);
}

void QDoubleSpinBox_virtualbase_fixup(const void* self, struct miqt_string str) {
	( (const MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_fixup(str);
}

QSize* QDoubleSpinBox_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_sizeHint();
}

QSize* QDoubleSpinBox_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_minimumSizeHint();
}

bool QDoubleSpinBox_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_event(event);
}

QVariant* QDoubleSpinBox_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_inputMethodQuery(param1);
}

void QDoubleSpinBox_virtualbase_stepBy(void* self, int steps) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_stepBy(steps);
}

void QDoubleSpinBox_virtualbase_clear(void* self) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_clear();
}

void QDoubleSpinBox_virtualbase_resizeEvent(void* self, QResizeEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_resizeEvent(event);
}

void QDoubleSpinBox_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_keyPressEvent(event);
}

void QDoubleSpinBox_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QDoubleSpinBox_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_wheelEvent(event);
}

void QDoubleSpinBox_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_focusInEvent(event);
}

void QDoubleSpinBox_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_focusOutEvent(event);
}

void QDoubleSpinBox_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_contextMenuEvent(event);
}

void QDoubleSpinBox_virtualbase_changeEvent(void* self, QEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_changeEvent(event);
}

void QDoubleSpinBox_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_closeEvent(event);
}

void QDoubleSpinBox_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_hideEvent(event);
}

void QDoubleSpinBox_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_mousePressEvent(event);
}

void QDoubleSpinBox_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QDoubleSpinBox_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QDoubleSpinBox_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_timerEvent(event);
}

void QDoubleSpinBox_virtualbase_paintEvent(void* self, QPaintEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_paintEvent(event);
}

void QDoubleSpinBox_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_showEvent(event);
}

int QDoubleSpinBox_virtualbase_stepEnabled(const void* self) {
	return ( (const MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_stepEnabled();
}

int QDoubleSpinBox_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_devType();
}

void QDoubleSpinBox_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_setVisible(visible);
}

int QDoubleSpinBox_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_heightForWidth(param1);
}

bool QDoubleSpinBox_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QDoubleSpinBox_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_paintEngine();
}

void QDoubleSpinBox_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QDoubleSpinBox_virtualbase_enterEvent(void* self, QEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_enterEvent(event);
}

void QDoubleSpinBox_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_leaveEvent(event);
}

void QDoubleSpinBox_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_moveEvent(event);
}

void QDoubleSpinBox_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_tabletEvent(event);
}

void QDoubleSpinBox_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_actionEvent(event);
}

void QDoubleSpinBox_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_dragEnterEvent(event);
}

void QDoubleSpinBox_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_dragMoveEvent(event);
}

void QDoubleSpinBox_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QDoubleSpinBox_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_dropEvent(event);
}

bool QDoubleSpinBox_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	return ( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

int QDoubleSpinBox_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_metric(param1);
}

void QDoubleSpinBox_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QDoubleSpinBox_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_redirected(offset);
}

QPainter* QDoubleSpinBox_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_sharedPainter();
}

void QDoubleSpinBox_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_inputMethodEvent(param1);
}

bool QDoubleSpinBox_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_focusNextPrevChild(next);
}

bool QDoubleSpinBox_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_eventFilter(watched, event);
}

void QDoubleSpinBox_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_childEvent(event);
}

void QDoubleSpinBox_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_customEvent(event);
}

void QDoubleSpinBox_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_connectNotify(signal);
}

void QDoubleSpinBox_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQDoubleSpinBox*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QDoubleSpinBox_staticMetaObject() { return &QDoubleSpinBox::staticMetaObject; }
void QDoubleSpinBox_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionSpinBox* option) {
	MiqtVirtualQDoubleSpinBox* self_cast = dynamic_cast<MiqtVirtualQDoubleSpinBox*>( (QDoubleSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->initStyleOption(option);

}

QLineEdit* QDoubleSpinBox_protectedbase_lineEdit(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQDoubleSpinBox* self_cast = dynamic_cast<MiqtVirtualQDoubleSpinBox*>( (QDoubleSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->lineEdit();

}

void QDoubleSpinBox_protectedbase_setLineEdit(bool* _dynamic_cast_ok, void* self, QLineEdit* edit) {
	MiqtVirtualQDoubleSpinBox* self_cast = dynamic_cast<MiqtVirtualQDoubleSpinBox*>( (QDoubleSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setLineEdit(edit);

}

void QDoubleSpinBox_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQDoubleSpinBox* self_cast = dynamic_cast<MiqtVirtualQDoubleSpinBox*>( (QDoubleSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QDoubleSpinBox_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQDoubleSpinBox* self_cast = dynamic_cast<MiqtVirtualQDoubleSpinBox*>( (QDoubleSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QDoubleSpinBox_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQDoubleSpinBox* self_cast = dynamic_cast<MiqtVirtualQDoubleSpinBox*>( (QDoubleSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QDoubleSpinBox_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQDoubleSpinBox* self_cast = dynamic_cast<MiqtVirtualQDoubleSpinBox*>( (QDoubleSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QDoubleSpinBox_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQDoubleSpinBox* self_cast = dynamic_cast<MiqtVirtualQDoubleSpinBox*>( (QDoubleSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QDoubleSpinBox_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQDoubleSpinBox* self_cast = dynamic_cast<MiqtVirtualQDoubleSpinBox*>( (QDoubleSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QDoubleSpinBox_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQDoubleSpinBox* self_cast = dynamic_cast<MiqtVirtualQDoubleSpinBox*>( (QDoubleSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QDoubleSpinBox_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	MiqtVirtualQDoubleSpinBox* self_cast = dynamic_cast<MiqtVirtualQDoubleSpinBox*>( (QDoubleSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QDoubleSpinBox_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	MiqtVirtualQDoubleSpinBox* self_cast = dynamic_cast<MiqtVirtualQDoubleSpinBox*>( (QDoubleSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QDoubleSpinBox_delete(QDoubleSpinBox* self) {
	delete self;
}

