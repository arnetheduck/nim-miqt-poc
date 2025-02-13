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
#include <QFrame>
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
#include <QRect>
#include <QResizeEvent>
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
#include <qframe.h>
#include "gen_qframe.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQFrame final : public QFrame {
	struct QFrame_VTable* vtbl;
public:

	MiqtVirtualQFrame(struct QFrame_VTable* vtbl, QWidget* parent): QFrame(parent), vtbl(vtbl) {};
	MiqtVirtualQFrame(struct QFrame_VTable* vtbl): QFrame(), vtbl(vtbl) {};
	MiqtVirtualQFrame(struct QFrame_VTable* vtbl, QWidget* parent, Qt::WindowFlags f): QFrame(parent, f), vtbl(vtbl) {};

	virtual ~MiqtVirtualQFrame() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QFrame::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QFrame::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QFrame::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QFrame::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QFrame::qt_metacall(param1, param2, param3);
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

		return QFrame::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QFrame::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QFrame::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QFrame::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* e) {

		return QFrame::event(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QFrame::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* param1) {

		QFrame::paintEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QFrame::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* param1) {

		QFrame::changeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionFrame* option) const override {
		if (vtbl->initStyleOption == 0) {
			QFrame::initStyleOption(option);
			return;
		}

		QStyleOptionFrame* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initStyleOption(QStyleOptionFrame* option) const {

		QFrame::initStyleOption(option);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QFrame::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QFrame::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QFrame::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QFrame::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QFrame::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QFrame::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QFrame::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QFrame::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QFrame::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QFrame::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QFrame::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QFrame::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QFrame::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QFrame::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QFrame::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QFrame::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QFrame::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QFrame::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QFrame::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QFrame::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QFrame::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QFrame::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QFrame::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QFrame::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QFrame::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QFrame::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QFrame::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QFrame::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QFrame::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QFrame::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QFrame::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEnterEvent* event) {

		QFrame::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QFrame::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QFrame::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QFrame::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QFrame::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QFrame::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* event) {

		QFrame::resizeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QFrame::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QFrame::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QFrame::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* event) {

		QFrame::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QFrame::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QFrame::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QFrame::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QFrame::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QFrame::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QFrame::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QFrame::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QFrame::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QFrame::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QFrame::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QFrame::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QFrame::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QFrame::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QFrame::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QFrame::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QFrame::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QFrame::nativeEvent(eventType, message, result);
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

		return QFrame::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QFrame::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QFrame::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QFrame::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QFrame::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QFrame::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QFrame::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QFrame::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QFrame::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QFrame::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QFrame::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QFrame::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QFrame::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QFrame::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QFrame::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QFrame::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QFrame::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QFrame::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QFrame::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QFrame::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QFrame::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QFrame::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QFrame::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QFrame::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QFrame::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QFrame::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QFrame::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QFrame_protectedbase_drawFrame(void* self, QPainter* param1);
	friend void QFrame_protectedbase_updateMicroFocus(void* self);
	friend void QFrame_protectedbase_create(void* self);
	friend void QFrame_protectedbase_destroy(void* self);
	friend bool QFrame_protectedbase_focusNextChild(void* self);
	friend bool QFrame_protectedbase_focusPreviousChild(void* self);
	friend QObject* QFrame_protectedbase_sender(const void* self);
	friend int QFrame_protectedbase_senderSignalIndex(const void* self);
	friend int QFrame_protectedbase_receivers(const void* self, const char* signal);
	friend bool QFrame_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QFrame* QFrame_new(struct QFrame_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQFrame(vtbl, parent);
}

QFrame* QFrame_new2(struct QFrame_VTable* vtbl) {
	return new MiqtVirtualQFrame(vtbl);
}

QFrame* QFrame_new3(struct QFrame_VTable* vtbl, QWidget* parent, int f) {
	return new MiqtVirtualQFrame(vtbl, parent, static_cast<Qt::WindowFlags>(f));
}

void QFrame_virtbase(QFrame* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QFrame_metaObject(const QFrame* self) {
	return (QMetaObject*) self->metaObject();
}

void* QFrame_metacast(QFrame* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QFrame_metacall(QFrame* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QFrame_tr(const char* s) {
	QString _ret = QFrame::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QFrame_frameStyle(const QFrame* self) {
	return self->frameStyle();
}

void QFrame_setFrameStyle(QFrame* self, int frameStyle) {
	self->setFrameStyle(static_cast<int>(frameStyle));
}

int QFrame_frameWidth(const QFrame* self) {
	return self->frameWidth();
}

QSize* QFrame_sizeHint(const QFrame* self) {
	return new QSize(self->sizeHint());
}

int QFrame_frameShape(const QFrame* self) {
	QFrame::Shape _ret = self->frameShape();
	return static_cast<int>(_ret);
}

void QFrame_setFrameShape(QFrame* self, int frameShape) {
	self->setFrameShape(static_cast<QFrame::Shape>(frameShape));
}

int QFrame_frameShadow(const QFrame* self) {
	QFrame::Shadow _ret = self->frameShadow();
	return static_cast<int>(_ret);
}

void QFrame_setFrameShadow(QFrame* self, int frameShadow) {
	self->setFrameShadow(static_cast<QFrame::Shadow>(frameShadow));
}

int QFrame_lineWidth(const QFrame* self) {
	return self->lineWidth();
}

void QFrame_setLineWidth(QFrame* self, int lineWidth) {
	self->setLineWidth(static_cast<int>(lineWidth));
}

int QFrame_midLineWidth(const QFrame* self) {
	return self->midLineWidth();
}

void QFrame_setMidLineWidth(QFrame* self, int midLineWidth) {
	self->setMidLineWidth(static_cast<int>(midLineWidth));
}

QRect* QFrame_frameRect(const QFrame* self) {
	return new QRect(self->frameRect());
}

void QFrame_setFrameRect(QFrame* self, QRect* frameRect) {
	self->setFrameRect(*frameRect);
}

struct miqt_string QFrame_tr2(const char* s, const char* c) {
	QString _ret = QFrame::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFrame_tr3(const char* s, const char* c, int n) {
	QString _ret = QFrame::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QFrame_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQFrame*)(self) )->virtualbase_metaObject();
}

void* QFrame_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQFrame*)(self) )->virtualbase_metacast(param1);
}

int QFrame_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQFrame*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QSize* QFrame_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQFrame*)(self) )->virtualbase_sizeHint();
}

