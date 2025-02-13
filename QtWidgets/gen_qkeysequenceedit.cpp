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
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QKeySequence>
#include <QKeySequenceEdit>
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
#include <qkeysequenceedit.h>
#include "gen_qkeysequenceedit.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QKeySequenceEdit_editingFinished(intptr_t);
void miqt_exec_callback_QKeySequenceEdit_editingFinished_release(intptr_t);
void miqt_exec_callback_QKeySequenceEdit_keySequenceChanged(intptr_t, QKeySequence*);
void miqt_exec_callback_QKeySequenceEdit_keySequenceChanged_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQKeySequenceEdit final : public QKeySequenceEdit {
	struct QKeySequenceEdit_VTable* vtbl;
public:

	MiqtVirtualQKeySequenceEdit(struct QKeySequenceEdit_VTable* vtbl, QWidget* parent): QKeySequenceEdit(parent), vtbl(vtbl) {};
	MiqtVirtualQKeySequenceEdit(struct QKeySequenceEdit_VTable* vtbl): QKeySequenceEdit(), vtbl(vtbl) {};
	MiqtVirtualQKeySequenceEdit(struct QKeySequenceEdit_VTable* vtbl, const QKeySequence& keySequence): QKeySequenceEdit(keySequence), vtbl(vtbl) {};
	MiqtVirtualQKeySequenceEdit(struct QKeySequenceEdit_VTable* vtbl, const QKeySequence& keySequence, QWidget* parent): QKeySequenceEdit(keySequence, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQKeySequenceEdit() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QKeySequenceEdit::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QKeySequenceEdit::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QKeySequenceEdit::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QKeySequenceEdit::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QKeySequenceEdit::qt_metacall(param1, param2, param3);
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

		return QKeySequenceEdit::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QKeySequenceEdit::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* param1) {

		return QKeySequenceEdit::event(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QKeySequenceEdit::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* param1) {

		QKeySequenceEdit::keyPressEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* param1) override {
		if (vtbl->keyReleaseEvent == 0) {
			QKeySequenceEdit::keyReleaseEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* param1) {

		QKeySequenceEdit::keyReleaseEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QKeySequenceEdit::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* param1) {

		QKeySequenceEdit::timerEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QKeySequenceEdit::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QKeySequenceEdit::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QKeySequenceEdit::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QKeySequenceEdit::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QKeySequenceEdit::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QKeySequenceEdit::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QKeySequenceEdit::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QKeySequenceEdit::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QKeySequenceEdit::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QKeySequenceEdit::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QKeySequenceEdit::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QKeySequenceEdit::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QKeySequenceEdit::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QKeySequenceEdit::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QKeySequenceEdit::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QKeySequenceEdit::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QKeySequenceEdit::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QKeySequenceEdit::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QKeySequenceEdit::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QKeySequenceEdit::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QKeySequenceEdit::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QKeySequenceEdit::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QKeySequenceEdit::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QKeySequenceEdit::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QKeySequenceEdit::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QKeySequenceEdit::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QKeySequenceEdit::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QKeySequenceEdit::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QKeySequenceEdit::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEvent* event) {

		QKeySequenceEdit::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QKeySequenceEdit::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QKeySequenceEdit::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QKeySequenceEdit::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* event) {

		QKeySequenceEdit::paintEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QKeySequenceEdit::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QKeySequenceEdit::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QKeySequenceEdit::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* event) {

		QKeySequenceEdit::resizeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QKeySequenceEdit::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QKeySequenceEdit::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QKeySequenceEdit::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* event) {

		QKeySequenceEdit::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QKeySequenceEdit::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QKeySequenceEdit::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QKeySequenceEdit::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QKeySequenceEdit::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QKeySequenceEdit::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QKeySequenceEdit::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QKeySequenceEdit::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QKeySequenceEdit::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QKeySequenceEdit::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QKeySequenceEdit::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QKeySequenceEdit::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QKeySequenceEdit::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QKeySequenceEdit::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QKeySequenceEdit::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QKeySequenceEdit::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QKeySequenceEdit::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QKeySequenceEdit::nativeEvent(eventType, message, result);
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

		return QKeySequenceEdit::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QKeySequenceEdit::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* param1) {

		QKeySequenceEdit::changeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QKeySequenceEdit::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QKeySequenceEdit::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QKeySequenceEdit::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QKeySequenceEdit::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QKeySequenceEdit::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QKeySequenceEdit::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QKeySequenceEdit::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QKeySequenceEdit::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QKeySequenceEdit::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QKeySequenceEdit::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QKeySequenceEdit::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QKeySequenceEdit::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QKeySequenceEdit::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QKeySequenceEdit::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QKeySequenceEdit::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QKeySequenceEdit::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QKeySequenceEdit::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QKeySequenceEdit::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QKeySequenceEdit::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QKeySequenceEdit::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QKeySequenceEdit::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QKeySequenceEdit::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QKeySequenceEdit::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QKeySequenceEdit::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QKeySequenceEdit_protectedbase_updateMicroFocus(void* self);
	friend void QKeySequenceEdit_protectedbase_create(void* self);
	friend void QKeySequenceEdit_protectedbase_destroy(void* self);
	friend bool QKeySequenceEdit_protectedbase_focusNextChild(void* self);
	friend bool QKeySequenceEdit_protectedbase_focusPreviousChild(void* self);
	friend QObject* QKeySequenceEdit_protectedbase_sender(const void* self);
	friend int QKeySequenceEdit_protectedbase_senderSignalIndex(const void* self);
	friend int QKeySequenceEdit_protectedbase_receivers(const void* self, const char* signal);
	friend bool QKeySequenceEdit_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QKeySequenceEdit* QKeySequenceEdit_new(struct QKeySequenceEdit_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQKeySequenceEdit(vtbl, parent);
}

QKeySequenceEdit* QKeySequenceEdit_new2(struct QKeySequenceEdit_VTable* vtbl) {
	return new MiqtVirtualQKeySequenceEdit(vtbl);
}

QKeySequenceEdit* QKeySequenceEdit_new3(struct QKeySequenceEdit_VTable* vtbl, QKeySequence* keySequence) {
	return new MiqtVirtualQKeySequenceEdit(vtbl, *keySequence);
}

QKeySequenceEdit* QKeySequenceEdit_new4(struct QKeySequenceEdit_VTable* vtbl, QKeySequence* keySequence, QWidget* parent) {
	return new MiqtVirtualQKeySequenceEdit(vtbl, *keySequence, parent);
}

void QKeySequenceEdit_virtbase(QKeySequenceEdit* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QKeySequenceEdit_metaObject(const QKeySequenceEdit* self) {
	return (QMetaObject*) self->metaObject();
}

void* QKeySequenceEdit_metacast(QKeySequenceEdit* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QKeySequenceEdit_metacall(QKeySequenceEdit* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QKeySequenceEdit_tr(const char* s) {
	QString _ret = QKeySequenceEdit::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QKeySequenceEdit_trUtf8(const char* s) {
	QString _ret = QKeySequenceEdit::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QKeySequence* QKeySequenceEdit_keySequence(const QKeySequenceEdit* self) {
	return new QKeySequence(self->keySequence());
}

void QKeySequenceEdit_setKeySequence(QKeySequenceEdit* self, QKeySequence* keySequence) {
	self->setKeySequence(*keySequence);
}

void QKeySequenceEdit_clear(QKeySequenceEdit* self) {
	self->clear();
}

void QKeySequenceEdit_editingFinished(QKeySequenceEdit* self) {
	self->editingFinished();
}

void QKeySequenceEdit_connect_editingFinished(QKeySequenceEdit* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QKeySequenceEdit_editingFinished(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QKeySequenceEdit_editingFinished_release(slot); }
	};
	MiqtVirtualQKeySequenceEdit::connect(self, static_cast<void (QKeySequenceEdit::*)()>(&QKeySequenceEdit::editingFinished), self, caller{slot});
}

void QKeySequenceEdit_keySequenceChanged(QKeySequenceEdit* self, QKeySequence* keySequence) {
	self->keySequenceChanged(*keySequence);
}

void QKeySequenceEdit_connect_keySequenceChanged(QKeySequenceEdit* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QKeySequence& keySequence) {
			const QKeySequence& keySequence_ret = keySequence;
			// Cast returned reference into pointer
			QKeySequence* sigval1 = const_cast<QKeySequence*>(&keySequence_ret);
			miqt_exec_callback_QKeySequenceEdit_keySequenceChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QKeySequenceEdit_keySequenceChanged_release(slot); }
	};
	MiqtVirtualQKeySequenceEdit::connect(self, static_cast<void (QKeySequenceEdit::*)(const QKeySequence&)>(&QKeySequenceEdit::keySequenceChanged), self, caller{slot});
}

struct miqt_string QKeySequenceEdit_tr2(const char* s, const char* c) {
	QString _ret = QKeySequenceEdit::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QKeySequenceEdit_tr3(const char* s, const char* c, int n) {
	QString _ret = QKeySequenceEdit::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QKeySequenceEdit_trUtf82(const char* s, const char* c) {
	QString _ret = QKeySequenceEdit::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QKeySequenceEdit_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QKeySequenceEdit::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QKeySequenceEdit_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_metaObject();
}

void* QKeySequenceEdit_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_metacast(param1);
}

int QKeySequenceEdit_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QKeySequenceEdit_virtualbase_event(void* self, QEvent* param1) {
	return ( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_event(param1);
}

void QKeySequenceEdit_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_keyPressEvent(param1);
}

void QKeySequenceEdit_virtualbase_keyReleaseEvent(void* self, QKeyEvent* param1) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_keyReleaseEvent(param1);
}

void QKeySequenceEdit_virtualbase_timerEvent(void* self, QTimerEvent* param1) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_timerEvent(param1);
}

int QKeySequenceEdit_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_devType();
}

void QKeySequenceEdit_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_setVisible(visible);
}

QSize* QKeySequenceEdit_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_sizeHint();
}

QSize* QKeySequenceEdit_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_minimumSizeHint();
}

int QKeySequenceEdit_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_heightForWidth(param1);
}

