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
#include <QFrame>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QLabel>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QMovie>
#include <QObject>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPicture>
#include <QPixmap>
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
#include <qlabel.h>
#include "gen_qlabel.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QLabel_linkActivated(intptr_t, struct miqt_string);
void miqt_exec_callback_QLabel_linkActivated_release(intptr_t);
void miqt_exec_callback_QLabel_linkHovered(intptr_t, struct miqt_string);
void miqt_exec_callback_QLabel_linkHovered_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQLabel final : public QLabel {
	struct QLabel_VTable* vtbl;
public:

	MiqtVirtualQLabel(struct QLabel_VTable* vtbl, QWidget* parent): QLabel(parent), vtbl(vtbl) {};
	MiqtVirtualQLabel(struct QLabel_VTable* vtbl): QLabel(), vtbl(vtbl) {};
	MiqtVirtualQLabel(struct QLabel_VTable* vtbl, const QString& text): QLabel(text), vtbl(vtbl) {};
	MiqtVirtualQLabel(struct QLabel_VTable* vtbl, QWidget* parent, Qt::WindowFlags f): QLabel(parent, f), vtbl(vtbl) {};
	MiqtVirtualQLabel(struct QLabel_VTable* vtbl, const QString& text, QWidget* parent): QLabel(text, parent), vtbl(vtbl) {};
	MiqtVirtualQLabel(struct QLabel_VTable* vtbl, const QString& text, QWidget* parent, Qt::WindowFlags f): QLabel(text, parent, f), vtbl(vtbl) {};

	virtual ~MiqtVirtualQLabel() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QLabel::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QLabel::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QLabel::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QLabel::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QLabel::qt_metacall(param1, param2, param3);
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

		return QLabel::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QLabel::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QLabel::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QLabel::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QLabel::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QLabel::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QLabel::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QLabel::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* e) {

		return QLabel::event(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* ev) override {
		if (vtbl->keyPressEvent == 0) {
			QLabel::keyPressEvent(ev);
			return;
		}

		QKeyEvent* sigval1 = ev;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* ev) {

		QLabel::keyPressEvent(ev);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QLabel::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* param1) {

		QLabel::paintEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QLabel::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* param1) {

		QLabel::changeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* ev) override {
		if (vtbl->mousePressEvent == 0) {
			QLabel::mousePressEvent(ev);
			return;
		}

		QMouseEvent* sigval1 = ev;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* ev) {

		QLabel::mousePressEvent(ev);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* ev) override {
		if (vtbl->mouseMoveEvent == 0) {
			QLabel::mouseMoveEvent(ev);
			return;
		}

		QMouseEvent* sigval1 = ev;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* ev) {

		QLabel::mouseMoveEvent(ev);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* ev) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QLabel::mouseReleaseEvent(ev);
			return;
		}

		QMouseEvent* sigval1 = ev;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* ev) {

		QLabel::mouseReleaseEvent(ev);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* ev) override {
		if (vtbl->contextMenuEvent == 0) {
			QLabel::contextMenuEvent(ev);
			return;
		}

		QContextMenuEvent* sigval1 = ev;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* ev) {

		QLabel::contextMenuEvent(ev);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* ev) override {
		if (vtbl->focusInEvent == 0) {
			QLabel::focusInEvent(ev);
			return;
		}

		QFocusEvent* sigval1 = ev;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* ev) {

		QLabel::focusInEvent(ev);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* ev) override {
		if (vtbl->focusOutEvent == 0) {
			QLabel::focusOutEvent(ev);
			return;
		}

		QFocusEvent* sigval1 = ev;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* ev) {

		QLabel::focusOutEvent(ev);

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QLabel::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QLabel::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QLabel::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QLabel::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QLabel::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QLabel::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QLabel::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QLabel::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QLabel::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QLabel::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QLabel::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QLabel::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QLabel::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QLabel::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QLabel::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QLabel::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QLabel::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEvent* event) {

		QLabel::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QLabel::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QLabel::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QLabel::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QLabel::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QLabel::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* event) {

		QLabel::resizeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QLabel::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QLabel::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QLabel::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QLabel::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QLabel::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QLabel::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QLabel::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QLabel::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QLabel::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QLabel::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QLabel::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QLabel::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QLabel::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QLabel::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QLabel::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QLabel::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QLabel::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QLabel::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QLabel::nativeEvent(eventType, message, result);
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

		return QLabel::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QLabel::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QLabel::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QLabel::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QLabel::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QLabel::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QLabel::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QLabel::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QLabel::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QLabel::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QLabel::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QLabel::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QLabel::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QLabel::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QLabel::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QLabel::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QLabel::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QLabel::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QLabel::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QLabel::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QLabel::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QLabel::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QLabel::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QLabel::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QLabel::disconnectNotify(*signal);

	}

};

