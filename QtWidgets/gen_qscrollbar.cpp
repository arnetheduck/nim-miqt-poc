#include <QAbstractSlider>
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
#include <QStyleOptionSlider>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qscrollbar.h>
#include "gen_qscrollbar.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQScrollBar final : public QScrollBar {
	struct QScrollBar_VTable* vtbl;
public:

	MiqtVirtualQScrollBar(struct QScrollBar_VTable* vtbl, QWidget* parent): QScrollBar(parent), vtbl(vtbl) {};
	MiqtVirtualQScrollBar(struct QScrollBar_VTable* vtbl): QScrollBar(), vtbl(vtbl) {};
	MiqtVirtualQScrollBar(struct QScrollBar_VTable* vtbl, Qt::Orientation param1): QScrollBar(param1), vtbl(vtbl) {};
	MiqtVirtualQScrollBar(struct QScrollBar_VTable* vtbl, Qt::Orientation param1, QWidget* parent): QScrollBar(param1, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQScrollBar() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QScrollBar::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QScrollBar::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QScrollBar::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QScrollBar::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QScrollBar::qt_metacall(param1, param2, param3);
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

		return QScrollBar::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QScrollBar::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QScrollBar::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QScrollBar::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QScrollBar::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QScrollBar::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* param1) {

		QScrollBar::wheelEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QScrollBar::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* param1) {

		QScrollBar::paintEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QScrollBar::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* param1) {

		QScrollBar::mousePressEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QScrollBar::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* param1) {

		QScrollBar::mouseReleaseEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QScrollBar::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* param1) {

		QScrollBar::mouseMoveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* param1) override {
		if (vtbl->hideEvent == 0) {
			QScrollBar::hideEvent(param1);
			return;
		}

		QHideEvent* sigval1 = param1;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* param1) {

		QScrollBar::hideEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void sliderChange(QAbstractSlider::SliderChange change) override {
		if (vtbl->sliderChange == 0) {
			QScrollBar::sliderChange(change);
			return;
		}

		QAbstractSlider::SliderChange change_ret = change;
		int sigval1 = static_cast<int>(change_ret);

		vtbl->sliderChange(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_sliderChange(int change) {

		QScrollBar::sliderChange(static_cast<QAbstractSlider::SliderChange>(change));

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QScrollBar::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* param1) {

		QScrollBar::contextMenuEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionSlider* option) const override {
		if (vtbl->initStyleOption == 0) {
			QScrollBar::initStyleOption(option);
			return;
		}

		QStyleOptionSlider* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initStyleOption(QStyleOptionSlider* option) const {

		QScrollBar::initStyleOption(option);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* ev) override {
		if (vtbl->keyPressEvent == 0) {
			QScrollBar::keyPressEvent(ev);
			return;
		}

		QKeyEvent* sigval1 = ev;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* ev) {

		QScrollBar::keyPressEvent(ev);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QScrollBar::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* param1) {

		QScrollBar::timerEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QScrollBar::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* e) {

		QScrollBar::changeEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QScrollBar::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QScrollBar::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QScrollBar::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QScrollBar::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QScrollBar::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QScrollBar::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QScrollBar::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QScrollBar::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QScrollBar::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QScrollBar::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QScrollBar::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QScrollBar::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QScrollBar::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QScrollBar::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QScrollBar::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QScrollBar::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QScrollBar::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QScrollBar::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QScrollBar::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QScrollBar::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QScrollBar::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEnterEvent* event) {

		QScrollBar::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QScrollBar::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QScrollBar::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QScrollBar::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QScrollBar::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QScrollBar::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* event) {

		QScrollBar::resizeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QScrollBar::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QScrollBar::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QScrollBar::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QScrollBar::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QScrollBar::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QScrollBar::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QScrollBar::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QScrollBar::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QScrollBar::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QScrollBar::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QScrollBar::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QScrollBar::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QScrollBar::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QScrollBar::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QScrollBar::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QScrollBar::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QScrollBar::nativeEvent(eventType, message, result);
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

		return QScrollBar::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QScrollBar::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QScrollBar::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QScrollBar::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QScrollBar::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QScrollBar::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QScrollBar::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QScrollBar::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QScrollBar::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QScrollBar::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QScrollBar::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QScrollBar::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QScrollBar::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QScrollBar::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QScrollBar::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QScrollBar::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QScrollBar::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QScrollBar::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QScrollBar::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QScrollBar::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QScrollBar::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QScrollBar::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QScrollBar::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QScrollBar::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QScrollBar::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QScrollBar_protectedbase_setRepeatAction(void* self, int action);
	friend int QScrollBar_protectedbase_repeatAction(const void* self);
	friend void QScrollBar_protectedbase_updateMicroFocus(void* self);
	friend void QScrollBar_protectedbase_create(void* self);
	friend void QScrollBar_protectedbase_destroy(void* self);
	friend bool QScrollBar_protectedbase_focusNextChild(void* self);
	friend bool QScrollBar_protectedbase_focusPreviousChild(void* self);
	friend QObject* QScrollBar_protectedbase_sender(const void* self);
	friend int QScrollBar_protectedbase_senderSignalIndex(const void* self);
	friend int QScrollBar_protectedbase_receivers(const void* self, const char* signal);
	friend bool QScrollBar_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QScrollBar* QScrollBar_new(struct QScrollBar_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQScrollBar(vtbl, parent);
}

QScrollBar* QScrollBar_new2(struct QScrollBar_VTable* vtbl) {
	return new MiqtVirtualQScrollBar(vtbl);
}

QScrollBar* QScrollBar_new3(struct QScrollBar_VTable* vtbl, int param1) {
	return new MiqtVirtualQScrollBar(vtbl, static_cast<Qt::Orientation>(param1));
}

QScrollBar* QScrollBar_new4(struct QScrollBar_VTable* vtbl, int param1, QWidget* parent) {
	return new MiqtVirtualQScrollBar(vtbl, static_cast<Qt::Orientation>(param1), parent);
}

void QScrollBar_virtbase(QScrollBar* src, QAbstractSlider** outptr_QAbstractSlider) {
	*outptr_QAbstractSlider = static_cast<QAbstractSlider*>(src);
}

QMetaObject* QScrollBar_metaObject(const QScrollBar* self) {
	return (QMetaObject*) self->metaObject();
}

void* QScrollBar_metacast(QScrollBar* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QScrollBar_metacall(QScrollBar* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QScrollBar_tr(const char* s) {
	QString _ret = QScrollBar::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QScrollBar_sizeHint(const QScrollBar* self) {
	return new QSize(self->sizeHint());
}

bool QScrollBar_event(QScrollBar* self, QEvent* event) {
	return self->event(event);
}

struct miqt_string QScrollBar_tr2(const char* s, const char* c) {
	QString _ret = QScrollBar::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QScrollBar_tr3(const char* s, const char* c, int n) {
	QString _ret = QScrollBar::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QScrollBar_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQScrollBar*)(self) )->virtualbase_metaObject();
}

void* QScrollBar_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQScrollBar*)(self) )->virtualbase_metacast(param1);
}

int QScrollBar_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQScrollBar*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QSize* QScrollBar_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQScrollBar*)(self) )->virtualbase_sizeHint();
}

bool QScrollBar_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQScrollBar*)(self) )->virtualbase_event(event);
}

