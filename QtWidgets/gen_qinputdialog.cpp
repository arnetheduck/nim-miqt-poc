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
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QInputDialog>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QList>
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
#include <qinputdialog.h>
#include "gen_qinputdialog.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QInputDialog_textValueChanged(intptr_t, struct miqt_string);
void miqt_exec_callback_QInputDialog_textValueChanged_release(intptr_t);
void miqt_exec_callback_QInputDialog_textValueSelected(intptr_t, struct miqt_string);
void miqt_exec_callback_QInputDialog_textValueSelected_release(intptr_t);
void miqt_exec_callback_QInputDialog_intValueChanged(intptr_t, int);
void miqt_exec_callback_QInputDialog_intValueChanged_release(intptr_t);
void miqt_exec_callback_QInputDialog_intValueSelected(intptr_t, int);
void miqt_exec_callback_QInputDialog_intValueSelected_release(intptr_t);
void miqt_exec_callback_QInputDialog_doubleValueChanged(intptr_t, double);
void miqt_exec_callback_QInputDialog_doubleValueChanged_release(intptr_t);
void miqt_exec_callback_QInputDialog_doubleValueSelected(intptr_t, double);
void miqt_exec_callback_QInputDialog_doubleValueSelected_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQInputDialog final : public QInputDialog {
	struct QInputDialog_VTable* vtbl;
public:

	MiqtVirtualQInputDialog(struct QInputDialog_VTable* vtbl, QWidget* parent): QInputDialog(parent), vtbl(vtbl) {};
	MiqtVirtualQInputDialog(struct QInputDialog_VTable* vtbl): QInputDialog(), vtbl(vtbl) {};
	MiqtVirtualQInputDialog(struct QInputDialog_VTable* vtbl, QWidget* parent, Qt::WindowFlags flags): QInputDialog(parent, flags), vtbl(vtbl) {};

	virtual ~MiqtVirtualQInputDialog() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QInputDialog::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QInputDialog::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QInputDialog::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QInputDialog::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QInputDialog::qt_metacall(param1, param2, param3);
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

		return QInputDialog::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QInputDialog::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QInputDialog::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QInputDialog::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QInputDialog::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QInputDialog::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QInputDialog::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual void done(int result) override {
		if (vtbl->done == 0) {
			QInputDialog::done(result);
			return;
		}

		int sigval1 = result;

		vtbl->done(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_done(int result) {

		QInputDialog::done(static_cast<int>(result));

	}

	// Subclass to allow providing a Go implementation
	virtual void open() override {
		if (vtbl->open == 0) {
			QInputDialog::open();
			return;
		}


		vtbl->open(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_open() {

		QInputDialog::open();

	}

	// Subclass to allow providing a Go implementation
	virtual int exec() override {
		if (vtbl->exec == 0) {
			return QInputDialog::exec();
		}


		int callback_return_value = vtbl->exec(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_exec() {

		return QInputDialog::exec();

	}

	// Subclass to allow providing a Go implementation
	virtual void accept() override {
		if (vtbl->accept == 0) {
			QInputDialog::accept();
			return;
		}


		vtbl->accept(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_accept() {

		QInputDialog::accept();

	}

	// Subclass to allow providing a Go implementation
	virtual void reject() override {
		if (vtbl->reject == 0) {
			QInputDialog::reject();
			return;
		}


		vtbl->reject(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_reject() {

		QInputDialog::reject();

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QInputDialog::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* param1) {

		QInputDialog::keyPressEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QInputDialog::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* param1) {

		QInputDialog::closeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QInputDialog::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* param1) {

		QInputDialog::showEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QInputDialog::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* param1) {

		QInputDialog::resizeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QInputDialog::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* param1) {

		QInputDialog::contextMenuEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QInputDialog::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* param1, QEvent* param2) {

		return QInputDialog::eventFilter(param1, param2);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QInputDialog::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QInputDialog::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QInputDialog::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QInputDialog::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QInputDialog::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QInputDialog::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QInputDialog::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QInputDialog::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QInputDialog::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QInputDialog::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QInputDialog::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QInputDialog::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QInputDialog::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QInputDialog::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QInputDialog::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QInputDialog::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QInputDialog::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QInputDialog::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QInputDialog::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QInputDialog::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QInputDialog::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QInputDialog::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QInputDialog::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QInputDialog::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QInputDialog::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QInputDialog::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QInputDialog::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEvent* event) {

		QInputDialog::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QInputDialog::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QInputDialog::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QInputDialog::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* event) {

		QInputDialog::paintEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QInputDialog::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QInputDialog::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QInputDialog::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QInputDialog::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QInputDialog::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QInputDialog::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QInputDialog::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QInputDialog::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QInputDialog::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QInputDialog::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QInputDialog::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QInputDialog::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QInputDialog::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QInputDialog::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QInputDialog::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QInputDialog::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QInputDialog::nativeEvent(eventType, message, result);
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

		return QInputDialog::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QInputDialog::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* param1) {

		QInputDialog::changeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QInputDialog::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QInputDialog::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QInputDialog::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QInputDialog::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QInputDialog::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QInputDialog::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QInputDialog::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QInputDialog::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QInputDialog::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QInputDialog::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QInputDialog::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QInputDialog::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QInputDialog::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QInputDialog::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QInputDialog::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QInputDialog::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QInputDialog::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QInputDialog::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QInputDialog::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QInputDialog::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QInputDialog::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QInputDialog::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QInputDialog::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QInputDialog::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QInputDialog_protectedbase_adjustPosition(void* self, QWidget* param1);
	friend void QInputDialog_protectedbase_updateMicroFocus(void* self);
	friend void QInputDialog_protectedbase_create(void* self);
	friend void QInputDialog_protectedbase_destroy(void* self);
	friend bool QInputDialog_protectedbase_focusNextChild(void* self);
	friend bool QInputDialog_protectedbase_focusPreviousChild(void* self);
	friend QObject* QInputDialog_protectedbase_sender(const void* self);
	friend int QInputDialog_protectedbase_senderSignalIndex(const void* self);
	friend int QInputDialog_protectedbase_receivers(const void* self, const char* signal);
	friend bool QInputDialog_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QInputDialog* QInputDialog_new(struct QInputDialog_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQInputDialog(vtbl, parent);
}

QInputDialog* QInputDialog_new2(struct QInputDialog_VTable* vtbl) {
	return new MiqtVirtualQInputDialog(vtbl);
}

QInputDialog* QInputDialog_new3(struct QInputDialog_VTable* vtbl, QWidget* parent, int flags) {
	return new MiqtVirtualQInputDialog(vtbl, parent, static_cast<Qt::WindowFlags>(flags));
}

void QInputDialog_virtbase(QInputDialog* src, QDialog** outptr_QDialog) {
	*outptr_QDialog = static_cast<QDialog*>(src);
}

QMetaObject* QInputDialog_metaObject(const QInputDialog* self) {
	return (QMetaObject*) self->metaObject();
}

void* QInputDialog_metacast(QInputDialog* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QInputDialog_metacall(QInputDialog* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QInputDialog_tr(const char* s) {
	QString _ret = QInputDialog::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_trUtf8(const char* s) {
	QString _ret = QInputDialog::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QInputDialog_setInputMode(QInputDialog* self, int mode) {
	self->setInputMode(static_cast<QInputDialog::InputMode>(mode));
}

int QInputDialog_inputMode(const QInputDialog* self) {
	QInputDialog::InputMode _ret = self->inputMode();
	return static_cast<int>(_ret);
}

void QInputDialog_setLabelText(QInputDialog* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setLabelText(text_QString);
}

struct miqt_string QInputDialog_labelText(const QInputDialog* self) {
	QString _ret = self->labelText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QInputDialog_setOption(QInputDialog* self, int option) {
	self->setOption(static_cast<QInputDialog::InputDialogOption>(option));
}

bool QInputDialog_testOption(const QInputDialog* self, int option) {
	return self->testOption(static_cast<QInputDialog::InputDialogOption>(option));
}

void QInputDialog_setOptions(QInputDialog* self, int options) {
	self->setOptions(static_cast<QInputDialog::InputDialogOptions>(options));
}

int QInputDialog_options(const QInputDialog* self) {
	QInputDialog::InputDialogOptions _ret = self->options();
	return static_cast<int>(_ret);
}

void QInputDialog_setTextValue(QInputDialog* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setTextValue(text_QString);
}

struct miqt_string QInputDialog_textValue(const QInputDialog* self) {
	QString _ret = self->textValue();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QInputDialog_setTextEchoMode(QInputDialog* self, int mode) {
	self->setTextEchoMode(static_cast<QLineEdit::EchoMode>(mode));
}

int QInputDialog_textEchoMode(const QInputDialog* self) {
	QLineEdit::EchoMode _ret = self->textEchoMode();
	return static_cast<int>(_ret);
}

void QInputDialog_setComboBoxEditable(QInputDialog* self, bool editable) {
	self->setComboBoxEditable(editable);
}

bool QInputDialog_isComboBoxEditable(const QInputDialog* self) {
	return self->isComboBoxEditable();
}

void QInputDialog_setComboBoxItems(QInputDialog* self, struct miqt_array /* of struct miqt_string */  items) {
	QStringList items_QList;
	items_QList.reserve(items.len);
	struct miqt_string* items_arr = static_cast<struct miqt_string*>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		QString items_arr_i_QString = QString::fromUtf8(items_arr[i].data, items_arr[i].len);
		items_QList.push_back(items_arr_i_QString);
	}
	self->setComboBoxItems(items_QList);
}

struct miqt_array /* of struct miqt_string */  QInputDialog_comboBoxItems(const QInputDialog* self) {
	QStringList _ret = self->comboBoxItems();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QInputDialog_setIntValue(QInputDialog* self, int value) {
	self->setIntValue(static_cast<int>(value));
}

int QInputDialog_intValue(const QInputDialog* self) {
	return self->intValue();
}

void QInputDialog_setIntMinimum(QInputDialog* self, int min) {
	self->setIntMinimum(static_cast<int>(min));
}

int QInputDialog_intMinimum(const QInputDialog* self) {
	return self->intMinimum();
}

void QInputDialog_setIntMaximum(QInputDialog* self, int max) {
	self->setIntMaximum(static_cast<int>(max));
}

int QInputDialog_intMaximum(const QInputDialog* self) {
	return self->intMaximum();
}

void QInputDialog_setIntRange(QInputDialog* self, int min, int max) {
	self->setIntRange(static_cast<int>(min), static_cast<int>(max));
}

void QInputDialog_setIntStep(QInputDialog* self, int step) {
	self->setIntStep(static_cast<int>(step));
}

int QInputDialog_intStep(const QInputDialog* self) {
	return self->intStep();
}

void QInputDialog_setDoubleValue(QInputDialog* self, double value) {
	self->setDoubleValue(static_cast<double>(value));
}

double QInputDialog_doubleValue(const QInputDialog* self) {
	return self->doubleValue();
}

void QInputDialog_setDoubleMinimum(QInputDialog* self, double min) {
	self->setDoubleMinimum(static_cast<double>(min));
}

double QInputDialog_doubleMinimum(const QInputDialog* self) {
	return self->doubleMinimum();
}

void QInputDialog_setDoubleMaximum(QInputDialog* self, double max) {
	self->setDoubleMaximum(static_cast<double>(max));
}

double QInputDialog_doubleMaximum(const QInputDialog* self) {
	return self->doubleMaximum();
}

void QInputDialog_setDoubleRange(QInputDialog* self, double min, double max) {
	self->setDoubleRange(static_cast<double>(min), static_cast<double>(max));
}

void QInputDialog_setDoubleDecimals(QInputDialog* self, int decimals) {
	self->setDoubleDecimals(static_cast<int>(decimals));
}

int QInputDialog_doubleDecimals(const QInputDialog* self) {
	return self->doubleDecimals();
}

void QInputDialog_setOkButtonText(QInputDialog* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setOkButtonText(text_QString);
}

struct miqt_string QInputDialog_okButtonText(const QInputDialog* self) {
	QString _ret = self->okButtonText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QInputDialog_setCancelButtonText(QInputDialog* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setCancelButtonText(text_QString);
}

struct miqt_string QInputDialog_cancelButtonText(const QInputDialog* self) {
	QString _ret = self->cancelButtonText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QInputDialog_minimumSizeHint(const QInputDialog* self) {
	return new QSize(self->minimumSizeHint());
}

QSize* QInputDialog_sizeHint(const QInputDialog* self) {
	return new QSize(self->sizeHint());
}

void QInputDialog_setVisible(QInputDialog* self, bool visible) {
	self->setVisible(visible);
}

struct miqt_string QInputDialog_getText(QWidget* parent, struct miqt_string title, struct miqt_string label) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QString _ret = QInputDialog::getText(parent, title_QString, label_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getMultiLineText(QWidget* parent, struct miqt_string title, struct miqt_string label) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QString _ret = QInputDialog::getMultiLineText(parent, title_QString, label_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getItem(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_array /* of struct miqt_string */  items) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QStringList items_QList;
	items_QList.reserve(items.len);
	struct miqt_string* items_arr = static_cast<struct miqt_string*>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		QString items_arr_i_QString = QString::fromUtf8(items_arr[i].data, items_arr[i].len);
		items_QList.push_back(items_arr_i_QString);
	}
	QString _ret = QInputDialog::getItem(parent, title_QString, label_QString, items_QList);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QInputDialog_getInt(QWidget* parent, struct miqt_string title, struct miqt_string label) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getInt(parent, title_QString, label_QString);
}

double QInputDialog_getDouble(QWidget* parent, struct miqt_string title, struct miqt_string label) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getDouble(parent, title_QString, label_QString);
}

double QInputDialog_getDouble2(QWidget* parent, struct miqt_string title, struct miqt_string label, double value, double minValue, double maxValue, int decimals, bool* ok, int flags, double step) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getDouble(parent, title_QString, label_QString, static_cast<double>(value), static_cast<double>(minValue), static_cast<double>(maxValue), static_cast<int>(decimals), ok, static_cast<Qt::WindowFlags>(flags), static_cast<double>(step));
}

void QInputDialog_setDoubleStep(QInputDialog* self, double step) {
	self->setDoubleStep(static_cast<double>(step));
}

double QInputDialog_doubleStep(const QInputDialog* self) {
	return self->doubleStep();
}

void QInputDialog_textValueChanged(QInputDialog* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->textValueChanged(text_QString);
}

void QInputDialog_connect_textValueChanged(QInputDialog* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QString& text) {
			const QString text_ret = text;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray text_b = text_ret.toUtf8();
			struct miqt_string text_ms;
			text_ms.len = text_b.length();
			text_ms.data = static_cast<char*>(malloc(text_ms.len));
			memcpy(text_ms.data, text_b.data(), text_ms.len);
			struct miqt_string sigval1 = text_ms;
			miqt_exec_callback_QInputDialog_textValueChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QInputDialog_textValueChanged_release(slot); }
	};
	MiqtVirtualQInputDialog::connect(self, static_cast<void (QInputDialog::*)(const QString&)>(&QInputDialog::textValueChanged), self, caller{slot});
}

void QInputDialog_textValueSelected(QInputDialog* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->textValueSelected(text_QString);
}

void QInputDialog_connect_textValueSelected(QInputDialog* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QString& text) {
			const QString text_ret = text;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray text_b = text_ret.toUtf8();
			struct miqt_string text_ms;
			text_ms.len = text_b.length();
			text_ms.data = static_cast<char*>(malloc(text_ms.len));
			memcpy(text_ms.data, text_b.data(), text_ms.len);
			struct miqt_string sigval1 = text_ms;
			miqt_exec_callback_QInputDialog_textValueSelected(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QInputDialog_textValueSelected_release(slot); }
	};
	MiqtVirtualQInputDialog::connect(self, static_cast<void (QInputDialog::*)(const QString&)>(&QInputDialog::textValueSelected), self, caller{slot});
}

void QInputDialog_intValueChanged(QInputDialog* self, int value) {
	self->intValueChanged(static_cast<int>(value));
}

void QInputDialog_connect_intValueChanged(QInputDialog* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(int value) {
			int sigval1 = value;
			miqt_exec_callback_QInputDialog_intValueChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QInputDialog_intValueChanged_release(slot); }
	};
	MiqtVirtualQInputDialog::connect(self, static_cast<void (QInputDialog::*)(int)>(&QInputDialog::intValueChanged), self, caller{slot});
}

void QInputDialog_intValueSelected(QInputDialog* self, int value) {
	self->intValueSelected(static_cast<int>(value));
}

void QInputDialog_connect_intValueSelected(QInputDialog* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(int value) {
			int sigval1 = value;
			miqt_exec_callback_QInputDialog_intValueSelected(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QInputDialog_intValueSelected_release(slot); }
	};
	MiqtVirtualQInputDialog::connect(self, static_cast<void (QInputDialog::*)(int)>(&QInputDialog::intValueSelected), self, caller{slot});
}

void QInputDialog_doubleValueChanged(QInputDialog* self, double value) {
	self->doubleValueChanged(static_cast<double>(value));
}

void QInputDialog_connect_doubleValueChanged(QInputDialog* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(double value) {
			double sigval1 = value;
			miqt_exec_callback_QInputDialog_doubleValueChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QInputDialog_doubleValueChanged_release(slot); }
	};
	MiqtVirtualQInputDialog::connect(self, static_cast<void (QInputDialog::*)(double)>(&QInputDialog::doubleValueChanged), self, caller{slot});
}

void QInputDialog_doubleValueSelected(QInputDialog* self, double value) {
	self->doubleValueSelected(static_cast<double>(value));
}

void QInputDialog_connect_doubleValueSelected(QInputDialog* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(double value) {
			double sigval1 = value;
			miqt_exec_callback_QInputDialog_doubleValueSelected(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QInputDialog_doubleValueSelected_release(slot); }
	};
	MiqtVirtualQInputDialog::connect(self, static_cast<void (QInputDialog::*)(double)>(&QInputDialog::doubleValueSelected), self, caller{slot});
}

void QInputDialog_done(QInputDialog* self, int result) {
	self->done(static_cast<int>(result));
}

struct miqt_string QInputDialog_tr2(const char* s, const char* c) {
	QString _ret = QInputDialog::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_tr3(const char* s, const char* c, int n) {
	QString _ret = QInputDialog::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_trUtf82(const char* s, const char* c) {
	QString _ret = QInputDialog::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QInputDialog::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QInputDialog_setOption2(QInputDialog* self, int option, bool on) {
	self->setOption(static_cast<QInputDialog::InputDialogOption>(option), on);
}

struct miqt_string QInputDialog_getText4(QWidget* parent, struct miqt_string title, struct miqt_string label, int echo) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QString _ret = QInputDialog::getText(parent, title_QString, label_QString, static_cast<QLineEdit::EchoMode>(echo));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getText5(QWidget* parent, struct miqt_string title, struct miqt_string label, int echo, struct miqt_string text) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString _ret = QInputDialog::getText(parent, title_QString, label_QString, static_cast<QLineEdit::EchoMode>(echo), text_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getText6(QWidget* parent, struct miqt_string title, struct miqt_string label, int echo, struct miqt_string text, bool* ok) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString _ret = QInputDialog::getText(parent, title_QString, label_QString, static_cast<QLineEdit::EchoMode>(echo), text_QString, ok);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getText7(QWidget* parent, struct miqt_string title, struct miqt_string label, int echo, struct miqt_string text, bool* ok, int flags) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString _ret = QInputDialog::getText(parent, title_QString, label_QString, static_cast<QLineEdit::EchoMode>(echo), text_QString, ok, static_cast<Qt::WindowFlags>(flags));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getText8(QWidget* parent, struct miqt_string title, struct miqt_string label, int echo, struct miqt_string text, bool* ok, int flags, int inputMethodHints) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString _ret = QInputDialog::getText(parent, title_QString, label_QString, static_cast<QLineEdit::EchoMode>(echo), text_QString, ok, static_cast<Qt::WindowFlags>(flags), static_cast<Qt::InputMethodHints>(inputMethodHints));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getMultiLineText4(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_string text) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString _ret = QInputDialog::getMultiLineText(parent, title_QString, label_QString, text_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getMultiLineText5(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_string text, bool* ok) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString _ret = QInputDialog::getMultiLineText(parent, title_QString, label_QString, text_QString, ok);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getMultiLineText6(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_string text, bool* ok, int flags) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString _ret = QInputDialog::getMultiLineText(parent, title_QString, label_QString, text_QString, ok, static_cast<Qt::WindowFlags>(flags));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getMultiLineText7(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_string text, bool* ok, int flags, int inputMethodHints) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString _ret = QInputDialog::getMultiLineText(parent, title_QString, label_QString, text_QString, ok, static_cast<Qt::WindowFlags>(flags), static_cast<Qt::InputMethodHints>(inputMethodHints));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getItem5(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_array /* of struct miqt_string */  items, int current) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QStringList items_QList;
	items_QList.reserve(items.len);
	struct miqt_string* items_arr = static_cast<struct miqt_string*>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		QString items_arr_i_QString = QString::fromUtf8(items_arr[i].data, items_arr[i].len);
		items_QList.push_back(items_arr_i_QString);
	}
	QString _ret = QInputDialog::getItem(parent, title_QString, label_QString, items_QList, static_cast<int>(current));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getItem6(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_array /* of struct miqt_string */  items, int current, bool editable) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QStringList items_QList;
	items_QList.reserve(items.len);
	struct miqt_string* items_arr = static_cast<struct miqt_string*>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		QString items_arr_i_QString = QString::fromUtf8(items_arr[i].data, items_arr[i].len);
		items_QList.push_back(items_arr_i_QString);
	}
	QString _ret = QInputDialog::getItem(parent, title_QString, label_QString, items_QList, static_cast<int>(current), editable);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getItem7(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_array /* of struct miqt_string */  items, int current, bool editable, bool* ok) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QStringList items_QList;
	items_QList.reserve(items.len);
	struct miqt_string* items_arr = static_cast<struct miqt_string*>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		QString items_arr_i_QString = QString::fromUtf8(items_arr[i].data, items_arr[i].len);
		items_QList.push_back(items_arr_i_QString);
	}
	QString _ret = QInputDialog::getItem(parent, title_QString, label_QString, items_QList, static_cast<int>(current), editable, ok);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getItem8(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_array /* of struct miqt_string */  items, int current, bool editable, bool* ok, int flags) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QStringList items_QList;
	items_QList.reserve(items.len);
	struct miqt_string* items_arr = static_cast<struct miqt_string*>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		QString items_arr_i_QString = QString::fromUtf8(items_arr[i].data, items_arr[i].len);
		items_QList.push_back(items_arr_i_QString);
	}
	QString _ret = QInputDialog::getItem(parent, title_QString, label_QString, items_QList, static_cast<int>(current), editable, ok, static_cast<Qt::WindowFlags>(flags));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QInputDialog_getItem9(QWidget* parent, struct miqt_string title, struct miqt_string label, struct miqt_array /* of struct miqt_string */  items, int current, bool editable, bool* ok, int flags, int inputMethodHints) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	QStringList items_QList;
	items_QList.reserve(items.len);
	struct miqt_string* items_arr = static_cast<struct miqt_string*>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		QString items_arr_i_QString = QString::fromUtf8(items_arr[i].data, items_arr[i].len);
		items_QList.push_back(items_arr_i_QString);
	}
	QString _ret = QInputDialog::getItem(parent, title_QString, label_QString, items_QList, static_cast<int>(current), editable, ok, static_cast<Qt::WindowFlags>(flags), static_cast<Qt::InputMethodHints>(inputMethodHints));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QInputDialog_getInt4(QWidget* parent, struct miqt_string title, struct miqt_string label, int value) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getInt(parent, title_QString, label_QString, static_cast<int>(value));
}

int QInputDialog_getInt5(QWidget* parent, struct miqt_string title, struct miqt_string label, int value, int minValue) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getInt(parent, title_QString, label_QString, static_cast<int>(value), static_cast<int>(minValue));
}

int QInputDialog_getInt6(QWidget* parent, struct miqt_string title, struct miqt_string label, int value, int minValue, int maxValue) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getInt(parent, title_QString, label_QString, static_cast<int>(value), static_cast<int>(minValue), static_cast<int>(maxValue));
}

int QInputDialog_getInt7(QWidget* parent, struct miqt_string title, struct miqt_string label, int value, int minValue, int maxValue, int step) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getInt(parent, title_QString, label_QString, static_cast<int>(value), static_cast<int>(minValue), static_cast<int>(maxValue), static_cast<int>(step));
}

int QInputDialog_getInt8(QWidget* parent, struct miqt_string title, struct miqt_string label, int value, int minValue, int maxValue, int step, bool* ok) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getInt(parent, title_QString, label_QString, static_cast<int>(value), static_cast<int>(minValue), static_cast<int>(maxValue), static_cast<int>(step), ok);
}

int QInputDialog_getInt9(QWidget* parent, struct miqt_string title, struct miqt_string label, int value, int minValue, int maxValue, int step, bool* ok, int flags) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getInt(parent, title_QString, label_QString, static_cast<int>(value), static_cast<int>(minValue), static_cast<int>(maxValue), static_cast<int>(step), ok, static_cast<Qt::WindowFlags>(flags));
}

double QInputDialog_getDouble4(QWidget* parent, struct miqt_string title, struct miqt_string label, double value) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getDouble(parent, title_QString, label_QString, static_cast<double>(value));
}

double QInputDialog_getDouble5(QWidget* parent, struct miqt_string title, struct miqt_string label, double value, double minValue) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getDouble(parent, title_QString, label_QString, static_cast<double>(value), static_cast<double>(minValue));
}

double QInputDialog_getDouble6(QWidget* parent, struct miqt_string title, struct miqt_string label, double value, double minValue, double maxValue) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getDouble(parent, title_QString, label_QString, static_cast<double>(value), static_cast<double>(minValue), static_cast<double>(maxValue));
}

double QInputDialog_getDouble7(QWidget* parent, struct miqt_string title, struct miqt_string label, double value, double minValue, double maxValue, int decimals) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getDouble(parent, title_QString, label_QString, static_cast<double>(value), static_cast<double>(minValue), static_cast<double>(maxValue), static_cast<int>(decimals));
}

double QInputDialog_getDouble8(QWidget* parent, struct miqt_string title, struct miqt_string label, double value, double minValue, double maxValue, int decimals, bool* ok) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getDouble(parent, title_QString, label_QString, static_cast<double>(value), static_cast<double>(minValue), static_cast<double>(maxValue), static_cast<int>(decimals), ok);
}

double QInputDialog_getDouble9(QWidget* parent, struct miqt_string title, struct miqt_string label, double value, double minValue, double maxValue, int decimals, bool* ok, int flags) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	QString label_QString = QString::fromUtf8(label.data, label.len);
	return QInputDialog::getDouble(parent, title_QString, label_QString, static_cast<double>(value), static_cast<double>(minValue), static_cast<double>(maxValue), static_cast<int>(decimals), ok, static_cast<Qt::WindowFlags>(flags));
}

QMetaObject* QInputDialog_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQInputDialog*)(self) )->virtualbase_metaObject();
}

