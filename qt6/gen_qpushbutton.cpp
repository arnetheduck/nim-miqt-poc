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
#include <QEnterEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QIcon>
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
#include <QPushButton>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionButton>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qpushbutton.h>
#include "gen_qpushbutton.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQPushButton final : public QPushButton {
	struct QPushButton_VTable* vtbl;
public:

	MiqtVirtualQPushButton(struct QPushButton_VTable* vtbl, QWidget* parent): QPushButton(parent), vtbl(vtbl) {};
	MiqtVirtualQPushButton(struct QPushButton_VTable* vtbl): QPushButton(), vtbl(vtbl) {};
	MiqtVirtualQPushButton(struct QPushButton_VTable* vtbl, const QString& text): QPushButton(text), vtbl(vtbl) {};
	MiqtVirtualQPushButton(struct QPushButton_VTable* vtbl, const QIcon& icon, const QString& text): QPushButton(icon, text), vtbl(vtbl) {};
	MiqtVirtualQPushButton(struct QPushButton_VTable* vtbl, const QString& text, QWidget* parent): QPushButton(text, parent), vtbl(vtbl) {};
	MiqtVirtualQPushButton(struct QPushButton_VTable* vtbl, const QIcon& icon, const QString& text, QWidget* parent): QPushButton(icon, text, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQPushButton() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPushButton::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QPushButton::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPushButton::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QPushButton::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPushButton::qt_metacall(param1, param2, param3);
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

		return QPushButton::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QPushButton::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QPushButton::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QPushButton::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QPushButton::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QPushButton::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* e) {

		return QPushButton::event(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QPushButton::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* param1) {

		QPushButton::paintEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QPushButton::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* param1) {

		QPushButton::keyPressEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QPushButton::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* param1) {

		QPushButton::focusInEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QPushButton::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* param1) {

		QPushButton::focusOutEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QPushButton::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* param1) {

		QPushButton::mouseMoveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionButton* option) const override {
		if (vtbl->initStyleOption == 0) {
			QPushButton::initStyleOption(option);
			return;
		}

		QStyleOptionButton* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initStyleOption(QStyleOptionButton* option) const {

		QPushButton::initStyleOption(option);

	}

	// Subclass to allow providing a Go implementation
	virtual bool hitButton(const QPoint& pos) const override {
		if (vtbl->hitButton == 0) {
			return QPushButton::hitButton(pos);
		}

		const QPoint& pos_ret = pos;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&pos_ret);

		bool callback_return_value = vtbl->hitButton(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hitButton(QPoint* pos) const {

		return QPushButton::hitButton(*pos);

	}

	// Subclass to allow providing a Go implementation
	virtual void checkStateSet() override {
		if (vtbl->checkStateSet == 0) {
			QPushButton::checkStateSet();
			return;
		}


		vtbl->checkStateSet(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_checkStateSet() {

		QPushButton::checkStateSet();

	}

	// Subclass to allow providing a Go implementation
	virtual void nextCheckState() override {
		if (vtbl->nextCheckState == 0) {
			QPushButton::nextCheckState();
			return;
		}


		vtbl->nextCheckState(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_nextCheckState() {

		QPushButton::nextCheckState();

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* e) override {
		if (vtbl->keyReleaseEvent == 0) {
			QPushButton::keyReleaseEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* e) {

		QPushButton::keyReleaseEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* e) override {
		if (vtbl->mousePressEvent == 0) {
			QPushButton::mousePressEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* e) {

		QPushButton::mousePressEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QPushButton::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* e) {

		QPushButton::mouseReleaseEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QPushButton::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* e) {

		QPushButton::changeEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* e) override {
		if (vtbl->timerEvent == 0) {
			QPushButton::timerEvent(e);
			return;
		}

		QTimerEvent* sigval1 = e;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* e) {

		QPushButton::timerEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QPushButton::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QPushButton::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QPushButton::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QPushButton::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QPushButton::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QPushButton::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QPushButton::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QPushButton::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QPushButton::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QPushButton::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QPushButton::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QPushButton::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QPushButton::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QPushButton::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QPushButton::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEnterEvent* event) {

		QPushButton::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QPushButton::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QPushButton::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QPushButton::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QPushButton::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QPushButton::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* event) {

		QPushButton::resizeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QPushButton::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QPushButton::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QPushButton::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* event) {

		QPushButton::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QPushButton::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QPushButton::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QPushButton::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QPushButton::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QPushButton::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QPushButton::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QPushButton::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QPushButton::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QPushButton::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QPushButton::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QPushButton::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QPushButton::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QPushButton::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QPushButton::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QPushButton::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QPushButton::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QPushButton::nativeEvent(eventType, message, result);
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

		return QPushButton::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QPushButton::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QPushButton::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QPushButton::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QPushButton::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QPushButton::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QPushButton::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QPushButton::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QPushButton::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QPushButton::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QPushButton::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QPushButton::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QPushButton::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QPushButton::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QPushButton::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPushButton::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QPushButton::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPushButton::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QPushButton::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPushButton::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QPushButton::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPushButton::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QPushButton::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPushButton::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QPushButton::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	void protectedbase_updateMicroFocus() {

		QPushButton::updateMicroFocus();

	}

	// Wrapper to allow calling protected method
	void protectedbase_create() {

		QPushButton::create();

	}

	// Wrapper to allow calling protected method
	void protectedbase_destroy() {

		QPushButton::destroy();

	}

	// Wrapper to allow calling protected method
	bool protectedbase_focusNextChild() {

		return QPushButton::focusNextChild();

	}

	// Wrapper to allow calling protected method
	bool protectedbase_focusPreviousChild() {

		return QPushButton::focusPreviousChild();

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QPushButton::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QPushButton::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QPushButton::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QPushButton::isSignalConnected(*signal);

	}

};

QPushButton* QPushButton_new(struct QPushButton_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQPushButton(vtbl, parent);
}

QPushButton* QPushButton_new2(struct QPushButton_VTable* vtbl) {
	return new MiqtVirtualQPushButton(vtbl);
}

QPushButton* QPushButton_new3(struct QPushButton_VTable* vtbl, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new MiqtVirtualQPushButton(vtbl, text_QString);
}

QPushButton* QPushButton_new4(struct QPushButton_VTable* vtbl, QIcon* icon, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new MiqtVirtualQPushButton(vtbl, *icon, text_QString);
}

QPushButton* QPushButton_new5(struct QPushButton_VTable* vtbl, struct miqt_string text, QWidget* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new MiqtVirtualQPushButton(vtbl, text_QString, parent);
}

QPushButton* QPushButton_new6(struct QPushButton_VTable* vtbl, QIcon* icon, struct miqt_string text, QWidget* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new MiqtVirtualQPushButton(vtbl, *icon, text_QString, parent);
}

void QPushButton_virtbase(QPushButton* src, QAbstractButton** outptr_QAbstractButton) {
	*outptr_QAbstractButton = static_cast<QAbstractButton*>(src);
}

QMetaObject* QPushButton_metaObject(const QPushButton* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPushButton_metacast(QPushButton* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPushButton_metacall(QPushButton* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QPushButton_tr(const char* s) {
	QString _ret = QPushButton::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QPushButton_sizeHint(const QPushButton* self) {
	return new QSize(self->sizeHint());
}

QSize* QPushButton_minimumSizeHint(const QPushButton* self) {
	return new QSize(self->minimumSizeHint());
}

bool QPushButton_autoDefault(const QPushButton* self) {
	return self->autoDefault();
}

void QPushButton_setAutoDefault(QPushButton* self, bool autoDefault) {
	self->setAutoDefault(autoDefault);
}

bool QPushButton_isDefault(const QPushButton* self) {
	return self->isDefault();
}

void QPushButton_setDefault(QPushButton* self, bool defaultVal) {
	self->setDefault(defaultVal);
}

void QPushButton_setMenu(QPushButton* self, QMenu* menu) {
	self->setMenu(menu);
}

QMenu* QPushButton_menu(const QPushButton* self) {
	return self->menu();
}

void QPushButton_setFlat(QPushButton* self, bool flat) {
	self->setFlat(flat);
}

bool QPushButton_isFlat(const QPushButton* self) {
	return self->isFlat();
}

void QPushButton_showMenu(QPushButton* self) {
	self->showMenu();
}

struct miqt_string QPushButton_tr2(const char* s, const char* c) {
	QString _ret = QPushButton::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPushButton_tr3(const char* s, const char* c, int n) {
	QString _ret = QPushButton::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QPushButton_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQPushButton*)(self) )->virtualbase_metaObject();
}

void* QPushButton_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQPushButton*)(self) )->virtualbase_metacast(param1);
}

int QPushButton_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQPushButton*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QSize* QPushButton_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQPushButton*)(self) )->virtualbase_sizeHint();
}

QSize* QPushButton_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQPushButton*)(self) )->virtualbase_minimumSizeHint();
}

bool QPushButton_virtualbase_event(void* self, QEvent* e) {
	return ( (MiqtVirtualQPushButton*)(self) )->virtualbase_event(e);
}

void QPushButton_virtualbase_paintEvent(void* self, QPaintEvent* param1) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_paintEvent(param1);
}

void QPushButton_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_keyPressEvent(param1);
}

void QPushButton_virtualbase_focusInEvent(void* self, QFocusEvent* param1) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_focusInEvent(param1);
}

