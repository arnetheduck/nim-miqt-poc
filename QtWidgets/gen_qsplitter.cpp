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
#include <QList>
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
#include <QSplitter>
#include <QSplitterHandle>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionFrame>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qsplitter.h>
#include "gen_qsplitter.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QSplitter_splitterMoved(intptr_t, int, int);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQSplitter final : public QSplitter {
	struct QSplitter_VTable* vtbl;
public:

	MiqtVirtualQSplitter(struct QSplitter_VTable* vtbl, QWidget* parent): QSplitter(parent), vtbl(vtbl) {};
	MiqtVirtualQSplitter(struct QSplitter_VTable* vtbl): QSplitter(), vtbl(vtbl) {};
	MiqtVirtualQSplitter(struct QSplitter_VTable* vtbl, Qt::Orientation param1): QSplitter(param1), vtbl(vtbl) {};
	MiqtVirtualQSplitter(struct QSplitter_VTable* vtbl, Qt::Orientation param1, QWidget* parent): QSplitter(param1, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSplitter() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSplitter::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QSplitter::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSplitter::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QSplitter::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSplitter::qt_metacall(param1, param2, param3);
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

		return QSplitter::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QSplitter::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QSplitter::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QSplitter::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QSplitter::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSplitterHandle* createHandle() override {
		if (vtbl->createHandle == 0) {
			return QSplitter::createHandle();
		}


		QSplitterHandle* callback_return_value = vtbl->createHandle(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSplitterHandle* virtualbase_createHandle() {

		return QSplitter::createHandle();

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* param1) override {
		if (vtbl->childEvent == 0) {
			QSplitter::childEvent(param1);
			return;
		}

		QChildEvent* sigval1 = param1;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* param1) {

		QSplitter::childEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QSplitter::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* param1) {

		return QSplitter::event(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QSplitter::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* param1) {

		QSplitter::resizeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QSplitter::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* param1) {

		QSplitter::changeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QSplitter::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* param1) {

		QSplitter::paintEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QSplitter::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QSplitter::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QSplitter::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QSplitter::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QSplitter::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QSplitter::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QSplitter::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QSplitter::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QSplitter::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QSplitter::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QSplitter::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QSplitter::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QSplitter::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QSplitter::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QSplitter::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QSplitter::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QSplitter::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QSplitter::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QSplitter::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QSplitter::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QSplitter::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QSplitter::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QSplitter::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QSplitter::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QSplitter::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QSplitter::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QSplitter::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QSplitter::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QSplitter::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEvent* event) {

		QSplitter::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QSplitter::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QSplitter::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QSplitter::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QSplitter::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QSplitter::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QSplitter::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QSplitter::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* event) {

		QSplitter::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QSplitter::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QSplitter::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QSplitter::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QSplitter::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QSplitter::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QSplitter::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QSplitter::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QSplitter::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QSplitter::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QSplitter::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QSplitter::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QSplitter::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QSplitter::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QSplitter::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QSplitter::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QSplitter::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QSplitter::nativeEvent(eventType, message, result);
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

		return QSplitter::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QSplitter::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QSplitter::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QSplitter::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QSplitter::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QSplitter::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QSplitter::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QSplitter::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QSplitter::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QSplitter::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QSplitter::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QSplitter::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QSplitter::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QSplitter::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QSplitter::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSplitter::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QSplitter::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSplitter::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QSplitter::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSplitter::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QSplitter::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSplitter::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QSplitter::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSplitter::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QSplitter::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QSplitter_protectedbase_moveSplitter(bool* _dynamic_cast_ok, void* self, int pos, int index);
	friend void QSplitter_protectedbase_setRubberBand(bool* _dynamic_cast_ok, void* self, int position);
	friend int QSplitter_protectedbase_closestLegalPosition(bool* _dynamic_cast_ok, void* self, int param1, int param2);
	friend void QSplitter_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1);
	friend void QSplitter_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option);
	friend void QSplitter_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QSplitter_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QSplitter_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QSplitter_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QSplitter_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QSplitter_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QSplitter_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QSplitter_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QSplitter_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QSplitter* QSplitter_new(struct QSplitter_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQSplitter(vtbl, parent);
}

QSplitter* QSplitter_new2(struct QSplitter_VTable* vtbl) {
	return new MiqtVirtualQSplitter(vtbl);
}

QSplitter* QSplitter_new3(struct QSplitter_VTable* vtbl, int param1) {
	return new MiqtVirtualQSplitter(vtbl, static_cast<Qt::Orientation>(param1));
}

QSplitter* QSplitter_new4(struct QSplitter_VTable* vtbl, int param1, QWidget* parent) {
	return new MiqtVirtualQSplitter(vtbl, static_cast<Qt::Orientation>(param1), parent);
}

void QSplitter_virtbase(QSplitter* src, QFrame** outptr_QFrame) {
	*outptr_QFrame = static_cast<QFrame*>(src);
}

QMetaObject* QSplitter_metaObject(const QSplitter* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSplitter_metacast(QSplitter* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSplitter_metacall(QSplitter* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSplitter_tr(const char* s) {
	QString _ret = QSplitter::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplitter_trUtf8(const char* s) {
	QString _ret = QSplitter::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSplitter_addWidget(QSplitter* self, QWidget* widget) {
	self->addWidget(widget);
}

void QSplitter_insertWidget(QSplitter* self, int index, QWidget* widget) {
	self->insertWidget(static_cast<int>(index), widget);
}

QWidget* QSplitter_replaceWidget(QSplitter* self, int index, QWidget* widget) {
	return self->replaceWidget(static_cast<int>(index), widget);
}

void QSplitter_setOrientation(QSplitter* self, int orientation) {
	self->setOrientation(static_cast<Qt::Orientation>(orientation));
}

int QSplitter_orientation(const QSplitter* self) {
	Qt::Orientation _ret = self->orientation();
	return static_cast<int>(_ret);
}

void QSplitter_setChildrenCollapsible(QSplitter* self, bool childrenCollapsible) {
	self->setChildrenCollapsible(childrenCollapsible);
}

bool QSplitter_childrenCollapsible(const QSplitter* self) {
	return self->childrenCollapsible();
}

void QSplitter_setCollapsible(QSplitter* self, int index, bool param2) {
	self->setCollapsible(static_cast<int>(index), param2);
}

bool QSplitter_isCollapsible(const QSplitter* self, int index) {
	return self->isCollapsible(static_cast<int>(index));
}

void QSplitter_setOpaqueResize(QSplitter* self) {
	self->setOpaqueResize();
}

bool QSplitter_opaqueResize(const QSplitter* self) {
	return self->opaqueResize();
}

void QSplitter_refresh(QSplitter* self) {
	self->refresh();
}

QSize* QSplitter_sizeHint(const QSplitter* self) {
	return new QSize(self->sizeHint());
}

QSize* QSplitter_minimumSizeHint(const QSplitter* self) {
	return new QSize(self->minimumSizeHint());
}

struct miqt_array /* of int */  QSplitter_sizes(const QSplitter* self) {
	QList<int> _ret = self->sizes();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QSplitter_setSizes(QSplitter* self, struct miqt_array /* of int */  list) {
	QList<int> list_QList;
	list_QList.reserve(list.len);
	int* list_arr = static_cast<int*>(list.data);
	for(size_t i = 0; i < list.len; ++i) {
		list_QList.push_back(static_cast<int>(list_arr[i]));
	}
	self->setSizes(list_QList);
}

struct miqt_string QSplitter_saveState(const QSplitter* self) {
	QByteArray _qb = self->saveState();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

bool QSplitter_restoreState(QSplitter* self, struct miqt_string state) {
	QByteArray state_QByteArray(state.data, state.len);
	return self->restoreState(state_QByteArray);
}

int QSplitter_handleWidth(const QSplitter* self) {
	return self->handleWidth();
}

void QSplitter_setHandleWidth(QSplitter* self, int handleWidth) {
	self->setHandleWidth(static_cast<int>(handleWidth));
}

int QSplitter_indexOf(const QSplitter* self, QWidget* w) {
	return self->indexOf(w);
}

QWidget* QSplitter_widget(const QSplitter* self, int index) {
	return self->widget(static_cast<int>(index));
}

int QSplitter_count(const QSplitter* self) {
	return self->count();
}

void QSplitter_getRange(const QSplitter* self, int index, int* param2, int* param3) {
	self->getRange(static_cast<int>(index), static_cast<int*>(param2), static_cast<int*>(param3));
}

QSplitterHandle* QSplitter_handle(const QSplitter* self, int index) {
	return self->handle(static_cast<int>(index));
}

void QSplitter_setStretchFactor(QSplitter* self, int index, int stretch) {
	self->setStretchFactor(static_cast<int>(index), static_cast<int>(stretch));
}

void QSplitter_splitterMoved(QSplitter* self, int pos, int index) {
	self->splitterMoved(static_cast<int>(pos), static_cast<int>(index));
}

void QSplitter_connect_splitterMoved(QSplitter* self, intptr_t slot) {
	MiqtVirtualQSplitter::connect(self, static_cast<void (QSplitter::*)(int, int)>(&QSplitter::splitterMoved), self, [=](int pos, int index) {
		int sigval1 = pos;
		int sigval2 = index;
		miqt_exec_callback_QSplitter_splitterMoved(slot, sigval1, sigval2);
	});
}

struct miqt_string QSplitter_tr2(const char* s, const char* c) {
	QString _ret = QSplitter::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplitter_tr3(const char* s, const char* c, int n) {
	QString _ret = QSplitter::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplitter_trUtf82(const char* s, const char* c) {
	QString _ret = QSplitter::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplitter_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSplitter::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSplitter_setOpaqueResize1(QSplitter* self, bool opaque) {
	self->setOpaqueResize(opaque);
}

QMetaObject* QSplitter_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQSplitter*)(self) )->virtualbase_metaObject();
}

void* QSplitter_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQSplitter*)(self) )->virtualbase_metacast(param1);
}

int QSplitter_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQSplitter*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QSize* QSplitter_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQSplitter*)(self) )->virtualbase_sizeHint();
}

QSize* QSplitter_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQSplitter*)(self) )->virtualbase_minimumSizeHint();
}

QSplitterHandle* QSplitter_virtualbase_createHandle(void* self) {
	return ( (MiqtVirtualQSplitter*)(self) )->virtualbase_createHandle();
}

void QSplitter_virtualbase_childEvent(void* self, QChildEvent* param1) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_childEvent(param1);
}