QLabel* QLabel_new(struct QLabel_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQLabel(vtbl, parent);
}

QLabel* QLabel_new2(struct QLabel_VTable* vtbl) {
	return new MiqtVirtualQLabel(vtbl);
}

QLabel* QLabel_new3(struct QLabel_VTable* vtbl, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new MiqtVirtualQLabel(vtbl, text_QString);
}

QLabel* QLabel_new4(struct QLabel_VTable* vtbl, QWidget* parent, int f) {
	return new MiqtVirtualQLabel(vtbl, parent, static_cast<Qt::WindowFlags>(f));
}

QLabel* QLabel_new5(struct QLabel_VTable* vtbl, struct miqt_string text, QWidget* parent) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new MiqtVirtualQLabel(vtbl, text_QString, parent);
}

QLabel* QLabel_new6(struct QLabel_VTable* vtbl, struct miqt_string text, QWidget* parent, int f) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return new MiqtVirtualQLabel(vtbl, text_QString, parent, static_cast<Qt::WindowFlags>(f));
}

void QLabel_virtbase(QLabel* src, QFrame** outptr_QFrame) {
	*outptr_QFrame = static_cast<QFrame*>(src);
}

QMetaObject* QLabel_metaObject(const QLabel* self) {
	return (QMetaObject*) self->metaObject();
}

