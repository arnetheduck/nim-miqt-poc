#include <QAbstractButton>
#include <QActionEvent>
#include <QButtonGroup>
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
#include <QIcon>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QKeySequence>
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
#include <QWheelEvent>
#include <QWidget>
#include <qabstractbutton.h>
#include "gen_qabstractbutton.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QAbstractButton_pressed(intptr_t);
void miqt_exec_callback_QAbstractButton_pressed_release(intptr_t);
void miqt_exec_callback_QAbstractButton_released(intptr_t);
void miqt_exec_callback_QAbstractButton_released_release(intptr_t);
void miqt_exec_callback_QAbstractButton_clicked(intptr_t);
void miqt_exec_callback_QAbstractButton_clicked_release(intptr_t);
void miqt_exec_callback_QAbstractButton_toggled(intptr_t, bool);
void miqt_exec_callback_QAbstractButton_toggled_release(intptr_t);
void miqt_exec_callback_QAbstractButton_clicked1(intptr_t, bool);
void miqt_exec_callback_QAbstractButton_clicked1_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQAbstractButton final : public QAbstractButton {
	struct QAbstractButton_VTable* vtbl;
public:

	MiqtVirtualQAbstractButton(struct QAbstractButton_VTable* vtbl, QWidget* parent): QAbstractButton(parent), vtbl(vtbl) {};
	MiqtVirtualQAbstractButton(struct QAbstractButton_VTable* vtbl): QAbstractButton(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQAbstractButton() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractButton::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QAbstractButton::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractButton::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QAbstractButton::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractButton::qt_metacall(param1, param2, param3);
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

		return QAbstractButton::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* e) override {
		if (vtbl->paintEvent == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QPaintEvent* sigval1 = e;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool hitButton(const QPoint& pos) const override {
		if (vtbl->hitButton == 0) {
			return QAbstractButton::hitButton(pos);
		}

		const QPoint& pos_ret = pos;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&pos_ret);

		bool callback_return_value = vtbl->hitButton(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hitButton(QPoint* pos) const {

		return QAbstractButton::hitButton(*pos);

	}

	// Subclass to allow providing a Go implementation
	virtual void checkStateSet() override {
		if (vtbl->checkStateSet == 0) {
			QAbstractButton::checkStateSet();
			return;
		}


		vtbl->checkStateSet(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_checkStateSet() {

		QAbstractButton::checkStateSet();

	}

	// Subclass to allow providing a Go implementation
	virtual void nextCheckState() override {
		if (vtbl->nextCheckState == 0) {
			QAbstractButton::nextCheckState();
			return;
		}


		vtbl->nextCheckState(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_nextCheckState() {

		QAbstractButton::nextCheckState();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QAbstractButton::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* e) {

		return QAbstractButton::event(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* e) override {
		if (vtbl->keyPressEvent == 0) {
			QAbstractButton::keyPressEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* e) {

		QAbstractButton::keyPressEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* e) override {
		if (vtbl->keyReleaseEvent == 0) {
			QAbstractButton::keyReleaseEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* e) {

		QAbstractButton::keyReleaseEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* e) override {
		if (vtbl->mousePressEvent == 0) {
			QAbstractButton::mousePressEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* e) {

		QAbstractButton::mousePressEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QAbstractButton::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* e) {

		QAbstractButton::mouseReleaseEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* e) override {
		if (vtbl->mouseMoveEvent == 0) {
			QAbstractButton::mouseMoveEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* e) {

		QAbstractButton::mouseMoveEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* e) override {
		if (vtbl->focusInEvent == 0) {
			QAbstractButton::focusInEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* e) {

		QAbstractButton::focusInEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* e) override {
		if (vtbl->focusOutEvent == 0) {
			QAbstractButton::focusOutEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* e) {

		QAbstractButton::focusOutEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QAbstractButton::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* e) {

		QAbstractButton::changeEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* e) override {
		if (vtbl->timerEvent == 0) {
			QAbstractButton::timerEvent(e);
			return;
		}

		QTimerEvent* sigval1 = e;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* e) {

		QAbstractButton::timerEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QAbstractButton::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QAbstractButton::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QAbstractButton::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QAbstractButton::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QAbstractButton::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QAbstractButton::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QAbstractButton::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QAbstractButton::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QAbstractButton::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QAbstractButton::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QAbstractButton::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QAbstractButton::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QAbstractButton::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QAbstractButton::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QAbstractButton::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QAbstractButton::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QAbstractButton::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QAbstractButton::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QAbstractButton::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEnterEvent* event) {

		QAbstractButton::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QAbstractButton::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QAbstractButton::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QAbstractButton::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QAbstractButton::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QAbstractButton::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* event) {

		QAbstractButton::resizeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QAbstractButton::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QAbstractButton::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QAbstractButton::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* event) {

		QAbstractButton::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QAbstractButton::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QAbstractButton::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QAbstractButton::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QAbstractButton::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QAbstractButton::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QAbstractButton::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QAbstractButton::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QAbstractButton::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QAbstractButton::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QAbstractButton::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QAbstractButton::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QAbstractButton::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QAbstractButton::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QAbstractButton::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QAbstractButton::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QAbstractButton::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QAbstractButton::nativeEvent(eventType, message, result);
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

		return QAbstractButton::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QAbstractButton::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QAbstractButton::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QAbstractButton::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QAbstractButton::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QAbstractButton::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QAbstractButton::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QAbstractButton::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QAbstractButton::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QAbstractButton::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QAbstractButton::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QAbstractButton::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QAbstractButton::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QAbstractButton::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QAbstractButton::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractButton::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QAbstractButton::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractButton::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QAbstractButton::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractButton::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QAbstractButton::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractButton::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QAbstractButton::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractButton::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QAbstractButton::disconnectNotify(*signal);

	}

};

QAbstractButton* QAbstractButton_new(struct QAbstractButton_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQAbstractButton(vtbl, parent);
}

QAbstractButton* QAbstractButton_new2(struct QAbstractButton_VTable* vtbl) {
	return new MiqtVirtualQAbstractButton(vtbl);
}

void QAbstractButton_virtbase(QAbstractButton* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QAbstractButton_metaObject(const QAbstractButton* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractButton_metacast(QAbstractButton* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractButton_metacall(QAbstractButton* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAbstractButton_tr(const char* s) {
	QString _ret = QAbstractButton::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractButton_setText(QAbstractButton* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setText(text_QString);
}

struct miqt_string QAbstractButton_text(const QAbstractButton* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractButton_setIcon(QAbstractButton* self, QIcon* icon) {
	self->setIcon(*icon);
}

QIcon* QAbstractButton_icon(const QAbstractButton* self) {
	return new QIcon(self->icon());
}

QSize* QAbstractButton_iconSize(const QAbstractButton* self) {
	return new QSize(self->iconSize());
}

void QAbstractButton_setShortcut(QAbstractButton* self, QKeySequence* key) {
	self->setShortcut(*key);
}

QKeySequence* QAbstractButton_shortcut(const QAbstractButton* self) {
	return new QKeySequence(self->shortcut());
}

void QAbstractButton_setCheckable(QAbstractButton* self, bool checkable) {
	self->setCheckable(checkable);
}

bool QAbstractButton_isCheckable(const QAbstractButton* self) {
	return self->isCheckable();
}

bool QAbstractButton_isChecked(const QAbstractButton* self) {
	return self->isChecked();
}

void QAbstractButton_setDown(QAbstractButton* self, bool down) {
	self->setDown(down);
}

bool QAbstractButton_isDown(const QAbstractButton* self) {
	return self->isDown();
}

void QAbstractButton_setAutoRepeat(QAbstractButton* self, bool autoRepeat) {
	self->setAutoRepeat(autoRepeat);
}

bool QAbstractButton_autoRepeat(const QAbstractButton* self) {
	return self->autoRepeat();
}

void QAbstractButton_setAutoRepeatDelay(QAbstractButton* self, int autoRepeatDelay) {
	self->setAutoRepeatDelay(static_cast<int>(autoRepeatDelay));
}

int QAbstractButton_autoRepeatDelay(const QAbstractButton* self) {
	return self->autoRepeatDelay();
}

void QAbstractButton_setAutoRepeatInterval(QAbstractButton* self, int autoRepeatInterval) {
	self->setAutoRepeatInterval(static_cast<int>(autoRepeatInterval));
}

int QAbstractButton_autoRepeatInterval(const QAbstractButton* self) {
	return self->autoRepeatInterval();
}

void QAbstractButton_setAutoExclusive(QAbstractButton* self, bool autoExclusive) {
	self->setAutoExclusive(autoExclusive);
}

bool QAbstractButton_autoExclusive(const QAbstractButton* self) {
	return self->autoExclusive();
}

QButtonGroup* QAbstractButton_group(const QAbstractButton* self) {
	return self->group();
}

void QAbstractButton_setIconSize(QAbstractButton* self, QSize* size) {
	self->setIconSize(*size);
}

void QAbstractButton_animateClick(QAbstractButton* self) {
	self->animateClick();
}

void QAbstractButton_click(QAbstractButton* self) {
	self->click();
}

void QAbstractButton_toggle(QAbstractButton* self) {
	self->toggle();
}

void QAbstractButton_setChecked(QAbstractButton* self, bool checked) {
	self->setChecked(checked);
}

void QAbstractButton_pressed(QAbstractButton* self) {
	self->pressed();
}

void QAbstractButton_connect_pressed(QAbstractButton* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QAbstractButton_pressed(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QAbstractButton_pressed_release(slot); }
	};
	MiqtVirtualQAbstractButton::connect(self, static_cast<void (QAbstractButton::*)()>(&QAbstractButton::pressed), self, caller{slot});
}

void QAbstractButton_released(QAbstractButton* self) {
	self->released();
}

void QAbstractButton_connect_released(QAbstractButton* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QAbstractButton_released(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QAbstractButton_released_release(slot); }
	};
	MiqtVirtualQAbstractButton::connect(self, static_cast<void (QAbstractButton::*)()>(&QAbstractButton::released), self, caller{slot});
}

void QAbstractButton_clicked(QAbstractButton* self) {
	self->clicked();
}

void QAbstractButton_connect_clicked(QAbstractButton* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QAbstractButton_clicked(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QAbstractButton_clicked_release(slot); }
	};
	MiqtVirtualQAbstractButton::connect(self, static_cast<void (QAbstractButton::*)(bool)>(&QAbstractButton::clicked), self, caller{slot});
}

void QAbstractButton_toggled(QAbstractButton* self, bool checked) {
	self->toggled(checked);
}

void QAbstractButton_connect_toggled(QAbstractButton* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(bool checked) {
			bool sigval1 = checked;
			miqt_exec_callback_QAbstractButton_toggled(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QAbstractButton_toggled_release(slot); }
	};
	MiqtVirtualQAbstractButton::connect(self, static_cast<void (QAbstractButton::*)(bool)>(&QAbstractButton::toggled), self, caller{slot});
}

struct miqt_string QAbstractButton_tr2(const char* s, const char* c) {
	QString _ret = QAbstractButton::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractButton_tr3(const char* s, const char* c, int n) {
	QString _ret = QAbstractButton::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractButton_clicked1(QAbstractButton* self, bool checked) {
	self->clicked(checked);
}

void QAbstractButton_connect_clicked1(QAbstractButton* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(bool checked) {
			bool sigval1 = checked;
			miqt_exec_callback_QAbstractButton_clicked1(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QAbstractButton_clicked1_release(slot); }
	};
	MiqtVirtualQAbstractButton::connect(self, static_cast<void (QAbstractButton::*)(bool)>(&QAbstractButton::clicked), self, caller{slot});
}

QMetaObject* QAbstractButton_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQAbstractButton*)(self) )->virtualbase_metaObject();
}

void* QAbstractButton_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_metacast(param1);
}

int QAbstractButton_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QAbstractButton_virtualbase_hitButton(const void* self, QPoint* pos) {
	return ( (const MiqtVirtualQAbstractButton*)(self) )->virtualbase_hitButton(pos);
}

void QAbstractButton_virtualbase_checkStateSet(void* self) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_checkStateSet();
}

void QAbstractButton_virtualbase_nextCheckState(void* self) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_nextCheckState();
}

bool QAbstractButton_virtualbase_event(void* self, QEvent* e) {
	return ( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_event(e);
}

void QAbstractButton_virtualbase_keyPressEvent(void* self, QKeyEvent* e) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_keyPressEvent(e);
}

void QAbstractButton_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_keyReleaseEvent(e);
}

void QAbstractButton_virtualbase_mousePressEvent(void* self, QMouseEvent* e) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_mousePressEvent(e);
}

void QAbstractButton_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_mouseReleaseEvent(e);
}

void QAbstractButton_virtualbase_mouseMoveEvent(void* self, QMouseEvent* e) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_mouseMoveEvent(e);
}

void QAbstractButton_virtualbase_focusInEvent(void* self, QFocusEvent* e) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_focusInEvent(e);
}

void QAbstractButton_virtualbase_focusOutEvent(void* self, QFocusEvent* e) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_focusOutEvent(e);
}

void QAbstractButton_virtualbase_changeEvent(void* self, QEvent* e) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_changeEvent(e);
}

void QAbstractButton_virtualbase_timerEvent(void* self, QTimerEvent* e) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_timerEvent(e);
}

int QAbstractButton_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQAbstractButton*)(self) )->virtualbase_devType();
}

void QAbstractButton_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_setVisible(visible);
}

QSize* QAbstractButton_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQAbstractButton*)(self) )->virtualbase_sizeHint();
}