bool QSplitter_virtualbase_event(void* self, QEvent* param1) {
	return ( (MiqtVirtualQSplitter*)(self) )->virtualbase_event(param1);
}

void QSplitter_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_resizeEvent(param1);
}

void QSplitter_virtualbase_changeEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_changeEvent(param1);
}

void QSplitter_virtualbase_paintEvent(void* self, QPaintEvent* param1) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_paintEvent(param1);
}

int QSplitter_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQSplitter*)(self) )->virtualbase_devType();
}

void QSplitter_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_setVisible(visible);
}

int QSplitter_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQSplitter*)(self) )->virtualbase_heightForWidth(param1);
}

bool QSplitter_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQSplitter*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QSplitter_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQSplitter*)(self) )->virtualbase_paintEngine();
}

void QSplitter_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_mousePressEvent(event);
}

void QSplitter_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QSplitter_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QSplitter_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QSplitter_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_wheelEvent(event);
}

void QSplitter_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_keyPressEvent(event);
}

void QSplitter_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QSplitter_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_focusInEvent(event);
}

void QSplitter_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_focusOutEvent(event);
}

void QSplitter_virtualbase_enterEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_enterEvent(event);
}

void QSplitter_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_leaveEvent(event);
}

void QSplitter_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_moveEvent(event);
}