void* QLabel_metacast(QLabel* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QLabel_metacall(QLabel* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QLabel_tr(const char* s) {
	QString _ret = QLabel::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLabel_trUtf8(const char* s) {
	QString _ret = QLabel::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLabel_text(const QLabel* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QPixmap* QLabel_pixmap(const QLabel* self) {
	return (QPixmap*) self->pixmap();
}

QPixmap* QLabel_pixmapWithQtReturnByValueConstant(const QLabel* self, int param1) {
	return new QPixmap(self->pixmap(static_cast<Qt::ReturnByValueConstant>(param1)));
}

QPicture* QLabel_picture(const QLabel* self) {
	return (QPicture*) self->picture();
}

QPicture* QLabel_pictureWithQtReturnByValueConstant(const QLabel* self, int param1) {
	return new QPicture(self->picture(static_cast<Qt::ReturnByValueConstant>(param1)));
}

QMovie* QLabel_movie(const QLabel* self) {
	return self->movie();
}

int QLabel_textFormat(const QLabel* self) {
	Qt::TextFormat _ret = self->textFormat();
	return static_cast<int>(_ret);
}

void QLabel_setTextFormat(QLabel* self, int textFormat) {
	self->setTextFormat(static_cast<Qt::TextFormat>(textFormat));
}

int QLabel_alignment(const QLabel* self) {
	Qt::Alignment _ret = self->alignment();
	return static_cast<int>(_ret);
}

void QLabel_setAlignment(QLabel* self, int alignment) {
	self->setAlignment(static_cast<Qt::Alignment>(alignment));
}

void QLabel_setWordWrap(QLabel* self, bool on) {
	self->setWordWrap(on);
}

bool QLabel_wordWrap(const QLabel* self) {
	return self->wordWrap();
}

int QLabel_indent(const QLabel* self) {
	return self->indent();
}

void QLabel_setIndent(QLabel* self, int indent) {
	self->setIndent(static_cast<int>(indent));
}

int QLabel_margin(const QLabel* self) {
	return self->margin();
}

void QLabel_setMargin(QLabel* self, int margin) {
	self->setMargin(static_cast<int>(margin));
}

bool QLabel_hasScaledContents(const QLabel* self) {
	return self->hasScaledContents();
}

void QLabel_setScaledContents(QLabel* self, bool scaledContents) {
	self->setScaledContents(scaledContents);
}

QSize* QLabel_sizeHint(const QLabel* self) {
	return new QSize(self->sizeHint());
}

QSize* QLabel_minimumSizeHint(const QLabel* self) {
	return new QSize(self->minimumSizeHint());
}

void QLabel_setBuddy(QLabel* self, QWidget* buddy) {
	self->setBuddy(buddy);
}

QWidget* QLabel_buddy(const QLabel* self) {
	return self->buddy();
}

int QLabel_heightForWidth(const QLabel* self, int param1) {
	return self->heightForWidth(static_cast<int>(param1));
}

bool QLabel_openExternalLinks(const QLabel* self) {
	return self->openExternalLinks();
}

void QLabel_setOpenExternalLinks(QLabel* self, bool open) {
	self->setOpenExternalLinks(open);
}

void QLabel_setTextInteractionFlags(QLabel* self, int flags) {
	self->setTextInteractionFlags(static_cast<Qt::TextInteractionFlags>(flags));
}

int QLabel_textInteractionFlags(const QLabel* self) {
	Qt::TextInteractionFlags _ret = self->textInteractionFlags();
	return static_cast<int>(_ret);
}

void QLabel_setSelection(QLabel* self, int param1, int param2) {
	self->setSelection(static_cast<int>(param1), static_cast<int>(param2));
}

bool QLabel_hasSelectedText(const QLabel* self) {
	return self->hasSelectedText();
}

struct miqt_string QLabel_selectedText(const QLabel* self) {
	QString _ret = self->selectedText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QLabel_selectionStart(const QLabel* self) {
	return self->selectionStart();
}

void QLabel_setText(QLabel* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setText(text_QString);
}

void QLabel_setPixmap(QLabel* self, QPixmap* pixmap) {
	self->setPixmap(*pixmap);
}

void QLabel_setPicture(QLabel* self, QPicture* picture) {
	self->setPicture(*picture);
}

void QLabel_setMovie(QLabel* self, QMovie* movie) {
	self->setMovie(movie);
}

void QLabel_setNum(QLabel* self, int num) {
	self->setNum(static_cast<int>(num));
}

void QLabel_setNumWithNum(QLabel* self, double num) {
	self->setNum(static_cast<double>(num));
}

void QLabel_clear(QLabel* self) {
	self->clear();
}

void QLabel_linkActivated(QLabel* self, struct miqt_string link) {
	QString link_QString = QString::fromUtf8(link.data, link.len);
	self->linkActivated(link_QString);
}

void QLabel_connect_linkActivated(QLabel* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QString& link) {
			const QString link_ret = link;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray link_b = link_ret.toUtf8();
			struct miqt_string link_ms;
			link_ms.len = link_b.length();
			link_ms.data = static_cast<char*>(malloc(link_ms.len));
			memcpy(link_ms.data, link_b.data(), link_ms.len);
			struct miqt_string sigval1 = link_ms;
			miqt_exec_callback_QLabel_linkActivated(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QLabel_linkActivated_release(slot); }
	};
	MiqtVirtualQLabel::connect(self, static_cast<void (QLabel::*)(const QString&)>(&QLabel::linkActivated), self, caller{slot});
}

void QLabel_linkHovered(QLabel* self, struct miqt_string link) {
	QString link_QString = QString::fromUtf8(link.data, link.len);
	self->linkHovered(link_QString);
}

void QLabel_connect_linkHovered(QLabel* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QString& link) {
			const QString link_ret = link;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray link_b = link_ret.toUtf8();
			struct miqt_string link_ms;
			link_ms.len = link_b.length();
			link_ms.data = static_cast<char*>(malloc(link_ms.len));
			memcpy(link_ms.data, link_b.data(), link_ms.len);
			struct miqt_string sigval1 = link_ms;
			miqt_exec_callback_QLabel_linkHovered(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QLabel_linkHovered_release(slot); }
	};
	MiqtVirtualQLabel::connect(self, static_cast<void (QLabel::*)(const QString&)>(&QLabel::linkHovered), self, caller{slot});
}

struct miqt_string QLabel_tr2(const char* s, const char* c) {
	QString _ret = QLabel::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLabel_tr3(const char* s, const char* c, int n) {
	QString _ret = QLabel::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLabel_trUtf82(const char* s, const char* c) {
	QString _ret = QLabel::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLabel_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QLabel::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QLabel_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQLabel*)(self) )->virtualbase_metaObject();
}

void* QLabel_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQLabel*)(self) )->virtualbase_metacast(param1);
}

int QLabel_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQLabel*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QSize* QLabel_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQLabel*)(self) )->virtualbase_sizeHint();
}