QSize* QAbstractButton_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQAbstractButton*)(self) )->virtualbase_minimumSizeHint();
}

int QAbstractButton_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQAbstractButton*)(self) )->virtualbase_heightForWidth(param1);
}

bool QAbstractButton_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQAbstractButton*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QAbstractButton_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQAbstractButton*)(self) )->virtualbase_paintEngine();
}

void QAbstractButton_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QAbstractButton_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_wheelEvent(event);
}

void QAbstractButton_virtualbase_enterEvent(void* self, QEnterEvent* event) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_enterEvent(event);
}

void QAbstractButton_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_leaveEvent(event);
}

void QAbstractButton_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_moveEvent(event);
}

void QAbstractButton_virtualbase_resizeEvent(void* self, QResizeEvent* event) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_resizeEvent(event);
}

void QAbstractButton_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_closeEvent(event);
}

void QAbstractButton_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_contextMenuEvent(event);
}

void QAbstractButton_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_tabletEvent(event);
}

void QAbstractButton_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_actionEvent(event);
}

void QAbstractButton_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_dragEnterEvent(event);
}

void QAbstractButton_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_dragMoveEvent(event);
}

void QAbstractButton_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QAbstractButton_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_dropEvent(event);
}

void QAbstractButton_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_showEvent(event);
}

void QAbstractButton_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_hideEvent(event);
}

bool QAbstractButton_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	return ( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

int QAbstractButton_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQAbstractButton*)(self) )->virtualbase_metric(param1);
}

void QAbstractButton_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQAbstractButton*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QAbstractButton_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQAbstractButton*)(self) )->virtualbase_redirected(offset);
}

QPainter* QAbstractButton_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQAbstractButton*)(self) )->virtualbase_sharedPainter();
}

void QAbstractButton_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QAbstractButton_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQAbstractButton*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QAbstractButton_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_focusNextPrevChild(next);
}

bool QAbstractButton_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_eventFilter(watched, event);
}

void QAbstractButton_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_childEvent(event);
}

void QAbstractButton_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_customEvent(event);
}

void QAbstractButton_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_connectNotify(signal);
}

void QAbstractButton_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQAbstractButton*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QAbstractButton_staticMetaObject() { return &QAbstractButton::staticMetaObject; }
void QAbstractButton_delete(QAbstractButton* self) {
	delete self;
}

