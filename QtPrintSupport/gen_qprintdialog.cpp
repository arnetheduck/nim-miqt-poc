#include <QAbstractPrintDialog>
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
#include <QPrintDialog>
#include <QPrinter>
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
#include <qprintdialog.h>
#include "gen_qprintdialog.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QPrintDialog_accepted(intptr_t, QPrinter*);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQPrintDialog final : public QPrintDialog {
	struct QPrintDialog_VTable* vtbl;
public:

	MiqtVirtualQPrintDialog(struct QPrintDialog_VTable* vtbl, QWidget* parent): QPrintDialog(parent), vtbl(vtbl) {};
	MiqtVirtualQPrintDialog(struct QPrintDialog_VTable* vtbl, QPrinter* printer): QPrintDialog(printer), vtbl(vtbl) {};
	MiqtVirtualQPrintDialog(struct QPrintDialog_VTable* vtbl): QPrintDialog(), vtbl(vtbl) {};
	MiqtVirtualQPrintDialog(struct QPrintDialog_VTable* vtbl, QPrinter* printer, QWidget* parent): QPrintDialog(printer, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQPrintDialog() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPrintDialog::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QPrintDialog::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPrintDialog::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QPrintDialog::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPrintDialog::qt_metacall(param1, param2, param3);
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

		return QPrintDialog::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QPrintDialog::exec();
		}


		int callback_return_value = vtbl->exec(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_exec() {

		return QPrintDialog::exec();

	}

	// Subclass to allow providing a Go implementation
	virtual void accept() override {
		if (vtbl->accept == 0) {
			QPrintDialog::accept();
			return;
		}


		vtbl->accept(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_accept() {

		QPrintDialog::accept();

	}

	// Subclass to allow providing a Go implementation
	virtual void done(int result) override {
		if (vtbl->done == 0) {
			QPrintDialog::done(result);
			return;
		}

		int sigval1 = result;

		vtbl->done(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_done(int result) {

		QPrintDialog::done(static_cast<int>(result));

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QPrintDialog::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QPrintDialog::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QPrintDialog::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QPrintDialog::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QPrintDialog::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QPrintDialog::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual void open() override {
		if (vtbl->open == 0) {
			QPrintDialog::open();
			return;
		}


		vtbl->open(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_open() {

		QPrintDialog::open();

	}

	// Subclass to allow providing a Go implementation
	virtual void reject() override {
		if (vtbl->reject == 0) {
			QPrintDialog::reject();
			return;
		}


		vtbl->reject(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_reject() {

		QPrintDialog::reject();

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QPrintDialog::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* param1) {

		QPrintDialog::keyPressEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QPrintDialog::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* param1) {

		QPrintDialog::closeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QPrintDialog::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* param1) {

		QPrintDialog::showEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QPrintDialog::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* param1) {

		QPrintDialog::resizeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QPrintDialog::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* param1) {

		QPrintDialog::contextMenuEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QPrintDialog::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* param1, QEvent* param2) {

		return QPrintDialog::eventFilter(param1, param2);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QPrintDialog::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QPrintDialog::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QPrintDialog::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QPrintDialog::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QPrintDialog::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QPrintDialog::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QPrintDialog::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QPrintDialog::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPrintDialog::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QPrintDialog::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QPrintDialog::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QPrintDialog::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QPrintDialog::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QPrintDialog::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QPrintDialog::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QPrintDialog::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QPrintDialog::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QPrintDialog::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QPrintDialog::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QPrintDialog::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QPrintDialog::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QPrintDialog::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QPrintDialog::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QPrintDialog::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QPrintDialog::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QPrintDialog::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QPrintDialog::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEnterEvent* event) {

		QPrintDialog::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QPrintDialog::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QPrintDialog::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QPrintDialog::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* event) {

		QPrintDialog::paintEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QPrintDialog::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QPrintDialog::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QPrintDialog::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QPrintDialog::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QPrintDialog::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QPrintDialog::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QPrintDialog::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QPrintDialog::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QPrintDialog::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QPrintDialog::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QPrintDialog::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QPrintDialog::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QPrintDialog::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QPrintDialog::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QPrintDialog::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QPrintDialog::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QPrintDialog::nativeEvent(eventType, message, result);
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

		return QPrintDialog::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QPrintDialog::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* param1) {

		QPrintDialog::changeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QPrintDialog::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QPrintDialog::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QPrintDialog::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QPrintDialog::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QPrintDialog::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QPrintDialog::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QPrintDialog::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QPrintDialog::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QPrintDialog::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QPrintDialog::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QPrintDialog::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QPrintDialog::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QPrintDialog::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QPrintDialog::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPrintDialog::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QPrintDialog::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPrintDialog::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QPrintDialog::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPrintDialog::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QPrintDialog::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPrintDialog::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QPrintDialog::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPrintDialog::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QPrintDialog::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QPrintDialog_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1);
	friend void QPrintDialog_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QPrintDialog_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QPrintDialog_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QPrintDialog_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QPrintDialog_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QPrintDialog_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QPrintDialog_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QPrintDialog_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QPrintDialog_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QPrintDialog* QPrintDialog_new(struct QPrintDialog_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQPrintDialog(vtbl, parent);
}

QPrintDialog* QPrintDialog_new2(struct QPrintDialog_VTable* vtbl, QPrinter* printer) {
	return new MiqtVirtualQPrintDialog(vtbl, printer);
}

QPrintDialog* QPrintDialog_new3(struct QPrintDialog_VTable* vtbl) {
	return new MiqtVirtualQPrintDialog(vtbl);
}

QPrintDialog* QPrintDialog_new4(struct QPrintDialog_VTable* vtbl, QPrinter* printer, QWidget* parent) {
	return new MiqtVirtualQPrintDialog(vtbl, printer, parent);
}

void QPrintDialog_virtbase(QPrintDialog* src, QAbstractPrintDialog** outptr_QAbstractPrintDialog) {
	*outptr_QAbstractPrintDialog = static_cast<QAbstractPrintDialog*>(src);
}

QMetaObject* QPrintDialog_metaObject(const QPrintDialog* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPrintDialog_metacast(QPrintDialog* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPrintDialog_metacall(QPrintDialog* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QPrintDialog_tr(const char* s) {
	QString _ret = QPrintDialog::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QPrintDialog_exec(QPrintDialog* self) {
	return self->exec();
}

void QPrintDialog_accept(QPrintDialog* self) {
	self->accept();
}

void QPrintDialog_done(QPrintDialog* self, int result) {
	self->done(static_cast<int>(result));
}

void QPrintDialog_setOption(QPrintDialog* self, int option) {
	self->setOption(static_cast<QAbstractPrintDialog::PrintDialogOption>(option));
}

bool QPrintDialog_testOption(const QPrintDialog* self, int option) {
	return self->testOption(static_cast<QAbstractPrintDialog::PrintDialogOption>(option));
}

void QPrintDialog_setOptions(QPrintDialog* self, int options) {
	self->setOptions(static_cast<QAbstractPrintDialog::PrintDialogOptions>(options));
}

int QPrintDialog_options(const QPrintDialog* self) {
	QAbstractPrintDialog::PrintDialogOptions _ret = self->options();
	return static_cast<int>(_ret);
}

void QPrintDialog_setVisible(QPrintDialog* self, bool visible) {
	self->setVisible(visible);
}

void QPrintDialog_accepted(QPrintDialog* self, QPrinter* printer) {
	self->accepted(printer);
}

void QPrintDialog_connect_accepted(QPrintDialog* self, intptr_t slot) {
	MiqtVirtualQPrintDialog::connect(self, static_cast<void (QPrintDialog::*)(QPrinter*)>(&QPrintDialog::accepted), self, [=](QPrinter* printer) {
		QPrinter* sigval1 = printer;
		miqt_exec_callback_QPrintDialog_accepted(slot, sigval1);
	});
}

struct miqt_string QPrintDialog_tr2(const char* s, const char* c) {
	QString _ret = QPrintDialog::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPrintDialog_tr3(const char* s, const char* c, int n) {
	QString _ret = QPrintDialog::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPrintDialog_setOption2(QPrintDialog* self, int option, bool on) {
	self->setOption(static_cast<QAbstractPrintDialog::PrintDialogOption>(option), on);
}

QMetaObject* QPrintDialog_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQPrintDialog*)(self) )->virtualbase_metaObject();
}

void* QPrintDialog_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_metacast(param1);
}

int QPrintDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_metacall(param1, param2, param3);
}

int QPrintDialog_virtualbase_exec(void* self) {
	return ( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_exec();
}

void QPrintDialog_virtualbase_accept(void* self) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_accept();
}

void QPrintDialog_virtualbase_done(void* self, int result) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_done(result);
}

void QPrintDialog_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_setVisible(visible);
}

QSize* QPrintDialog_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQPrintDialog*)(self) )->virtualbase_sizeHint();
}

QSize* QPrintDialog_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQPrintDialog*)(self) )->virtualbase_minimumSizeHint();
}

void QPrintDialog_virtualbase_open(void* self) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_open();
}

void QPrintDialog_virtualbase_reject(void* self) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_reject();
}

void QPrintDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_keyPressEvent(param1);
}

void QPrintDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_closeEvent(param1);
}

void QPrintDialog_virtualbase_showEvent(void* self, QShowEvent* param1) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_showEvent(param1);
}

void QPrintDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_resizeEvent(param1);
}

void QPrintDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_contextMenuEvent(param1);
}

bool QPrintDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2) {
	return ( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_eventFilter(param1, param2);
}

int QPrintDialog_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQPrintDialog*)(self) )->virtualbase_devType();
}

int QPrintDialog_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQPrintDialog*)(self) )->virtualbase_heightForWidth(param1);
}

bool QPrintDialog_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQPrintDialog*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QPrintDialog_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQPrintDialog*)(self) )->virtualbase_paintEngine();
}

bool QPrintDialog_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_event(event);
}

void QPrintDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_mousePressEvent(event);
}

void QPrintDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QPrintDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QPrintDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QPrintDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_wheelEvent(event);
}

void QPrintDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QPrintDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_focusInEvent(event);
}

void QPrintDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_focusOutEvent(event);
}

void QPrintDialog_virtualbase_enterEvent(void* self, QEnterEvent* event) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_enterEvent(event);
}

void QPrintDialog_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_leaveEvent(event);
}

void QPrintDialog_virtualbase_paintEvent(void* self, QPaintEvent* event) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_paintEvent(event);
}