void QPushButton_virtualbase_focusOutEvent(void* self, QFocusEvent* param1) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_focusOutEvent(param1);
}

void QPushButton_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_mouseMoveEvent(param1);
}

void QPushButton_virtualbase_initStyleOption(const void* self, QStyleOptionButton* option) {
	( (const MiqtVirtualQPushButton*)(self) )->virtualbase_initStyleOption(option);
}

bool QPushButton_virtualbase_hitButton(const void* self, QPoint* pos) {
	return ( (const MiqtVirtualQPushButton*)(self) )->virtualbase_hitButton(pos);
}

void QPushButton_virtualbase_checkStateSet(void* self) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_checkStateSet();
}

void QPushButton_virtualbase_nextCheckState(void* self) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_nextCheckState();
}

void QPushButton_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_keyReleaseEvent(e);
}

void QPushButton_virtualbase_mousePressEvent(void* self, QMouseEvent* e) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_mousePressEvent(e);
}

void QPushButton_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_mouseReleaseEvent(e);
}

void QPushButton_virtualbase_changeEvent(void* self, QEvent* e) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_changeEvent(e);
}

void QPushButton_virtualbase_timerEvent(void* self, QTimerEvent* e) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_timerEvent(e);
}

int QPushButton_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQPushButton*)(self) )->virtualbase_devType();
}

