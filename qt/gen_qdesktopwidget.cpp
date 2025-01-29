#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDesktopWidget>
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
#include <QRect>
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
#include <qdesktopwidget.h>
#include "gen_qdesktopwidget.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QDesktopWidget_resized(intptr_t, int);
void miqt_exec_callback_QDesktopWidget_resized_release(intptr_t);
void miqt_exec_callback_QDesktopWidget_workAreaResized(intptr_t, int);
void miqt_exec_callback_QDesktopWidget_workAreaResized_release(intptr_t);
void miqt_exec_callback_QDesktopWidget_screenCountChanged(intptr_t, int);
void miqt_exec_callback_QDesktopWidget_screenCountChanged_release(intptr_t);
void miqt_exec_callback_QDesktopWidget_primaryScreenChanged(intptr_t);
void miqt_exec_callback_QDesktopWidget_primaryScreenChanged_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQDesktopWidget final : public QDesktopWidget {
	struct QDesktopWidget_VTable* vtbl;
public:

	MiqtVirtualQDesktopWidget(struct QDesktopWidget_VTable* vtbl): QDesktopWidget(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQDesktopWidget() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDesktopWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QDesktopWidget::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDesktopWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QDesktopWidget::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDesktopWidget::qt_metacall(param1, param2, param3);
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

		return QDesktopWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* e) override {
		if (vtbl->resizeEvent == 0) {
			QDesktopWidget::resizeEvent(e);
			return;
		}

		QResizeEvent* sigval1 = e;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* e) {

		QDesktopWidget::resizeEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QDesktopWidget::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QDesktopWidget::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QDesktopWidget::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QDesktopWidget::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QDesktopWidget::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QDesktopWidget::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QDesktopWidget::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QDesktopWidget::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QDesktopWidget::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QDesktopWidget::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QDesktopWidget::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QDesktopWidget::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QDesktopWidget::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QDesktopWidget::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDesktopWidget::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QDesktopWidget::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QDesktopWidget::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QDesktopWidget::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QDesktopWidget::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QDesktopWidget::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QDesktopWidget::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QDesktopWidget::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QDesktopWidget::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QDesktopWidget::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QDesktopWidget::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QDesktopWidget::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QDesktopWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QDesktopWidget::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QDesktopWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QDesktopWidget::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QDesktopWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QDesktopWidget::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QDesktopWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QDesktopWidget::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QDesktopWidget::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEvent* event) {

		QDesktopWidget::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QDesktopWidget::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QDesktopWidget::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QDesktopWidget::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* event) {

		QDesktopWidget::paintEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QDesktopWidget::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QDesktopWidget::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QDesktopWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QDesktopWidget::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QDesktopWidget::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* event) {

		QDesktopWidget::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QDesktopWidget::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QDesktopWidget::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QDesktopWidget::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QDesktopWidget::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QDesktopWidget::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QDesktopWidget::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QDesktopWidget::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QDesktopWidget::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QDesktopWidget::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QDesktopWidget::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QDesktopWidget::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QDesktopWidget::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QDesktopWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QDesktopWidget::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QDesktopWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QDesktopWidget::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QDesktopWidget::nativeEvent(eventType, message, result);
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

		return QDesktopWidget::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QDesktopWidget::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* param1) {

		QDesktopWidget::changeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QDesktopWidget::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QDesktopWidget::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QDesktopWidget::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QDesktopWidget::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QDesktopWidget::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QDesktopWidget::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QDesktopWidget::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QDesktopWidget::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QDesktopWidget::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QDesktopWidget::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QDesktopWidget::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QDesktopWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QDesktopWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QDesktopWidget::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDesktopWidget::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QDesktopWidget::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDesktopWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QDesktopWidget::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDesktopWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QDesktopWidget::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDesktopWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QDesktopWidget::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDesktopWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QDesktopWidget::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDesktopWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QDesktopWidget::disconnectNotify(*signal);

	}

};

QDesktopWidget* QDesktopWidget_new(struct QDesktopWidget_VTable* vtbl) {
	return new MiqtVirtualQDesktopWidget(vtbl);
}

