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
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionToolBar>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QToolBar>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qtoolbar.h>
#include "gen_qtoolbar.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QToolBar_movableChanged(intptr_t, bool);
void miqt_exec_callback_QToolBar_allowedAreasChanged(intptr_t, int);
void miqt_exec_callback_QToolBar_orientationChanged(intptr_t, int);
void miqt_exec_callback_QToolBar_iconSizeChanged(intptr_t, QSize*);
void miqt_exec_callback_QToolBar_toolButtonStyleChanged(intptr_t, int);
void miqt_exec_callback_QToolBar_topLevelChanged(intptr_t, bool);
void miqt_exec_callback_QToolBar_visibilityChanged(intptr_t, bool);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQToolBar final : public QToolBar {
	struct QToolBar_VTable* vtbl;
public:

	MiqtVirtualQToolBar(struct QToolBar_VTable* vtbl, QWidget* parent): QToolBar(parent), vtbl(vtbl) {};
	MiqtVirtualQToolBar(struct QToolBar_VTable* vtbl, const QString& title): QToolBar(title), vtbl(vtbl) {};
	MiqtVirtualQToolBar(struct QToolBar_VTable* vtbl): QToolBar(), vtbl(vtbl) {};
	MiqtVirtualQToolBar(struct QToolBar_VTable* vtbl, const QString& title, QWidget* parent): QToolBar(title, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQToolBar() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QToolBar::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QToolBar::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QToolBar::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QToolBar::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QToolBar::qt_metacall(param1, param2, param3);
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

		return QToolBar::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QToolBar::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QToolBar::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QToolBar::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* event) {

		QToolBar::changeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QToolBar::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* event) {

		QToolBar::paintEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QToolBar::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QToolBar::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionToolBar* option) const override {
		if (vtbl->initStyleOption == 0) {
			QToolBar::initStyleOption(option);
			return;
		}

		QStyleOptionToolBar* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initStyleOption(QStyleOptionToolBar* option) const {

		QToolBar::initStyleOption(option);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QToolBar::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QToolBar::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QToolBar::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QToolBar::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QToolBar::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QToolBar::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QToolBar::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QToolBar::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QToolBar::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QToolBar::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QToolBar::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QToolBar::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QToolBar::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QToolBar::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QToolBar::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QToolBar::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QToolBar::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QToolBar::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QToolBar::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QToolBar::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QToolBar::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QToolBar::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QToolBar::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QToolBar::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QToolBar::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QToolBar::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QToolBar::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QToolBar::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QToolBar::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QToolBar::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QToolBar::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QToolBar::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QToolBar::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEnterEvent* event) {

		QToolBar::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QToolBar::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QToolBar::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QToolBar::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QToolBar::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QToolBar::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* event) {

		QToolBar::resizeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QToolBar::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QToolBar::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QToolBar::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* event) {

		QToolBar::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QToolBar::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QToolBar::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QToolBar::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QToolBar::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QToolBar::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QToolBar::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QToolBar::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QToolBar::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QToolBar::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QToolBar::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QToolBar::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QToolBar::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QToolBar::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QToolBar::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QToolBar::nativeEvent(eventType, message, result);
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

		return QToolBar::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QToolBar::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QToolBar::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QToolBar::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QToolBar::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QToolBar::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QToolBar::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QToolBar::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QToolBar::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QToolBar::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QToolBar::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QToolBar::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QToolBar::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QToolBar::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QToolBar::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QToolBar::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QToolBar::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QToolBar::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QToolBar::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QToolBar::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QToolBar::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QToolBar::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QToolBar::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QToolBar::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QToolBar::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QToolBar::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QToolBar::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QToolBar_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QToolBar_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QToolBar_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QToolBar_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QToolBar_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QToolBar_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QToolBar_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QToolBar_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QToolBar_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QToolBar* QToolBar_new(struct QToolBar_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQToolBar(vtbl, parent);
}

QToolBar* QToolBar_new2(struct QToolBar_VTable* vtbl, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new MiqtVirtualQToolBar(vtbl, title_QString);
}

QToolBar* QToolBar_new3(struct QToolBar_VTable* vtbl) {
	return new MiqtVirtualQToolBar(vtbl);
}

QToolBar* QToolBar_new4(struct QToolBar_VTable* vtbl, struct miqt_string title, QWidget* parent) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new MiqtVirtualQToolBar(vtbl, title_QString, parent);
}

void QToolBar_virtbase(QToolBar* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QToolBar_metaObject(const QToolBar* self) {
	return (QMetaObject*) self->metaObject();
}

void* QToolBar_metacast(QToolBar* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QToolBar_metacall(QToolBar* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QToolBar_tr(const char* s) {
	QString _ret = QToolBar::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QToolBar_setMovable(QToolBar* self, bool movable) {
	self->setMovable(movable);
}

bool QToolBar_isMovable(const QToolBar* self) {
	return self->isMovable();
}

void QToolBar_setAllowedAreas(QToolBar* self, int areas) {
	self->setAllowedAreas(static_cast<Qt::ToolBarAreas>(areas));
}

int QToolBar_allowedAreas(const QToolBar* self) {
	Qt::ToolBarAreas _ret = self->allowedAreas();
	return static_cast<int>(_ret);
}

bool QToolBar_isAreaAllowed(const QToolBar* self, int area) {
	return self->isAreaAllowed(static_cast<Qt::ToolBarArea>(area));
}

void QToolBar_setOrientation(QToolBar* self, int orientation) {
	self->setOrientation(static_cast<Qt::Orientation>(orientation));
}

int QToolBar_orientation(const QToolBar* self) {
	Qt::Orientation _ret = self->orientation();
	return static_cast<int>(_ret);
}

void QToolBar_clear(QToolBar* self) {
	self->clear();
}

QSize* QToolBar_iconSize(const QToolBar* self) {
	return new QSize(self->iconSize());
}

int QToolBar_toolButtonStyle(const QToolBar* self) {
	Qt::ToolButtonStyle _ret = self->toolButtonStyle();
	return static_cast<int>(_ret);
}

bool QToolBar_isFloatable(const QToolBar* self) {
	return self->isFloatable();
}

void QToolBar_setFloatable(QToolBar* self, bool floatable) {
	self->setFloatable(floatable);
}

bool QToolBar_isFloating(const QToolBar* self) {
	return self->isFloating();
}

void QToolBar_setIconSize(QToolBar* self, QSize* iconSize) {
	self->setIconSize(*iconSize);
}

void QToolBar_setToolButtonStyle(QToolBar* self, int toolButtonStyle) {
	self->setToolButtonStyle(static_cast<Qt::ToolButtonStyle>(toolButtonStyle));
}

void QToolBar_movableChanged(QToolBar* self, bool movable) {
	self->movableChanged(movable);
}

void QToolBar_connect_movableChanged(QToolBar* self, intptr_t slot) {
	MiqtVirtualQToolBar::connect(self, static_cast<void (QToolBar::*)(bool)>(&QToolBar::movableChanged), self, [=](bool movable) {
		bool sigval1 = movable;
		miqt_exec_callback_QToolBar_movableChanged(slot, sigval1);
	});
}

void QToolBar_allowedAreasChanged(QToolBar* self, int allowedAreas) {
	self->allowedAreasChanged(static_cast<Qt::ToolBarAreas>(allowedAreas));
}

void QToolBar_connect_allowedAreasChanged(QToolBar* self, intptr_t slot) {
	MiqtVirtualQToolBar::connect(self, static_cast<void (QToolBar::*)(Qt::ToolBarAreas)>(&QToolBar::allowedAreasChanged), self, [=](Qt::ToolBarAreas allowedAreas) {
		Qt::ToolBarAreas allowedAreas_ret = allowedAreas;
		int sigval1 = static_cast<int>(allowedAreas_ret);
		miqt_exec_callback_QToolBar_allowedAreasChanged(slot, sigval1);
	});
}

void QToolBar_orientationChanged(QToolBar* self, int orientation) {
	self->orientationChanged(static_cast<Qt::Orientation>(orientation));
}

void QToolBar_connect_orientationChanged(QToolBar* self, intptr_t slot) {
	MiqtVirtualQToolBar::connect(self, static_cast<void (QToolBar::*)(Qt::Orientation)>(&QToolBar::orientationChanged), self, [=](Qt::Orientation orientation) {
		Qt::Orientation orientation_ret = orientation;
		int sigval1 = static_cast<int>(orientation_ret);
		miqt_exec_callback_QToolBar_orientationChanged(slot, sigval1);
	});
}

void QToolBar_iconSizeChanged(QToolBar* self, QSize* iconSize) {
	self->iconSizeChanged(*iconSize);
}

void QToolBar_connect_iconSizeChanged(QToolBar* self, intptr_t slot) {
	MiqtVirtualQToolBar::connect(self, static_cast<void (QToolBar::*)(const QSize&)>(&QToolBar::iconSizeChanged), self, [=](const QSize& iconSize) {
		const QSize& iconSize_ret = iconSize;
		// Cast returned reference into pointer
		QSize* sigval1 = const_cast<QSize*>(&iconSize_ret);
		miqt_exec_callback_QToolBar_iconSizeChanged(slot, sigval1);
	});
}

void QToolBar_toolButtonStyleChanged(QToolBar* self, int toolButtonStyle) {
	self->toolButtonStyleChanged(static_cast<Qt::ToolButtonStyle>(toolButtonStyle));
}

void QToolBar_connect_toolButtonStyleChanged(QToolBar* self, intptr_t slot) {
	MiqtVirtualQToolBar::connect(self, static_cast<void (QToolBar::*)(Qt::ToolButtonStyle)>(&QToolBar::toolButtonStyleChanged), self, [=](Qt::ToolButtonStyle toolButtonStyle) {
		Qt::ToolButtonStyle toolButtonStyle_ret = toolButtonStyle;
		int sigval1 = static_cast<int>(toolButtonStyle_ret);
		miqt_exec_callback_QToolBar_toolButtonStyleChanged(slot, sigval1);
	});
}

void QToolBar_topLevelChanged(QToolBar* self, bool topLevel) {
	self->topLevelChanged(topLevel);
}

void QToolBar_connect_topLevelChanged(QToolBar* self, intptr_t slot) {
	MiqtVirtualQToolBar::connect(self, static_cast<void (QToolBar::*)(bool)>(&QToolBar::topLevelChanged), self, [=](bool topLevel) {
		bool sigval1 = topLevel;
		miqt_exec_callback_QToolBar_topLevelChanged(slot, sigval1);
	});
}

void QToolBar_visibilityChanged(QToolBar* self, bool visible) {
	self->visibilityChanged(visible);
}

void QToolBar_connect_visibilityChanged(QToolBar* self, intptr_t slot) {
	MiqtVirtualQToolBar::connect(self, static_cast<void (QToolBar::*)(bool)>(&QToolBar::visibilityChanged), self, [=](bool visible) {
		bool sigval1 = visible;
		miqt_exec_callback_QToolBar_visibilityChanged(slot, sigval1);
	});
}

struct miqt_string QToolBar_tr2(const char* s, const char* c) {
	QString _ret = QToolBar::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QToolBar_tr3(const char* s, const char* c, int n) {
	QString _ret = QToolBar::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QToolBar_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQToolBar*)(self) )->virtualbase_metaObject();
}

void* QToolBar_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQToolBar*)(self) )->virtualbase_metacast(param1);
}

int QToolBar_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQToolBar*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QToolBar_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_actionEvent(event);
}

void QToolBar_virtualbase_changeEvent(void* self, QEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_changeEvent(event);
}

void QToolBar_virtualbase_paintEvent(void* self, QPaintEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_paintEvent(event);
}

bool QToolBar_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQToolBar*)(self) )->virtualbase_event(event);
}

