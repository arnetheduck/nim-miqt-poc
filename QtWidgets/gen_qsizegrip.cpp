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
#include <QSizeGrip>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qsizegrip.h>
#include "gen_qsizegrip.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQSizeGrip final : public QSizeGrip {
	struct QSizeGrip_VTable* vtbl;
public:

	MiqtVirtualQSizeGrip(struct QSizeGrip_VTable* vtbl, QWidget* parent): QSizeGrip(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSizeGrip() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSizeGrip::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QSizeGrip::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSizeGrip::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QSizeGrip::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSizeGrip::qt_metacall(param1, param2, param3);
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

		return QSizeGrip::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QSizeGrip::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QSizeGrip::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QSizeGrip::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QSizeGrip::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QSizeGrip::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* param1) {

		QSizeGrip::paintEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QSizeGrip::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* param1) {

		QSizeGrip::mousePressEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QSizeGrip::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* param1) {

		QSizeGrip::mouseMoveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* mouseEvent) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QSizeGrip::mouseReleaseEvent(mouseEvent);
			return;
		}

		QMouseEvent* sigval1 = mouseEvent;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* mouseEvent) {

		QSizeGrip::mouseReleaseEvent(mouseEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* moveEvent) override {
		if (vtbl->moveEvent == 0) {
			QSizeGrip::moveEvent(moveEvent);
			return;
		}

		QMoveEvent* sigval1 = moveEvent;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* moveEvent) {

		QSizeGrip::moveEvent(moveEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* showEvent) override {
		if (vtbl->showEvent == 0) {
			QSizeGrip::showEvent(showEvent);
			return;
		}

		QShowEvent* sigval1 = showEvent;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* showEvent) {

		QSizeGrip::showEvent(showEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* hideEvent) override {
		if (vtbl->hideEvent == 0) {
			QSizeGrip::hideEvent(hideEvent);
			return;
		}

		QHideEvent* sigval1 = hideEvent;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* hideEvent) {

		QSizeGrip::hideEvent(hideEvent);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QSizeGrip::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* param1, QEvent* param2) {

		return QSizeGrip::eventFilter(param1, param2);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QSizeGrip::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* param1) {

		return QSizeGrip::event(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QSizeGrip::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QSizeGrip::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QSizeGrip::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QSizeGrip::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QSizeGrip::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QSizeGrip::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QSizeGrip::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QSizeGrip::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QSizeGrip::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QSizeGrip::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QSizeGrip::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QSizeGrip::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QSizeGrip::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QSizeGrip::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QSizeGrip::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QSizeGrip::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QSizeGrip::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QSizeGrip::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QSizeGrip::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QSizeGrip::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QSizeGrip::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QSizeGrip::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QSizeGrip::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEvent* event) {

		QSizeGrip::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QSizeGrip::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QSizeGrip::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QSizeGrip::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* event) {

		QSizeGrip::resizeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QSizeGrip::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QSizeGrip::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QSizeGrip::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* event) {

		QSizeGrip::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QSizeGrip::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QSizeGrip::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QSizeGrip::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QSizeGrip::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QSizeGrip::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QSizeGrip::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QSizeGrip::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QSizeGrip::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QSizeGrip::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QSizeGrip::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QSizeGrip::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QSizeGrip::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QSizeGrip::nativeEvent(eventType, message, result);
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

		return QSizeGrip::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QSizeGrip::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* param1) {

		QSizeGrip::changeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QSizeGrip::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QSizeGrip::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QSizeGrip::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QSizeGrip::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QSizeGrip::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QSizeGrip::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QSizeGrip::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QSizeGrip::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QSizeGrip::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QSizeGrip::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QSizeGrip::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QSizeGrip::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QSizeGrip::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QSizeGrip::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSizeGrip::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QSizeGrip::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSizeGrip::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QSizeGrip::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSizeGrip::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QSizeGrip::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSizeGrip::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QSizeGrip::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSizeGrip::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QSizeGrip::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QSizeGrip_protectedbase_updateMicroFocus(void* self);
	friend void QSizeGrip_protectedbase_create(void* self);
	friend void QSizeGrip_protectedbase_destroy(void* self);
	friend bool QSizeGrip_protectedbase_focusNextChild(void* self);
	friend bool QSizeGrip_protectedbase_focusPreviousChild(void* self);
	friend QObject* QSizeGrip_protectedbase_sender(const void* self);
	friend int QSizeGrip_protectedbase_senderSignalIndex(const void* self);
	friend int QSizeGrip_protectedbase_receivers(const void* self, const char* signal);
	friend bool QSizeGrip_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QSizeGrip* QSizeGrip_new(struct QSizeGrip_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQSizeGrip(vtbl, parent);
}

void QSizeGrip_virtbase(QSizeGrip* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QSizeGrip_metaObject(const QSizeGrip* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSizeGrip_metacast(QSizeGrip* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSizeGrip_metacall(QSizeGrip* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSizeGrip_tr(const char* s) {
	QString _ret = QSizeGrip::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSizeGrip_trUtf8(const char* s) {
	QString _ret = QSizeGrip::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QSizeGrip_sizeHint(const QSizeGrip* self) {
	return new QSize(self->sizeHint());
}

void QSizeGrip_setVisible(QSizeGrip* self, bool visible) {
	self->setVisible(visible);
}

struct miqt_string QSizeGrip_tr2(const char* s, const char* c) {
	QString _ret = QSizeGrip::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSizeGrip_tr3(const char* s, const char* c, int n) {
	QString _ret = QSizeGrip::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSizeGrip_trUtf82(const char* s, const char* c) {
	QString _ret = QSizeGrip::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSizeGrip_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSizeGrip::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSizeGrip_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQSizeGrip*)(self) )->virtualbase_metaObject();
}

void* QSizeGrip_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_metacast(param1);
}

int QSizeGrip_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QSize* QSizeGrip_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQSizeGrip*)(self) )->virtualbase_sizeHint();
}

void QSizeGrip_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_setVisible(visible);
}

void QSizeGrip_virtualbase_paintEvent(void* self, QPaintEvent* param1) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_paintEvent(param1);
}

void QSizeGrip_virtualbase_mousePressEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_mousePressEvent(param1);
}

void QSizeGrip_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_mouseMoveEvent(param1);
}

void QSizeGrip_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* mouseEvent) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_mouseReleaseEvent(mouseEvent);
}

void QSizeGrip_virtualbase_moveEvent(void* self, QMoveEvent* moveEvent) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_moveEvent(moveEvent);
}