void QSplitter_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_closeEvent(event);
}

void QSplitter_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_contextMenuEvent(event);
}

void QSplitter_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_tabletEvent(event);
}

void QSplitter_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_actionEvent(event);
}

void QSplitter_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_dragEnterEvent(event);
}

void QSplitter_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_dragMoveEvent(event);
}

void QSplitter_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QSplitter_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_dropEvent(event);
}

void QSplitter_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_showEvent(event);
}

void QSplitter_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_hideEvent(event);
}

bool QSplitter_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	return ( (MiqtVirtualQSplitter*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

int QSplitter_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQSplitter*)(self) )->virtualbase_metric(param1);
}

void QSplitter_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQSplitter*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QSplitter_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQSplitter*)(self) )->virtualbase_redirected(offset);
}

QPainter* QSplitter_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQSplitter*)(self) )->virtualbase_sharedPainter();
}

void QSplitter_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QSplitter_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQSplitter*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QSplitter_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQSplitter*)(self) )->virtualbase_focusNextPrevChild(next);
}

bool QSplitter_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQSplitter*)(self) )->virtualbase_eventFilter(watched, event);
}

void QSplitter_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_timerEvent(event);
}

void QSplitter_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_customEvent(event);
}

void QSplitter_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_connectNotify(signal);
}

