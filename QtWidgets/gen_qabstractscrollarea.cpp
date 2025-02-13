#include <QAbstractScrollArea>
#include <QActionEvent>
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
#include <QMargins>
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
#include <QScrollBar>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionFrame>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qabstractscrollarea.h>
#include "gen_qabstractscrollarea.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQAbstractScrollArea final : public QAbstractScrollArea {
	struct QAbstractScrollArea_VTable* vtbl;
public:

	MiqtVirtualQAbstractScrollArea(struct QAbstractScrollArea_VTable* vtbl, QWidget* parent): QAbstractScrollArea(parent), vtbl(vtbl) {};
	MiqtVirtualQAbstractScrollArea(struct QAbstractScrollArea_VTable* vtbl): QAbstractScrollArea(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQAbstractScrollArea() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractScrollArea::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QAbstractScrollArea::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractScrollArea::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QAbstractScrollArea::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractScrollArea::qt_metacall(param1, param2, param3);
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

		return QAbstractScrollArea::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QAbstractScrollArea::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QAbstractScrollArea::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QAbstractScrollArea::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QAbstractScrollArea::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QAbstractScrollArea::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setupViewport(QWidget* viewport) {

		QAbstractScrollArea::setupViewport(viewport);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractScrollArea::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* param1, QEvent* param2) {

		return QAbstractScrollArea::eventFilter(param1, param2);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QAbstractScrollArea::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* param1) {

		return QAbstractScrollArea::event(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool viewportEvent(QEvent* param1) override {
		if (vtbl->viewportEvent == 0) {
			return QAbstractScrollArea::viewportEvent(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->viewportEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_viewportEvent(QEvent* param1) {

		return QAbstractScrollArea::viewportEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QAbstractScrollArea::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* param1) {

		QAbstractScrollArea::resizeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QAbstractScrollArea::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* param1) {

		QAbstractScrollArea::paintEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QAbstractScrollArea::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* param1) {

		QAbstractScrollArea::mousePressEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QAbstractScrollArea::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* param1) {

		QAbstractScrollArea::mouseReleaseEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* param1) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QAbstractScrollArea::mouseDoubleClickEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* param1) {

		QAbstractScrollArea::mouseDoubleClickEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QAbstractScrollArea::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* param1) {

		QAbstractScrollArea::mouseMoveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QAbstractScrollArea::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* param1) {

		QAbstractScrollArea::wheelEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QAbstractScrollArea::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* param1) {

		QAbstractScrollArea::contextMenuEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* param1) override {
		if (vtbl->dragEnterEvent == 0) {
			QAbstractScrollArea::dragEnterEvent(param1);
			return;
		}

		QDragEnterEvent* sigval1 = param1;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* param1) {

		QAbstractScrollArea::dragEnterEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* param1) override {
		if (vtbl->dragMoveEvent == 0) {
			QAbstractScrollArea::dragMoveEvent(param1);
			return;
		}

		QDragMoveEvent* sigval1 = param1;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* param1) {

		QAbstractScrollArea::dragMoveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* param1) override {
		if (vtbl->dragLeaveEvent == 0) {
			QAbstractScrollArea::dragLeaveEvent(param1);
			return;
		}

		QDragLeaveEvent* sigval1 = param1;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* param1) {

		QAbstractScrollArea::dragLeaveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* param1) override {
		if (vtbl->dropEvent == 0) {
			QAbstractScrollArea::dropEvent(param1);
			return;
		}

		QDropEvent* sigval1 = param1;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* param1) {

		QAbstractScrollArea::dropEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QAbstractScrollArea::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* param1) {

		QAbstractScrollArea::keyPressEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QAbstractScrollArea::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_scrollContentsBy(int dx, int dy) {

		QAbstractScrollArea::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));

	}

	// Subclass to allow providing a Go implementation
	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QAbstractScrollArea::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_viewportSizeHint() const {

		return new QSize(QAbstractScrollArea::viewportSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QAbstractScrollArea::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* param1) {

		QAbstractScrollArea::changeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QAbstractScrollArea::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QAbstractScrollArea::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QAbstractScrollArea::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QAbstractScrollArea::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QAbstractScrollArea::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QAbstractScrollArea::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QAbstractScrollArea::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QAbstractScrollArea::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QAbstractScrollArea::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QAbstractScrollArea::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QAbstractScrollArea::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QAbstractScrollArea::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QAbstractScrollArea::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QAbstractScrollArea::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QAbstractScrollArea::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QAbstractScrollArea::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QAbstractScrollArea::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEvent* event) {

		QAbstractScrollArea::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QAbstractScrollArea::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QAbstractScrollArea::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QAbstractScrollArea::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QAbstractScrollArea::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QAbstractScrollArea::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QAbstractScrollArea::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QAbstractScrollArea::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QAbstractScrollArea::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QAbstractScrollArea::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QAbstractScrollArea::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QAbstractScrollArea::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QAbstractScrollArea::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QAbstractScrollArea::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QAbstractScrollArea::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QAbstractScrollArea::nativeEvent(eventType, message, result);
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

		return QAbstractScrollArea::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QAbstractScrollArea::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QAbstractScrollArea::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QAbstractScrollArea::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QAbstractScrollArea::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QAbstractScrollArea::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QAbstractScrollArea::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QAbstractScrollArea::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QAbstractScrollArea::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QAbstractScrollArea::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QAbstractScrollArea::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QAbstractScrollArea::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QAbstractScrollArea::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QAbstractScrollArea::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QAbstractScrollArea::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAbstractScrollArea::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QAbstractScrollArea::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractScrollArea::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QAbstractScrollArea::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractScrollArea::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QAbstractScrollArea::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractScrollArea::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QAbstractScrollArea::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractScrollArea::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QAbstractScrollArea::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QAbstractScrollArea_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom);
	friend void QAbstractScrollArea_protectedbase_setViewportMarginsWithMargins(bool* _dynamic_cast_ok, void* self, QMargins* margins);
	friend QMargins* QAbstractScrollArea_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self);
	friend void QAbstractScrollArea_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1);
	friend void QAbstractScrollArea_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option);
	friend void QAbstractScrollArea_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QAbstractScrollArea_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QAbstractScrollArea_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QAbstractScrollArea_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QAbstractScrollArea_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QAbstractScrollArea_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QAbstractScrollArea_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QAbstractScrollArea_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QAbstractScrollArea_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QAbstractScrollArea* QAbstractScrollArea_new(struct QAbstractScrollArea_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQAbstractScrollArea(vtbl, parent);
}

QAbstractScrollArea* QAbstractScrollArea_new2(struct QAbstractScrollArea_VTable* vtbl) {
	return new MiqtVirtualQAbstractScrollArea(vtbl);
}

void QAbstractScrollArea_virtbase(QAbstractScrollArea* src, QFrame** outptr_QFrame) {
	*outptr_QFrame = static_cast<QFrame*>(src);
}

QMetaObject* QAbstractScrollArea_metaObject(const QAbstractScrollArea* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractScrollArea_metacast(QAbstractScrollArea* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractScrollArea_metacall(QAbstractScrollArea* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAbstractScrollArea_tr(const char* s) {
	QString _ret = QAbstractScrollArea::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractScrollArea_trUtf8(const char* s) {
	QString _ret = QAbstractScrollArea::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QAbstractScrollArea_verticalScrollBarPolicy(const QAbstractScrollArea* self) {
	Qt::ScrollBarPolicy _ret = self->verticalScrollBarPolicy();
	return static_cast<int>(_ret);
}

void QAbstractScrollArea_setVerticalScrollBarPolicy(QAbstractScrollArea* self, int verticalScrollBarPolicy) {
	self->setVerticalScrollBarPolicy(static_cast<Qt::ScrollBarPolicy>(verticalScrollBarPolicy));
}

QScrollBar* QAbstractScrollArea_verticalScrollBar(const QAbstractScrollArea* self) {
	return self->verticalScrollBar();
}

void QAbstractScrollArea_setVerticalScrollBar(QAbstractScrollArea* self, QScrollBar* scrollbar) {
	self->setVerticalScrollBar(scrollbar);
}

int QAbstractScrollArea_horizontalScrollBarPolicy(const QAbstractScrollArea* self) {
	Qt::ScrollBarPolicy _ret = self->horizontalScrollBarPolicy();
	return static_cast<int>(_ret);
}

void QAbstractScrollArea_setHorizontalScrollBarPolicy(QAbstractScrollArea* self, int horizontalScrollBarPolicy) {
	self->setHorizontalScrollBarPolicy(static_cast<Qt::ScrollBarPolicy>(horizontalScrollBarPolicy));
}

QScrollBar* QAbstractScrollArea_horizontalScrollBar(const QAbstractScrollArea* self) {
	return self->horizontalScrollBar();
}

void QAbstractScrollArea_setHorizontalScrollBar(QAbstractScrollArea* self, QScrollBar* scrollbar) {
	self->setHorizontalScrollBar(scrollbar);
}

QWidget* QAbstractScrollArea_cornerWidget(const QAbstractScrollArea* self) {
	return self->cornerWidget();
}

void QAbstractScrollArea_setCornerWidget(QAbstractScrollArea* self, QWidget* widget) {
	self->setCornerWidget(widget);
}

void QAbstractScrollArea_addScrollBarWidget(QAbstractScrollArea* self, QWidget* widget, int alignment) {
	self->addScrollBarWidget(widget, static_cast<Qt::Alignment>(alignment));
}

struct miqt_array /* of QWidget* */  QAbstractScrollArea_scrollBarWidgets(QAbstractScrollArea* self, int alignment) {
	QWidgetList _ret = self->scrollBarWidgets(static_cast<Qt::Alignment>(alignment));
	// Convert QList<> from C++ memory to manually-managed C memory
	QWidget** _arr = static_cast<QWidget**>(malloc(sizeof(QWidget*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QWidget* QAbstractScrollArea_viewport(const QAbstractScrollArea* self) {
	return self->viewport();
}

void QAbstractScrollArea_setViewport(QAbstractScrollArea* self, QWidget* widget) {
	self->setViewport(widget);
}

QSize* QAbstractScrollArea_maximumViewportSize(const QAbstractScrollArea* self) {
	return new QSize(self->maximumViewportSize());
}

QSize* QAbstractScrollArea_minimumSizeHint(const QAbstractScrollArea* self) {
	return new QSize(self->minimumSizeHint());
}

QSize* QAbstractScrollArea_sizeHint(const QAbstractScrollArea* self) {
	return new QSize(self->sizeHint());
}

void QAbstractScrollArea_setupViewport(QAbstractScrollArea* self, QWidget* viewport) {
	self->setupViewport(viewport);
}

int QAbstractScrollArea_sizeAdjustPolicy(const QAbstractScrollArea* self) {
	QAbstractScrollArea::SizeAdjustPolicy _ret = self->sizeAdjustPolicy();
	return static_cast<int>(_ret);
}

void QAbstractScrollArea_setSizeAdjustPolicy(QAbstractScrollArea* self, int policy) {
	self->setSizeAdjustPolicy(static_cast<QAbstractScrollArea::SizeAdjustPolicy>(policy));
}

struct miqt_string QAbstractScrollArea_tr2(const char* s, const char* c) {
	QString _ret = QAbstractScrollArea::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractScrollArea_tr3(const char* s, const char* c, int n) {
	QString _ret = QAbstractScrollArea::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractScrollArea_trUtf82(const char* s, const char* c) {
	QString _ret = QAbstractScrollArea::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractScrollArea_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAbstractScrollArea::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAbstractScrollArea_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_metaObject();
}

void* QAbstractScrollArea_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_metacast(param1);
}

int QAbstractScrollArea_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QSize* QAbstractScrollArea_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_minimumSizeHint();
}

QSize* QAbstractScrollArea_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_sizeHint();
}

void QAbstractScrollArea_virtualbase_setupViewport(void* self, QWidget* viewport) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_setupViewport(viewport);
}

bool QAbstractScrollArea_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2) {
	return ( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_eventFilter(param1, param2);
}

bool QAbstractScrollArea_virtualbase_event(void* self, QEvent* param1) {
	return ( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_event(param1);
}

bool QAbstractScrollArea_virtualbase_viewportEvent(void* self, QEvent* param1) {
	return ( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_viewportEvent(param1);
}

void QAbstractScrollArea_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_resizeEvent(param1);
}

void QAbstractScrollArea_virtualbase_paintEvent(void* self, QPaintEvent* param1) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_paintEvent(param1);
}

void QAbstractScrollArea_virtualbase_mousePressEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_mousePressEvent(param1);
}

void QAbstractScrollArea_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_mouseReleaseEvent(param1);
}

void QAbstractScrollArea_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_mouseDoubleClickEvent(param1);
}

void QAbstractScrollArea_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_mouseMoveEvent(param1);
}

void QAbstractScrollArea_virtualbase_wheelEvent(void* self, QWheelEvent* param1) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_wheelEvent(param1);
}

void QAbstractScrollArea_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_contextMenuEvent(param1);
}

void QAbstractScrollArea_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* param1) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_dragEnterEvent(param1);
}

void QAbstractScrollArea_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* param1) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_dragMoveEvent(param1);
}

