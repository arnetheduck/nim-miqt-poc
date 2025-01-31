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
#include <QPrintPreviewDialog>
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
#include <qprintpreviewdialog.h>
#include "gen_qprintpreviewdialog.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QPrintPreviewDialog_paintRequested(intptr_t, QPrinter*);
void miqt_exec_callback_QPrintPreviewDialog_paintRequested_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQPrintPreviewDialog final : public QPrintPreviewDialog {
	struct QPrintPreviewDialog_VTable* vtbl;
public:

	MiqtVirtualQPrintPreviewDialog(struct QPrintPreviewDialog_VTable* vtbl, QWidget* parent): QPrintPreviewDialog(parent), vtbl(vtbl) {};
	MiqtVirtualQPrintPreviewDialog(struct QPrintPreviewDialog_VTable* vtbl): QPrintPreviewDialog(), vtbl(vtbl) {};
	MiqtVirtualQPrintPreviewDialog(struct QPrintPreviewDialog_VTable* vtbl, QPrinter* printer): QPrintPreviewDialog(printer), vtbl(vtbl) {};
	MiqtVirtualQPrintPreviewDialog(struct QPrintPreviewDialog_VTable* vtbl, QWidget* parent, Qt::WindowFlags flags): QPrintPreviewDialog(parent, flags), vtbl(vtbl) {};
	MiqtVirtualQPrintPreviewDialog(struct QPrintPreviewDialog_VTable* vtbl, QPrinter* printer, QWidget* parent): QPrintPreviewDialog(printer, parent), vtbl(vtbl) {};
	MiqtVirtualQPrintPreviewDialog(struct QPrintPreviewDialog_VTable* vtbl, QPrinter* printer, QWidget* parent, Qt::WindowFlags flags): QPrintPreviewDialog(printer, parent, flags), vtbl(vtbl) {};

	virtual ~MiqtVirtualQPrintPreviewDialog() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPrintPreviewDialog::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QPrintPreviewDialog::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPrintPreviewDialog::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QPrintPreviewDialog::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPrintPreviewDialog::qt_metacall(param1, param2, param3);
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

		return QPrintPreviewDialog::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QPrintPreviewDialog::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QPrintPreviewDialog::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual void done(int result) override {
		if (vtbl->done == 0) {
			QPrintPreviewDialog::done(result);
			return;
		}

		int sigval1 = result;

		vtbl->done(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_done(int result) {

		QPrintPreviewDialog::done(static_cast<int>(result));

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QPrintPreviewDialog::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QPrintPreviewDialog::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QPrintPreviewDialog::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QPrintPreviewDialog::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual void open() override {
		if (vtbl->open == 0) {
			QPrintPreviewDialog::open();
			return;
		}


		vtbl->open(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_open() {

		QPrintPreviewDialog::open();

	}

	// Subclass to allow providing a Go implementation
	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QPrintPreviewDialog::exec();
		}


		int callback_return_value = vtbl->exec(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_exec() {

		return QPrintPreviewDialog::exec();

	}

	// Subclass to allow providing a Go implementation
	virtual void accept() override {
		if (vtbl->accept == 0) {
			QPrintPreviewDialog::accept();
			return;
		}


		vtbl->accept(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_accept() {

		QPrintPreviewDialog::accept();

	}

	// Subclass to allow providing a Go implementation
	virtual void reject() override {
		if (vtbl->reject == 0) {
			QPrintPreviewDialog::reject();
			return;
		}


		vtbl->reject(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_reject() {

		QPrintPreviewDialog::reject();

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QPrintPreviewDialog::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* param1) {

		QPrintPreviewDialog::keyPressEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QPrintPreviewDialog::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* param1) {

		QPrintPreviewDialog::closeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QPrintPreviewDialog::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* param1) {

		QPrintPreviewDialog::showEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QPrintPreviewDialog::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* param1) {

		QPrintPreviewDialog::resizeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QPrintPreviewDialog::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* param1) {

		QPrintPreviewDialog::contextMenuEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QPrintPreviewDialog::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* param1, QEvent* param2) {

		return QPrintPreviewDialog::eventFilter(param1, param2);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QPrintPreviewDialog::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QPrintPreviewDialog::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QPrintPreviewDialog::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QPrintPreviewDialog::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QPrintPreviewDialog::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QPrintPreviewDialog::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QPrintPreviewDialog::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QPrintPreviewDialog::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPrintPreviewDialog::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QPrintPreviewDialog::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QPrintPreviewDialog::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QPrintPreviewDialog::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QPrintPreviewDialog::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QPrintPreviewDialog::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QPrintPreviewDialog::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QPrintPreviewDialog::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QPrintPreviewDialog::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QPrintPreviewDialog::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QPrintPreviewDialog::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QPrintPreviewDialog::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QPrintPreviewDialog::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QPrintPreviewDialog::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QPrintPreviewDialog::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QPrintPreviewDialog::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QPrintPreviewDialog::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QPrintPreviewDialog::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QPrintPreviewDialog::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEnterEvent* event) {

		QPrintPreviewDialog::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QPrintPreviewDialog::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QPrintPreviewDialog::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QPrintPreviewDialog::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* event) {

		QPrintPreviewDialog::paintEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QPrintPreviewDialog::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QPrintPreviewDialog::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QPrintPreviewDialog::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QPrintPreviewDialog::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QPrintPreviewDialog::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QPrintPreviewDialog::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QPrintPreviewDialog::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QPrintPreviewDialog::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QPrintPreviewDialog::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QPrintPreviewDialog::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QPrintPreviewDialog::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QPrintPreviewDialog::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QPrintPreviewDialog::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QPrintPreviewDialog::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QPrintPreviewDialog::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QPrintPreviewDialog::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QPrintPreviewDialog::nativeEvent(eventType, message, result);
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

		return QPrintPreviewDialog::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QPrintPreviewDialog::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* param1) {

		QPrintPreviewDialog::changeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QPrintPreviewDialog::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QPrintPreviewDialog::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QPrintPreviewDialog::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QPrintPreviewDialog::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QPrintPreviewDialog::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QPrintPreviewDialog::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QPrintPreviewDialog::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QPrintPreviewDialog::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QPrintPreviewDialog::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QPrintPreviewDialog::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QPrintPreviewDialog::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QPrintPreviewDialog::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QPrintPreviewDialog::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QPrintPreviewDialog::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPrintPreviewDialog::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QPrintPreviewDialog::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPrintPreviewDialog::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QPrintPreviewDialog::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPrintPreviewDialog::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QPrintPreviewDialog::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPrintPreviewDialog::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QPrintPreviewDialog::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPrintPreviewDialog::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QPrintPreviewDialog::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	void protectedbase_adjustPosition(QWidget* param1) {

		QPrintPreviewDialog::adjustPosition(param1);

	}

	// Wrapper to allow calling protected method
	void protectedbase_updateMicroFocus() {

		QPrintPreviewDialog::updateMicroFocus();

	}

	// Wrapper to allow calling protected method
	void protectedbase_create() {

		QPrintPreviewDialog::create();

	}

	// Wrapper to allow calling protected method
	void protectedbase_destroy() {

		QPrintPreviewDialog::destroy();

	}

	// Wrapper to allow calling protected method
	bool protectedbase_focusNextChild() {

		return QPrintPreviewDialog::focusNextChild();

	}

	// Wrapper to allow calling protected method
	bool protectedbase_focusPreviousChild() {

		return QPrintPreviewDialog::focusPreviousChild();

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QPrintPreviewDialog::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QPrintPreviewDialog::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QPrintPreviewDialog::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QPrintPreviewDialog::isSignalConnected(*signal);

	}

};

QPrintPreviewDialog* QPrintPreviewDialog_new(struct QPrintPreviewDialog_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQPrintPreviewDialog(vtbl, parent);
}

QPrintPreviewDialog* QPrintPreviewDialog_new2(struct QPrintPreviewDialog_VTable* vtbl) {
	return new MiqtVirtualQPrintPreviewDialog(vtbl);
}

QPrintPreviewDialog* QPrintPreviewDialog_new3(struct QPrintPreviewDialog_VTable* vtbl, QPrinter* printer) {
	return new MiqtVirtualQPrintPreviewDialog(vtbl, printer);
}

QPrintPreviewDialog* QPrintPreviewDialog_new4(struct QPrintPreviewDialog_VTable* vtbl, QWidget* parent, int flags) {
	return new MiqtVirtualQPrintPreviewDialog(vtbl, parent, static_cast<Qt::WindowFlags>(flags));
}

QPrintPreviewDialog* QPrintPreviewDialog_new5(struct QPrintPreviewDialog_VTable* vtbl, QPrinter* printer, QWidget* parent) {
	return new MiqtVirtualQPrintPreviewDialog(vtbl, printer, parent);
}

QPrintPreviewDialog* QPrintPreviewDialog_new6(struct QPrintPreviewDialog_VTable* vtbl, QPrinter* printer, QWidget* parent, int flags) {
	return new MiqtVirtualQPrintPreviewDialog(vtbl, printer, parent, static_cast<Qt::WindowFlags>(flags));
}

void QPrintPreviewDialog_virtbase(QPrintPreviewDialog* src, QDialog** outptr_QDialog) {
	*outptr_QDialog = static_cast<QDialog*>(src);
}

QMetaObject* QPrintPreviewDialog_metaObject(const QPrintPreviewDialog* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPrintPreviewDialog_metacast(QPrintPreviewDialog* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPrintPreviewDialog_metacall(QPrintPreviewDialog* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QPrintPreviewDialog_tr(const char* s) {
	QString _ret = QPrintPreviewDialog::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QPrinter* QPrintPreviewDialog_printer(QPrintPreviewDialog* self) {
	return self->printer();
}

void QPrintPreviewDialog_setVisible(QPrintPreviewDialog* self, bool visible) {
	self->setVisible(visible);
}

void QPrintPreviewDialog_done(QPrintPreviewDialog* self, int result) {
	self->done(static_cast<int>(result));
}

void QPrintPreviewDialog_paintRequested(QPrintPreviewDialog* self, QPrinter* printer) {
	self->paintRequested(printer);
}

void QPrintPreviewDialog_connect_paintRequested(QPrintPreviewDialog* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QPrinter* printer) {
			QPrinter* sigval1 = printer;
			miqt_exec_callback_QPrintPreviewDialog_paintRequested(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QPrintPreviewDialog_paintRequested_release(slot); }
	};
	MiqtVirtualQPrintPreviewDialog::connect(self, static_cast<void (QPrintPreviewDialog::*)(QPrinter*)>(&QPrintPreviewDialog::paintRequested), self, caller{slot});
}

struct miqt_string QPrintPreviewDialog_tr2(const char* s, const char* c) {
	QString _ret = QPrintPreviewDialog::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPrintPreviewDialog_tr3(const char* s, const char* c, int n) {
	QString _ret = QPrintPreviewDialog::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QPrintPreviewDialog_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_metaObject();
}

void* QPrintPreviewDialog_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_metacast(param1);
}

int QPrintPreviewDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QPrintPreviewDialog_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_setVisible(visible);
}

void QPrintPreviewDialog_virtualbase_done(void* self, int result) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_done(result);
}

QSize* QPrintPreviewDialog_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_sizeHint();
}

QSize* QPrintPreviewDialog_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_minimumSizeHint();
}

void QPrintPreviewDialog_virtualbase_open(void* self) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_open();
}

int QPrintPreviewDialog_virtualbase_exec(void* self) {
	return ( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_exec();
}

void QPrintPreviewDialog_virtualbase_accept(void* self) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_accept();
}

void QPrintPreviewDialog_virtualbase_reject(void* self) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_reject();
}

void QPrintPreviewDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_keyPressEvent(param1);
}

void QPrintPreviewDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_closeEvent(param1);
}

void QPrintPreviewDialog_virtualbase_showEvent(void* self, QShowEvent* param1) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_showEvent(param1);
}

void QPrintPreviewDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_resizeEvent(param1);
}

void QPrintPreviewDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_contextMenuEvent(param1);
}

bool QPrintPreviewDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2) {
	return ( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_eventFilter(param1, param2);
}

int QPrintPreviewDialog_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_devType();
}

int QPrintPreviewDialog_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_heightForWidth(param1);
}

