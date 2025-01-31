#include <QAbstractButton>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QCommandLinkButton>
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
#include <qcommandlinkbutton.h>
#include "gen_qcommandlinkbutton.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQCommandLinkButton final : public QCommandLinkButton {
	struct QCommandLinkButton_VTable* vtbl;
public:

	MiqtVirtualQCommandLinkButton(struct QCommandLinkButton_VTable* vtbl, QWidget* parent): QCommandLinkButton(parent), vtbl(vtbl) {};
	MiqtVirtualQCommandLinkButton(struct QCommandLinkButton_VTable* vtbl): QCommandLinkButton(), vtbl(vtbl) {};
	MiqtVirtualQCommandLinkButton(struct QCommandLinkButton_VTable* vtbl, const QString& text): QCommandLinkButton(text), vtbl(vtbl) {};
	MiqtVirtualQCommandLinkButton(struct QCommandLinkButton_VTable* vtbl, const QString& text, const QString& description): QCommandLinkButton(text, description), vtbl(vtbl) {};
	MiqtVirtualQCommandLinkButton(struct QCommandLinkButton_VTable* vtbl, const QString& text, QWidget* parent): QCommandLinkButton(text, parent), vtbl(vtbl) {};
	MiqtVirtualQCommandLinkButton(struct QCommandLinkButton_VTable* vtbl, const QString& text, const QString& description, QWidget* parent): QCommandLinkButton(text, description, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQCommandLinkButton() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QCommandLinkButton::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QCommandLinkButton::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QCommandLinkButton::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QCommandLinkButton::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QCommandLinkButton::qt_metacall(param1, param2, param3);
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

		return QCommandLinkButton::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QCommandLinkButton::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QCommandLinkButton::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QCommandLinkButton::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QCommandLinkButton::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QCommandLinkButton::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QCommandLinkButton::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionButton* option) const override {
		if (vtbl->initStyleOption == 0) {
			QCommandLinkButton::initStyleOption(option);
			return;
		}

		QStyleOptionButton* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initStyleOption(QStyleOptionButton* option) const {

		QCommandLinkButton::initStyleOption(option);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QCommandLinkButton::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* e) {

		return QCommandLinkButton::event(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QCommandLinkButton::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* param1) {

		QCommandLinkButton::paintEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QCommandLinkButton::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* param1) {

		QCommandLinkButton::keyPressEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QCommandLinkButton::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* param1) {

		QCommandLinkButton::focusInEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QCommandLinkButton::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* param1) {

		QCommandLinkButton::focusOutEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QCommandLinkButton::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* param1) {

		QCommandLinkButton::mouseMoveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool hitButton(const QPoint& pos) const override {
		if (vtbl->hitButton == 0) {
			return QCommandLinkButton::hitButton(pos);
		}

		const QPoint& pos_ret = pos;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&pos_ret);

		bool callback_return_value = vtbl->hitButton(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hitButton(QPoint* pos) const {

		return QCommandLinkButton::hitButton(*pos);

	}

	// Subclass to allow providing a Go implementation
	virtual void checkStateSet() override {
		if (vtbl->checkStateSet == 0) {
			QCommandLinkButton::checkStateSet();
			return;
		}


		vtbl->checkStateSet(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_checkStateSet() {

		QCommandLinkButton::checkStateSet();

	}

	// Subclass to allow providing a Go implementation
	virtual void nextCheckState() override {
		if (vtbl->nextCheckState == 0) {
			QCommandLinkButton::nextCheckState();
			return;
		}


		vtbl->nextCheckState(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_nextCheckState() {

		QCommandLinkButton::nextCheckState();

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* e) override {
		if (vtbl->keyReleaseEvent == 0) {
			QCommandLinkButton::keyReleaseEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* e) {

		QCommandLinkButton::keyReleaseEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* e) override {
		if (vtbl->mousePressEvent == 0) {
			QCommandLinkButton::mousePressEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* e) {

		QCommandLinkButton::mousePressEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QCommandLinkButton::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* e) {

		QCommandLinkButton::mouseReleaseEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QCommandLinkButton::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* e) {

		QCommandLinkButton::changeEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* e) override {
		if (vtbl->timerEvent == 0) {
			QCommandLinkButton::timerEvent(e);
			return;
		}

		QTimerEvent* sigval1 = e;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* e) {

		QCommandLinkButton::timerEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QCommandLinkButton::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QCommandLinkButton::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QCommandLinkButton::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QCommandLinkButton::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QCommandLinkButton::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QCommandLinkButton::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QCommandLinkButton::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QCommandLinkButton::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QCommandLinkButton::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QCommandLinkButton::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QCommandLinkButton::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QCommandLinkButton::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QCommandLinkButton::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEnterEvent* event) {

		QCommandLinkButton::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QCommandLinkButton::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QCommandLinkButton::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QCommandLinkButton::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QCommandLinkButton::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QCommandLinkButton::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* event) {

		QCommandLinkButton::resizeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QCommandLinkButton::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QCommandLinkButton::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QCommandLinkButton::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* event) {

		QCommandLinkButton::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QCommandLinkButton::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QCommandLinkButton::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QCommandLinkButton::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QCommandLinkButton::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QCommandLinkButton::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QCommandLinkButton::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QCommandLinkButton::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QCommandLinkButton::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QCommandLinkButton::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QCommandLinkButton::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QCommandLinkButton::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QCommandLinkButton::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QCommandLinkButton::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QCommandLinkButton::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QCommandLinkButton::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QCommandLinkButton::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QCommandLinkButton::nativeEvent(eventType, message, result);
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

		return QCommandLinkButton::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QCommandLinkButton::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QCommandLinkButton::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QCommandLinkButton::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QCommandLinkButton::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QCommandLinkButton::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QCommandLinkButton::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QCommandLinkButton::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QCommandLinkButton::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QCommandLinkButton::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QCommandLinkButton::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QCommandLinkButton::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QCommandLinkButton::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QCommandLinkButton::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QCommandLinkButton::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QCommandLinkButton::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QCommandLinkButton::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QCommandLinkButton::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QCommandLinkButton::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QCommandLinkButton::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QCommandLinkButton::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QCommandLinkButton::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QCommandLinkButton::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QCommandLinkButton::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QCommandLinkButton::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	void protectedbase_updateMicroFocus() {

		QCommandLinkButton::updateMicroFocus();

	}

	// Wrapper to allow calling protected method
	void protectedbase_create() {

		QCommandLinkButton::create();

	}

	// Wrapper to allow calling protected method
	void protectedbase_destroy() {

		QCommandLinkButton::destroy();

	}

	// Wrapper to allow calling protected method
	bool protectedbase_focusNextChild() {

		return QCommandLinkButton::focusNextChild();

	}

	// Wrapper to allow calling protected method
	bool protectedbase_focusPreviousChild() {

		return QCommandLinkButton::focusPreviousChild();

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QCommandLinkButton::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QCommandLinkButton::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QCommandLinkButton::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QCommandLinkButton::isSignalConnected(*signal);

	}

};

QCommandLinkButton* QCommandLinkButton_new(struct QCommandLinkButton_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQCommandLinkButton(vtbl, parent);
}

QCommandLinkButton* QCommandLinkButton_new2(struct QCommandLinkButton_VTable* vtbl) {
	return new MiqtVirtualQCommandLinkButton(vtbl);
}

QCommandLinkButton* QCommandLinkButton_new3(struct QCommandLinkButton_VTable* vtbl, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new MiqtVirtualQCommandLinkButton(vtbl, text_QString);
}

QCommandLinkButton* QCommandLinkButton_new4(struct QCommandLinkButton_VTable* vtbl, struct miqt_string text, struct miqt_string description) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString description_QString = QString::fromUtf8(description.data, description.len);
	return new MiqtVirtualQCommandLinkButton(vtbl, text_QString, description_QString);
}

QCommandLinkButton* QCommandLinkButton_new5(struct QCommandLinkButton_VTable* vtbl, struct miqt_string text, QWidget* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new MiqtVirtualQCommandLinkButton(vtbl, text_QString, parent);
}

QCommandLinkButton* QCommandLinkButton_new6(struct QCommandLinkButton_VTable* vtbl, struct miqt_string text, struct miqt_string description, QWidget* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QString description_QString = QString::fromUtf8(description.data, description.len);
	return new MiqtVirtualQCommandLinkButton(vtbl, text_QString, description_QString, parent);
}

void QCommandLinkButton_virtbase(QCommandLinkButton* src, QPushButton** outptr_QPushButton) {
	*outptr_QPushButton = static_cast<QPushButton*>(src);
}

QMetaObject* QCommandLinkButton_metaObject(const QCommandLinkButton* self) {
	return (QMetaObject*) self->metaObject();
}

void* QCommandLinkButton_metacast(QCommandLinkButton* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QCommandLinkButton_metacall(QCommandLinkButton* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QCommandLinkButton_tr(const char* s) {
	QString _ret = QCommandLinkButton::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCommandLinkButton_description(const QCommandLinkButton* self) {
	QString _ret = self->description();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QCommandLinkButton_setDescription(QCommandLinkButton* self, struct miqt_string description) {
	QString description_QString = QString::fromUtf8(description.data, description.len);
	self->setDescription(description_QString);
}

QSize* QCommandLinkButton_sizeHint(const QCommandLinkButton* self) {
	return new QSize(self->sizeHint());
}

int QCommandLinkButton_heightForWidth(const QCommandLinkButton* self, int param1) {
	return self->heightForWidth(static_cast<int>(param1));
}

QSize* QCommandLinkButton_minimumSizeHint(const QCommandLinkButton* self) {
	return new QSize(self->minimumSizeHint());
}

void QCommandLinkButton_initStyleOption(const QCommandLinkButton* self, QStyleOptionButton* option) {
	self->initStyleOption(option);
}

struct miqt_string QCommandLinkButton_tr2(const char* s, const char* c) {
	QString _ret = QCommandLinkButton::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCommandLinkButton_tr3(const char* s, const char* c, int n) {
	QString _ret = QCommandLinkButton::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QCommandLinkButton_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_metaObject();
}

void* QCommandLinkButton_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_metacast(param1);
}

int QCommandLinkButton_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QSize* QCommandLinkButton_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_sizeHint();
}

int QCommandLinkButton_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_heightForWidth(param1);
}

QSize* QCommandLinkButton_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_minimumSizeHint();
}

void QCommandLinkButton_virtualbase_initStyleOption(const void* self, QStyleOptionButton* option) {
	( (const MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_initStyleOption(option);
}

bool QCommandLinkButton_virtualbase_event(void* self, QEvent* e) {
	return ( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_event(e);
}

void QCommandLinkButton_virtualbase_paintEvent(void* self, QPaintEvent* param1) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_paintEvent(param1);
}

void QCommandLinkButton_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_keyPressEvent(param1);
}

void QCommandLinkButton_virtualbase_focusInEvent(void* self, QFocusEvent* param1) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_focusInEvent(param1);
}

void QCommandLinkButton_virtualbase_focusOutEvent(void* self, QFocusEvent* param1) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_focusOutEvent(param1);
}

void QCommandLinkButton_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_mouseMoveEvent(param1);
}

bool QCommandLinkButton_virtualbase_hitButton(const void* self, QPoint* pos) {
	return ( (const MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_hitButton(pos);
}

void QCommandLinkButton_virtualbase_checkStateSet(void* self) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_checkStateSet();
}

void QCommandLinkButton_virtualbase_nextCheckState(void* self) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_nextCheckState();
}

void QCommandLinkButton_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_keyReleaseEvent(e);
}

void QCommandLinkButton_virtualbase_mousePressEvent(void* self, QMouseEvent* e) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_mousePressEvent(e);
}

void QCommandLinkButton_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_mouseReleaseEvent(e);
}

void QCommandLinkButton_virtualbase_changeEvent(void* self, QEvent* e) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_changeEvent(e);
}

void QCommandLinkButton_virtualbase_timerEvent(void* self, QTimerEvent* e) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_timerEvent(e);
}

int QCommandLinkButton_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_devType();
}

void QCommandLinkButton_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_setVisible(visible);
}

bool QCommandLinkButton_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QCommandLinkButton_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_paintEngine();
}