void QScrollBar_virtualbase_wheelEvent(void* self, QWheelEvent* param1) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_wheelEvent(param1);
}

void QScrollBar_virtualbase_paintEvent(void* self, QPaintEvent* param1) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_paintEvent(param1);
}

void QScrollBar_virtualbase_mousePressEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_mousePressEvent(param1);
}

void QScrollBar_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_mouseReleaseEvent(param1);
}

void QScrollBar_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_mouseMoveEvent(param1);
}

void QScrollBar_virtualbase_hideEvent(void* self, QHideEvent* param1) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_hideEvent(param1);
}

void QScrollBar_virtualbase_sliderChange(void* self, int change) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_sliderChange(change);
}

void QScrollBar_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_contextMenuEvent(param1);
}

void QScrollBar_virtualbase_initStyleOption(const void* self, QStyleOptionSlider* option) {
	( (const MiqtVirtualQScrollBar*)(self) )->virtualbase_initStyleOption(option);
}

void QScrollBar_virtualbase_keyPressEvent(void* self, QKeyEvent* ev) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_keyPressEvent(ev);
}

void QScrollBar_virtualbase_timerEvent(void* self, QTimerEvent* param1) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_timerEvent(param1);
}

void QScrollBar_virtualbase_changeEvent(void* self, QEvent* e) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_changeEvent(e);
}

int QScrollBar_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQScrollBar*)(self) )->virtualbase_devType();
}

void QScrollBar_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_setVisible(visible);
}

QSize* QScrollBar_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQScrollBar*)(self) )->virtualbase_minimumSizeHint();
}

int QScrollBar_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQScrollBar*)(self) )->virtualbase_heightForWidth(param1);
}

bool QScrollBar_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQScrollBar*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QScrollBar_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQScrollBar*)(self) )->virtualbase_paintEngine();
}