void QToolBar_virtualbase_initStyleOption(const void* self, QStyleOptionToolBar* option) {
	( (const MiqtVirtualQToolBar*)(self) )->virtualbase_initStyleOption(option);
}

int QToolBar_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQToolBar*)(self) )->virtualbase_devType();
}

void QToolBar_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_setVisible(visible);
}

QSize* QToolBar_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQToolBar*)(self) )->virtualbase_sizeHint();
}

QSize* QToolBar_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQToolBar*)(self) )->virtualbase_minimumSizeHint();
}

int QToolBar_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQToolBar*)(self) )->virtualbase_heightForWidth(param1);
}

bool QToolBar_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQToolBar*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QToolBar_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQToolBar*)(self) )->virtualbase_paintEngine();
}

void QToolBar_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_mousePressEvent(event);
}

void QToolBar_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QToolBar_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QToolBar_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QToolBar_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_wheelEvent(event);
}

void QToolBar_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_keyPressEvent(event);
}

void QToolBar_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QToolBar_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_focusInEvent(event);
}

void QToolBar_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_focusOutEvent(event);
}

void QToolBar_virtualbase_enterEvent(void* self, QEnterEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_enterEvent(event);
}

void QToolBar_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_leaveEvent(event);
}

void QToolBar_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_moveEvent(event);
}