bool QKeySequenceEdit_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QKeySequenceEdit_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_paintEngine();
}

void QKeySequenceEdit_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_mousePressEvent(event);
}

void QKeySequenceEdit_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QKeySequenceEdit_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QKeySequenceEdit_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QKeySequenceEdit_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_wheelEvent(event);
}

void QKeySequenceEdit_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_focusInEvent(event);
}

void QKeySequenceEdit_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_focusOutEvent(event);
}

void QKeySequenceEdit_virtualbase_enterEvent(void* self, QEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_enterEvent(event);
}

void QKeySequenceEdit_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_leaveEvent(event);
}

void QKeySequenceEdit_virtualbase_paintEvent(void* self, QPaintEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_paintEvent(event);
}

void QKeySequenceEdit_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_moveEvent(event);
}

void QKeySequenceEdit_virtualbase_resizeEvent(void* self, QResizeEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_resizeEvent(event);
}

void QKeySequenceEdit_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_closeEvent(event);
}

void QKeySequenceEdit_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_contextMenuEvent(event);
}

void QKeySequenceEdit_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_tabletEvent(event);
}

void QKeySequenceEdit_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_actionEvent(event);
}

void QKeySequenceEdit_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_dragEnterEvent(event);
}

void QKeySequenceEdit_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_dragMoveEvent(event);
}

