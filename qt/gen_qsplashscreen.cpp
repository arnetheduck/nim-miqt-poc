#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QColor>
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
#include <QPixmap>
#include <QPoint>
#include <QResizeEvent>
#include <QScreen>
#include <QShowEvent>
#include <QSize>
#include <QSplashScreen>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qsplashscreen.h>
#include "gen_qsplashscreen.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QSplashScreen_messageChanged(intptr_t, struct miqt_string);
void miqt_exec_callback_QSplashScreen_messageChanged_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQSplashScreen final : public QSplashScreen {
	struct QSplashScreen_VTable* vtbl;
public:

	MiqtVirtualQSplashScreen(struct QSplashScreen_VTable* vtbl, QWidget* parent): QSplashScreen(parent), vtbl(vtbl) {};
	MiqtVirtualQSplashScreen(struct QSplashScreen_VTable* vtbl): QSplashScreen(), vtbl(vtbl) {};
	MiqtVirtualQSplashScreen(struct QSplashScreen_VTable* vtbl, QScreen* screen): QSplashScreen(screen), vtbl(vtbl) {};
	MiqtVirtualQSplashScreen(struct QSplashScreen_VTable* vtbl, const QPixmap& pixmap): QSplashScreen(pixmap), vtbl(vtbl) {};
	MiqtVirtualQSplashScreen(struct QSplashScreen_VTable* vtbl, const QPixmap& pixmap, Qt::WindowFlags f): QSplashScreen(pixmap, f), vtbl(vtbl) {};
	MiqtVirtualQSplashScreen(struct QSplashScreen_VTable* vtbl, QScreen* screen, const QPixmap& pixmap): QSplashScreen(screen, pixmap), vtbl(vtbl) {};
	MiqtVirtualQSplashScreen(struct QSplashScreen_VTable* vtbl, QScreen* screen, const QPixmap& pixmap, Qt::WindowFlags f): QSplashScreen(screen, pixmap, f), vtbl(vtbl) {};
	MiqtVirtualQSplashScreen(struct QSplashScreen_VTable* vtbl, QWidget* parent, const QPixmap& pixmap): QSplashScreen(parent, pixmap), vtbl(vtbl) {};
	MiqtVirtualQSplashScreen(struct QSplashScreen_VTable* vtbl, QWidget* parent, const QPixmap& pixmap, Qt::WindowFlags f): QSplashScreen(parent, pixmap, f), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSplashScreen() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSplashScreen::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QSplashScreen::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSplashScreen::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QSplashScreen::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSplashScreen::qt_metacall(param1, param2, param3);
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

		return QSplashScreen::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QSplashScreen::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* e) {

		return QSplashScreen::event(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void drawContents(QPainter* painter) override {
		if (vtbl->drawContents == 0) {
			QSplashScreen::drawContents(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->drawContents(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_drawContents(QPainter* painter) {

		QSplashScreen::drawContents(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QSplashScreen::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* param1) {

		QSplashScreen::mousePressEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QSplashScreen::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QSplashScreen::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QSplashScreen::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QSplashScreen::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QSplashScreen::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QSplashScreen::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QSplashScreen::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QSplashScreen::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QSplashScreen::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QSplashScreen::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QSplashScreen::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QSplashScreen::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QSplashScreen::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QSplashScreen::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QSplashScreen::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QSplashScreen::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QSplashScreen::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QSplashScreen::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QSplashScreen::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QSplashScreen::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QSplashScreen::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QSplashScreen::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QSplashScreen::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QSplashScreen::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QSplashScreen::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QSplashScreen::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QSplashScreen::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QSplashScreen::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QSplashScreen::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QSplashScreen::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QSplashScreen::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEvent* event) {

		QSplashScreen::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QSplashScreen::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QSplashScreen::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QSplashScreen::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* event) {

		QSplashScreen::paintEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QSplashScreen::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QSplashScreen::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QSplashScreen::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* event) {

		QSplashScreen::resizeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QSplashScreen::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QSplashScreen::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QSplashScreen::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* event) {

		QSplashScreen::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QSplashScreen::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QSplashScreen::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QSplashScreen::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QSplashScreen::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QSplashScreen::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QSplashScreen::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QSplashScreen::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QSplashScreen::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QSplashScreen::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QSplashScreen::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QSplashScreen::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QSplashScreen::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QSplashScreen::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QSplashScreen::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QSplashScreen::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QSplashScreen::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QSplashScreen::nativeEvent(eventType, message, result);
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

		return QSplashScreen::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QSplashScreen::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* param1) {

		QSplashScreen::changeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QSplashScreen::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QSplashScreen::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QSplashScreen::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QSplashScreen::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QSplashScreen::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QSplashScreen::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QSplashScreen::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QSplashScreen::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QSplashScreen::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QSplashScreen::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QSplashScreen::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QSplashScreen::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QSplashScreen::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QSplashScreen::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSplashScreen::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QSplashScreen::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSplashScreen::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QSplashScreen::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSplashScreen::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QSplashScreen::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSplashScreen::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QSplashScreen::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSplashScreen::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QSplashScreen::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSplashScreen::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QSplashScreen::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	void protectedbase_updateMicroFocus() {

		QSplashScreen::updateMicroFocus();

	}

	// Wrapper to allow calling protected method
	void protectedbase_create() {

		QSplashScreen::create();

	}

	// Wrapper to allow calling protected method
	void protectedbase_destroy() {

		QSplashScreen::destroy();

	}

	// Wrapper to allow calling protected method
	bool protectedbase_focusNextChild() {

		return QSplashScreen::focusNextChild();

	}

	// Wrapper to allow calling protected method
	bool protectedbase_focusPreviousChild() {

		return QSplashScreen::focusPreviousChild();

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QSplashScreen::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QSplashScreen::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QSplashScreen::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QSplashScreen::isSignalConnected(*signal);

	}

};

QSplashScreen* QSplashScreen_new(struct QSplashScreen_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQSplashScreen(vtbl, parent);
}

QSplashScreen* QSplashScreen_new2(struct QSplashScreen_VTable* vtbl) {
	return new MiqtVirtualQSplashScreen(vtbl);
}

QSplashScreen* QSplashScreen_new3(struct QSplashScreen_VTable* vtbl, QScreen* screen) {
	return new MiqtVirtualQSplashScreen(vtbl, screen);
}

QSplashScreen* QSplashScreen_new4(struct QSplashScreen_VTable* vtbl, QPixmap* pixmap) {
	return new MiqtVirtualQSplashScreen(vtbl, *pixmap);
}

QSplashScreen* QSplashScreen_new5(struct QSplashScreen_VTable* vtbl, QPixmap* pixmap, int f) {
	return new MiqtVirtualQSplashScreen(vtbl, *pixmap, static_cast<Qt::WindowFlags>(f));
}

QSplashScreen* QSplashScreen_new6(struct QSplashScreen_VTable* vtbl, QScreen* screen, QPixmap* pixmap) {
	return new MiqtVirtualQSplashScreen(vtbl, screen, *pixmap);
}

QSplashScreen* QSplashScreen_new7(struct QSplashScreen_VTable* vtbl, QScreen* screen, QPixmap* pixmap, int f) {
	return new MiqtVirtualQSplashScreen(vtbl, screen, *pixmap, static_cast<Qt::WindowFlags>(f));
}

QSplashScreen* QSplashScreen_new8(struct QSplashScreen_VTable* vtbl, QWidget* parent, QPixmap* pixmap) {
	return new MiqtVirtualQSplashScreen(vtbl, parent, *pixmap);
}

QSplashScreen* QSplashScreen_new9(struct QSplashScreen_VTable* vtbl, QWidget* parent, QPixmap* pixmap, int f) {
	return new MiqtVirtualQSplashScreen(vtbl, parent, *pixmap, static_cast<Qt::WindowFlags>(f));
}

void QSplashScreen_virtbase(QSplashScreen* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QSplashScreen_metaObject(const QSplashScreen* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSplashScreen_metacast(QSplashScreen* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSplashScreen_metacall(QSplashScreen* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSplashScreen_tr(const char* s) {
	QString _ret = QSplashScreen::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplashScreen_trUtf8(const char* s) {
	QString _ret = QSplashScreen::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSplashScreen_setPixmap(QSplashScreen* self, QPixmap* pixmap) {
	self->setPixmap(*pixmap);
}

QPixmap* QSplashScreen_pixmap(const QSplashScreen* self) {
	return new QPixmap(self->pixmap());
}

void QSplashScreen_finish(QSplashScreen* self, QWidget* w) {
	self->finish(w);
}

void QSplashScreen_repaint(QSplashScreen* self) {
	self->repaint();
}

struct miqt_string QSplashScreen_message(const QSplashScreen* self) {
	QString _ret = self->message();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSplashScreen_showMessage(QSplashScreen* self, struct miqt_string message) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	self->showMessage(message_QString);
}

void QSplashScreen_clearMessage(QSplashScreen* self) {
	self->clearMessage();
}

void QSplashScreen_messageChanged(QSplashScreen* self, struct miqt_string message) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	self->messageChanged(message_QString);
}

void QSplashScreen_connect_messageChanged(QSplashScreen* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QString& message) {
			const QString message_ret = message;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray message_b = message_ret.toUtf8();
			struct miqt_string message_ms;
			message_ms.len = message_b.length();
			message_ms.data = static_cast<char*>(malloc(message_ms.len));
			memcpy(message_ms.data, message_b.data(), message_ms.len);
			struct miqt_string sigval1 = message_ms;
			miqt_exec_callback_QSplashScreen_messageChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QSplashScreen_messageChanged_release(slot); }
	};
	MiqtVirtualQSplashScreen::connect(self, static_cast<void (QSplashScreen::*)(const QString&)>(&QSplashScreen::messageChanged), self, caller{slot});
}

struct miqt_string QSplashScreen_tr2(const char* s, const char* c) {
	QString _ret = QSplashScreen::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplashScreen_tr3(const char* s, const char* c, int n) {
	QString _ret = QSplashScreen::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplashScreen_trUtf82(const char* s, const char* c) {
	QString _ret = QSplashScreen::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplashScreen_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSplashScreen::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSplashScreen_showMessage2(QSplashScreen* self, struct miqt_string message, int alignment) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	self->showMessage(message_QString, static_cast<int>(alignment));
}

void QSplashScreen_showMessage3(QSplashScreen* self, struct miqt_string message, int alignment, QColor* color) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	self->showMessage(message_QString, static_cast<int>(alignment), *color);
}

QMetaObject* QSplashScreen_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQSplashScreen*)(self) )->virtualbase_metaObject();
}

void* QSplashScreen_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_metacast(param1);
}

int QSplashScreen_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QSplashScreen_virtualbase_event(void* self, QEvent* e) {
	return ( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_event(e);
}

void QSplashScreen_virtualbase_drawContents(void* self, QPainter* painter) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_drawContents(painter);
}

void QSplashScreen_virtualbase_mousePressEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_mousePressEvent(param1);
}

int QSplashScreen_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQSplashScreen*)(self) )->virtualbase_devType();
}

void QSplashScreen_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_setVisible(visible);
}

QSize* QSplashScreen_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQSplashScreen*)(self) )->virtualbase_sizeHint();
}

