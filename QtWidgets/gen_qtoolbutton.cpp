#include <QAbstractButton>
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
#include <QStyleOptionToolButton>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QToolButton>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qtoolbutton.h>
#include "gen_qtoolbutton.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQToolButton final : public QToolButton {
	struct QToolButton_VTable* vtbl;
public:

	MiqtVirtualQToolButton(struct QToolButton_VTable* vtbl, QWidget* parent): QToolButton(parent), vtbl(vtbl) {};
	MiqtVirtualQToolButton(struct QToolButton_VTable* vtbl): QToolButton(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQToolButton() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QToolButton::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QToolButton::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QToolButton::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QToolButton::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QToolButton::qt_metacall(param1, param2, param3);
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

		return QToolButton::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QToolButton::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QToolButton::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QToolButton::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QToolButton::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QToolButton::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* e) {

		return QToolButton::event(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QToolButton::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* param1) {

		QToolButton::mousePressEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QToolButton::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* param1) {

		QToolButton::mouseReleaseEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QToolButton::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* param1) {

		QToolButton::paintEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* param1) override {
		if (vtbl->actionEvent == 0) {
			QToolButton::actionEvent(param1);
			return;
		}

		QActionEvent* sigval1 = param1;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* param1) {

		QToolButton::actionEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* param1) override {
		if (vtbl->enterEvent == 0) {
			QToolButton::enterEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEvent* param1) {

		QToolButton::enterEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* param1) override {
		if (vtbl->leaveEvent == 0) {
			QToolButton::leaveEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* param1) {

		QToolButton::leaveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QToolButton::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* param1) {

		QToolButton::timerEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QToolButton::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* param1) {

		QToolButton::changeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool hitButton(const QPoint& pos) const override {
		if (vtbl->hitButton == 0) {
			return QToolButton::hitButton(pos);
		}

		const QPoint& pos_ret = pos;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&pos_ret);

		bool callback_return_value = vtbl->hitButton(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hitButton(QPoint* pos) const {

		return QToolButton::hitButton(*pos);

	}

	// Subclass to allow providing a Go implementation
	virtual void nextCheckState() override {
		if (vtbl->nextCheckState == 0) {
			QToolButton::nextCheckState();
			return;
		}


		vtbl->nextCheckState(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_nextCheckState() {

		QToolButton::nextCheckState();

	}

	// Subclass to allow providing a Go implementation
	virtual void checkStateSet() override {
		if (vtbl->checkStateSet == 0) {
			QToolButton::checkStateSet();
			return;
		}


		vtbl->checkStateSet(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_checkStateSet() {

		QToolButton::checkStateSet();

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* e) override {
		if (vtbl->keyPressEvent == 0) {
			QToolButton::keyPressEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* e) {

		QToolButton::keyPressEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* e) override {
		if (vtbl->keyReleaseEvent == 0) {
			QToolButton::keyReleaseEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* e) {

		QToolButton::keyReleaseEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* e) override {
		if (vtbl->mouseMoveEvent == 0) {
			QToolButton::mouseMoveEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* e) {

		QToolButton::mouseMoveEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* e) override {
		if (vtbl->focusInEvent == 0) {
			QToolButton::focusInEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* e) {

		QToolButton::focusInEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* e) override {
		if (vtbl->focusOutEvent == 0) {
			QToolButton::focusOutEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* e) {

		QToolButton::focusOutEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QToolButton::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QToolButton::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QToolButton::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QToolButton::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QToolButton::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QToolButton::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QToolButton::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QToolButton::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QToolButton::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QToolButton::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QToolButton::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QToolButton::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QToolButton::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QToolButton::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QToolButton::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QToolButton::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QToolButton::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* event) {

		QToolButton::resizeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QToolButton::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QToolButton::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QToolButton::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* event) {

		QToolButton::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QToolButton::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QToolButton::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QToolButton::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QToolButton::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QToolButton::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QToolButton::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QToolButton::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QToolButton::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QToolButton::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QToolButton::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QToolButton::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QToolButton::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QToolButton::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QToolButton::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QToolButton::nativeEvent(eventType, message, result);
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

		return QToolButton::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QToolButton::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QToolButton::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QToolButton::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QToolButton::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QToolButton::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QToolButton::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QToolButton::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QToolButton::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QToolButton::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QToolButton::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QToolButton::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QToolButton::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QToolButton::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QToolButton::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QToolButton::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QToolButton::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QToolButton::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QToolButton::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QToolButton::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QToolButton::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QToolButton::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QToolButton::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QToolButton::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QToolButton::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QToolButton_protectedbase_initStyleOption(const void* self, QStyleOptionToolButton* option);
	friend void QToolButton_protectedbase_updateMicroFocus(void* self);
	friend void QToolButton_protectedbase_create(void* self);
	friend void QToolButton_protectedbase_destroy(void* self);
	friend bool QToolButton_protectedbase_focusNextChild(void* self);
	friend bool QToolButton_protectedbase_focusPreviousChild(void* self);
	friend QObject* QToolButton_protectedbase_sender(const void* self);
	friend int QToolButton_protectedbase_senderSignalIndex(const void* self);
	friend int QToolButton_protectedbase_receivers(const void* self, const char* signal);
	friend bool QToolButton_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QToolButton* QToolButton_new(struct QToolButton_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQToolButton(vtbl, parent);
}

QToolButton* QToolButton_new2(struct QToolButton_VTable* vtbl) {
	return new MiqtVirtualQToolButton(vtbl);
}

void QToolButton_virtbase(QToolButton* src, QAbstractButton** outptr_QAbstractButton) {
	*outptr_QAbstractButton = static_cast<QAbstractButton*>(src);
}

QMetaObject* QToolButton_metaObject(const QToolButton* self) {
	return (QMetaObject*) self->metaObject();
}

void* QToolButton_metacast(QToolButton* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QToolButton_metacall(QToolButton* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QToolButton_tr(const char* s) {
	QString _ret = QToolButton::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QToolButton_trUtf8(const char* s) {
	QString _ret = QToolButton::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QToolButton_sizeHint(const QToolButton* self) {
	return new QSize(self->sizeHint());
}

QSize* QToolButton_minimumSizeHint(const QToolButton* self) {
	return new QSize(self->minimumSizeHint());
}

int QToolButton_toolButtonStyle(const QToolButton* self) {
	Qt::ToolButtonStyle _ret = self->toolButtonStyle();
	return static_cast<int>(_ret);
}

int QToolButton_arrowType(const QToolButton* self) {
	Qt::ArrowType _ret = self->arrowType();
	return static_cast<int>(_ret);
}

void QToolButton_setArrowType(QToolButton* self, int type) {
	self->setArrowType(static_cast<Qt::ArrowType>(type));
}

void QToolButton_setMenu(QToolButton* self, QMenu* menu) {
	self->setMenu(menu);
}

QMenu* QToolButton_menu(const QToolButton* self) {
	return self->menu();
}

void QToolButton_setPopupMode(QToolButton* self, int mode) {
	self->setPopupMode(static_cast<QToolButton::ToolButtonPopupMode>(mode));
}

int QToolButton_popupMode(const QToolButton* self) {
	QToolButton::ToolButtonPopupMode _ret = self->popupMode();
	return static_cast<int>(_ret);
}

void QToolButton_setAutoRaise(QToolButton* self, bool enable) {
	self->setAutoRaise(enable);
}

bool QToolButton_autoRaise(const QToolButton* self) {
	return self->autoRaise();
}

void QToolButton_showMenu(QToolButton* self) {
	self->showMenu();
}

void QToolButton_setToolButtonStyle(QToolButton* self, int style) {
	self->setToolButtonStyle(static_cast<Qt::ToolButtonStyle>(style));
}

struct miqt_string QToolButton_tr2(const char* s, const char* c) {
	QString _ret = QToolButton::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QToolButton_tr3(const char* s, const char* c, int n) {
	QString _ret = QToolButton::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QToolButton_trUtf82(const char* s, const char* c) {
	QString _ret = QToolButton::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QToolButton_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QToolButton::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QToolButton_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQToolButton*)(self) )->virtualbase_metaObject();
}

void* QToolButton_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQToolButton*)(self) )->virtualbase_metacast(param1);
}

int QToolButton_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQToolButton*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QSize* QToolButton_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQToolButton*)(self) )->virtualbase_sizeHint();
}

QSize* QToolButton_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQToolButton*)(self) )->virtualbase_minimumSizeHint();
}

bool QToolButton_virtualbase_event(void* self, QEvent* e) {
	return ( (MiqtVirtualQToolButton*)(self) )->virtualbase_event(e);
}

void QToolButton_virtualbase_mousePressEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_mousePressEvent(param1);
}

void QToolButton_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_mouseReleaseEvent(param1);
}

void QToolButton_virtualbase_paintEvent(void* self, QPaintEvent* param1) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_paintEvent(param1);
}

void QToolButton_virtualbase_actionEvent(void* self, QActionEvent* param1) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_actionEvent(param1);
}

void QToolButton_virtualbase_enterEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_enterEvent(param1);
}

void QToolButton_virtualbase_leaveEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_leaveEvent(param1);
}

void QToolButton_virtualbase_timerEvent(void* self, QTimerEvent* param1) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_timerEvent(param1);
}

void QToolButton_virtualbase_changeEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_changeEvent(param1);
}

bool QToolButton_virtualbase_hitButton(const void* self, QPoint* pos) {
	return ( (const MiqtVirtualQToolButton*)(self) )->virtualbase_hitButton(pos);
}

void QToolButton_virtualbase_nextCheckState(void* self) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_nextCheckState();
}

void QToolButton_virtualbase_checkStateSet(void* self) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_checkStateSet();
}