void QKeySequenceEdit_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QKeySequenceEdit_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_dropEvent(event);
}

void QKeySequenceEdit_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_showEvent(event);
}

void QKeySequenceEdit_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_hideEvent(event);
}

bool QKeySequenceEdit_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	return ( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

void QKeySequenceEdit_virtualbase_changeEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_changeEvent(param1);
}

int QKeySequenceEdit_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_metric(param1);
}

void QKeySequenceEdit_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QKeySequenceEdit_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_redirected(offset);
}

QPainter* QKeySequenceEdit_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_sharedPainter();
}

void QKeySequenceEdit_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QKeySequenceEdit_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QKeySequenceEdit_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_focusNextPrevChild(next);
}

bool QKeySequenceEdit_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_eventFilter(watched, event);
}

void QKeySequenceEdit_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_childEvent(event);
}

void QKeySequenceEdit_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_customEvent(event);
}

void QKeySequenceEdit_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_connectNotify(signal);
}

void QKeySequenceEdit_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQKeySequenceEdit*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QKeySequenceEdit_staticMetaObject() { return &QKeySequenceEdit::staticMetaObject; }
void QKeySequenceEdit_protectedbase_updateMicroFocus(void* self) {
	MiqtVirtualQKeySequenceEdit* self_cast = static_cast<MiqtVirtualQKeySequenceEdit*>( (QKeySequenceEdit*)(self) );
	
	self_cast->updateMicroFocus();

}

void QKeySequenceEdit_protectedbase_create(void* self) {
	MiqtVirtualQKeySequenceEdit* self_cast = static_cast<MiqtVirtualQKeySequenceEdit*>( (QKeySequenceEdit*)(self) );
	
	self_cast->create();

}

void QKeySequenceEdit_protectedbase_destroy(void* self) {
	MiqtVirtualQKeySequenceEdit* self_cast = static_cast<MiqtVirtualQKeySequenceEdit*>( (QKeySequenceEdit*)(self) );
	
	self_cast->destroy();

}

bool QKeySequenceEdit_protectedbase_focusNextChild(void* self) {
	MiqtVirtualQKeySequenceEdit* self_cast = static_cast<MiqtVirtualQKeySequenceEdit*>( (QKeySequenceEdit*)(self) );
	
	return self_cast->focusNextChild();

}

bool QKeySequenceEdit_protectedbase_focusPreviousChild(void* self) {
	MiqtVirtualQKeySequenceEdit* self_cast = static_cast<MiqtVirtualQKeySequenceEdit*>( (QKeySequenceEdit*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QKeySequenceEdit_protectedbase_sender(const void* self) {
	MiqtVirtualQKeySequenceEdit* self_cast = static_cast<MiqtVirtualQKeySequenceEdit*>( (QKeySequenceEdit*)(self) );
	
	return self_cast->sender();

}

int QKeySequenceEdit_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQKeySequenceEdit* self_cast = static_cast<MiqtVirtualQKeySequenceEdit*>( (QKeySequenceEdit*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QKeySequenceEdit_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQKeySequenceEdit* self_cast = static_cast<MiqtVirtualQKeySequenceEdit*>( (QKeySequenceEdit*)(self) );
	
	return self_cast->receivers(signal);

}

bool QKeySequenceEdit_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQKeySequenceEdit* self_cast = static_cast<MiqtVirtualQKeySequenceEdit*>( (QKeySequenceEdit*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QKeySequenceEdit_delete(QKeySequenceEdit* self) {
	delete self;
}