void QScrollBar_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QScrollBar_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QScrollBar_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_focusInEvent(event);
}

void QScrollBar_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_focusOutEvent(event);
}

void QScrollBar_virtualbase_enterEvent(void* self, QEnterEvent* event) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_enterEvent(event);
}

void QScrollBar_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_leaveEvent(event);
}

void QScrollBar_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_moveEvent(event);
}

void QScrollBar_virtualbase_resizeEvent(void* self, QResizeEvent* event) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_resizeEvent(event);
}

void QScrollBar_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_closeEvent(event);
}

void QScrollBar_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_tabletEvent(event);
}

void QScrollBar_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_actionEvent(event);
}

void QScrollBar_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_dragEnterEvent(event);
}

void QScrollBar_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_dragMoveEvent(event);
}

void QScrollBar_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QScrollBar_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_dropEvent(event);
}

void QScrollBar_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_showEvent(event);
}

bool QScrollBar_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	return ( (MiqtVirtualQScrollBar*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

int QScrollBar_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQScrollBar*)(self) )->virtualbase_metric(param1);
}

void QScrollBar_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQScrollBar*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QScrollBar_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQScrollBar*)(self) )->virtualbase_redirected(offset);
}

QPainter* QScrollBar_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQScrollBar*)(self) )->virtualbase_sharedPainter();
}

void QScrollBar_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QScrollBar_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQScrollBar*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QScrollBar_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQScrollBar*)(self) )->virtualbase_focusNextPrevChild(next);
}

bool QScrollBar_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQScrollBar*)(self) )->virtualbase_eventFilter(watched, event);
}

void QScrollBar_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_childEvent(event);
}

void QScrollBar_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_customEvent(event);
}

void QScrollBar_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_connectNotify(signal);
}

void QScrollBar_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQScrollBar*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QScrollBar_staticMetaObject() { return &QScrollBar::staticMetaObject; }
void QScrollBar_protectedbase_setRepeatAction(void* self, int action) {
	MiqtVirtualQScrollBar* self_cast = static_cast<MiqtVirtualQScrollBar*>( (QScrollBar*)(self) );
	
	self_cast->setRepeatAction(static_cast<MiqtVirtualQScrollBar::SliderAction>(action));

}

int QScrollBar_protectedbase_repeatAction(const void* self) {
	MiqtVirtualQScrollBar* self_cast = static_cast<MiqtVirtualQScrollBar*>( (QScrollBar*)(self) );
	
	MiqtVirtualQScrollBar::SliderAction _ret = self_cast->repeatAction();
	return static_cast<int>(_ret);

}

void QScrollBar_protectedbase_updateMicroFocus(void* self) {
	MiqtVirtualQScrollBar* self_cast = static_cast<MiqtVirtualQScrollBar*>( (QScrollBar*)(self) );
	
	self_cast->updateMicroFocus();

}

void QScrollBar_protectedbase_create(void* self) {
	MiqtVirtualQScrollBar* self_cast = static_cast<MiqtVirtualQScrollBar*>( (QScrollBar*)(self) );
	
	self_cast->create();

}

void QScrollBar_protectedbase_destroy(void* self) {
	MiqtVirtualQScrollBar* self_cast = static_cast<MiqtVirtualQScrollBar*>( (QScrollBar*)(self) );
	
	self_cast->destroy();

}

bool QScrollBar_protectedbase_focusNextChild(void* self) {
	MiqtVirtualQScrollBar* self_cast = static_cast<MiqtVirtualQScrollBar*>( (QScrollBar*)(self) );
	
	return self_cast->focusNextChild();

}

bool QScrollBar_protectedbase_focusPreviousChild(void* self) {
	MiqtVirtualQScrollBar* self_cast = static_cast<MiqtVirtualQScrollBar*>( (QScrollBar*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QScrollBar_protectedbase_sender(const void* self) {
	MiqtVirtualQScrollBar* self_cast = static_cast<MiqtVirtualQScrollBar*>( (QScrollBar*)(self) );
	
	return self_cast->sender();

}

int QScrollBar_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQScrollBar* self_cast = static_cast<MiqtVirtualQScrollBar*>( (QScrollBar*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QScrollBar_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQScrollBar* self_cast = static_cast<MiqtVirtualQScrollBar*>( (QScrollBar*)(self) );
	
	return self_cast->receivers(signal);

}

bool QScrollBar_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQScrollBar* self_cast = static_cast<MiqtVirtualQScrollBar*>( (QScrollBar*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QScrollBar_delete(QScrollBar* self) {
	delete self;
}

