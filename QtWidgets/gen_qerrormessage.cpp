#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDialog>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEnterEvent>
#include <QErrorMessage>
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
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
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qerrormessage.h>
#include "gen_qerrormessage.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQErrorMessage final : public QErrorMessage {
	struct QErrorMessage_VTable* vtbl;
public:

	MiqtVirtualQErrorMessage(struct QErrorMessage_VTable* vtbl, QWidget* parent): QErrorMessage(parent), vtbl(vtbl) {};
	MiqtVirtualQErrorMessage(struct QErrorMessage_VTable* vtbl): QErrorMessage(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQErrorMessage() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QErrorMessage::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QErrorMessage::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QErrorMessage::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QErrorMessage::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QErrorMessage::qt_metacall(param1, param2, param3);
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

		return QErrorMessage::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void done(int param1) override {
		if (vtbl->done == 0) {
			QErrorMessage::done(param1);
			return;
		}

		int sigval1 = param1;

		vtbl->done(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_done(int param1) {

		QErrorMessage::done(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QErrorMessage::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* e) {

		QErrorMessage::changeEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QErrorMessage::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QErrorMessage::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QErrorMessage::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QErrorMessage::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QErrorMessage::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QErrorMessage::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual void open() override {
		if (vtbl->open == 0) {
			QErrorMessage::open();
			return;
		}


		vtbl->open(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_open() {

		QErrorMessage::open();

	}

	// Subclass to allow providing a Go implementation
	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QErrorMessage::exec();
		}


		int callback_return_value = vtbl->exec(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_exec() {

		return QErrorMessage::exec();

	}

	// Subclass to allow providing a Go implementation
	virtual void accept() override {
		if (vtbl->accept == 0) {
			QErrorMessage::accept();
			return;
		}


		vtbl->accept(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_accept() {

		QErrorMessage::accept();

	}

	// Subclass to allow providing a Go implementation
	virtual void reject() override {
		if (vtbl->reject == 0) {
			QErrorMessage::reject();
			return;
		}


		vtbl->reject(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_reject() {

		QErrorMessage::reject();

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QErrorMessage::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* param1) {

		QErrorMessage::keyPressEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QErrorMessage::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* param1) {

		QErrorMessage::closeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QErrorMessage::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* param1) {

		QErrorMessage::showEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QErrorMessage::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* param1) {

		QErrorMessage::resizeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QErrorMessage::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* param1) {

		QErrorMessage::contextMenuEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QErrorMessage::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* param1, QEvent* param2) {

		return QErrorMessage::eventFilter(param1, param2);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QErrorMessage::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QErrorMessage::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QErrorMessage::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QErrorMessage::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QErrorMessage::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QErrorMessage::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QErrorMessage::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QErrorMessage::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QErrorMessage::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QErrorMessage::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QErrorMessage::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QErrorMessage::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QErrorMessage::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QErrorMessage::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QErrorMessage::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QErrorMessage::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QErrorMessage::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QErrorMessage::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QErrorMessage::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QErrorMessage::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QErrorMessage::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QErrorMessage::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QErrorMessage::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QErrorMessage::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QErrorMessage::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QErrorMessage::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QErrorMessage::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEnterEvent* event) {

		QErrorMessage::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QErrorMessage::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QErrorMessage::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QErrorMessage::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* event) {

		QErrorMessage::paintEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QErrorMessage::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QErrorMessage::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QErrorMessage::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QErrorMessage::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QErrorMessage::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QErrorMessage::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QErrorMessage::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QErrorMessage::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QErrorMessage::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QErrorMessage::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QErrorMessage::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QErrorMessage::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QErrorMessage::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QErrorMessage::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QErrorMessage::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QErrorMessage::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QErrorMessage::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		qintptr* result_ret = result;
		intptr_t* sigval3 = (intptr_t*)(result_ret);

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_nativeEvent(struct miqt_string eventType, void* message, intptr_t* result) {
		QByteArray eventType_QByteArray(eventType.data, eventType.len);

		return QErrorMessage::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QErrorMessage::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QErrorMessage::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QErrorMessage::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QErrorMessage::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QErrorMessage::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QErrorMessage::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QErrorMessage::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QErrorMessage::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QErrorMessage::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QErrorMessage::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QErrorMessage::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QErrorMessage::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QErrorMessage::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QErrorMessage::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QErrorMessage::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QErrorMessage::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QErrorMessage::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QErrorMessage::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QErrorMessage::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QErrorMessage::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QErrorMessage::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QErrorMessage::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QErrorMessage::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QErrorMessage::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QErrorMessage_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1);
	friend void QErrorMessage_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QErrorMessage_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QErrorMessage_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QErrorMessage_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QErrorMessage_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QErrorMessage_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QErrorMessage_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QErrorMessage_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QErrorMessage_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QErrorMessage* QErrorMessage_new(struct QErrorMessage_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQErrorMessage(vtbl, parent);
}

QErrorMessage* QErrorMessage_new2(struct QErrorMessage_VTable* vtbl) {
	return new MiqtVirtualQErrorMessage(vtbl);
}

void QErrorMessage_virtbase(QErrorMessage* src, QDialog** outptr_QDialog) {
	*outptr_QDialog = static_cast<QDialog*>(src);
}

QMetaObject* QErrorMessage_metaObject(const QErrorMessage* self) {
	return (QMetaObject*) self->metaObject();
}

void* QErrorMessage_metacast(QErrorMessage* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QErrorMessage_metacall(QErrorMessage* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QErrorMessage_tr(const char* s) {
	QString _ret = QErrorMessage::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QErrorMessage* QErrorMessage_qtHandler() {
	return QErrorMessage::qtHandler();
}

void QErrorMessage_showMessage(QErrorMessage* self, struct miqt_string message) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	self->showMessage(message_QString);
}

void QErrorMessage_showMessage2(QErrorMessage* self, struct miqt_string message, struct miqt_string type) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	QString type_QString = QString::fromUtf8(type.data, type.len);
	self->showMessage(message_QString, type_QString);
}

struct miqt_string QErrorMessage_tr2(const char* s, const char* c) {
	QString _ret = QErrorMessage::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QErrorMessage_tr3(const char* s, const char* c, int n) {
	QString _ret = QErrorMessage::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QErrorMessage_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQErrorMessage*)(self) )->virtualbase_metaObject();
}

void* QErrorMessage_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_metacast(param1);
}

int QErrorMessage_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QErrorMessage_virtualbase_done(void* self, int param1) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_done(param1);
}

void QErrorMessage_virtualbase_changeEvent(void* self, QEvent* e) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_changeEvent(e);
}

void QErrorMessage_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_setVisible(visible);
}

QSize* QErrorMessage_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQErrorMessage*)(self) )->virtualbase_sizeHint();
}

QSize* QErrorMessage_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQErrorMessage*)(self) )->virtualbase_minimumSizeHint();
}

void QErrorMessage_virtualbase_open(void* self) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_open();
}

int QErrorMessage_virtualbase_exec(void* self) {
	return ( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_exec();
}

void QErrorMessage_virtualbase_accept(void* self) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_accept();
}

void QErrorMessage_virtualbase_reject(void* self) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_reject();
}