void QDesktopWidget_virtbase(QDesktopWidget* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QDesktopWidget_metaObject(const QDesktopWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDesktopWidget_metacast(QDesktopWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDesktopWidget_metacall(QDesktopWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QDesktopWidget_tr(const char* s) {
	QString _ret = QDesktopWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDesktopWidget_trUtf8(const char* s) {
	QString _ret = QDesktopWidget::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QDesktopWidget_screenNumber(const QDesktopWidget* self) {
	return self->screenNumber();
}

QRect* QDesktopWidget_screenGeometry(const QDesktopWidget* self, QWidget* widget) {
	return new QRect(self->screenGeometry(widget));
}

QRect* QDesktopWidget_availableGeometry(const QDesktopWidget* self, QWidget* widget) {
	return new QRect(self->availableGeometry(widget));
}

bool QDesktopWidget_isVirtualDesktop(const QDesktopWidget* self) {
	return self->isVirtualDesktop();
}

int QDesktopWidget_numScreens(const QDesktopWidget* self) {
	return self->numScreens();
}

int QDesktopWidget_screenCount(const QDesktopWidget* self) {
	return self->screenCount();
}

int QDesktopWidget_primaryScreen(const QDesktopWidget* self) {
	return self->primaryScreen();
}

int QDesktopWidget_screenNumberWithQPoint(const QDesktopWidget* self, QPoint* param1) {
	return self->screenNumber(*param1);
}

QWidget* QDesktopWidget_screen(QDesktopWidget* self) {
	return self->screen();
}

QRect* QDesktopWidget_screenGeometry2(const QDesktopWidget* self) {
	return new QRect(self->screenGeometry());
}

QRect* QDesktopWidget_screenGeometryWithPoint(const QDesktopWidget* self, QPoint* point) {
	return new QRect(self->screenGeometry(*point));
}

QRect* QDesktopWidget_availableGeometry2(const QDesktopWidget* self) {
	return new QRect(self->availableGeometry());
}

QRect* QDesktopWidget_availableGeometryWithPoint(const QDesktopWidget* self, QPoint* point) {
	return new QRect(self->availableGeometry(*point));
}

void QDesktopWidget_resized(QDesktopWidget* self, int param1) {
	self->resized(static_cast<int>(param1));
}

void QDesktopWidget_connect_resized(QDesktopWidget* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(int param1) {
			int sigval1 = param1;
			miqt_exec_callback_QDesktopWidget_resized(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QDesktopWidget_resized_release(slot); }
	};
	MiqtVirtualQDesktopWidget::connect(self, static_cast<void (QDesktopWidget::*)(int)>(&QDesktopWidget::resized), self, caller{slot});
}

void QDesktopWidget_workAreaResized(QDesktopWidget* self, int param1) {
	self->workAreaResized(static_cast<int>(param1));
}

void QDesktopWidget_connect_workAreaResized(QDesktopWidget* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(int param1) {
			int sigval1 = param1;
			miqt_exec_callback_QDesktopWidget_workAreaResized(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QDesktopWidget_workAreaResized_release(slot); }
	};
	MiqtVirtualQDesktopWidget::connect(self, static_cast<void (QDesktopWidget::*)(int)>(&QDesktopWidget::workAreaResized), self, caller{slot});
}

void QDesktopWidget_screenCountChanged(QDesktopWidget* self, int param1) {
	self->screenCountChanged(static_cast<int>(param1));
}

void QDesktopWidget_connect_screenCountChanged(QDesktopWidget* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(int param1) {
			int sigval1 = param1;
			miqt_exec_callback_QDesktopWidget_screenCountChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QDesktopWidget_screenCountChanged_release(slot); }
	};
	MiqtVirtualQDesktopWidget::connect(self, static_cast<void (QDesktopWidget::*)(int)>(&QDesktopWidget::screenCountChanged), self, caller{slot});
}

void QDesktopWidget_primaryScreenChanged(QDesktopWidget* self) {
	self->primaryScreenChanged();
}

void QDesktopWidget_connect_primaryScreenChanged(QDesktopWidget* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QDesktopWidget_primaryScreenChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QDesktopWidget_primaryScreenChanged_release(slot); }
	};
	MiqtVirtualQDesktopWidget::connect(self, static_cast<void (QDesktopWidget::*)()>(&QDesktopWidget::primaryScreenChanged), self, caller{slot});
}

struct miqt_string QDesktopWidget_tr2(const char* s, const char* c) {
	QString _ret = QDesktopWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDesktopWidget_tr3(const char* s, const char* c, int n) {
	QString _ret = QDesktopWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDesktopWidget_trUtf82(const char* s, const char* c) {
	QString _ret = QDesktopWidget::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDesktopWidget_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QDesktopWidget::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QDesktopWidget_screenNumber1(const QDesktopWidget* self, QWidget* widget) {
	return self->screenNumber(widget);
}

QWidget* QDesktopWidget_screen1(QDesktopWidget* self, int screen) {
	return self->screen(static_cast<int>(screen));
}

QRect* QDesktopWidget_screenGeometry1(const QDesktopWidget* self, int screen) {
	return new QRect(self->screenGeometry(static_cast<int>(screen)));
}

QRect* QDesktopWidget_availableGeometry1(const QDesktopWidget* self, int screen) {
	return new QRect(self->availableGeometry(static_cast<int>(screen)));
}

QMetaObject* QDesktopWidget_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQDesktopWidget*)(self) )->virtualbase_metaObject();
}

void* QDesktopWidget_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_metacast(param1);
}

int QDesktopWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QDesktopWidget_virtualbase_resizeEvent(void* self, QResizeEvent* e) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_resizeEvent(e);
}

int QDesktopWidget_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQDesktopWidget*)(self) )->virtualbase_devType();
}