void* QInputDialog_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQInputDialog*)(self) )->virtualbase_metacast(param1);
}

int QInputDialog_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQInputDialog*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QSize* QInputDialog_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQInputDialog*)(self) )->virtualbase_minimumSizeHint();
}

QSize* QInputDialog_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQInputDialog*)(self) )->virtualbase_sizeHint();
}

void QInputDialog_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_setVisible(visible);
}

void QInputDialog_virtualbase_done(void* self, int result) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_done(result);
}

void QInputDialog_virtualbase_open(void* self) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_open();
}

int QInputDialog_virtualbase_exec(void* self) {
	return ( (MiqtVirtualQInputDialog*)(self) )->virtualbase_exec();
}

void QInputDialog_virtualbase_accept(void* self) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_accept();
}

void QInputDialog_virtualbase_reject(void* self) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_reject();
}

void QInputDialog_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_keyPressEvent(param1);
}

void QInputDialog_virtualbase_closeEvent(void* self, QCloseEvent* param1) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_closeEvent(param1);
}

void QInputDialog_virtualbase_showEvent(void* self, QShowEvent* param1) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_showEvent(param1);
}

void QInputDialog_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_resizeEvent(param1);
}

void QInputDialog_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_contextMenuEvent(param1);
}

bool QInputDialog_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2) {
	return ( (MiqtVirtualQInputDialog*)(self) )->virtualbase_eventFilter(param1, param2);
}