void QPushButton_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_setVisible(visible);
}

int QPushButton_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQPushButton*)(self) )->virtualbase_heightForWidth(param1);
}

bool QPushButton_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQPushButton*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QPushButton_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQPushButton*)(self) )->virtualbase_paintEngine();
}

void QPushButton_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QPushButton_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_wheelEvent(event);
}

void QPushButton_virtualbase_enterEvent(void* self, QEnterEvent* event) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_enterEvent(event);
}

void QPushButton_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_leaveEvent(event);
}

void QPushButton_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_moveEvent(event);
}

void QPushButton_virtualbase_resizeEvent(void* self, QResizeEvent* event) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_resizeEvent(event);
}

void QPushButton_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_closeEvent(event);
}

void QPushButton_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_contextMenuEvent(event);
}

void QPushButton_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_tabletEvent(event);
}

void QPushButton_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_actionEvent(event);
}

void QPushButton_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_dragEnterEvent(event);
}

void QPushButton_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_dragMoveEvent(event);
}

void QPushButton_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QPushButton_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_dropEvent(event);
}

void QPushButton_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_showEvent(event);
}

void QPushButton_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_hideEvent(event);
}

bool QPushButton_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	return ( (MiqtVirtualQPushButton*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

int QPushButton_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQPushButton*)(self) )->virtualbase_metric(param1);
}

void QPushButton_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQPushButton*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QPushButton_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQPushButton*)(self) )->virtualbase_redirected(offset);
}

QPainter* QPushButton_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQPushButton*)(self) )->virtualbase_sharedPainter();
}

void QPushButton_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QPushButton_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQPushButton*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QPushButton_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQPushButton*)(self) )->virtualbase_focusNextPrevChild(next);
}

bool QPushButton_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQPushButton*)(self) )->virtualbase_eventFilter(watched, event);
}

void QPushButton_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_childEvent(event);
}

void QPushButton_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_customEvent(event);
}

void QPushButton_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_connectNotify(signal);
}

void QPushButton_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQPushButton*)(self) )->virtualbase_disconnectNotify(signal);
}

void QPushButton_protectedbase_updateMicroFocus(void* self) {
	( (MiqtVirtualQPushButton*)(self) )->protectedbase_updateMicroFocus();
}

void QPushButton_protectedbase_create(void* self) {
	( (MiqtVirtualQPushButton*)(self) )->protectedbase_create();
}

void QPushButton_protectedbase_destroy(void* self) {
	( (MiqtVirtualQPushButton*)(self) )->protectedbase_destroy();
}

bool QPushButton_protectedbase_focusNextChild(void* self) {
	return ( (MiqtVirtualQPushButton*)(self) )->protectedbase_focusNextChild();
}

bool QPushButton_protectedbase_focusPreviousChild(void* self) {
	return ( (MiqtVirtualQPushButton*)(self) )->protectedbase_focusPreviousChild();
}

QObject* QPushButton_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQPushButton*)(self) )->protectedbase_sender();
}

int QPushButton_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQPushButton*)(self) )->protectedbase_senderSignalIndex();
}

int QPushButton_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQPushButton*)(self) )->protectedbase_receivers(signal);
}

bool QPushButton_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQPushButton*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QPushButton_staticMetaObject() { return &QPushButton::staticMetaObject; }
void QPushButton_delete(QPushButton* self) {
	delete self;
}