QSize* QSplashScreen_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQSplashScreen*)(self) )->virtualbase_minimumSizeHint();
}

int QSplashScreen_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQSplashScreen*)(self) )->virtualbase_heightForWidth(param1);
}

bool QSplashScreen_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQSplashScreen*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QSplashScreen_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQSplashScreen*)(self) )->virtualbase_paintEngine();
}

void QSplashScreen_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QSplashScreen_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QSplashScreen_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QSplashScreen_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_wheelEvent(event);
}

void QSplashScreen_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_keyPressEvent(event);
}

void QSplashScreen_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QSplashScreen_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_focusInEvent(event);
}

void QSplashScreen_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_focusOutEvent(event);
}

void QSplashScreen_virtualbase_enterEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_enterEvent(event);
}

void QSplashScreen_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_leaveEvent(event);
}

void QSplashScreen_virtualbase_paintEvent(void* self, QPaintEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_paintEvent(event);
}

void QSplashScreen_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_moveEvent(event);
}

void QSplashScreen_virtualbase_resizeEvent(void* self, QResizeEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_resizeEvent(event);
}

void QSplashScreen_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_closeEvent(event);
}

void QSplashScreen_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_contextMenuEvent(event);
}

void QSplashScreen_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_tabletEvent(event);
}

void QSplashScreen_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_actionEvent(event);
}