void QSplitter_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSplitter*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QSplitter_staticMetaObject() { return &QSplitter::staticMetaObject; }
void QSplitter_protectedbase_moveSplitter(bool* _dynamic_cast_ok, void* self, int pos, int index) {
	MiqtVirtualQSplitter* self_cast = dynamic_cast<MiqtVirtualQSplitter*>( (QSplitter*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->moveSplitter(static_cast<int>(pos), static_cast<int>(index));

}

void QSplitter_protectedbase_setRubberBand(bool* _dynamic_cast_ok, void* self, int position) {
	MiqtVirtualQSplitter* self_cast = dynamic_cast<MiqtVirtualQSplitter*>( (QSplitter*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setRubberBand(static_cast<int>(position));

}

int QSplitter_protectedbase_closestLegalPosition(bool* _dynamic_cast_ok, void* self, int param1, int param2) {
	MiqtVirtualQSplitter* self_cast = dynamic_cast<MiqtVirtualQSplitter*>( (QSplitter*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->closestLegalPosition(static_cast<int>(param1), static_cast<int>(param2));

}

void QSplitter_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1) {
	MiqtVirtualQSplitter* self_cast = dynamic_cast<MiqtVirtualQSplitter*>( (QSplitter*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->drawFrame(param1);

}

void QSplitter_protectedbase_initStyleOption(bool* _dynamic_cast_ok, const void* self, QStyleOptionFrame* option) {
	MiqtVirtualQSplitter* self_cast = dynamic_cast<MiqtVirtualQSplitter*>( (QSplitter*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->initStyleOption(option);

}

void QSplitter_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQSplitter* self_cast = dynamic_cast<MiqtVirtualQSplitter*>( (QSplitter*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QSplitter_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQSplitter* self_cast = dynamic_cast<MiqtVirtualQSplitter*>( (QSplitter*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QSplitter_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQSplitter* self_cast = dynamic_cast<MiqtVirtualQSplitter*>( (QSplitter*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QSplitter_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQSplitter* self_cast = dynamic_cast<MiqtVirtualQSplitter*>( (QSplitter*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QSplitter_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQSplitter* self_cast = dynamic_cast<MiqtVirtualQSplitter*>( (QSplitter*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QSplitter_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQSplitter* self_cast = dynamic_cast<MiqtVirtualQSplitter*>( (QSplitter*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QSplitter_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQSplitter* self_cast = dynamic_cast<MiqtVirtualQSplitter*>( (QSplitter*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QSplitter_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	MiqtVirtualQSplitter* self_cast = dynamic_cast<MiqtVirtualQSplitter*>( (QSplitter*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QSplitter_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	MiqtVirtualQSplitter* self_cast = dynamic_cast<MiqtVirtualQSplitter*>( (QSplitter*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QSplitter_delete(QSplitter* self) {
	delete self;
}

class MiqtVirtualQSplitterHandle final : public QSplitterHandle {
	struct QSplitterHandle_VTable* vtbl;
public:

	MiqtVirtualQSplitterHandle(struct QSplitterHandle_VTable* vtbl, Qt::Orientation o, QSplitter* parent): QSplitterHandle(o, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSplitterHandle() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSplitterHandle::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QSplitterHandle::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSplitterHandle::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QSplitterHandle::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSplitterHandle::qt_metacall(param1, param2, param3);
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

		return QSplitterHandle::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QSplitterHandle::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QSplitterHandle::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* param1) override {
		if (vtbl->paintEvent == 0) {
			QSplitterHandle::paintEvent(param1);
			return;
		}

		QPaintEvent* sigval1 = param1;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* param1) {

		QSplitterHandle::paintEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QSplitterHandle::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* param1) {

		QSplitterHandle::mouseMoveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QSplitterHandle::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* param1) {

		QSplitterHandle::mousePressEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QSplitterHandle::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* param1) {

		QSplitterHandle::mouseReleaseEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QSplitterHandle::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* param1) {

		QSplitterHandle::resizeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QSplitterHandle::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* param1) {

		return QSplitterHandle::event(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QSplitterHandle::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QSplitterHandle::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QSplitterHandle::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QSplitterHandle::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QSplitterHandle::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QSplitterHandle::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QSplitterHandle::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QSplitterHandle::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QSplitterHandle::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QSplitterHandle::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QSplitterHandle::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QSplitterHandle::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QSplitterHandle::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QSplitterHandle::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QSplitterHandle::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QSplitterHandle::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QSplitterHandle::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QSplitterHandle::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QSplitterHandle::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QSplitterHandle::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QSplitterHandle::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QSplitterHandle::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QSplitterHandle::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QSplitterHandle::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QSplitterHandle::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEvent* event) {

		QSplitterHandle::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QSplitterHandle::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QSplitterHandle::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QSplitterHandle::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QSplitterHandle::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QSplitterHandle::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QSplitterHandle::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QSplitterHandle::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* event) {

		QSplitterHandle::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QSplitterHandle::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QSplitterHandle::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QSplitterHandle::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QSplitterHandle::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QSplitterHandle::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QSplitterHandle::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QSplitterHandle::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QSplitterHandle::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QSplitterHandle::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QSplitterHandle::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QSplitterHandle::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QSplitterHandle::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QSplitterHandle::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QSplitterHandle::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QSplitterHandle::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QSplitterHandle::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QSplitterHandle::nativeEvent(eventType, message, result);
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

		return QSplitterHandle::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QSplitterHandle::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* param1) {

		QSplitterHandle::changeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QSplitterHandle::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QSplitterHandle::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QSplitterHandle::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QSplitterHandle::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QSplitterHandle::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QSplitterHandle::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QSplitterHandle::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QSplitterHandle::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QSplitterHandle::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QSplitterHandle::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QSplitterHandle::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QSplitterHandle::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QSplitterHandle::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QSplitterHandle::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSplitterHandle::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QSplitterHandle::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSplitterHandle::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QSplitterHandle::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSplitterHandle::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QSplitterHandle::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSplitterHandle::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QSplitterHandle::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSplitterHandle::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QSplitterHandle::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSplitterHandle::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QSplitterHandle::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QSplitterHandle_protectedbase_moveSplitter(bool* _dynamic_cast_ok, void* self, int p);
	friend int QSplitterHandle_protectedbase_closestLegalPosition(bool* _dynamic_cast_ok, void* self, int p);
	friend void QSplitterHandle_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QSplitterHandle_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QSplitterHandle_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QSplitterHandle_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QSplitterHandle_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QSplitterHandle_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QSplitterHandle_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QSplitterHandle_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QSplitterHandle_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QSplitterHandle* QSplitterHandle_new(struct QSplitterHandle_VTable* vtbl, int o, QSplitter* parent) {
	return new MiqtVirtualQSplitterHandle(vtbl, static_cast<Qt::Orientation>(o), parent);
}

void QSplitterHandle_virtbase(QSplitterHandle* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QSplitterHandle_metaObject(const QSplitterHandle* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSplitterHandle_metacast(QSplitterHandle* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSplitterHandle_metacall(QSplitterHandle* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSplitterHandle_tr(const char* s) {
	QString _ret = QSplitterHandle::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplitterHandle_trUtf8(const char* s) {
	QString _ret = QSplitterHandle::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSplitterHandle_setOrientation(QSplitterHandle* self, int o) {
	self->setOrientation(static_cast<Qt::Orientation>(o));
}

int QSplitterHandle_orientation(const QSplitterHandle* self) {
	Qt::Orientation _ret = self->orientation();
	return static_cast<int>(_ret);
}

bool QSplitterHandle_opaqueResize(const QSplitterHandle* self) {
	return self->opaqueResize();
}

QSplitter* QSplitterHandle_splitter(const QSplitterHandle* self) {
	return self->splitter();
}

QSize* QSplitterHandle_sizeHint(const QSplitterHandle* self) {
	return new QSize(self->sizeHint());
}

struct miqt_string QSplitterHandle_tr2(const char* s, const char* c) {
	QString _ret = QSplitterHandle::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplitterHandle_tr3(const char* s, const char* c, int n) {
	QString _ret = QSplitterHandle::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplitterHandle_trUtf82(const char* s, const char* c) {
	QString _ret = QSplitterHandle::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSplitterHandle_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSplitterHandle::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSplitterHandle_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQSplitterHandle*)(self) )->virtualbase_metaObject();
}

void* QSplitterHandle_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_metacast(param1);
}

int QSplitterHandle_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QSize* QSplitterHandle_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQSplitterHandle*)(self) )->virtualbase_sizeHint();
}

void QSplitterHandle_virtualbase_paintEvent(void* self, QPaintEvent* param1) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_paintEvent(param1);
}

void QSplitterHandle_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_mouseMoveEvent(param1);
}

void QSplitterHandle_virtualbase_mousePressEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_mousePressEvent(param1);
}

void QSplitterHandle_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_mouseReleaseEvent(param1);
}

void QSplitterHandle_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_resizeEvent(param1);
}

bool QSplitterHandle_virtualbase_event(void* self, QEvent* param1) {
	return ( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_event(param1);
}

int QSplitterHandle_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQSplitterHandle*)(self) )->virtualbase_devType();
}

void QSplitterHandle_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_setVisible(visible);
}

QSize* QSplitterHandle_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQSplitterHandle*)(self) )->virtualbase_minimumSizeHint();
}

int QSplitterHandle_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQSplitterHandle*)(self) )->virtualbase_heightForWidth(param1);
}

bool QSplitterHandle_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQSplitterHandle*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QSplitterHandle_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQSplitterHandle*)(self) )->virtualbase_paintEngine();
}

void QSplitterHandle_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QSplitterHandle_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_wheelEvent(event);
}

void QSplitterHandle_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_keyPressEvent(event);
}

void QSplitterHandle_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QSplitterHandle_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_focusInEvent(event);
}

void QSplitterHandle_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_focusOutEvent(event);
}

void QSplitterHandle_virtualbase_enterEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_enterEvent(event);
}

void QSplitterHandle_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_leaveEvent(event);
}

void QSplitterHandle_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_moveEvent(event);
}

void QSplitterHandle_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_closeEvent(event);
}

void QSplitterHandle_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_contextMenuEvent(event);
}

void QSplitterHandle_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_tabletEvent(event);
}

void QSplitterHandle_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_actionEvent(event);
}

void QSplitterHandle_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_dragEnterEvent(event);
}

void QSplitterHandle_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_dragMoveEvent(event);
}

void QSplitterHandle_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QSplitterHandle_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_dropEvent(event);
}

void QSplitterHandle_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_showEvent(event);
}