void QToolButton_virtualbase_keyPressEvent(void* self, QKeyEvent* e) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_keyPressEvent(e);
}

void QToolButton_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_keyReleaseEvent(e);
}

void QToolButton_virtualbase_mouseMoveEvent(void* self, QMouseEvent* e) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_mouseMoveEvent(e);
}

void QToolButton_virtualbase_focusInEvent(void* self, QFocusEvent* e) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_focusInEvent(e);
}

void QToolButton_virtualbase_focusOutEvent(void* self, QFocusEvent* e) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_focusOutEvent(e);
}

int QToolButton_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQToolButton*)(self) )->virtualbase_devType();
}

void QToolButton_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_setVisible(visible);
}

int QToolButton_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQToolButton*)(self) )->virtualbase_heightForWidth(param1);
}

bool QToolButton_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQToolButton*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QToolButton_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQToolButton*)(self) )->virtualbase_paintEngine();
}

void QToolButton_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QToolButton_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_wheelEvent(event);
}

void QToolButton_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_moveEvent(event);
}

void QToolButton_virtualbase_resizeEvent(void* self, QResizeEvent* event) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_resizeEvent(event);
}

void QToolButton_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_closeEvent(event);
}

void QToolButton_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_contextMenuEvent(event);
}

void QToolButton_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_tabletEvent(event);
}