void QSplashScreen_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_dragEnterEvent(event);
}

void QSplashScreen_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_dragMoveEvent(event);
}

void QSplashScreen_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QSplashScreen_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_dropEvent(event);
}

void QSplashScreen_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_showEvent(event);
}

void QSplashScreen_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_hideEvent(event);
}

bool QSplashScreen_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	return ( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

void QSplashScreen_virtualbase_changeEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_changeEvent(param1);
}

int QSplashScreen_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQSplashScreen*)(self) )->virtualbase_metric(param1);
}

void QSplashScreen_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQSplashScreen*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QSplashScreen_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQSplashScreen*)(self) )->virtualbase_redirected(offset);
}

QPainter* QSplashScreen_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQSplashScreen*)(self) )->virtualbase_sharedPainter();
}

void QSplashScreen_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QSplashScreen_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQSplashScreen*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QSplashScreen_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_focusNextPrevChild(next);
}

bool QSplashScreen_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_eventFilter(watched, event);
}

void QSplashScreen_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_timerEvent(event);
}

void QSplashScreen_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_childEvent(event);
}

void QSplashScreen_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_customEvent(event);
}

void QSplashScreen_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_connectNotify(signal);
}

void QSplashScreen_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSplashScreen*)(self) )->virtualbase_disconnectNotify(signal);
}

