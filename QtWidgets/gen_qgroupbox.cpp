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
#include <QGroupBox>
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
#include <QStyleOptionGroupBox>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qgroupbox.h>
#include "gen_qgroupbox.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QGroupBox_clicked(intptr_t);
void miqt_exec_callback_QGroupBox_clicked_release(intptr_t);
void miqt_exec_callback_QGroupBox_toggled(intptr_t, bool);
void miqt_exec_callback_QGroupBox_toggled_release(intptr_t);
void miqt_exec_callback_QGroupBox_clicked1(intptr_t, bool);
void miqt_exec_callback_QGroupBox_clicked1_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQGroupBox final : public QGroupBox {
	struct QGroupBox_VTable* vtbl;
public:

	MiqtVirtualQGroupBox(struct QGroupBox_VTable* vtbl, QWidget* parent): QGroupBox(parent), vtbl(vtbl) {};
	MiqtVirtualQGroupBox(struct QGroupBox_VTable* vtbl): QGroupBox(), vtbl(vtbl) {};
	MiqtVirtualQGroupBox(struct QGroupBox_VTable* vtbl, const QString& title): QGroupBox(title), vtbl(vtbl) {};
	MiqtVirtualQGroupBox(struct QGroupBox_VTable* vtbl, const QString& title, QWidget* parent): QGroupBox(title, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGroupBox() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGroupBox::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QGroupBox::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGroupBox::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QGroupBox::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGroupBox::qt_metacall(param1, param2, param3);
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

		return QGroupBox::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QGroupBox::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QGroupBox::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGroupBox::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QGroupBox::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGroupBox::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QGroupBox::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QGroupBox::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* event) {

		QGroupBox::resizeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QGroupBox::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* event) {

		QGroupBox::paintEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QGroupBox::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QGroupBox::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QGroupBox::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* event) {

		QGroupBox::changeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QGroupBox::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QGroupBox::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QGroupBox::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QGroupBox::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QGroupBox::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QGroupBox::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionGroupBox* option) const override {
		if (vtbl->initStyleOption == 0) {
			QGroupBox::initStyleOption(option);
			return;
		}

		QStyleOptionGroupBox* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initStyleOption(QStyleOptionGroupBox* option) const {

		QGroupBox::initStyleOption(option);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QGroupBox::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QGroupBox::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QGroupBox::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QGroupBox::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QGroupBox::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QGroupBox::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QGroupBox::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QGroupBox::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QGroupBox::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QGroupBox::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QGroupBox::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QGroupBox::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QGroupBox::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QGroupBox::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QGroupBox::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QGroupBox::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QGroupBox::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QGroupBox::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QGroupBox::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QGroupBox::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QGroupBox::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QGroupBox::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QGroupBox::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEnterEvent* event) {

		QGroupBox::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QGroupBox::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QGroupBox::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QGroupBox::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QGroupBox::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QGroupBox::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QGroupBox::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QGroupBox::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* event) {

		QGroupBox::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QGroupBox::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QGroupBox::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QGroupBox::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QGroupBox::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QGroupBox::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QGroupBox::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QGroupBox::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QGroupBox::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QGroupBox::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QGroupBox::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QGroupBox::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QGroupBox::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QGroupBox::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QGroupBox::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QGroupBox::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QGroupBox::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QGroupBox::nativeEvent(eventType, message, result);
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

		return QGroupBox::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QGroupBox::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QGroupBox::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QGroupBox::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QGroupBox::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QGroupBox::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QGroupBox::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QGroupBox::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QGroupBox::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QGroupBox::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QGroupBox::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QGroupBox::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QGroupBox::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QGroupBox::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QGroupBox::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGroupBox::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QGroupBox::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGroupBox::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QGroupBox::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGroupBox::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QGroupBox::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGroupBox::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QGroupBox::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGroupBox::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QGroupBox::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QGroupBox_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QGroupBox_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QGroupBox_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QGroupBox_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QGroupBox_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QGroupBox_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QGroupBox_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QGroupBox_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QGroupBox_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QGroupBox* QGroupBox_new(struct QGroupBox_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQGroupBox(vtbl, parent);
}

QGroupBox* QGroupBox_new2(struct QGroupBox_VTable* vtbl) {
	return new MiqtVirtualQGroupBox(vtbl);
}

QGroupBox* QGroupBox_new3(struct QGroupBox_VTable* vtbl, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new MiqtVirtualQGroupBox(vtbl, title_QString);
}

QGroupBox* QGroupBox_new4(struct QGroupBox_VTable* vtbl, struct miqt_string title, QWidget* parent) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	return new MiqtVirtualQGroupBox(vtbl, title_QString, parent);
}

void QGroupBox_virtbase(QGroupBox* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QGroupBox_metaObject(const QGroupBox* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGroupBox_metacast(QGroupBox* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGroupBox_metacall(QGroupBox* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGroupBox_tr(const char* s) {
	QString _ret = QGroupBox::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGroupBox_title(const QGroupBox* self) {
	QString _ret = self->title();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGroupBox_setTitle(QGroupBox* self, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	self->setTitle(title_QString);
}

int QGroupBox_alignment(const QGroupBox* self) {
	Qt::Alignment _ret = self->alignment();
	return static_cast<int>(_ret);
}

void QGroupBox_setAlignment(QGroupBox* self, int alignment) {
	self->setAlignment(static_cast<int>(alignment));
}

QSize* QGroupBox_minimumSizeHint(const QGroupBox* self) {
	return new QSize(self->minimumSizeHint());
}

bool QGroupBox_isFlat(const QGroupBox* self) {
	return self->isFlat();
}

void QGroupBox_setFlat(QGroupBox* self, bool flat) {
	self->setFlat(flat);
}

bool QGroupBox_isCheckable(const QGroupBox* self) {
	return self->isCheckable();
}

void QGroupBox_setCheckable(QGroupBox* self, bool checkable) {
	self->setCheckable(checkable);
}

bool QGroupBox_isChecked(const QGroupBox* self) {
	return self->isChecked();
}

void QGroupBox_setChecked(QGroupBox* self, bool checked) {
	self->setChecked(checked);
}

void QGroupBox_clicked(QGroupBox* self) {
	self->clicked();
}

void QGroupBox_connect_clicked(QGroupBox* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGroupBox_clicked(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGroupBox_clicked_release(slot); }
	};
	MiqtVirtualQGroupBox::connect(self, static_cast<void (QGroupBox::*)(bool)>(&QGroupBox::clicked), self, caller{slot});
}

void QGroupBox_toggled(QGroupBox* self, bool param1) {
	self->toggled(param1);
}

void QGroupBox_connect_toggled(QGroupBox* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(bool param1) {
			bool sigval1 = param1;
			miqt_exec_callback_QGroupBox_toggled(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGroupBox_toggled_release(slot); }
	};
	MiqtVirtualQGroupBox::connect(self, static_cast<void (QGroupBox::*)(bool)>(&QGroupBox::toggled), self, caller{slot});
}

struct miqt_string QGroupBox_tr2(const char* s, const char* c) {
	QString _ret = QGroupBox::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGroupBox_tr3(const char* s, const char* c, int n) {
	QString _ret = QGroupBox::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGroupBox_clicked1(QGroupBox* self, bool checked) {
	self->clicked(checked);
}

void QGroupBox_connect_clicked1(QGroupBox* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(bool checked) {
			bool sigval1 = checked;
			miqt_exec_callback_QGroupBox_clicked1(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGroupBox_clicked1_release(slot); }
	};
	MiqtVirtualQGroupBox::connect(self, static_cast<void (QGroupBox::*)(bool)>(&QGroupBox::clicked), self, caller{slot});
}

QMetaObject* QGroupBox_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQGroupBox*)(self) )->virtualbase_metaObject();
}

void* QGroupBox_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQGroupBox*)(self) )->virtualbase_metacast(param1);
}

int QGroupBox_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQGroupBox*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QSize* QGroupBox_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQGroupBox*)(self) )->virtualbase_minimumSizeHint();
}

