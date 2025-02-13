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
#include <qdialog.h>
#include "gen_qdialog.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QDialog_finished(intptr_t, int);
void miqt_exec_callback_QDialog_finished_release(intptr_t);
void miqt_exec_callback_QDialog_accepted(intptr_t);
void miqt_exec_callback_QDialog_accepted_release(intptr_t);
void miqt_exec_callback_QDialog_rejected(intptr_t);
void miqt_exec_callback_QDialog_rejected_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQDialog final : public QDialog {
	struct QDialog_VTable* vtbl;
public:

	MiqtVirtualQDialog(struct QDialog_VTable* vtbl, QWidget* parent): QDialog(parent), vtbl(vtbl) {};
	MiqtVirtualQDialog(struct QDialog_VTable* vtbl): QDialog(), vtbl(vtbl) {};
	MiqtVirtualQDialog(struct QDialog_VTable* vtbl, QWidget* parent, Qt::WindowFlags f): QDialog(parent, f), vtbl(vtbl) {};

	virtual ~MiqtVirtualQDialog() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDialog::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QDialog::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDialog::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QDialog::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDialog::qt_metacall(param1, param2, param3);
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

		return QDialog::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QDialog::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QDialog::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QDialog::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QDialog::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QDialog::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QDialog::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual void open() override {
		if (vtbl->open == 0) {
			QDialog::open();
			return;
		}


		vtbl->open(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_open() {

		QDialog::open();

	}

	// Subclass to allow providing a Go implementation
	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QDialog::exec();
		}


		int callback_return_value = vtbl->exec(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_exec() {

		return QDialog::exec();

	}

	// Subclass to allow providing a Go implementation
	virtual void done(int param1) override {
		if (vtbl->done == 0) {
			QDialog::done(param1);
			return;
		}

		int sigval1 = param1;

		vtbl->done(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_done(int param1) {

		QDialog::done(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void accept() override {
		if (vtbl->accept == 0) {
			QDialog::accept();
			return;
		}


		vtbl->accept(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_accept() {

		QDialog::accept();

	}

	// Subclass to allow providing a Go implementation
	virtual void reject() override {
		if (vtbl->reject == 0) {
			QDialog::reject();
			return;
		}


		vtbl->reject(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_reject() {

		QDialog::reject();

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QDialog::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* param1) {

		QDialog::keyPressEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QDialog::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* param1) {

		QDialog::closeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QDialog::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* param1) {

		QDialog::showEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QDialog::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* param1) {

		QDialog::resizeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QDialog::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* param1) {

		QDialog::contextMenuEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QDialog::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* param1, QEvent* param2) {

		return QDialog::eventFilter(param1, param2);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QDialog::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QDialog::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QDialog::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QDialog::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QDialog::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QDialog::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QDialog::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QDialog::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDialog::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QDialog::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QDialog::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QDialog::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QDialog::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QDialog::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QDialog::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QDialog::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QDialog::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QDialog::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QDialog::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QDialog::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QDialog::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QDialog::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QDialog::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QDialog::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QDialog::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QDialog::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QDialog::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEnterEvent* event) {

		QDialog::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QDialog::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QDialog::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QDialog::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* event) {

		QDialog::paintEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QDialog::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QDialog::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QDialog::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QDialog::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QDialog::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QDialog::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QDialog::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QDialog::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QDialog::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QDialog::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QDialog::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QDialog::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QDialog::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QDialog::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QDialog::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QDialog::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QDialog::nativeEvent(eventType, message, result);
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

		return QDialog::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QDialog::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* param1) {

		QDialog::changeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QDialog::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QDialog::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QDialog::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QDialog::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QDialog::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QDialog::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QDialog::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QDialog::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QDialog::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QDialog::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QDialog::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QDialog::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QDialog::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QDialog::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDialog::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QDialog::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDialog::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QDialog::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDialog::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QDialog::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDialog::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QDialog::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDialog::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QDialog::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QDialog_protectedbase_adjustPosition(void* self, QWidget* param1);
	friend void QDialog_protectedbase_updateMicroFocus(void* self);
	friend void QDialog_protectedbase_create(void* self);
	friend void QDialog_protectedbase_destroy(void* self);
	friend bool QDialog_protectedbase_focusNextChild(void* self);
	friend bool QDialog_protectedbase_focusPreviousChild(void* self);
	friend QObject* QDialog_protectedbase_sender(const void* self);
	friend int QDialog_protectedbase_senderSignalIndex(const void* self);
	friend int QDialog_protectedbase_receivers(const void* self, const char* signal);
	friend bool QDialog_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QDialog* QDialog_new(struct QDialog_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQDialog(vtbl, parent);
}

QDialog* QDialog_new2(struct QDialog_VTable* vtbl) {
	return new MiqtVirtualQDialog(vtbl);
}

QDialog* QDialog_new3(struct QDialog_VTable* vtbl, QWidget* parent, int f) {
	return new MiqtVirtualQDialog(vtbl, parent, static_cast<Qt::WindowFlags>(f));
}

void QDialog_virtbase(QDialog* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QDialog_metaObject(const QDialog* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDialog_metacast(QDialog* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDialog_metacall(QDialog* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QDialog_tr(const char* s) {
	QString _ret = QDialog::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QDialog_result(const QDialog* self) {
	return self->result();
}

void QDialog_setVisible(QDialog* self, bool visible) {
	self->setVisible(visible);
}

QSize* QDialog_sizeHint(const QDialog* self) {
	return new QSize(self->sizeHint());
}

QSize* QDialog_minimumSizeHint(const QDialog* self) {
	return new QSize(self->minimumSizeHint());
}

void QDialog_setSizeGripEnabled(QDialog* self, bool sizeGripEnabled) {
	self->setSizeGripEnabled(sizeGripEnabled);
}

bool QDialog_isSizeGripEnabled(const QDialog* self) {
	return self->isSizeGripEnabled();
}

void QDialog_setModal(QDialog* self, bool modal) {
	self->setModal(modal);
}

void QDialog_setResult(QDialog* self, int r) {
	self->setResult(static_cast<int>(r));
}

void QDialog_finished(QDialog* self, int result) {
	self->finished(static_cast<int>(result));
}

void QDialog_connect_finished(QDialog* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(int result) {
			int sigval1 = result;
			miqt_exec_callback_QDialog_finished(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QDialog_finished_release(slot); }
	};
	MiqtVirtualQDialog::connect(self, static_cast<void (QDialog::*)(int)>(&QDialog::finished), self, caller{slot});
}

void QDialog_accepted(QDialog* self) {
	self->accepted();
}

void QDialog_connect_accepted(QDialog* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QDialog_accepted(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QDialog_accepted_release(slot); }
	};
	MiqtVirtualQDialog::connect(self, static_cast<void (QDialog::*)()>(&QDialog::accepted), self, caller{slot});
}

void QDialog_rejected(QDialog* self) {
	self->rejected();
}

void QDialog_connect_rejected(QDialog* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QDialog_rejected(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QDialog_rejected_release(slot); }
	};
	MiqtVirtualQDialog::connect(self, static_cast<void (QDialog::*)()>(&QDialog::rejected), self, caller{slot});
}

void QDialog_open(QDialog* self) {
	self->open();
}

int QDialog_exec(QDialog* self) {
	return self->exec();
}

void QDialog_done(QDialog* self, int param1) {
	self->done(static_cast<int>(param1));
}

void QDialog_accept(QDialog* self) {
	self->accept();
}

void QDialog_reject(QDialog* self) {
	self->reject();
}

struct miqt_string QDialog_tr2(const char* s, const char* c) {
	QString _ret = QDialog::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDialog_tr3(const char* s, const char* c, int n) {
	QString _ret = QDialog::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QDialog_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQDialog*)(self) )->virtualbase_metaObject();
}

void* QDialog_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQDialog*)(self) )->virtualbase_metacast(param1);
}

int QDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQDialog*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QDialog_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_setVisible(visible);
}

QSize* QDialog_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQDialog*)(self) )->virtualbase_sizeHint();
}

QSize* QDialog_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQDialog*)(self) )->virtualbase_minimumSizeHint();
}

void QDialog_virtualbase_open(void* self) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_open();
}

int QDialog_virtualbase_exec(void* self) {
	return ( (MiqtVirtualQDialog*)(self) )->virtualbase_exec();
}

void QDialog_virtualbase_done(void* self, int param1) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_done(param1);
}

void QDialog_virtualbase_accept(void* self) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_accept();
}

void QDialog_virtualbase_reject(void* self) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_reject();
}

void QDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_keyPressEvent(param1);
}

void QDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_closeEvent(param1);
}

void QDialog_virtualbase_showEvent(void* self, QShowEvent* param1) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_showEvent(param1);
}

void QDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_resizeEvent(param1);
}

void QDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_contextMenuEvent(param1);
}

bool QDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2) {
	return ( (MiqtVirtualQDialog*)(self) )->virtualbase_eventFilter(param1, param2);
}

int QDialog_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQDialog*)(self) )->virtualbase_devType();
}

int QDialog_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQDialog*)(self) )->virtualbase_heightForWidth(param1);
}

bool QDialog_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQDialog*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QDialog_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQDialog*)(self) )->virtualbase_paintEngine();
}

bool QDialog_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQDialog*)(self) )->virtualbase_event(event);
}

void QDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_mousePressEvent(event);
}

void QDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_wheelEvent(event);
}

void QDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_focusInEvent(event);
}

void QDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_focusOutEvent(event);
}

void QDialog_virtualbase_enterEvent(void* self, QEnterEvent* event) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_enterEvent(event);
}

void QDialog_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_leaveEvent(event);
}

void QDialog_virtualbase_paintEvent(void* self, QPaintEvent* event) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_paintEvent(event);
}

void QDialog_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_moveEvent(event);
}

void QDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_tabletEvent(event);
}

void QDialog_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_actionEvent(event);
}

void QDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_dragEnterEvent(event);
}

void QDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_dragMoveEvent(event);
}

void QDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QDialog_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_dropEvent(event);
}

void QDialog_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_hideEvent(event);
}

bool QDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	return ( (MiqtVirtualQDialog*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

void QDialog_virtualbase_changeEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_changeEvent(param1);
}

int QDialog_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQDialog*)(self) )->virtualbase_metric(param1);
}

void QDialog_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQDialog*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QDialog_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQDialog*)(self) )->virtualbase_redirected(offset);
}

QPainter* QDialog_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQDialog*)(self) )->virtualbase_sharedPainter();
}

void QDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QDialog_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQDialog*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QDialog_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQDialog*)(self) )->virtualbase_focusNextPrevChild(next);
}

void QDialog_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_timerEvent(event);
}

void QDialog_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_childEvent(event);
}

void QDialog_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_customEvent(event);
}

void QDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_connectNotify(signal);
}

void QDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQDialog*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QDialog_staticMetaObject() { return &QDialog::staticMetaObject; }
void QDialog_protectedbase_adjustPosition(void* self, QWidget* param1) {
	MiqtVirtualQDialog* self_cast = static_cast<MiqtVirtualQDialog*>( (QDialog*)(self) );
	
	self_cast->adjustPosition(param1);

}

void QDialog_protectedbase_updateMicroFocus(void* self) {
	MiqtVirtualQDialog* self_cast = static_cast<MiqtVirtualQDialog*>( (QDialog*)(self) );
	
	self_cast->updateMicroFocus();

}

void QDialog_protectedbase_create(void* self) {
	MiqtVirtualQDialog* self_cast = static_cast<MiqtVirtualQDialog*>( (QDialog*)(self) );
	
	self_cast->create();

}

void QDialog_protectedbase_destroy(void* self) {
	MiqtVirtualQDialog* self_cast = static_cast<MiqtVirtualQDialog*>( (QDialog*)(self) );
	
	self_cast->destroy();

}

bool QDialog_protectedbase_focusNextChild(void* self) {
	MiqtVirtualQDialog* self_cast = static_cast<MiqtVirtualQDialog*>( (QDialog*)(self) );
	
	return self_cast->focusNextChild();

}

bool QDialog_protectedbase_focusPreviousChild(void* self) {
	MiqtVirtualQDialog* self_cast = static_cast<MiqtVirtualQDialog*>( (QDialog*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QDialog_protectedbase_sender(const void* self) {
	MiqtVirtualQDialog* self_cast = static_cast<MiqtVirtualQDialog*>( (QDialog*)(self) );
	
	return self_cast->sender();

}

int QDialog_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQDialog* self_cast = static_cast<MiqtVirtualQDialog*>( (QDialog*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QDialog_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQDialog* self_cast = static_cast<MiqtVirtualQDialog*>( (QDialog*)(self) );
	
	return self_cast->receivers(signal);

}

bool QDialog_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQDialog* self_cast = static_cast<MiqtVirtualQDialog*>( (QDialog*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QDialog_delete(QDialog* self) {
	delete self;
}