void QAbstractScrollArea_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* param1) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_dragLeaveEvent(param1);
}

void QAbstractScrollArea_virtualbase_dropEvent(void* self, QDropEvent* param1) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_dropEvent(param1);
}

void QAbstractScrollArea_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_keyPressEvent(param1);
}

void QAbstractScrollArea_virtualbase_scrollContentsBy(void* self, int dx, int dy) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_scrollContentsBy(dx, dy);
}

QSize* QAbstractScrollArea_virtualbase_viewportSizeHint(const void* self) {
	return ( (const MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_viewportSizeHint();
}

void QAbstractScrollArea_virtualbase_changeEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_changeEvent(param1);
}

int QAbstractScrollArea_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_devType();
}

void QAbstractScrollArea_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_setVisible(visible);
}

int QAbstractScrollArea_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_heightForWidth(param1);
}

bool QAbstractScrollArea_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QAbstractScrollArea_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_paintEngine();
}

void QAbstractScrollArea_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QAbstractScrollArea_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_focusInEvent(event);
}

void QAbstractScrollArea_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_focusOutEvent(event);
}

void QAbstractScrollArea_virtualbase_enterEvent(void* self, QEvent* event) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_enterEvent(event);
}

void QAbstractScrollArea_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_leaveEvent(event);
}