bool QGroupBox_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQGroupBox*)(self) )->virtualbase_event(event);
}

void QGroupBox_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_childEvent(event);
}

void QGroupBox_virtualbase_resizeEvent(void* self, QResizeEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_resizeEvent(event);
}

void QGroupBox_virtualbase_paintEvent(void* self, QPaintEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_paintEvent(event);
}

void QGroupBox_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_focusInEvent(event);
}

void QGroupBox_virtualbase_changeEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_changeEvent(event);
}

void QGroupBox_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_mousePressEvent(event);
}

void QGroupBox_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QGroupBox_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QGroupBox_virtualbase_initStyleOption(const void* self, QStyleOptionGroupBox* option) {
	( (const MiqtVirtualQGroupBox*)(self) )->virtualbase_initStyleOption(option);
}

int QGroupBox_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQGroupBox*)(self) )->virtualbase_devType();
}

void QGroupBox_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_setVisible(visible);
}

QSize* QGroupBox_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQGroupBox*)(self) )->virtualbase_sizeHint();
}

int QGroupBox_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQGroupBox*)(self) )->virtualbase_heightForWidth(param1);
}

bool QGroupBox_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQGroupBox*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QGroupBox_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQGroupBox*)(self) )->virtualbase_paintEngine();
}

void QGroupBox_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QGroupBox_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_wheelEvent(event);
}