int QInputDialog_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQInputDialog*)(self) )->virtualbase_devType();
}

int QInputDialog_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQInputDialog*)(self) )->virtualbase_heightForWidth(param1);
}

bool QInputDialog_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQInputDialog*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QInputDialog_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQInputDialog*)(self) )->virtualbase_paintEngine();
}

bool QInputDialog_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQInputDialog*)(self) )->virtualbase_event(event);
}

void QInputDialog_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_mousePressEvent(event);
}

void QInputDialog_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QInputDialog_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QInputDialog_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QInputDialog_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_wheelEvent(event);
}

void QInputDialog_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QInputDialog_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_focusInEvent(event);
}

void QInputDialog_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_focusOutEvent(event);
}

void QInputDialog_virtualbase_enterEvent(void* self, QEvent* event) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_enterEvent(event);
}

void QInputDialog_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_leaveEvent(event);
}

void QInputDialog_virtualbase_paintEvent(void* self, QPaintEvent* event) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_paintEvent(event);
}

void QInputDialog_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_moveEvent(event);
}

void QInputDialog_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_tabletEvent(event);
}

void QInputDialog_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_actionEvent(event);
}

void QInputDialog_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_dragEnterEvent(event);
}

void QInputDialog_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_dragMoveEvent(event);
}