void QSplitterHandle_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_hideEvent(event);
}

bool QSplitterHandle_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	return ( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

void QSplitterHandle_virtualbase_changeEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_changeEvent(param1);
}

int QSplitterHandle_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQSplitterHandle*)(self) )->virtualbase_metric(param1);
}

void QSplitterHandle_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQSplitterHandle*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QSplitterHandle_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQSplitterHandle*)(self) )->virtualbase_redirected(offset);
}

QPainter* QSplitterHandle_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQSplitterHandle*)(self) )->virtualbase_sharedPainter();
}

void QSplitterHandle_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QSplitterHandle_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQSplitterHandle*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QSplitterHandle_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_focusNextPrevChild(next);
}

bool QSplitterHandle_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_eventFilter(watched, event);
}

void QSplitterHandle_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_timerEvent(event);
}

void QSplitterHandle_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_childEvent(event);
}

void QSplitterHandle_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_customEvent(event);
}

void QSplitterHandle_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_connectNotify(signal);
}

void QSplitterHandle_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSplitterHandle*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QSplitterHandle_staticMetaObject() { return &QSplitterHandle::staticMetaObject; }
void QSplitterHandle_protectedbase_moveSplitter(bool* _dynamic_cast_ok, void* self, int p) {
	MiqtVirtualQSplitterHandle* self_cast = dynamic_cast<MiqtVirtualQSplitterHandle*>( (QSplitterHandle*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->moveSplitter(static_cast<int>(p));

}

int QSplitterHandle_protectedbase_closestLegalPosition(bool* _dynamic_cast_ok, void* self, int p) {
	MiqtVirtualQSplitterHandle* self_cast = dynamic_cast<MiqtVirtualQSplitterHandle*>( (QSplitterHandle*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->closestLegalPosition(static_cast<int>(p));

}

void QSplitterHandle_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQSplitterHandle* self_cast = dynamic_cast<MiqtVirtualQSplitterHandle*>( (QSplitterHandle*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QSplitterHandle_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQSplitterHandle* self_cast = dynamic_cast<MiqtVirtualQSplitterHandle*>( (QSplitterHandle*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QSplitterHandle_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQSplitterHandle* self_cast = dynamic_cast<MiqtVirtualQSplitterHandle*>( (QSplitterHandle*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QSplitterHandle_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQSplitterHandle* self_cast = dynamic_cast<MiqtVirtualQSplitterHandle*>( (QSplitterHandle*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QSplitterHandle_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQSplitterHandle* self_cast = dynamic_cast<MiqtVirtualQSplitterHandle*>( (QSplitterHandle*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QSplitterHandle_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQSplitterHandle* self_cast = dynamic_cast<MiqtVirtualQSplitterHandle*>( (QSplitterHandle*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QSplitterHandle_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQSplitterHandle* self_cast = dynamic_cast<MiqtVirtualQSplitterHandle*>( (QSplitterHandle*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QSplitterHandle_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	MiqtVirtualQSplitterHandle* self_cast = dynamic_cast<MiqtVirtualQSplitterHandle*>( (QSplitterHandle*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QSplitterHandle_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	MiqtVirtualQSplitterHandle* self_cast = dynamic_cast<MiqtVirtualQSplitterHandle*>( (QSplitterHandle*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QSplitterHandle_delete(QSplitterHandle* self) {
	delete self;
}

