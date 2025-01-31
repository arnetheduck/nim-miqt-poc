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
#include <QWebInspector>
#include <QWebPage>
#include <QWheelEvent>
#include <QWidget>
#include <qwebinspector.h>
#include "gen_qwebinspector.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQWebInspector final : public QWebInspector {
	struct QWebInspector_VTable* vtbl;
public:

	MiqtVirtualQWebInspector(struct QWebInspector_VTable* vtbl, QWidget* parent): QWebInspector(parent), vtbl(vtbl) {};
	MiqtVirtualQWebInspector(struct QWebInspector_VTable* vtbl): QWebInspector(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQWebInspector() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWebInspector::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QWebInspector::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWebInspector::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QWebInspector::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWebInspector::qt_metacall(param1, param2, param3);
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

		return QWebInspector::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QWebInspector::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QWebInspector::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QWebInspector::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* param1) {

		return QWebInspector::event(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QWebInspector::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* event) {

		QWebInspector::resizeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QWebInspector::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QWebInspector::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QWebInspector::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QWebInspector::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QWebInspector::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QWebInspector::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QWebInspector::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QWebInspector::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QWebInspector::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QWebInspector::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QWebInspector::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QWebInspector::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QWebInspector::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QWebInspector::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QWebInspector::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QWebInspector::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QWebInspector::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QWebInspector::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QWebInspector::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QWebInspector::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QWebInspector::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QWebInspector::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QWebInspector::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QWebInspector::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QWebInspector::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QWebInspector::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QWebInspector::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QWebInspector::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QWebInspector::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QWebInspector::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QWebInspector::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QWebInspector::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QWebInspector::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QWebInspector::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QWebInspector::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QWebInspector::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QWebInspector::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEvent* event) {

		QWebInspector::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QWebInspector::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QWebInspector::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QWebInspector::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* event) {

		QWebInspector::paintEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QWebInspector::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QWebInspector::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QWebInspector::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* event) {

		QWebInspector::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QWebInspector::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QWebInspector::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QWebInspector::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QWebInspector::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QWebInspector::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QWebInspector::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QWebInspector::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QWebInspector::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QWebInspector::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QWebInspector::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QWebInspector::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QWebInspector::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QWebInspector::nativeEvent(eventType, message, result);
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

		return QWebInspector::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QWebInspector::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* param1) {

		QWebInspector::changeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QWebInspector::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QWebInspector::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QWebInspector::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QWebInspector::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QWebInspector::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QWebInspector::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QWebInspector::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QWebInspector::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QWebInspector::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QWebInspector::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QWebInspector::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QWebInspector::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QWebInspector::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QWebInspector::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWebInspector::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QWebInspector::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWebInspector::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QWebInspector::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWebInspector::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QWebInspector::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWebInspector::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QWebInspector::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWebInspector::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QWebInspector::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWebInspector::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QWebInspector::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	void protectedbase_updateMicroFocus() {

		QWebInspector::updateMicroFocus();

	}

	// Wrapper to allow calling protected method
	void protectedbase_create() {

		QWebInspector::create();

	}

	// Wrapper to allow calling protected method
	void protectedbase_destroy() {

		QWebInspector::destroy();

	}

	// Wrapper to allow calling protected method
	bool protectedbase_focusNextChild() {

		return QWebInspector::focusNextChild();

	}

	// Wrapper to allow calling protected method
	bool protectedbase_focusPreviousChild() {

		return QWebInspector::focusPreviousChild();

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QWebInspector::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QWebInspector::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QWebInspector::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QWebInspector::isSignalConnected(*signal);

	}

};

QWebInspector* QWebInspector_new(struct QWebInspector_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQWebInspector(vtbl, parent);
}

QWebInspector* QWebInspector_new2(struct QWebInspector_VTable* vtbl) {
	return new MiqtVirtualQWebInspector(vtbl);
}

void QWebInspector_virtbase(QWebInspector* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QWebInspector_metaObject(const QWebInspector* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebInspector_metacast(QWebInspector* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebInspector_metacall(QWebInspector* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWebInspector_tr(const char* s) {
	QString _ret = QWebInspector::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebInspector_trUtf8(const char* s) {
	QString _ret = QWebInspector::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebInspector_setPage(QWebInspector* self, QWebPage* page) {
	self->setPage(page);
}

QWebPage* QWebInspector_page(const QWebInspector* self) {
	return self->page();
}

QSize* QWebInspector_sizeHint(const QWebInspector* self) {
	return new QSize(self->sizeHint());
}

bool QWebInspector_event(QWebInspector* self, QEvent* param1) {
	return self->event(param1);
}

struct miqt_string QWebInspector_tr2(const char* s, const char* c) {
	QString _ret = QWebInspector::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebInspector_tr3(const char* s, const char* c, int n) {
	QString _ret = QWebInspector::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebInspector_trUtf82(const char* s, const char* c) {
	QString _ret = QWebInspector::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebInspector_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QWebInspector::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QWebInspector_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQWebInspector*)(self) )->virtualbase_metaObject();
}

void* QWebInspector_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQWebInspector*)(self) )->virtualbase_metacast(param1);
}

int QWebInspector_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQWebInspector*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QSize* QWebInspector_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQWebInspector*)(self) )->virtualbase_sizeHint();
}

bool QWebInspector_virtualbase_event(void* self, QEvent* param1) {
	return ( (MiqtVirtualQWebInspector*)(self) )->virtualbase_event(param1);
}

void QWebInspector_virtualbase_resizeEvent(void* self, QResizeEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_resizeEvent(event);
}

void QWebInspector_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_showEvent(event);
}