void QAbstractScrollArea_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_moveEvent(event);
}

void QAbstractScrollArea_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_closeEvent(event);
}

void QAbstractScrollArea_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_tabletEvent(event);
}

void QAbstractScrollArea_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_actionEvent(event);
}

void QAbstractScrollArea_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_showEvent(event);
}

void QAbstractScrollArea_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_hideEvent(event);
}

bool QAbstractScrollArea_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	return ( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

int QAbstractScrollArea_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_metric(param1);
}

void QAbstractScrollArea_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QAbstractScrollArea_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_redirected(offset);
}

QPainter* QAbstractScrollArea_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_sharedPainter();
}

void QAbstractScrollArea_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QAbstractScrollArea_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QAbstractScrollArea_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_focusNextPrevChild(next);
}

void QAbstractScrollArea_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_timerEvent(event);
}

void QAbstractScrollArea_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_childEvent(event);
}

void QAbstractScrollArea_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_customEvent(event);
}

void QAbstractScrollArea_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_connectNotify(signal);
}

void QAbstractScrollArea_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQAbstractScrollArea*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QAbstractScrollArea_staticMetaObject() { return &QAbstractScrollArea::staticMetaObject; }
void QAbstractScrollArea_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom) {
	MiqtVirtualQAbstractScrollArea* self_cast = dynamic_cast<MiqtVirtualQAbstractScrollArea*>( (QAbstractScrollArea*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));

}