void QSplashScreen_protectedbase_updateMicroFocus(void* self) {
	( (MiqtVirtualQSplashScreen*)(self) )->protectedbase_updateMicroFocus();
}

void QSplashScreen_protectedbase_create(void* self) {
	( (MiqtVirtualQSplashScreen*)(self) )->protectedbase_create();
}

void QSplashScreen_protectedbase_destroy(void* self) {
	( (MiqtVirtualQSplashScreen*)(self) )->protectedbase_destroy();
}

bool QSplashScreen_protectedbase_focusNextChild(void* self) {
	return ( (MiqtVirtualQSplashScreen*)(self) )->protectedbase_focusNextChild();
}

bool QSplashScreen_protectedbase_focusPreviousChild(void* self) {
	return ( (MiqtVirtualQSplashScreen*)(self) )->protectedbase_focusPreviousChild();
}

QObject* QSplashScreen_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQSplashScreen*)(self) )->protectedbase_sender();
}

int QSplashScreen_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQSplashScreen*)(self) )->protectedbase_senderSignalIndex();
}

int QSplashScreen_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQSplashScreen*)(self) )->protectedbase_receivers(signal);
}

bool QSplashScreen_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQSplashScreen*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QSplashScreen_staticMetaObject() { return &QSplashScreen::staticMetaObject; }
void QSplashScreen_delete(QSplashScreen* self) {
	delete self;
}

