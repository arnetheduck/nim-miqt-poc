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
#include <QFocusFrame>
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
#include <QStyleOption>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qfocusframe.h>
#include "gen_qfocusframe.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQFocusFrame final : public QFocusFrame {
	struct QFocusFrame_VTable* vtbl;
public:

	MiqtVirtualQFocusFrame(struct QFocusFrame_VTable* vtbl, QWidget* parent): QFocusFrame(parent), vtbl(vtbl) {};
	MiqtVirtualQFocusFrame(struct QFocusFrame_VTable* vtbl): QFocusFrame(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQFocusFrame() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QFocusFrame::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QFocusFrame::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QFocusFrame::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QFocusFrame::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QFocusFrame::qt_metacall(param1, param2, param3);
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

		return QFocusFrame::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QFocusFrame::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* e) {

		return QFocusFrame::event(e);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QFocusFrame::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* param1, QEvent* param2) {

		return QFocusFrame::eventFilter(param1, param2);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QFocusFrame::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* param1) {

		QFocusFrame::paintEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QFocusFrame::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QFocusFrame::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QFocusFrame::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QFocusFrame::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QFocusFrame::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QFocusFrame::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QFocusFrame::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QFocusFrame::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QFocusFrame::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QFocusFrame::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QFocusFrame::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QFocusFrame::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QFocusFrame::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QFocusFrame::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QFocusFrame::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QFocusFrame::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QFocusFrame::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QFocusFrame::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QFocusFrame::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QFocusFrame::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QFocusFrame::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QFocusFrame::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QFocusFrame::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QFocusFrame::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QFocusFrame::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QFocusFrame::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QFocusFrame::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QFocusFrame::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QFocusFrame::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QFocusFrame::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QFocusFrame::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QFocusFrame::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QFocusFrame::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEvent* event) {

		QFocusFrame::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QFocusFrame::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QFocusFrame::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QFocusFrame::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QFocusFrame::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QFocusFrame::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* event) {

		QFocusFrame::resizeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QFocusFrame::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QFocusFrame::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QFocusFrame::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* event) {

		QFocusFrame::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QFocusFrame::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QFocusFrame::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QFocusFrame::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QFocusFrame::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QFocusFrame::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QFocusFrame::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QFocusFrame::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QFocusFrame::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QFocusFrame::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QFocusFrame::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QFocusFrame::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QFocusFrame::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QFocusFrame::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QFocusFrame::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QFocusFrame::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QFocusFrame::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QFocusFrame::nativeEvent(eventType, message, result);
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

		return QFocusFrame::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QFocusFrame::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* param1) {

		QFocusFrame::changeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QFocusFrame::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QFocusFrame::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QFocusFrame::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QFocusFrame::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QFocusFrame::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QFocusFrame::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QFocusFrame::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QFocusFrame::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QFocusFrame::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QFocusFrame::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QFocusFrame::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QFocusFrame::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QFocusFrame::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QFocusFrame::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QFocusFrame::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QFocusFrame::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QFocusFrame::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QFocusFrame::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QFocusFrame::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QFocusFrame::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QFocusFrame::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QFocusFrame::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QFocusFrame::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QFocusFrame::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	void protectedbase_initStyleOption(QStyleOption* option) const {

		QFocusFrame::initStyleOption(option);

	}

	// Wrapper to allow calling protected method
	void protectedbase_updateMicroFocus() {

		QFocusFrame::updateMicroFocus();

	}

	// Wrapper to allow calling protected method
	void protectedbase_create() {

		QFocusFrame::create();

	}

	// Wrapper to allow calling protected method
	void protectedbase_destroy() {

		QFocusFrame::destroy();

	}

	// Wrapper to allow calling protected method
	bool protectedbase_focusNextChild() {

		return QFocusFrame::focusNextChild();

	}

	// Wrapper to allow calling protected method
	bool protectedbase_focusPreviousChild() {

		return QFocusFrame::focusPreviousChild();

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QFocusFrame::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QFocusFrame::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QFocusFrame::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QFocusFrame::isSignalConnected(*signal);

	}

};

QFocusFrame* QFocusFrame_new(struct QFocusFrame_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQFocusFrame(vtbl, parent);
}

QFocusFrame* QFocusFrame_new2(struct QFocusFrame_VTable* vtbl) {
	return new MiqtVirtualQFocusFrame(vtbl);
}

