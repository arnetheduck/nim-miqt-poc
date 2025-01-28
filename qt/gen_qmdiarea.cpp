#include <QAbstractScrollArea>
#include <QActionEvent>
#include <QBrush>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QFrame>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QList>
#include <QMdiArea>
#include <QMdiSubWindow>
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
#include <qmdiarea.h>
#include "gen_qmdiarea.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QMdiArea_subWindowActivated(intptr_t, QMdiSubWindow*);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQMdiArea final : public QMdiArea {
	struct QMdiArea_VTable* vtbl;
public:

	MiqtVirtualQMdiArea(struct QMdiArea_VTable* vtbl, QWidget* parent): QMdiArea(parent), vtbl(vtbl) {};
	MiqtVirtualQMdiArea(struct QMdiArea_VTable* vtbl): QMdiArea(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQMdiArea() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMdiArea::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QMdiArea::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMdiArea::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QMdiArea::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMdiArea::qt_metacall(param1, param2, param3);
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

		return QMdiArea::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QMdiArea::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QMdiArea::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QMdiArea::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QMdiArea::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QMdiArea::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setupViewport(QWidget* viewport) {

		QMdiArea::setupViewport(viewport);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QMdiArea::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QMdiArea::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMdiArea::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* object, QEvent* event) {

		return QMdiArea::eventFilter(object, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* paintEvent) override {
		if (vtbl->paintEvent == 0) {
			QMdiArea::paintEvent(paintEvent);
			return;
		}

		QPaintEvent* sigval1 = paintEvent;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* paintEvent) {

		QMdiArea::paintEvent(paintEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* childEvent) override {
		if (vtbl->childEvent == 0) {
			QMdiArea::childEvent(childEvent);
			return;
		}

		QChildEvent* sigval1 = childEvent;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* childEvent) {

		QMdiArea::childEvent(childEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* resizeEvent) override {
		if (vtbl->resizeEvent == 0) {
			QMdiArea::resizeEvent(resizeEvent);
			return;
		}

		QResizeEvent* sigval1 = resizeEvent;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* resizeEvent) {

		QMdiArea::resizeEvent(resizeEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* timerEvent) override {
		if (vtbl->timerEvent == 0) {
			QMdiArea::timerEvent(timerEvent);
			return;
		}

		QTimerEvent* sigval1 = timerEvent;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* timerEvent) {

		QMdiArea::timerEvent(timerEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* showEvent) override {
		if (vtbl->showEvent == 0) {
			QMdiArea::showEvent(showEvent);
			return;
		}

		QShowEvent* sigval1 = showEvent;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* showEvent) {

		QMdiArea::showEvent(showEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual bool viewportEvent(QEvent* event) override {
		if (vtbl->viewportEvent == 0) {
			return QMdiArea::viewportEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->viewportEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_viewportEvent(QEvent* event) {

		return QMdiArea::viewportEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QMdiArea::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_scrollContentsBy(int dx, int dy) {

		QMdiArea::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QMdiArea::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* param1) {

		QMdiArea::mousePressEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QMdiArea::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* param1) {

		QMdiArea::mouseReleaseEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* param1) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QMdiArea::mouseDoubleClickEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* param1) {

		QMdiArea::mouseDoubleClickEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QMdiArea::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* param1) {

		QMdiArea::mouseMoveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QMdiArea::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* param1) {

		QMdiArea::wheelEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QMdiArea::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* param1) {

		QMdiArea::contextMenuEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* param1) override {
		if (vtbl->dragEnterEvent == 0) {
			QMdiArea::dragEnterEvent(param1);
			return;
		}

		QDragEnterEvent* sigval1 = param1;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* param1) {

		QMdiArea::dragEnterEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* param1) override {
		if (vtbl->dragMoveEvent == 0) {
			QMdiArea::dragMoveEvent(param1);
			return;
		}

		QDragMoveEvent* sigval1 = param1;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* param1) {

		QMdiArea::dragMoveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* param1) override {
		if (vtbl->dragLeaveEvent == 0) {
			QMdiArea::dragLeaveEvent(param1);
			return;
		}

		QDragLeaveEvent* sigval1 = param1;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* param1) {

		QMdiArea::dragLeaveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* param1) override {
		if (vtbl->dropEvent == 0) {
			QMdiArea::dropEvent(param1);
			return;
		}

		QDropEvent* sigval1 = param1;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* param1) {

		QMdiArea::dropEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QMdiArea::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* param1) {

		QMdiArea::keyPressEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QMdiArea::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_viewportSizeHint() const {

		return new QSize(QMdiArea::viewportSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QMdiArea::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* param1) {

		QMdiArea::changeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QMdiArea::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QMdiArea::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QMdiArea::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QMdiArea::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QMdiArea::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QMdiArea::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QMdiArea::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QMdiArea::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QMdiArea::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QMdiArea::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QMdiArea::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QMdiArea::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QMdiArea::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QMdiArea::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QMdiArea::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QMdiArea::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QMdiArea::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEvent* event) {

		QMdiArea::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QMdiArea::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QMdiArea::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QMdiArea::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QMdiArea::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QMdiArea::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QMdiArea::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QMdiArea::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QMdiArea::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QMdiArea::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QMdiArea::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QMdiArea::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QMdiArea::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QMdiArea::nativeEvent(eventType, message, result);
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

		return QMdiArea::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QMdiArea::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QMdiArea::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QMdiArea::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QMdiArea::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QMdiArea::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QMdiArea::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QMdiArea::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QMdiArea::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QMdiArea::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QMdiArea::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QMdiArea::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QMdiArea::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QMdiArea::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QMdiArea::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMdiArea::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QMdiArea::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMdiArea::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QMdiArea::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMdiArea::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QMdiArea::disconnectNotify(*signal);

	}

};

QMdiArea* QMdiArea_new(struct QMdiArea_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQMdiArea(vtbl, parent);
}

QMdiArea* QMdiArea_new2(struct QMdiArea_VTable* vtbl) {
	return new MiqtVirtualQMdiArea(vtbl);
}

void QMdiArea_virtbase(QMdiArea* src, QAbstractScrollArea** outptr_QAbstractScrollArea) {
	*outptr_QAbstractScrollArea = static_cast<QAbstractScrollArea*>(src);
}

QMetaObject* QMdiArea_metaObject(const QMdiArea* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMdiArea_metacast(QMdiArea* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMdiArea_metacall(QMdiArea* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMdiArea_tr(const char* s) {
	QString _ret = QMdiArea::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMdiArea_trUtf8(const char* s) {
	QString _ret = QMdiArea::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QMdiArea_sizeHint(const QMdiArea* self) {
	return new QSize(self->sizeHint());
}

QSize* QMdiArea_minimumSizeHint(const QMdiArea* self) {
	return new QSize(self->minimumSizeHint());
}

QMdiSubWindow* QMdiArea_currentSubWindow(const QMdiArea* self) {
	return self->currentSubWindow();
}

QMdiSubWindow* QMdiArea_activeSubWindow(const QMdiArea* self) {
	return self->activeSubWindow();
}

struct miqt_array /* of QMdiSubWindow* */  QMdiArea_subWindowList(const QMdiArea* self) {
	QList<QMdiSubWindow *> _ret = self->subWindowList();
	// Convert QList<> from C++ memory to manually-managed C memory
	QMdiSubWindow** _arr = static_cast<QMdiSubWindow**>(malloc(sizeof(QMdiSubWindow*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QMdiSubWindow* QMdiArea_addSubWindow(QMdiArea* self, QWidget* widget) {
	return self->addSubWindow(widget);
}

void QMdiArea_removeSubWindow(QMdiArea* self, QWidget* widget) {
	self->removeSubWindow(widget);
}

QBrush* QMdiArea_background(const QMdiArea* self) {
	return new QBrush(self->background());
}

void QMdiArea_setBackground(QMdiArea* self, QBrush* background) {
	self->setBackground(*background);
}

int QMdiArea_activationOrder(const QMdiArea* self) {
	QMdiArea::WindowOrder _ret = self->activationOrder();
	return static_cast<int>(_ret);
}

void QMdiArea_setActivationOrder(QMdiArea* self, int order) {
	self->setActivationOrder(static_cast<QMdiArea::WindowOrder>(order));
}

void QMdiArea_setOption(QMdiArea* self, int option) {
	self->setOption(static_cast<QMdiArea::AreaOption>(option));
}

bool QMdiArea_testOption(const QMdiArea* self, int opton) {
	return self->testOption(static_cast<QMdiArea::AreaOption>(opton));
}

void QMdiArea_setViewMode(QMdiArea* self, int mode) {
	self->setViewMode(static_cast<QMdiArea::ViewMode>(mode));
}

int QMdiArea_viewMode(const QMdiArea* self) {
	QMdiArea::ViewMode _ret = self->viewMode();
	return static_cast<int>(_ret);
}

bool QMdiArea_documentMode(const QMdiArea* self) {
	return self->documentMode();
}

void QMdiArea_setDocumentMode(QMdiArea* self, bool enabled) {
	self->setDocumentMode(enabled);
}

void QMdiArea_setTabsClosable(QMdiArea* self, bool closable) {
	self->setTabsClosable(closable);
}

bool QMdiArea_tabsClosable(const QMdiArea* self) {
	return self->tabsClosable();
}

void QMdiArea_setTabsMovable(QMdiArea* self, bool movable) {
	self->setTabsMovable(movable);
}

bool QMdiArea_tabsMovable(const QMdiArea* self) {
	return self->tabsMovable();
}

void QMdiArea_setTabShape(QMdiArea* self, int shape) {
	self->setTabShape(static_cast<QTabWidget::TabShape>(shape));
}

int QMdiArea_tabShape(const QMdiArea* self) {
	QTabWidget::TabShape _ret = self->tabShape();
	return static_cast<int>(_ret);
}

void QMdiArea_setTabPosition(QMdiArea* self, int position) {
	self->setTabPosition(static_cast<QTabWidget::TabPosition>(position));
}

int QMdiArea_tabPosition(const QMdiArea* self) {
	QTabWidget::TabPosition _ret = self->tabPosition();
	return static_cast<int>(_ret);
}

void QMdiArea_subWindowActivated(QMdiArea* self, QMdiSubWindow* param1) {
	self->subWindowActivated(param1);
}

void QMdiArea_connect_subWindowActivated(QMdiArea* self, intptr_t slot) {
	MiqtVirtualQMdiArea::connect(self, static_cast<void (QMdiArea::*)(QMdiSubWindow*)>(&QMdiArea::subWindowActivated), self, [=](QMdiSubWindow* param1) {
		QMdiSubWindow* sigval1 = param1;
		miqt_exec_callback_QMdiArea_subWindowActivated(slot, sigval1);
	});
}

void QMdiArea_setActiveSubWindow(QMdiArea* self, QMdiSubWindow* window) {
	self->setActiveSubWindow(window);
}

void QMdiArea_tileSubWindows(QMdiArea* self) {
	self->tileSubWindows();
}

void QMdiArea_cascadeSubWindows(QMdiArea* self) {
	self->cascadeSubWindows();
}

void QMdiArea_closeActiveSubWindow(QMdiArea* self) {
	self->closeActiveSubWindow();
}

void QMdiArea_closeAllSubWindows(QMdiArea* self) {
	self->closeAllSubWindows();
}

void QMdiArea_activateNextSubWindow(QMdiArea* self) {
	self->activateNextSubWindow();
}

void QMdiArea_activatePreviousSubWindow(QMdiArea* self) {
	self->activatePreviousSubWindow();
}

struct miqt_string QMdiArea_tr2(const char* s, const char* c) {
	QString _ret = QMdiArea::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMdiArea_tr3(const char* s, const char* c, int n) {
	QString _ret = QMdiArea::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMdiArea_trUtf82(const char* s, const char* c) {
	QString _ret = QMdiArea::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMdiArea_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QMdiArea::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of QMdiSubWindow* */  QMdiArea_subWindowList1(const QMdiArea* self, int order) {
	QList<QMdiSubWindow *> _ret = self->subWindowList(static_cast<QMdiArea::WindowOrder>(order));
	// Convert QList<> from C++ memory to manually-managed C memory
	QMdiSubWindow** _arr = static_cast<QMdiSubWindow**>(malloc(sizeof(QMdiSubWindow*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QMdiSubWindow* QMdiArea_addSubWindow2(QMdiArea* self, QWidget* widget, int flags) {
	return self->addSubWindow(widget, static_cast<Qt::WindowFlags>(flags));
}

void QMdiArea_setOption2(QMdiArea* self, int option, bool on) {
	self->setOption(static_cast<QMdiArea::AreaOption>(option), on);
}

QMetaObject* QMdiArea_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQMdiArea*)(self) )->virtualbase_metaObject();
}

void* QMdiArea_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQMdiArea*)(self) )->virtualbase_metacast(param1);
}

int QMdiArea_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQMdiArea*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QSize* QMdiArea_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQMdiArea*)(self) )->virtualbase_sizeHint();
}

QSize* QMdiArea_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQMdiArea*)(self) )->virtualbase_minimumSizeHint();
}

void QMdiArea_virtualbase_setupViewport(void* self, QWidget* viewport) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_setupViewport(viewport);
}

bool QMdiArea_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQMdiArea*)(self) )->virtualbase_event(event);
}

bool QMdiArea_virtualbase_eventFilter(void* self, QObject* object, QEvent* event) {
	return ( (MiqtVirtualQMdiArea*)(self) )->virtualbase_eventFilter(object, event);
}

void QMdiArea_virtualbase_paintEvent(void* self, QPaintEvent* paintEvent) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_paintEvent(paintEvent);
}

void QMdiArea_virtualbase_childEvent(void* self, QChildEvent* childEvent) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_childEvent(childEvent);
}

void QMdiArea_virtualbase_resizeEvent(void* self, QResizeEvent* resizeEvent) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_resizeEvent(resizeEvent);
}

void QMdiArea_virtualbase_timerEvent(void* self, QTimerEvent* timerEvent) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_timerEvent(timerEvent);
}

void QMdiArea_virtualbase_showEvent(void* self, QShowEvent* showEvent) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_showEvent(showEvent);
}

bool QMdiArea_virtualbase_viewportEvent(void* self, QEvent* event) {
	return ( (MiqtVirtualQMdiArea*)(self) )->virtualbase_viewportEvent(event);
}

void QMdiArea_virtualbase_scrollContentsBy(void* self, int dx, int dy) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_scrollContentsBy(dx, dy);
}

void QMdiArea_virtualbase_mousePressEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_mousePressEvent(param1);
}

void QMdiArea_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_mouseReleaseEvent(param1);
}

void QMdiArea_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_mouseDoubleClickEvent(param1);
}

void QMdiArea_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_mouseMoveEvent(param1);
}

void QMdiArea_virtualbase_wheelEvent(void* self, QWheelEvent* param1) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_wheelEvent(param1);
}