void QAbstractScrollArea_protectedbase_setViewportMarginsWithMargins(bool* _dynamic_cast_ok, void* self, QMargins* margins) {
	MiqtVirtualQAbstractScrollArea* self_cast = dynamic_cast<MiqtVirtualQAbstractScrollArea*>( (QAbstractScrollArea*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setViewportMargins(*margins);

}

QMargins* QAbstractScrollArea_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQAbstractScrollArea* self_cast = dynamic_cast<MiqtVirtualQAbstractScrollArea*>( (QAbstractScrollArea*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QMargins(self_cast->viewportMargins());

}

void QAbstractScrollArea_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1) {
	MiqtVirtualQAbstractScrollArea* self_cast = dynamic_cast<MiqtVirtualQAbstractScrollArea*>( (QAbstractScrollArea*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->drawFrame(param1);

}

void QAbstractScrollArea_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option) {
	MiqtVirtualQAbstractScrollArea* self_cast = dynamic_cast<MiqtVirtualQAbstractScrollArea*>( (QAbstractScrollArea*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->initStyleOption(option);

}

void QAbstractScrollArea_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQAbstractScrollArea* self_cast = dynamic_cast<MiqtVirtualQAbstractScrollArea*>( (QAbstractScrollArea*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QAbstractScrollArea_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQAbstractScrollArea* self_cast = dynamic_cast<MiqtVirtualQAbstractScrollArea*>( (QAbstractScrollArea*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QAbstractScrollArea_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQAbstractScrollArea* self_cast = dynamic_cast<MiqtVirtualQAbstractScrollArea*>( (QAbstractScrollArea*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QAbstractScrollArea_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQAbstractScrollArea* self_cast = dynamic_cast<MiqtVirtualQAbstractScrollArea*>( (QAbstractScrollArea*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QAbstractScrollArea_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQAbstractScrollArea* self_cast = dynamic_cast<MiqtVirtualQAbstractScrollArea*>( (QAbstractScrollArea*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QAbstractScrollArea_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQAbstractScrollArea* self_cast = dynamic_cast<MiqtVirtualQAbstractScrollArea*>( (QAbstractScrollArea*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QAbstractScrollArea_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQAbstractScrollArea* self_cast = dynamic_cast<MiqtVirtualQAbstractScrollArea*>( (QAbstractScrollArea*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QAbstractScrollArea_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	MiqtVirtualQAbstractScrollArea* self_cast = dynamic_cast<MiqtVirtualQAbstractScrollArea*>( (QAbstractScrollArea*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QAbstractScrollArea_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	MiqtVirtualQAbstractScrollArea* self_cast = dynamic_cast<MiqtVirtualQAbstractScrollArea*>( (QAbstractScrollArea*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QAbstractScrollArea_delete(QAbstractScrollArea* self) {
	delete self;
}