QSize* QLabel_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQLabel*)(self) )->virtualbase_minimumSizeHint();
}

int QLabel_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQLabel*)(self) )->virtualbase_heightForWidth(param1);
}

bool QLabel_virtualbase_event(void* self, QEvent* e) {
	return ( (MiqtVirtualQLabel*)(self) )->virtualbase_event(e);
}

void QLabel_virtualbase_keyPressEvent(void* self, QKeyEvent* ev) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_keyPressEvent(ev);
}

void QLabel_virtualbase_paintEvent(void* self, QPaintEvent* param1) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_paintEvent(param1);
}

void QLabel_virtualbase_changeEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_changeEvent(param1);
}

void QLabel_virtualbase_mousePressEvent(void* self, QMouseEvent* ev) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_mousePressEvent(ev);
}

void QLabel_virtualbase_mouseMoveEvent(void* self, QMouseEvent* ev) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_mouseMoveEvent(ev);
}

void QLabel_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* ev) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_mouseReleaseEvent(ev);
}

void QLabel_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* ev) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_contextMenuEvent(ev);
}

void QLabel_virtualbase_focusInEvent(void* self, QFocusEvent* ev) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_focusInEvent(ev);
}

void QLabel_virtualbase_focusOutEvent(void* self, QFocusEvent* ev) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_focusOutEvent(ev);
}

bool QLabel_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQLabel*)(self) )->virtualbase_focusNextPrevChild(next);
}

int QLabel_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQLabel*)(self) )->virtualbase_devType();
}

void QLabel_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_setVisible(visible);
}

bool QLabel_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQLabel*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QLabel_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQLabel*)(self) )->virtualbase_paintEngine();
}

void QLabel_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QLabel_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_wheelEvent(event);
}

void QLabel_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QLabel_virtualbase_enterEvent(void* self, QEvent* event) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_enterEvent(event);
}

void QLabel_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_leaveEvent(event);
}

void QLabel_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_moveEvent(event);
}

void QLabel_virtualbase_resizeEvent(void* self, QResizeEvent* event) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_resizeEvent(event);
}

void QLabel_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_closeEvent(event);
}

void QLabel_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_tabletEvent(event);
}

void QLabel_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_actionEvent(event);
}

void QLabel_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_dragEnterEvent(event);
}

void QLabel_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_dragMoveEvent(event);
}

void QLabel_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QLabel_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_dropEvent(event);
}

void QLabel_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_showEvent(event);
}

void QLabel_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_hideEvent(event);
}

bool QLabel_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	return ( (MiqtVirtualQLabel*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

int QLabel_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQLabel*)(self) )->virtualbase_metric(param1);
}

void QLabel_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQLabel*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QLabel_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQLabel*)(self) )->virtualbase_redirected(offset);
}

QPainter* QLabel_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQLabel*)(self) )->virtualbase_sharedPainter();
}

void QLabel_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QLabel_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQLabel*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QLabel_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQLabel*)(self) )->virtualbase_eventFilter(watched, event);
}

void QLabel_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_timerEvent(event);
}

void QLabel_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_childEvent(event);
}

void QLabel_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_customEvent(event);
}

void QLabel_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_connectNotify(signal);
}

void QLabel_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQLabel*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QLabel_staticMetaObject() { return &QLabel::staticMetaObject; }
void QLabel_delete(QLabel* self) {
	delete self;
}

