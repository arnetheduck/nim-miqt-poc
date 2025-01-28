#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
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
#include <QMdiArea>
#include <QMdiSubWindow>
#include <QMenu>
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
#include <qmdisubwindow.h>
#include "gen_qmdisubwindow.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QMdiSubWindow_windowStateChanged(intptr_t, int, int);
void miqt_exec_callback_QMdiSubWindow_aboutToActivate(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQMdiSubWindow final : public QMdiSubWindow {
	struct QMdiSubWindow_VTable* vtbl;
public:

	MiqtVirtualQMdiSubWindow(struct QMdiSubWindow_VTable* vtbl, QWidget* parent): QMdiSubWindow(parent), vtbl(vtbl) {};
	MiqtVirtualQMdiSubWindow(struct QMdiSubWindow_VTable* vtbl): QMdiSubWindow(), vtbl(vtbl) {};
	MiqtVirtualQMdiSubWindow(struct QMdiSubWindow_VTable* vtbl, QWidget* parent, Qt::WindowFlags flags): QMdiSubWindow(parent, flags), vtbl(vtbl) {};

	virtual ~MiqtVirtualQMdiSubWindow() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMdiSubWindow::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QMdiSubWindow::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMdiSubWindow::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QMdiSubWindow::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMdiSubWindow::qt_metacall(param1, param2, param3);
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

		return QMdiSubWindow::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QMdiSubWindow::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QMdiSubWindow::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QMdiSubWindow::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QMdiSubWindow::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMdiSubWindow::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* object, QEvent* event) {

		return QMdiSubWindow::eventFilter(object, event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QMdiSubWindow::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QMdiSubWindow::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* showEvent) override {
		if (vtbl->showEvent == 0) {
			QMdiSubWindow::showEvent(showEvent);
			return;
		}

		QShowEvent* sigval1 = showEvent;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* showEvent) {

		QMdiSubWindow::showEvent(showEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* hideEvent) override {
		if (vtbl->hideEvent == 0) {
			QMdiSubWindow::hideEvent(hideEvent);
			return;
		}

		QHideEvent* sigval1 = hideEvent;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* hideEvent) {

		QMdiSubWindow::hideEvent(hideEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* changeEvent) override {
		if (vtbl->changeEvent == 0) {
			QMdiSubWindow::changeEvent(changeEvent);
			return;
		}

		QEvent* sigval1 = changeEvent;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* changeEvent) {

		QMdiSubWindow::changeEvent(changeEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* closeEvent) override {
		if (vtbl->closeEvent == 0) {
			QMdiSubWindow::closeEvent(closeEvent);
			return;
		}

		QCloseEvent* sigval1 = closeEvent;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* closeEvent) {

		QMdiSubWindow::closeEvent(closeEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* leaveEvent) override {
		if (vtbl->leaveEvent == 0) {
			QMdiSubWindow::leaveEvent(leaveEvent);
			return;
		}

		QEvent* sigval1 = leaveEvent;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* leaveEvent) {

		QMdiSubWindow::leaveEvent(leaveEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* resizeEvent) override {
		if (vtbl->resizeEvent == 0) {
			QMdiSubWindow::resizeEvent(resizeEvent);
			return;
		}

		QResizeEvent* sigval1 = resizeEvent;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* resizeEvent) {

		QMdiSubWindow::resizeEvent(resizeEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* timerEvent) override {
		if (vtbl->timerEvent == 0) {
			QMdiSubWindow::timerEvent(timerEvent);
			return;
		}

		QTimerEvent* sigval1 = timerEvent;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* timerEvent) {

		QMdiSubWindow::timerEvent(timerEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* moveEvent) override {
		if (vtbl->moveEvent == 0) {
			QMdiSubWindow::moveEvent(moveEvent);
			return;
		}

		QMoveEvent* sigval1 = moveEvent;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* moveEvent) {

		QMdiSubWindow::moveEvent(moveEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* paintEvent) override {
		if (vtbl->paintEvent == 0) {
			QMdiSubWindow::paintEvent(paintEvent);
			return;
		}

		QPaintEvent* sigval1 = paintEvent;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* paintEvent) {

		QMdiSubWindow::paintEvent(paintEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* mouseEvent) override {
		if (vtbl->mousePressEvent == 0) {
			QMdiSubWindow::mousePressEvent(mouseEvent);
			return;
		}

		QMouseEvent* sigval1 = mouseEvent;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* mouseEvent) {

		QMdiSubWindow::mousePressEvent(mouseEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* mouseEvent) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QMdiSubWindow::mouseDoubleClickEvent(mouseEvent);
			return;
		}

		QMouseEvent* sigval1 = mouseEvent;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* mouseEvent) {

		QMdiSubWindow::mouseDoubleClickEvent(mouseEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* mouseEvent) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QMdiSubWindow::mouseReleaseEvent(mouseEvent);
			return;
		}

		QMouseEvent* sigval1 = mouseEvent;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* mouseEvent) {

		QMdiSubWindow::mouseReleaseEvent(mouseEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* mouseEvent) override {
		if (vtbl->mouseMoveEvent == 0) {
			QMdiSubWindow::mouseMoveEvent(mouseEvent);
			return;
		}

		QMouseEvent* sigval1 = mouseEvent;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* mouseEvent) {

		QMdiSubWindow::mouseMoveEvent(mouseEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* keyEvent) override {
		if (vtbl->keyPressEvent == 0) {
			QMdiSubWindow::keyPressEvent(keyEvent);
			return;
		}

		QKeyEvent* sigval1 = keyEvent;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* keyEvent) {

		QMdiSubWindow::keyPressEvent(keyEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* contextMenuEvent) override {
		if (vtbl->contextMenuEvent == 0) {
			QMdiSubWindow::contextMenuEvent(contextMenuEvent);
			return;
		}

		QContextMenuEvent* sigval1 = contextMenuEvent;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* contextMenuEvent) {

		QMdiSubWindow::contextMenuEvent(contextMenuEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* focusInEvent) override {
		if (vtbl->focusInEvent == 0) {
			QMdiSubWindow::focusInEvent(focusInEvent);
			return;
		}

		QFocusEvent* sigval1 = focusInEvent;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* focusInEvent) {

		QMdiSubWindow::focusInEvent(focusInEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* focusOutEvent) override {
		if (vtbl->focusOutEvent == 0) {
			QMdiSubWindow::focusOutEvent(focusOutEvent);
			return;
		}

		QFocusEvent* sigval1 = focusOutEvent;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* focusOutEvent) {

		QMdiSubWindow::focusOutEvent(focusOutEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* childEvent) override {
		if (vtbl->childEvent == 0) {
			QMdiSubWindow::childEvent(childEvent);
			return;
		}

		QChildEvent* sigval1 = childEvent;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* childEvent) {

		QMdiSubWindow::childEvent(childEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QMdiSubWindow::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QMdiSubWindow::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QMdiSubWindow::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QMdiSubWindow::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QMdiSubWindow::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QMdiSubWindow::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QMdiSubWindow::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QMdiSubWindow::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QMdiSubWindow::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QMdiSubWindow::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QMdiSubWindow::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QMdiSubWindow::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QMdiSubWindow::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QMdiSubWindow::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QMdiSubWindow::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEnterEvent* event) {

		QMdiSubWindow::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QMdiSubWindow::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QMdiSubWindow::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QMdiSubWindow::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QMdiSubWindow::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QMdiSubWindow::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QMdiSubWindow::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QMdiSubWindow::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QMdiSubWindow::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QMdiSubWindow::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QMdiSubWindow::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QMdiSubWindow::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QMdiSubWindow::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QMdiSubWindow::nativeEvent(eventType, message, result);
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

		return QMdiSubWindow::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QMdiSubWindow::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QMdiSubWindow::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QMdiSubWindow::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QMdiSubWindow::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QMdiSubWindow::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QMdiSubWindow::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QMdiSubWindow::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QMdiSubWindow::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QMdiSubWindow::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QMdiSubWindow::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QMdiSubWindow::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QMdiSubWindow::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QMdiSubWindow::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QMdiSubWindow::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMdiSubWindow::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QMdiSubWindow::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMdiSubWindow::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QMdiSubWindow::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMdiSubWindow::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QMdiSubWindow::disconnectNotify(*signal);

	}

};

QMdiSubWindow* QMdiSubWindow_new(struct QMdiSubWindow_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQMdiSubWindow(vtbl, parent);
}

QMdiSubWindow* QMdiSubWindow_new2(struct QMdiSubWindow_VTable* vtbl) {
	return new MiqtVirtualQMdiSubWindow(vtbl);
}

QMdiSubWindow* QMdiSubWindow_new3(struct QMdiSubWindow_VTable* vtbl, QWidget* parent, int flags) {
	return new MiqtVirtualQMdiSubWindow(vtbl, parent, static_cast<Qt::WindowFlags>(flags));
}

void QMdiSubWindow_virtbase(QMdiSubWindow* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QMdiSubWindow_metaObject(const QMdiSubWindow* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMdiSubWindow_metacast(QMdiSubWindow* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMdiSubWindow_metacall(QMdiSubWindow* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMdiSubWindow_tr(const char* s) {
	QString _ret = QMdiSubWindow::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QMdiSubWindow_sizeHint(const QMdiSubWindow* self) {
	return new QSize(self->sizeHint());
}

QSize* QMdiSubWindow_minimumSizeHint(const QMdiSubWindow* self) {
	return new QSize(self->minimumSizeHint());
}

void QMdiSubWindow_setWidget(QMdiSubWindow* self, QWidget* widget) {
	self->setWidget(widget);
}

QWidget* QMdiSubWindow_widget(const QMdiSubWindow* self) {
	return self->widget();
}

QWidget* QMdiSubWindow_maximizedButtonsWidget(const QMdiSubWindow* self) {
	return self->maximizedButtonsWidget();
}

QWidget* QMdiSubWindow_maximizedSystemMenuIconWidget(const QMdiSubWindow* self) {
	return self->maximizedSystemMenuIconWidget();
}

bool QMdiSubWindow_isShaded(const QMdiSubWindow* self) {
	return self->isShaded();
}

void QMdiSubWindow_setOption(QMdiSubWindow* self, int option) {
	self->setOption(static_cast<QMdiSubWindow::SubWindowOption>(option));
}

bool QMdiSubWindow_testOption(const QMdiSubWindow* self, int param1) {
	return self->testOption(static_cast<QMdiSubWindow::SubWindowOption>(param1));
}

void QMdiSubWindow_setKeyboardSingleStep(QMdiSubWindow* self, int step) {
	self->setKeyboardSingleStep(static_cast<int>(step));
}

int QMdiSubWindow_keyboardSingleStep(const QMdiSubWindow* self) {
	return self->keyboardSingleStep();
}

void QMdiSubWindow_setKeyboardPageStep(QMdiSubWindow* self, int step) {
	self->setKeyboardPageStep(static_cast<int>(step));
}

int QMdiSubWindow_keyboardPageStep(const QMdiSubWindow* self) {
	return self->keyboardPageStep();
}

void QMdiSubWindow_setSystemMenu(QMdiSubWindow* self, QMenu* systemMenu) {
	self->setSystemMenu(systemMenu);
}

QMenu* QMdiSubWindow_systemMenu(const QMdiSubWindow* self) {
	return self->systemMenu();
}

QMdiArea* QMdiSubWindow_mdiArea(const QMdiSubWindow* self) {
	return self->mdiArea();
}

void QMdiSubWindow_windowStateChanged(QMdiSubWindow* self, int oldState, int newState) {
	self->windowStateChanged(static_cast<Qt::WindowStates>(oldState), static_cast<Qt::WindowStates>(newState));
}

void QMdiSubWindow_connect_windowStateChanged(QMdiSubWindow* self, intptr_t slot) {
	MiqtVirtualQMdiSubWindow::connect(self, static_cast<void (QMdiSubWindow::*)(Qt::WindowStates, Qt::WindowStates)>(&QMdiSubWindow::windowStateChanged), self, [=](Qt::WindowStates oldState, Qt::WindowStates newState) {
		Qt::WindowStates oldState_ret = oldState;
		int sigval1 = static_cast<int>(oldState_ret);
		Qt::WindowStates newState_ret = newState;
		int sigval2 = static_cast<int>(newState_ret);
		miqt_exec_callback_QMdiSubWindow_windowStateChanged(slot, sigval1, sigval2);
	});
}

void QMdiSubWindow_aboutToActivate(QMdiSubWindow* self) {
	self->aboutToActivate();
}

void QMdiSubWindow_connect_aboutToActivate(QMdiSubWindow* self, intptr_t slot) {
	MiqtVirtualQMdiSubWindow::connect(self, static_cast<void (QMdiSubWindow::*)()>(&QMdiSubWindow::aboutToActivate), self, [=]() {
		miqt_exec_callback_QMdiSubWindow_aboutToActivate(slot);
	});
}

void QMdiSubWindow_showSystemMenu(QMdiSubWindow* self) {
	self->showSystemMenu();
}

void QMdiSubWindow_showShaded(QMdiSubWindow* self) {
	self->showShaded();
}

struct miqt_string QMdiSubWindow_tr2(const char* s, const char* c) {
	QString _ret = QMdiSubWindow::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMdiSubWindow_tr3(const char* s, const char* c, int n) {
	QString _ret = QMdiSubWindow::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMdiSubWindow_setOption2(QMdiSubWindow* self, int option, bool on) {
	self->setOption(static_cast<QMdiSubWindow::SubWindowOption>(option), on);
}

QMetaObject* QMdiSubWindow_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_metaObject();
}

void* QMdiSubWindow_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_metacast(param1);
}

int QMdiSubWindow_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QSize* QMdiSubWindow_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_sizeHint();
}

QSize* QMdiSubWindow_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_minimumSizeHint();
}

bool QMdiSubWindow_virtualbase_eventFilter(void* self, QObject* object, QEvent* event) {
	return ( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_eventFilter(object, event);
}

bool QMdiSubWindow_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_event(event);
}

void QMdiSubWindow_virtualbase_showEvent(void* self, QShowEvent* showEvent) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_showEvent(showEvent);
}

void QMdiSubWindow_virtualbase_hideEvent(void* self, QHideEvent* hideEvent) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_hideEvent(hideEvent);
}

void QMdiSubWindow_virtualbase_changeEvent(void* self, QEvent* changeEvent) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_changeEvent(changeEvent);
}

void QMdiSubWindow_virtualbase_closeEvent(void* self, QCloseEvent* closeEvent) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_closeEvent(closeEvent);
}

void QMdiSubWindow_virtualbase_leaveEvent(void* self, QEvent* leaveEvent) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_leaveEvent(leaveEvent);
}

void QMdiSubWindow_virtualbase_resizeEvent(void* self, QResizeEvent* resizeEvent) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_resizeEvent(resizeEvent);
}

void QMdiSubWindow_virtualbase_timerEvent(void* self, QTimerEvent* timerEvent) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_timerEvent(timerEvent);
}

void QMdiSubWindow_virtualbase_moveEvent(void* self, QMoveEvent* moveEvent) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_moveEvent(moveEvent);
}

void QMdiSubWindow_virtualbase_paintEvent(void* self, QPaintEvent* paintEvent) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_paintEvent(paintEvent);
}

void QMdiSubWindow_virtualbase_mousePressEvent(void* self, QMouseEvent* mouseEvent) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_mousePressEvent(mouseEvent);
}

void QMdiSubWindow_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* mouseEvent) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_mouseDoubleClickEvent(mouseEvent);
}

void QMdiSubWindow_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* mouseEvent) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_mouseReleaseEvent(mouseEvent);
}

void QMdiSubWindow_virtualbase_mouseMoveEvent(void* self, QMouseEvent* mouseEvent) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_mouseMoveEvent(mouseEvent);
}

void QMdiSubWindow_virtualbase_keyPressEvent(void* self, QKeyEvent* keyEvent) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_keyPressEvent(keyEvent);
}

void QMdiSubWindow_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* contextMenuEvent) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_contextMenuEvent(contextMenuEvent);
}