void QInputDialog_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QInputDialog_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_dropEvent(event);
}

void QInputDialog_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_hideEvent(event);
}

bool QInputDialog_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	return ( (MiqtVirtualQInputDialog*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

void QInputDialog_virtualbase_changeEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_changeEvent(param1);
}

int QInputDialog_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQInputDialog*)(self) )->virtualbase_metric(param1);
}

void QInputDialog_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQInputDialog*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QInputDialog_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQInputDialog*)(self) )->virtualbase_redirected(offset);
}

QPainter* QInputDialog_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQInputDialog*)(self) )->virtualbase_sharedPainter();
}

void QInputDialog_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QInputDialog_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQInputDialog*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QInputDialog_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQInputDialog*)(self) )->virtualbase_focusNextPrevChild(next);
}

void QInputDialog_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_timerEvent(event);
}

void QInputDialog_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_childEvent(event);
}

void QInputDialog_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_customEvent(event);
}

void QInputDialog_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_connectNotify(signal);
}

void QInputDialog_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQInputDialog*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QInputDialog_staticMetaObject() { return &QInputDialog::staticMetaObject; }
void QInputDialog_protectedbase_adjustPosition(void* self, QWidget* param1) {
	MiqtVirtualQInputDialog* self_cast = static_cast<MiqtVirtualQInputDialog*>( (QInputDialog*)(self) );
	
	self_cast->adjustPosition(param1);

}