void QWebInspector_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_hideEvent(event);
}

void QWebInspector_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_closeEvent(event);
}

int QWebInspector_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQWebInspector*)(self) )->virtualbase_devType();
}

void QWebInspector_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_setVisible(visible);
}

QSize* QWebInspector_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQWebInspector*)(self) )->virtualbase_minimumSizeHint();
}

int QWebInspector_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQWebInspector*)(self) )->virtualbase_heightForWidth(param1);
}

bool QWebInspector_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQWebInspector*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QWebInspector_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQWebInspector*)(self) )->virtualbase_paintEngine();
}

void QWebInspector_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_mousePressEvent(event);
}

void QWebInspector_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QWebInspector_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QWebInspector_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QWebInspector_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_wheelEvent(event);
}

void QWebInspector_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_keyPressEvent(event);
}

void QWebInspector_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QWebInspector_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_focusInEvent(event);
}

void QWebInspector_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_focusOutEvent(event);
}

void QWebInspector_virtualbase_enterEvent(void* self, QEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_enterEvent(event);
}

void QWebInspector_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_leaveEvent(event);
}

void QWebInspector_virtualbase_paintEvent(void* self, QPaintEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_paintEvent(event);
}

void QWebInspector_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_moveEvent(event);
}

void QWebInspector_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_contextMenuEvent(event);
}

void QWebInspector_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_tabletEvent(event);
}

void QWebInspector_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_actionEvent(event);
}

void QWebInspector_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_dragEnterEvent(event);
}

void QWebInspector_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_dragMoveEvent(event);
}

void QWebInspector_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QWebInspector_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_dropEvent(event);
}

bool QWebInspector_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	return ( (MiqtVirtualQWebInspector*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

void QWebInspector_virtualbase_changeEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_changeEvent(param1);
}

int QWebInspector_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQWebInspector*)(self) )->virtualbase_metric(param1);
}

void QWebInspector_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQWebInspector*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QWebInspector_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQWebInspector*)(self) )->virtualbase_redirected(offset);
}

QPainter* QWebInspector_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQWebInspector*)(self) )->virtualbase_sharedPainter();
}

void QWebInspector_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QWebInspector_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQWebInspector*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QWebInspector_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQWebInspector*)(self) )->virtualbase_focusNextPrevChild(next);
}

bool QWebInspector_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQWebInspector*)(self) )->virtualbase_eventFilter(watched, event);
}

void QWebInspector_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_timerEvent(event);
}

void QWebInspector_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_childEvent(event);
}

void QWebInspector_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_customEvent(event);
}

void QWebInspector_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_connectNotify(signal);
}

void QWebInspector_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQWebInspector*)(self) )->virtualbase_disconnectNotify(signal);
}

void QWebInspector_protectedbase_updateMicroFocus(void* self) {
	( (MiqtVirtualQWebInspector*)(self) )->protectedbase_updateMicroFocus();
}

void QWebInspector_protectedbase_create(void* self) {
	( (MiqtVirtualQWebInspector*)(self) )->protectedbase_create();
}

void QWebInspector_protectedbase_destroy(void* self) {
	( (MiqtVirtualQWebInspector*)(self) )->protectedbase_destroy();
}

bool QWebInspector_protectedbase_focusNextChild(void* self) {
	return ( (MiqtVirtualQWebInspector*)(self) )->protectedbase_focusNextChild();
}

bool QWebInspector_protectedbase_focusPreviousChild(void* self) {
	return ( (MiqtVirtualQWebInspector*)(self) )->protectedbase_focusPreviousChild();
}

QObject* QWebInspector_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQWebInspector*)(self) )->protectedbase_sender();
}

int QWebInspector_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQWebInspector*)(self) )->protectedbase_senderSignalIndex();
}

int QWebInspector_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQWebInspector*)(self) )->protectedbase_receivers(signal);
}

bool QWebInspector_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQWebInspector*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QWebInspector_staticMetaObject() { return &QWebInspector::staticMetaObject; }
void QWebInspector_delete(QWebInspector* self) {
	delete self;
}