bool QPrintPreviewDialog_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QPrintPreviewDialog_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_paintEngine();
}

bool QPrintPreviewDialog_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_event(event);
}

void QPrintPreviewDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_mousePressEvent(event);
}

void QPrintPreviewDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QPrintPreviewDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QPrintPreviewDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QPrintPreviewDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_wheelEvent(event);
}

void QPrintPreviewDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QPrintPreviewDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_focusInEvent(event);
}

void QPrintPreviewDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_focusOutEvent(event);
}

void QPrintPreviewDialog_virtualbase_enterEvent(void* self, QEnterEvent* event) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_enterEvent(event);
}

void QPrintPreviewDialog_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_leaveEvent(event);
}

void QPrintPreviewDialog_virtualbase_paintEvent(void* self, QPaintEvent* event) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_paintEvent(event);
}

void QPrintPreviewDialog_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_moveEvent(event);
}

void QPrintPreviewDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_tabletEvent(event);
}

void QPrintPreviewDialog_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_actionEvent(event);
}

void QPrintPreviewDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_dragEnterEvent(event);
}

void QPrintPreviewDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_dragMoveEvent(event);
}

void QPrintPreviewDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QPrintPreviewDialog_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_dropEvent(event);
}

void QPrintPreviewDialog_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_hideEvent(event);
}