void QPrintDialog_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_moveEvent(event);
}

void QPrintDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_tabletEvent(event);
}

void QPrintDialog_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_actionEvent(event);
}

void QPrintDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_dragEnterEvent(event);
}

void QPrintDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_dragMoveEvent(event);
}

void QPrintDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QPrintDialog_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_dropEvent(event);
}

void QPrintDialog_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_hideEvent(event);
}

bool QPrintDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	return ( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

void QPrintDialog_virtualbase_changeEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_changeEvent(param1);
}

int QPrintDialog_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQPrintDialog*)(self) )->virtualbase_metric(param1);
}

void QPrintDialog_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQPrintDialog*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QPrintDialog_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQPrintDialog*)(self) )->virtualbase_redirected(offset);
}

QPainter* QPrintDialog_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQPrintDialog*)(self) )->virtualbase_sharedPainter();
}

void QPrintDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QPrintDialog_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQPrintDialog*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QPrintDialog_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_focusNextPrevChild(next);
}

void QPrintDialog_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_timerEvent(event);
}

void QPrintDialog_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_childEvent(event);
}

void QPrintDialog_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_customEvent(event);
}

void QPrintDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_connectNotify(signal);
}

void QPrintDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQPrintDialog*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QPrintDialog_staticMetaObject() { return &QPrintDialog::staticMetaObject; }
void QPrintDialog_protectedbase_adjustPosition(bool* _dynamic_cast_ok, void* self, QWidget* param1) {
	MiqtVirtualQPrintDialog* self_cast = dynamic_cast<MiqtVirtualQPrintDialog*>( (QPrintDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->adjustPosition(param1);

}

void QPrintDialog_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQPrintDialog* self_cast = dynamic_cast<MiqtVirtualQPrintDialog*>( (QPrintDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QPrintDialog_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQPrintDialog* self_cast = dynamic_cast<MiqtVirtualQPrintDialog*>( (QPrintDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QPrintDialog_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQPrintDialog* self_cast = dynamic_cast<MiqtVirtualQPrintDialog*>( (QPrintDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QPrintDialog_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQPrintDialog* self_cast = dynamic_cast<MiqtVirtualQPrintDialog*>( (QPrintDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QPrintDialog_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQPrintDialog* self_cast = dynamic_cast<MiqtVirtualQPrintDialog*>( (QPrintDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QPrintDialog_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQPrintDialog* self_cast = dynamic_cast<MiqtVirtualQPrintDialog*>( (QPrintDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QPrintDialog_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQPrintDialog* self_cast = dynamic_cast<MiqtVirtualQPrintDialog*>( (QPrintDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QPrintDialog_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	MiqtVirtualQPrintDialog* self_cast = dynamic_cast<MiqtVirtualQPrintDialog*>( (QPrintDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QPrintDialog_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	MiqtVirtualQPrintDialog* self_cast = dynamic_cast<MiqtVirtualQPrintDialog*>( (QPrintDialog*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QPrintDialog_delete(QPrintDialog* self) {
	delete self;
}