void QToolBar_virtualbase_resizeEvent(void* self, QResizeEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_resizeEvent(event);
}

void QToolBar_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_closeEvent(event);
}

void QToolBar_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_contextMenuEvent(event);
}

void QToolBar_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_tabletEvent(event);
}

void QToolBar_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_dragEnterEvent(event);
}

void QToolBar_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_dragMoveEvent(event);
}

void QToolBar_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QToolBar_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_dropEvent(event);
}

void QToolBar_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_showEvent(event);
}

void QToolBar_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_hideEvent(event);
}

bool QToolBar_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	return ( (MiqtVirtualQToolBar*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

int QToolBar_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQToolBar*)(self) )->virtualbase_metric(param1);
}

void QToolBar_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQToolBar*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QToolBar_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQToolBar*)(self) )->virtualbase_redirected(offset);
}

QPainter* QToolBar_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQToolBar*)(self) )->virtualbase_sharedPainter();
}

void QToolBar_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QToolBar_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQToolBar*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QToolBar_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQToolBar*)(self) )->virtualbase_focusNextPrevChild(next);
}

bool QToolBar_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQToolBar*)(self) )->virtualbase_eventFilter(watched, event);
}

void QToolBar_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_timerEvent(event);
}

void QToolBar_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_childEvent(event);
}