void QFocusFrame_virtbase(QFocusFrame* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QFocusFrame_metaObject(const QFocusFrame* self) {
	return (QMetaObject*) self->metaObject();
}

void* QFocusFrame_metacast(QFocusFrame* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QFocusFrame_metacall(QFocusFrame* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QFocusFrame_tr(const char* s) {
	QString _ret = QFocusFrame::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFocusFrame_trUtf8(const char* s) {
	QString _ret = QFocusFrame::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QFocusFrame_setWidget(QFocusFrame* self, QWidget* widget) {
	self->setWidget(widget);
}

QWidget* QFocusFrame_widget(const QFocusFrame* self) {
	return self->widget();
}

struct miqt_string QFocusFrame_tr2(const char* s, const char* c) {
	QString _ret = QFocusFrame::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFocusFrame_tr3(const char* s, const char* c, int n) {
	QString _ret = QFocusFrame::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFocusFrame_trUtf82(const char* s, const char* c) {
	QString _ret = QFocusFrame::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFocusFrame_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QFocusFrame::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QFocusFrame_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQFocusFrame*)(self) )->virtualbase_metaObject();
}

void* QFocusFrame_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_metacast(param1);
}

int QFocusFrame_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QFocusFrame_virtualbase_event(void* self, QEvent* e) {
	return ( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_event(e);
}

bool QFocusFrame_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2) {
	return ( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_eventFilter(param1, param2);
}

void QFocusFrame_virtualbase_paintEvent(void* self, QPaintEvent* param1) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_paintEvent(param1);
}

int QFocusFrame_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQFocusFrame*)(self) )->virtualbase_devType();
}

void QFocusFrame_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_setVisible(visible);
}

QSize* QFocusFrame_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQFocusFrame*)(self) )->virtualbase_sizeHint();
}

QSize* QFocusFrame_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQFocusFrame*)(self) )->virtualbase_minimumSizeHint();
}

int QFocusFrame_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQFocusFrame*)(self) )->virtualbase_heightForWidth(param1);
}

bool QFocusFrame_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQFocusFrame*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QFocusFrame_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQFocusFrame*)(self) )->virtualbase_paintEngine();
}

void QFocusFrame_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_mousePressEvent(event);
}

void QFocusFrame_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QFocusFrame_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QFocusFrame_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QFocusFrame_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_wheelEvent(event);
}

void QFocusFrame_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_keyPressEvent(event);
}

void QFocusFrame_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QFocusFrame_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_focusInEvent(event);
}

void QFocusFrame_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_focusOutEvent(event);
}

void QFocusFrame_virtualbase_enterEvent(void* self, QEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_enterEvent(event);
}

void QFocusFrame_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_leaveEvent(event);
}

void QFocusFrame_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_moveEvent(event);
}

void QFocusFrame_virtualbase_resizeEvent(void* self, QResizeEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_resizeEvent(event);
}

void QFocusFrame_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_closeEvent(event);
}

void QFocusFrame_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_contextMenuEvent(event);
}

void QFocusFrame_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_tabletEvent(event);
}

void QFocusFrame_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_actionEvent(event);
}

void QFocusFrame_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_dragEnterEvent(event);
}

void QFocusFrame_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_dragMoveEvent(event);
}

void QFocusFrame_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QFocusFrame_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_dropEvent(event);
}

void QFocusFrame_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_showEvent(event);
}

void QFocusFrame_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_hideEvent(event);
}

bool QFocusFrame_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	return ( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

void QFocusFrame_virtualbase_changeEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_changeEvent(param1);
}

int QFocusFrame_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQFocusFrame*)(self) )->virtualbase_metric(param1);
}

void QFocusFrame_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQFocusFrame*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QFocusFrame_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQFocusFrame*)(self) )->virtualbase_redirected(offset);
}

QPainter* QFocusFrame_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQFocusFrame*)(self) )->virtualbase_sharedPainter();
}

void QFocusFrame_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QFocusFrame_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQFocusFrame*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QFocusFrame_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_focusNextPrevChild(next);
}

void QFocusFrame_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_timerEvent(event);
}

void QFocusFrame_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_childEvent(event);
}

void QFocusFrame_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_customEvent(event);
}

void QFocusFrame_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_connectNotify(signal);
}

void QFocusFrame_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQFocusFrame*)(self) )->virtualbase_disconnectNotify(signal);
}

void QFocusFrame_protectedbase_initStyleOption(const void* self, QStyleOption* option) {
	( (const MiqtVirtualQFocusFrame*)(self) )->protectedbase_initStyleOption(option);
}

void QFocusFrame_protectedbase_updateMicroFocus(void* self) {
	( (MiqtVirtualQFocusFrame*)(self) )->protectedbase_updateMicroFocus();
}

void QFocusFrame_protectedbase_create(void* self) {
	( (MiqtVirtualQFocusFrame*)(self) )->protectedbase_create();
}

void QFocusFrame_protectedbase_destroy(void* self) {
	( (MiqtVirtualQFocusFrame*)(self) )->protectedbase_destroy();
}

bool QFocusFrame_protectedbase_focusNextChild(void* self) {
	return ( (MiqtVirtualQFocusFrame*)(self) )->protectedbase_focusNextChild();
}

bool QFocusFrame_protectedbase_focusPreviousChild(void* self) {
	return ( (MiqtVirtualQFocusFrame*)(self) )->protectedbase_focusPreviousChild();
}

QObject* QFocusFrame_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQFocusFrame*)(self) )->protectedbase_sender();
}

int QFocusFrame_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQFocusFrame*)(self) )->protectedbase_senderSignalIndex();
}

int QFocusFrame_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQFocusFrame*)(self) )->protectedbase_receivers(signal);
}

bool QFocusFrame_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQFocusFrame*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QFocusFrame_staticMetaObject() { return &QFocusFrame::staticMetaObject; }
void QFocusFrame_delete(QFocusFrame* self) {
	delete self;
}