void QCommandLinkButton_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QCommandLinkButton_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_wheelEvent(event);
}

void QCommandLinkButton_virtualbase_enterEvent(void* self, QEnterEvent* event) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_enterEvent(event);
}

void QCommandLinkButton_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_leaveEvent(event);
}

void QCommandLinkButton_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_moveEvent(event);
}

void QCommandLinkButton_virtualbase_resizeEvent(void* self, QResizeEvent* event) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_resizeEvent(event);
}

void QCommandLinkButton_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_closeEvent(event);
}

void QCommandLinkButton_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_contextMenuEvent(event);
}

void QCommandLinkButton_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_tabletEvent(event);
}

void QCommandLinkButton_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_actionEvent(event);
}

void QCommandLinkButton_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_dragEnterEvent(event);
}

void QCommandLinkButton_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_dragMoveEvent(event);
}

void QCommandLinkButton_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QCommandLinkButton_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_dropEvent(event);
}

void QCommandLinkButton_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_showEvent(event);
}

void QCommandLinkButton_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_hideEvent(event);
}

bool QCommandLinkButton_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	return ( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

int QCommandLinkButton_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_metric(param1);
}

void QCommandLinkButton_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QCommandLinkButton_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_redirected(offset);
}

QPainter* QCommandLinkButton_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_sharedPainter();
}