void QErrorMessage_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_keyPressEvent(param1);
}

void QErrorMessage_virtualbase_closeEvent(void* self, QCloseEvent* param1) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_closeEvent(param1);
}

void QErrorMessage_virtualbase_showEvent(void* self, QShowEvent* param1) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_showEvent(param1);
}

void QErrorMessage_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_resizeEvent(param1);
}

void QErrorMessage_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_contextMenuEvent(param1);
}

bool QErrorMessage_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2) {
	return ( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_eventFilter(param1, param2);
}

int QErrorMessage_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQErrorMessage*)(self) )->virtualbase_devType();
}

int QErrorMessage_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQErrorMessage*)(self) )->virtualbase_heightForWidth(param1);
}

bool QErrorMessage_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQErrorMessage*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QErrorMessage_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQErrorMessage*)(self) )->virtualbase_paintEngine();
}

bool QErrorMessage_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_event(event);
}

void QErrorMessage_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_mousePressEvent(event);
}

void QErrorMessage_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QErrorMessage_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QErrorMessage_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QErrorMessage_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_wheelEvent(event);
}

void QErrorMessage_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QErrorMessage_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_focusInEvent(event);
}

void QErrorMessage_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_focusOutEvent(event);
}

void QErrorMessage_virtualbase_enterEvent(void* self, QEnterEvent* event) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_enterEvent(event);
}