void QGroupBox_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_keyPressEvent(event);
}

void QGroupBox_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QGroupBox_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_focusOutEvent(event);
}

void QGroupBox_virtualbase_enterEvent(void* self, QEnterEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_enterEvent(event);
}

void QGroupBox_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_leaveEvent(event);
}

void QGroupBox_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_moveEvent(event);
}

void QGroupBox_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_closeEvent(event);
}

void QGroupBox_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_contextMenuEvent(event);
}

void QGroupBox_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_tabletEvent(event);
}

void QGroupBox_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_actionEvent(event);
}

void QGroupBox_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_dragEnterEvent(event);
}

void QGroupBox_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_dragMoveEvent(event);
}

void QGroupBox_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QGroupBox_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_dropEvent(event);
}

void QGroupBox_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_showEvent(event);
}

void QGroupBox_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_hideEvent(event);
}

bool QGroupBox_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	return ( (MiqtVirtualQGroupBox*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

int QGroupBox_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQGroupBox*)(self) )->virtualbase_metric(param1);
}

void QGroupBox_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQGroupBox*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QGroupBox_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQGroupBox*)(self) )->virtualbase_redirected(offset);
}

QPainter* QGroupBox_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQGroupBox*)(self) )->virtualbase_sharedPainter();
}

void QGroupBox_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QGroupBox_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQGroupBox*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QGroupBox_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQGroupBox*)(self) )->virtualbase_focusNextPrevChild(next);
}

bool QGroupBox_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQGroupBox*)(self) )->virtualbase_eventFilter(watched, event);
}

void QGroupBox_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_timerEvent(event);
}

void QGroupBox_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_customEvent(event);
}

void QGroupBox_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_connectNotify(signal);
}

void QGroupBox_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGroupBox*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QGroupBox_staticMetaObject() { return &QGroupBox::staticMetaObject; }
void QGroupBox_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGroupBox* self_cast = dynamic_cast<MiqtVirtualQGroupBox*>( (QGroupBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QGroupBox_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGroupBox* self_cast = dynamic_cast<MiqtVirtualQGroupBox*>( (QGroupBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QGroupBox_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGroupBox* self_cast = dynamic_cast<MiqtVirtualQGroupBox*>( (QGroupBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QGroupBox_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGroupBox* self_cast = dynamic_cast<MiqtVirtualQGroupBox*>( (QGroupBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QGroupBox_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQGroupBox* self_cast = dynamic_cast<MiqtVirtualQGroupBox*>( (QGroupBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QGroupBox_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQGroupBox* self_cast = dynamic_cast<MiqtVirtualQGroupBox*>( (QGroupBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QGroupBox_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQGroupBox* self_cast = dynamic_cast<MiqtVirtualQGroupBox*>( (QGroupBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QGroupBox_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	MiqtVirtualQGroupBox* self_cast = dynamic_cast<MiqtVirtualQGroupBox*>( (QGroupBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QGroupBox_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	MiqtVirtualQGroupBox* self_cast = dynamic_cast<MiqtVirtualQGroupBox*>( (QGroupBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QGroupBox_delete(QGroupBox* self) {
	delete self;
}