bool QFrame_virtualbase_event(void* self, QEvent* e) {
	return ( (MiqtVirtualQFrame*)(self) )->virtualbase_event(e);
}

void QFrame_virtualbase_paintEvent(void* self, QPaintEvent* param1) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_paintEvent(param1);
}

void QFrame_virtualbase_changeEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_changeEvent(param1);
}

void QFrame_virtualbase_initStyleOption(const void* self, QStyleOptionFrame* option) {
	( (const MiqtVirtualQFrame*)(self) )->virtualbase_initStyleOption(option);
}

int QFrame_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQFrame*)(self) )->virtualbase_devType();
}

void QFrame_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_setVisible(visible);
}

QSize* QFrame_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQFrame*)(self) )->virtualbase_minimumSizeHint();
}

int QFrame_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQFrame*)(self) )->virtualbase_heightForWidth(param1);
}

bool QFrame_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQFrame*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QFrame_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQFrame*)(self) )->virtualbase_paintEngine();
}

void QFrame_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_mousePressEvent(event);
}

void QFrame_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QFrame_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QFrame_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QFrame_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_wheelEvent(event);
}

void QFrame_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_keyPressEvent(event);
}

void QFrame_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QFrame_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_focusInEvent(event);
}

void QFrame_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_focusOutEvent(event);
}

void QFrame_virtualbase_enterEvent(void* self, QEnterEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_enterEvent(event);
}

void QFrame_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_leaveEvent(event);
}

void QFrame_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_moveEvent(event);
}

void QFrame_virtualbase_resizeEvent(void* self, QResizeEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_resizeEvent(event);
}

void QFrame_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_closeEvent(event);
}

void QFrame_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_contextMenuEvent(event);
}

void QFrame_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_tabletEvent(event);
}

void QFrame_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_actionEvent(event);
}

void QFrame_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_dragEnterEvent(event);
}

void QFrame_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_dragMoveEvent(event);
}

void QFrame_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QFrame_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_dropEvent(event);
}

void QFrame_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_showEvent(event);
}

void QFrame_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_hideEvent(event);
}

bool QFrame_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	return ( (MiqtVirtualQFrame*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

int QFrame_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQFrame*)(self) )->virtualbase_metric(param1);
}

void QFrame_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQFrame*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QFrame_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQFrame*)(self) )->virtualbase_redirected(offset);
}

QPainter* QFrame_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQFrame*)(self) )->virtualbase_sharedPainter();
}

void QFrame_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QFrame_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQFrame*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QFrame_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQFrame*)(self) )->virtualbase_focusNextPrevChild(next);
}

bool QFrame_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQFrame*)(self) )->virtualbase_eventFilter(watched, event);
}

void QFrame_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_timerEvent(event);
}

void QFrame_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_childEvent(event);
}

void QFrame_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_customEvent(event);
}

void QFrame_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_connectNotify(signal);
}

void QFrame_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQFrame*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QFrame_staticMetaObject() { return &QFrame::staticMetaObject; }
void QFrame_protectedbase_drawFrame(void* self, QPainter* param1) {
	MiqtVirtualQFrame* self_cast = static_cast<MiqtVirtualQFrame*>( (QFrame*)(self) );
	
	self_cast->drawFrame(param1);

}

void QFrame_protectedbase_updateMicroFocus(void* self) {
	MiqtVirtualQFrame* self_cast = static_cast<MiqtVirtualQFrame*>( (QFrame*)(self) );
	
	self_cast->updateMicroFocus();

}

void QFrame_protectedbase_create(void* self) {
	MiqtVirtualQFrame* self_cast = static_cast<MiqtVirtualQFrame*>( (QFrame*)(self) );
	
	self_cast->create();

}

void QFrame_protectedbase_destroy(void* self) {
	MiqtVirtualQFrame* self_cast = static_cast<MiqtVirtualQFrame*>( (QFrame*)(self) );
	
	self_cast->destroy();

}

bool QFrame_protectedbase_focusNextChild(void* self) {
	MiqtVirtualQFrame* self_cast = static_cast<MiqtVirtualQFrame*>( (QFrame*)(self) );
	
	return self_cast->focusNextChild();

}

bool QFrame_protectedbase_focusPreviousChild(void* self) {
	MiqtVirtualQFrame* self_cast = static_cast<MiqtVirtualQFrame*>( (QFrame*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QFrame_protectedbase_sender(const void* self) {
	MiqtVirtualQFrame* self_cast = static_cast<MiqtVirtualQFrame*>( (QFrame*)(self) );
	
	return self_cast->sender();

}

int QFrame_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQFrame* self_cast = static_cast<MiqtVirtualQFrame*>( (QFrame*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QFrame_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQFrame* self_cast = static_cast<MiqtVirtualQFrame*>( (QFrame*)(self) );
	
	return self_cast->receivers(signal);

}

bool QFrame_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQFrame* self_cast = static_cast<MiqtVirtualQFrame*>( (QFrame*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QFrame_delete(QFrame* self) {
	delete self;
}