void QErrorMessage_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_leaveEvent(event);
}

void QErrorMessage_virtualbase_paintEvent(void* self, QPaintEvent* event) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_paintEvent(event);
}

void QErrorMessage_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_moveEvent(event);
}

void QErrorMessage_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_tabletEvent(event);
}

void QErrorMessage_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_actionEvent(event);
}

void QErrorMessage_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_dragEnterEvent(event);
}

void QErrorMessage_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_dragMoveEvent(event);
}

void QErrorMessage_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QErrorMessage_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_dropEvent(event);
}

void QErrorMessage_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_hideEvent(event);
}

bool QErrorMessage_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	return ( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

int QErrorMessage_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQErrorMessage*)(self) )->virtualbase_metric(param1);
}

void QErrorMessage_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQErrorMessage*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QErrorMessage_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQErrorMessage*)(self) )->virtualbase_redirected(offset);
}

QPainter* QErrorMessage_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQErrorMessage*)(self) )->virtualbase_sharedPainter();
}

void QErrorMessage_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QErrorMessage_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQErrorMessage*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QErrorMessage_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_focusNextPrevChild(next);
}

void QErrorMessage_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_timerEvent(event);
}

void QErrorMessage_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_childEvent(event);
}

void QErrorMessage_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_customEvent(event);
}

void QErrorMessage_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_connectNotify(signal);
}

void QErrorMessage_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQErrorMessage*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QErrorMessage_staticMetaObject() { return &QErrorMessage::staticMetaObject; }
void QErrorMessage_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1) {
	MiqtVirtualQErrorMessage* self_cast = dynamic_cast<MiqtVirtualQErrorMessage*>( (QErrorMessage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->adjustPosition(param1);

}

void QErrorMessage_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQErrorMessage* self_cast = dynamic_cast<MiqtVirtualQErrorMessage*>( (QErrorMessage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QErrorMessage_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQErrorMessage* self_cast = dynamic_cast<MiqtVirtualQErrorMessage*>( (QErrorMessage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QErrorMessage_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQErrorMessage* self_cast = dynamic_cast<MiqtVirtualQErrorMessage*>( (QErrorMessage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QErrorMessage_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQErrorMessage* self_cast = dynamic_cast<MiqtVirtualQErrorMessage*>( (QErrorMessage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QErrorMessage_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQErrorMessage* self_cast = dynamic_cast<MiqtVirtualQErrorMessage*>( (QErrorMessage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QErrorMessage_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQErrorMessage* self_cast = dynamic_cast<MiqtVirtualQErrorMessage*>( (QErrorMessage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QErrorMessage_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQErrorMessage* self_cast = dynamic_cast<MiqtVirtualQErrorMessage*>( (QErrorMessage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QErrorMessage_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	MiqtVirtualQErrorMessage* self_cast = dynamic_cast<MiqtVirtualQErrorMessage*>( (QErrorMessage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QErrorMessage_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	MiqtVirtualQErrorMessage* self_cast = dynamic_cast<MiqtVirtualQErrorMessage*>( (QErrorMessage*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QErrorMessage_delete(QErrorMessage* self) {
	delete self;
}