void QDesktopWidget_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_setVisible(visible);
}

QSize* QDesktopWidget_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQDesktopWidget*)(self) )->virtualbase_sizeHint();
}

QSize* QDesktopWidget_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQDesktopWidget*)(self) )->virtualbase_minimumSizeHint();
}

int QDesktopWidget_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQDesktopWidget*)(self) )->virtualbase_heightForWidth(param1);
}

bool QDesktopWidget_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQDesktopWidget*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QDesktopWidget_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQDesktopWidget*)(self) )->virtualbase_paintEngine();
}

bool QDesktopWidget_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_event(event);
}

void QDesktopWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_mousePressEvent(event);
}

void QDesktopWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QDesktopWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QDesktopWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QDesktopWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_wheelEvent(event);
}

void QDesktopWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_keyPressEvent(event);
}

void QDesktopWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QDesktopWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_focusInEvent(event);
}

void QDesktopWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_focusOutEvent(event);
}

void QDesktopWidget_virtualbase_enterEvent(void* self, QEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_enterEvent(event);
}

void QDesktopWidget_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_leaveEvent(event);
}

void QDesktopWidget_virtualbase_paintEvent(void* self, QPaintEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_paintEvent(event);
}

void QDesktopWidget_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_moveEvent(event);
}

void QDesktopWidget_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_closeEvent(event);
}

void QDesktopWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_contextMenuEvent(event);
}

void QDesktopWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_tabletEvent(event);
}

void QDesktopWidget_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_actionEvent(event);
}

void QDesktopWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_dragEnterEvent(event);
}

void QDesktopWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_dragMoveEvent(event);
}

void QDesktopWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QDesktopWidget_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_dropEvent(event);
}

void QDesktopWidget_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_showEvent(event);
}

void QDesktopWidget_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_hideEvent(event);
}

bool QDesktopWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	return ( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

void QDesktopWidget_virtualbase_changeEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_changeEvent(param1);
}

int QDesktopWidget_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQDesktopWidget*)(self) )->virtualbase_metric(param1);
}

void QDesktopWidget_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQDesktopWidget*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QDesktopWidget_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQDesktopWidget*)(self) )->virtualbase_redirected(offset);
}

QPainter* QDesktopWidget_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQDesktopWidget*)(self) )->virtualbase_sharedPainter();
}

void QDesktopWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QDesktopWidget_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQDesktopWidget*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QDesktopWidget_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_focusNextPrevChild(next);
}

bool QDesktopWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_eventFilter(watched, event);
}

void QDesktopWidget_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_timerEvent(event);
}

void QDesktopWidget_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_childEvent(event);
}

void QDesktopWidget_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_customEvent(event);
}

void QDesktopWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_connectNotify(signal);
}

void QDesktopWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQDesktopWidget*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QDesktopWidget_staticMetaObject() { return &QDesktopWidget::staticMetaObject; }
void QDesktopWidget_delete(QDesktopWidget* self) {
	delete self;
}