void QInputDialog_protectedbase_updateMicroFocus(void* self) {
	MiqtVirtualQInputDialog* self_cast = static_cast<MiqtVirtualQInputDialog*>( (QInputDialog*)(self) );
	
	self_cast->updateMicroFocus();

}

void QInputDialog_protectedbase_create(void* self) {
	MiqtVirtualQInputDialog* self_cast = static_cast<MiqtVirtualQInputDialog*>( (QInputDialog*)(self) );
	
	self_cast->create();

}

void QInputDialog_protectedbase_destroy(void* self) {
	MiqtVirtualQInputDialog* self_cast = static_cast<MiqtVirtualQInputDialog*>( (QInputDialog*)(self) );
	
	self_cast->destroy();

}

bool QInputDialog_protectedbase_focusNextChild(void* self) {
	MiqtVirtualQInputDialog* self_cast = static_cast<MiqtVirtualQInputDialog*>( (QInputDialog*)(self) );
	
	return self_cast->focusNextChild();

}

bool QInputDialog_protectedbase_focusPreviousChild(void* self) {
	MiqtVirtualQInputDialog* self_cast = static_cast<MiqtVirtualQInputDialog*>( (QInputDialog*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QInputDialog_protectedbase_sender(const void* self) {
	MiqtVirtualQInputDialog* self_cast = static_cast<MiqtVirtualQInputDialog*>( (QInputDialog*)(self) );
	
	return self_cast->sender();

}

int QInputDialog_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQInputDialog* self_cast = static_cast<MiqtVirtualQInputDialog*>( (QInputDialog*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QInputDialog_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQInputDialog* self_cast = static_cast<MiqtVirtualQInputDialog*>( (QInputDialog*)(self) );
	
	return self_cast->receivers(signal);

}

bool QInputDialog_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQInputDialog* self_cast = static_cast<MiqtVirtualQInputDialog*>( (QInputDialog*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QInputDialog_delete(QInputDialog* self) {
	delete self;
}