void QToolBar_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_customEvent(event);
}

void QToolBar_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_connectNotify(signal);
}

void QToolBar_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQToolBar*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QToolBar_staticMetaObject() { return &QToolBar::staticMetaObject; }
void QToolBar_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQToolBar* self_cast = dynamic_cast<MiqtVirtualQToolBar*>( (QToolBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QToolBar_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQToolBar* self_cast = dynamic_cast<MiqtVirtualQToolBar*>( (QToolBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QToolBar_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQToolBar* self_cast = dynamic_cast<MiqtVirtualQToolBar*>( (QToolBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QToolBar_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQToolBar* self_cast = dynamic_cast<MiqtVirtualQToolBar*>( (QToolBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QToolBar_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQToolBar* self_cast = dynamic_cast<MiqtVirtualQToolBar*>( (QToolBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QToolBar_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQToolBar* self_cast = dynamic_cast<MiqtVirtualQToolBar*>( (QToolBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QToolBar_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQToolBar* self_cast = dynamic_cast<MiqtVirtualQToolBar*>( (QToolBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QToolBar_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	MiqtVirtualQToolBar* self_cast = dynamic_cast<MiqtVirtualQToolBar*>( (QToolBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QToolBar_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	MiqtVirtualQToolBar* self_cast = dynamic_cast<MiqtVirtualQToolBar*>( (QToolBar*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QToolBar_delete(QToolBar* self) {
	delete self;
}