void QToolButton_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_dragEnterEvent(event);
}

void QToolButton_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_dragMoveEvent(event);
}

void QToolButton_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QToolButton_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_dropEvent(event);
}

void QToolButton_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_showEvent(event);
}

void QToolButton_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_hideEvent(event);
}

bool QToolButton_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	return ( (MiqtVirtualQToolButton*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

int QToolButton_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQToolButton*)(self) )->virtualbase_metric(param1);
}

void QToolButton_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQToolButton*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QToolButton_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQToolButton*)(self) )->virtualbase_redirected(offset);
}

QPainter* QToolButton_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQToolButton*)(self) )->virtualbase_sharedPainter();
}

void QToolButton_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QToolButton_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQToolButton*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QToolButton_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQToolButton*)(self) )->virtualbase_focusNextPrevChild(next);
}

bool QToolButton_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQToolButton*)(self) )->virtualbase_eventFilter(watched, event);
}

void QToolButton_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_childEvent(event);
}

void QToolButton_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_customEvent(event);
}

void QToolButton_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_connectNotify(signal);
}

void QToolButton_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQToolButton*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QToolButton_staticMetaObject() { return &QToolButton::staticMetaObject; }
void QToolButton_protectedbase_initStyleOption(const void* self, QStyleOptionToolButton* option) {
	MiqtVirtualQToolButton* self_cast = static_cast<MiqtVirtualQToolButton*>( (QToolButton*)(self) );
	
	self_cast->initStyleOption(option);

}

void QToolButton_protectedbase_updateMicroFocus(void* self) {
	MiqtVirtualQToolButton* self_cast = static_cast<MiqtVirtualQToolButton*>( (QToolButton*)(self) );
	
	self_cast->updateMicroFocus();

}

void QToolButton_protectedbase_create(void* self) {
	MiqtVirtualQToolButton* self_cast = static_cast<MiqtVirtualQToolButton*>( (QToolButton*)(self) );
	
	self_cast->create();

}

void QToolButton_protectedbase_destroy(void* self) {
	MiqtVirtualQToolButton* self_cast = static_cast<MiqtVirtualQToolButton*>( (QToolButton*)(self) );
	
	self_cast->destroy();

}

bool QToolButton_protectedbase_focusNextChild(void* self) {
	MiqtVirtualQToolButton* self_cast = static_cast<MiqtVirtualQToolButton*>( (QToolButton*)(self) );
	
	return self_cast->focusNextChild();

}

bool QToolButton_protectedbase_focusPreviousChild(void* self) {
	MiqtVirtualQToolButton* self_cast = static_cast<MiqtVirtualQToolButton*>( (QToolButton*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QToolButton_protectedbase_sender(const void* self) {
	MiqtVirtualQToolButton* self_cast = static_cast<MiqtVirtualQToolButton*>( (QToolButton*)(self) );
	
	return self_cast->sender();

}

int QToolButton_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQToolButton* self_cast = static_cast<MiqtVirtualQToolButton*>( (QToolButton*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QToolButton_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQToolButton* self_cast = static_cast<MiqtVirtualQToolButton*>( (QToolButton*)(self) );
	
	return self_cast->receivers(signal);

}

bool QToolButton_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQToolButton* self_cast = static_cast<MiqtVirtualQToolButton*>( (QToolButton*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QToolButton_delete(QToolButton* self) {
	delete self;
}