void QMdiArea_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_contextMenuEvent(param1);
}

void QMdiArea_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_dragEnterEvent(param1);
}

void QMdiArea_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_dragMoveEvent(param1);
}

void QMdiArea_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_dragLeaveEvent(param1);
}

void QMdiArea_virtualbase_dropEvent(void* self, QDropEvent* param1) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_dropEvent(param1);
}

void QMdiArea_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_keyPressEvent(param1);
}

QSize* QMdiArea_virtualbase_viewportSizeHint(const void* self) {
	return ( (const MiqtVirtualQMdiArea*)(self) )->virtualbase_viewportSizeHint();
}

void QMdiArea_virtualbase_changeEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_changeEvent(param1);
}

int QMdiArea_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQMdiArea*)(self) )->virtualbase_devType();
}

void QMdiArea_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_setVisible(visible);
}

int QMdiArea_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQMdiArea*)(self) )->virtualbase_heightForWidth(param1);
}

bool QMdiArea_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQMdiArea*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QMdiArea_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQMdiArea*)(self) )->virtualbase_paintEngine();
}

void QMdiArea_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QMdiArea_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_focusInEvent(event);
}

void QMdiArea_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_focusOutEvent(event);
}

void QMdiArea_virtualbase_enterEvent(void* self, QEvent* event) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_enterEvent(event);
}

void QMdiArea_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_leaveEvent(event);
}

void QMdiArea_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_moveEvent(event);
}

void QMdiArea_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_closeEvent(event);
}

void QMdiArea_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_tabletEvent(event);
}

void QMdiArea_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_actionEvent(event);
}

void QMdiArea_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_hideEvent(event);
}

bool QMdiArea_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	return ( (MiqtVirtualQMdiArea*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

int QMdiArea_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQMdiArea*)(self) )->virtualbase_metric(param1);
}

void QMdiArea_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQMdiArea*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QMdiArea_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQMdiArea*)(self) )->virtualbase_redirected(offset);
}

QPainter* QMdiArea_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQMdiArea*)(self) )->virtualbase_sharedPainter();
}

void QMdiArea_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QMdiArea_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQMdiArea*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QMdiArea_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQMdiArea*)(self) )->virtualbase_focusNextPrevChild(next);
}

void QMdiArea_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_customEvent(event);
}

void QMdiArea_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_connectNotify(signal);
}

void QMdiArea_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQMdiArea*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QMdiArea_staticMetaObject() { return &QMdiArea::staticMetaObject; }
void QMdiArea_delete(QMdiArea* self) {
	delete self;
}