bool QPrintPreviewDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	return ( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

void QPrintPreviewDialog_virtualbase_changeEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_changeEvent(param1);
}

int QPrintPreviewDialog_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_metric(param1);
}

void QPrintPreviewDialog_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QPrintPreviewDialog_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_redirected(offset);
}

QPainter* QPrintPreviewDialog_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_sharedPainter();
}

void QPrintPreviewDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QPrintPreviewDialog_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QPrintPreviewDialog_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_focusNextPrevChild(next);
}

void QPrintPreviewDialog_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_timerEvent(event);
}

void QPrintPreviewDialog_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_childEvent(event);
}

void QPrintPreviewDialog_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_customEvent(event);
}

void QPrintPreviewDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_connectNotify(signal);
}

void QPrintPreviewDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->virtualbase_disconnectNotify(signal);
}

void QPrintPreviewDialog_protectedbase_adjustPosition(void* self, QWidget* param1) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->protectedbase_adjustPosition(param1);
}

void QPrintPreviewDialog_protectedbase_updateMicroFocus(void* self) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->protectedbase_updateMicroFocus();
}

void QPrintPreviewDialog_protectedbase_create(void* self) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->protectedbase_create();
}

void QPrintPreviewDialog_protectedbase_destroy(void* self) {
	( (MiqtVirtualQPrintPreviewDialog*)(self) )->protectedbase_destroy();
}

bool QPrintPreviewDialog_protectedbase_focusNextChild(void* self) {
	return ( (MiqtVirtualQPrintPreviewDialog*)(self) )->protectedbase_focusNextChild();
}

bool QPrintPreviewDialog_protectedbase_focusPreviousChild(void* self) {
	return ( (MiqtVirtualQPrintPreviewDialog*)(self) )->protectedbase_focusPreviousChild();
}

QObject* QPrintPreviewDialog_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQPrintPreviewDialog*)(self) )->protectedbase_sender();
}

int QPrintPreviewDialog_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQPrintPreviewDialog*)(self) )->protectedbase_senderSignalIndex();
}

int QPrintPreviewDialog_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQPrintPreviewDialog*)(self) )->protectedbase_receivers(signal);
}

bool QPrintPreviewDialog_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQPrintPreviewDialog*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QPrintPreviewDialog_staticMetaObject() { return &QPrintPreviewDialog::staticMetaObject; }
void QPrintPreviewDialog_delete(QPrintPreviewDialog* self) {
	delete self;
}