void QCommandLinkButton_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QCommandLinkButton_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QCommandLinkButton_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_focusNextPrevChild(next);
}

bool QCommandLinkButton_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_eventFilter(watched, event);
}

void QCommandLinkButton_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_childEvent(event);
}

void QCommandLinkButton_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_customEvent(event);
}

void QCommandLinkButton_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_connectNotify(signal);
}

void QCommandLinkButton_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->virtualbase_disconnectNotify(signal);
}

void QCommandLinkButton_protectedbase_updateMicroFocus(void* self) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->protectedbase_updateMicroFocus();
}

void QCommandLinkButton_protectedbase_create(void* self) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->protectedbase_create();
}

void QCommandLinkButton_protectedbase_destroy(void* self) {
	( (MiqtVirtualQCommandLinkButton*)(self) )->protectedbase_destroy();
}

bool QCommandLinkButton_protectedbase_focusNextChild(void* self) {
	return ( (MiqtVirtualQCommandLinkButton*)(self) )->protectedbase_focusNextChild();
}

bool QCommandLinkButton_protectedbase_focusPreviousChild(void* self) {
	return ( (MiqtVirtualQCommandLinkButton*)(self) )->protectedbase_focusPreviousChild();
}

QObject* QCommandLinkButton_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQCommandLinkButton*)(self) )->protectedbase_sender();
}

int QCommandLinkButton_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQCommandLinkButton*)(self) )->protectedbase_senderSignalIndex();
}

int QCommandLinkButton_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQCommandLinkButton*)(self) )->protectedbase_receivers(signal);
}

bool QCommandLinkButton_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQCommandLinkButton*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QCommandLinkButton_staticMetaObject() { return &QCommandLinkButton::staticMetaObject; }
void QCommandLinkButton_delete(QCommandLinkButton* self) {
	delete self;
}