void QSizeGrip_virtualbase_showEvent(void* self, QShowEvent* showEvent) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_showEvent(showEvent);
}

void QSizeGrip_virtualbase_hideEvent(void* self, QHideEvent* hideEvent) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_hideEvent(hideEvent);
}

bool QSizeGrip_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2) {
	return ( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_eventFilter(param1, param2);
}

bool QSizeGrip_virtualbase_event(void* self, QEvent* param1) {
	return ( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_event(param1);
}

int QSizeGrip_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQSizeGrip*)(self) )->virtualbase_devType();
}

QSize* QSizeGrip_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQSizeGrip*)(self) )->virtualbase_minimumSizeHint();
}

int QSizeGrip_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQSizeGrip*)(self) )->virtualbase_heightForWidth(param1);
}

bool QSizeGrip_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQSizeGrip*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QSizeGrip_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQSizeGrip*)(self) )->virtualbase_paintEngine();
}

void QSizeGrip_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QSizeGrip_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_wheelEvent(event);
}

void QSizeGrip_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_keyPressEvent(event);
}

void QSizeGrip_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QSizeGrip_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_focusInEvent(event);
}

void QSizeGrip_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_focusOutEvent(event);
}

void QSizeGrip_virtualbase_enterEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_enterEvent(event);
}

void QSizeGrip_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_leaveEvent(event);
}

void QSizeGrip_virtualbase_resizeEvent(void* self, QResizeEvent* event) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_resizeEvent(event);
}

void QSizeGrip_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_closeEvent(event);
}

void QSizeGrip_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_contextMenuEvent(event);
}

void QSizeGrip_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_tabletEvent(event);
}

void QSizeGrip_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_actionEvent(event);
}

void QSizeGrip_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_dragEnterEvent(event);
}

void QSizeGrip_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_dragMoveEvent(event);
}

void QSizeGrip_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QSizeGrip_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_dropEvent(event);
}

bool QSizeGrip_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	return ( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

void QSizeGrip_virtualbase_changeEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_changeEvent(param1);
}

int QSizeGrip_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQSizeGrip*)(self) )->virtualbase_metric(param1);
}

void QSizeGrip_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQSizeGrip*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QSizeGrip_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQSizeGrip*)(self) )->virtualbase_redirected(offset);
}

QPainter* QSizeGrip_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQSizeGrip*)(self) )->virtualbase_sharedPainter();
}

void QSizeGrip_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QSizeGrip_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQSizeGrip*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QSizeGrip_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_focusNextPrevChild(next);
}

void QSizeGrip_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_timerEvent(event);
}

void QSizeGrip_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_childEvent(event);
}

void QSizeGrip_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_customEvent(event);
}

void QSizeGrip_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_connectNotify(signal);
}

void QSizeGrip_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSizeGrip*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QSizeGrip_staticMetaObject() { return &QSizeGrip::staticMetaObject; }
void QSizeGrip_protectedbase_updateMicroFocus(void* self) {
	MiqtVirtualQSizeGrip* self_cast = static_cast<MiqtVirtualQSizeGrip*>( (QSizeGrip*)(self) );
	
	self_cast->updateMicroFocus();

}

void QSizeGrip_protectedbase_create(void* self) {
	MiqtVirtualQSizeGrip* self_cast = static_cast<MiqtVirtualQSizeGrip*>( (QSizeGrip*)(self) );
	
	self_cast->create();

}

void QSizeGrip_protectedbase_destroy(void* self) {
	MiqtVirtualQSizeGrip* self_cast = static_cast<MiqtVirtualQSizeGrip*>( (QSizeGrip*)(self) );
	
	self_cast->destroy();

}

bool QSizeGrip_protectedbase_focusNextChild(void* self) {
	MiqtVirtualQSizeGrip* self_cast = static_cast<MiqtVirtualQSizeGrip*>( (QSizeGrip*)(self) );
	
	return self_cast->focusNextChild();

}

bool QSizeGrip_protectedbase_focusPreviousChild(void* self) {
	MiqtVirtualQSizeGrip* self_cast = static_cast<MiqtVirtualQSizeGrip*>( (QSizeGrip*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QSizeGrip_protectedbase_sender(const void* self) {
	MiqtVirtualQSizeGrip* self_cast = static_cast<MiqtVirtualQSizeGrip*>( (QSizeGrip*)(self) );
	
	return self_cast->sender();

}

int QSizeGrip_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQSizeGrip* self_cast = static_cast<MiqtVirtualQSizeGrip*>( (QSizeGrip*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QSizeGrip_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQSizeGrip* self_cast = static_cast<MiqtVirtualQSizeGrip*>( (QSizeGrip*)(self) );
	
	return self_cast->receivers(signal);

}

bool QSizeGrip_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQSizeGrip* self_cast = static_cast<MiqtVirtualQSizeGrip*>( (QSizeGrip*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QSizeGrip_delete(QSizeGrip* self) {
	delete self;
}