void QMdiSubWindow_virtualbase_focusInEvent(void* self, QFocusEvent* focusInEvent) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_focusInEvent(focusInEvent);
}

void QMdiSubWindow_virtualbase_focusOutEvent(void* self, QFocusEvent* focusOutEvent) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_focusOutEvent(focusOutEvent);
}

void QMdiSubWindow_virtualbase_childEvent(void* self, QChildEvent* childEvent) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_childEvent(childEvent);
}

int QMdiSubWindow_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_devType();
}

void QMdiSubWindow_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_setVisible(visible);
}

int QMdiSubWindow_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_heightForWidth(param1);
}

bool QMdiSubWindow_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QMdiSubWindow_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_paintEngine();
}

void QMdiSubWindow_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_wheelEvent(event);
}

void QMdiSubWindow_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QMdiSubWindow_virtualbase_enterEvent(void* self, QEnterEvent* event) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_enterEvent(event);
}

void QMdiSubWindow_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_tabletEvent(event);
}

void QMdiSubWindow_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_actionEvent(event);
}

void QMdiSubWindow_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_dragEnterEvent(event);
}

void QMdiSubWindow_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_dragMoveEvent(event);
}

void QMdiSubWindow_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QMdiSubWindow_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_dropEvent(event);
}

bool QMdiSubWindow_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	return ( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

int QMdiSubWindow_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_metric(param1);
}

void QMdiSubWindow_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QMdiSubWindow_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_redirected(offset);
}

QPainter* QMdiSubWindow_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_sharedPainter();
}

void QMdiSubWindow_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QMdiSubWindow_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QMdiSubWindow_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_focusNextPrevChild(next);
}

void QMdiSubWindow_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_customEvent(event);
}

void QMdiSubWindow_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_connectNotify(signal);
}

void QMdiSubWindow_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQMdiSubWindow*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QMdiSubWindow_staticMetaObject() { return &QMdiSubWindow::staticMetaObject; }
void QMdiSubWindow_delete(QMdiSubWindow* self) {
	delete self;
}

