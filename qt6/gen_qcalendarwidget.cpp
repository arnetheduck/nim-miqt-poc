#include <QActionEvent>
#include <QByteArray>
#include <QCalendar>
#include <QCalendarWidget>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDate>
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
#include <QMap>
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
#include <QTextCharFormat>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qcalendarwidget.h>
#include "gen_qcalendarwidget.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QCalendarWidget_selectionChanged(intptr_t);
void miqt_exec_callback_QCalendarWidget_selectionChanged_release(intptr_t);
void miqt_exec_callback_QCalendarWidget_clicked(intptr_t, QDate*);
void miqt_exec_callback_QCalendarWidget_clicked_release(intptr_t);
void miqt_exec_callback_QCalendarWidget_activated(intptr_t, QDate*);
void miqt_exec_callback_QCalendarWidget_activated_release(intptr_t);
void miqt_exec_callback_QCalendarWidget_currentPageChanged(intptr_t, int, int);
void miqt_exec_callback_QCalendarWidget_currentPageChanged_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQCalendarWidget final : public QCalendarWidget {
	struct QCalendarWidget_VTable* vtbl;
public:

	MiqtVirtualQCalendarWidget(struct QCalendarWidget_VTable* vtbl, QWidget* parent): QCalendarWidget(parent), vtbl(vtbl) {};
	MiqtVirtualQCalendarWidget(struct QCalendarWidget_VTable* vtbl): QCalendarWidget(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQCalendarWidget() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QCalendarWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QCalendarWidget::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QCalendarWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QCalendarWidget::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QCalendarWidget::qt_metacall(param1, param2, param3);
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

		return QCalendarWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QCalendarWidget::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QCalendarWidget::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QCalendarWidget::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QCalendarWidget::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QCalendarWidget::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QCalendarWidget::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QCalendarWidget::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QCalendarWidget::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QCalendarWidget::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QCalendarWidget::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QCalendarWidget::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* event) {

		QCalendarWidget::resizeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QCalendarWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QCalendarWidget::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintCell(QPainter* painter, const QRect& rect, QDate date) const override {
		if (vtbl->paintCell == 0) {
			QCalendarWidget::paintCell(painter, rect, date);
			return;
		}

		QPainter* sigval1 = painter;
		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval2 = const_cast<QRect*>(&rect_ret);
		QDate* sigval3 = new QDate(date);

		vtbl->paintCell(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintCell(QPainter* painter, QRect* rect, QDate* date) const {

		QCalendarWidget::paintCell(painter, *rect, *date);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QCalendarWidget::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QCalendarWidget::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QCalendarWidget::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QCalendarWidget::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QCalendarWidget::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QCalendarWidget::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QCalendarWidget::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QCalendarWidget::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QCalendarWidget::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QCalendarWidget::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QCalendarWidget::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QCalendarWidget::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QCalendarWidget::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QCalendarWidget::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QCalendarWidget::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QCalendarWidget::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QCalendarWidget::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QCalendarWidget::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QCalendarWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QCalendarWidget::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QCalendarWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QCalendarWidget::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QCalendarWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QCalendarWidget::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QCalendarWidget::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEnterEvent* event) {

		QCalendarWidget::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QCalendarWidget::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QCalendarWidget::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QCalendarWidget::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* event) {

		QCalendarWidget::paintEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QCalendarWidget::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QCalendarWidget::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QCalendarWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QCalendarWidget::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QCalendarWidget::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* event) {

		QCalendarWidget::contextMenuEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QCalendarWidget::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QCalendarWidget::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QCalendarWidget::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QCalendarWidget::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QCalendarWidget::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QCalendarWidget::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QCalendarWidget::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QCalendarWidget::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QCalendarWidget::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QCalendarWidget::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QCalendarWidget::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QCalendarWidget::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QCalendarWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QCalendarWidget::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QCalendarWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QCalendarWidget::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QCalendarWidget::nativeEvent(eventType, message, result);
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

		return QCalendarWidget::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QCalendarWidget::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* param1) {

		QCalendarWidget::changeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QCalendarWidget::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QCalendarWidget::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QCalendarWidget::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QCalendarWidget::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QCalendarWidget::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QCalendarWidget::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QCalendarWidget::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QCalendarWidget::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QCalendarWidget::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QCalendarWidget::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QCalendarWidget::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QCalendarWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QCalendarWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QCalendarWidget::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QCalendarWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QCalendarWidget::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QCalendarWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QCalendarWidget::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QCalendarWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QCalendarWidget::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QCalendarWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QCalendarWidget::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QCalendarWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QCalendarWidget::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	void protectedbase_updateCell(QDate* date) {

		QCalendarWidget::updateCell(*date);

	}

	// Wrapper to allow calling protected method
	void protectedbase_updateCells() {

		QCalendarWidget::updateCells();

	}

	// Wrapper to allow calling protected method
	void protectedbase_updateMicroFocus() {

		QCalendarWidget::updateMicroFocus();

	}

	// Wrapper to allow calling protected method
	void protectedbase_create() {

		QCalendarWidget::create();

	}

	// Wrapper to allow calling protected method
	void protectedbase_destroy() {

		QCalendarWidget::destroy();

	}

	// Wrapper to allow calling protected method
	bool protectedbase_focusNextChild() {

		return QCalendarWidget::focusNextChild();

	}

	// Wrapper to allow calling protected method
	bool protectedbase_focusPreviousChild() {

		return QCalendarWidget::focusPreviousChild();

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QCalendarWidget::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QCalendarWidget::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QCalendarWidget::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QCalendarWidget::isSignalConnected(*signal);

	}

};

QCalendarWidget* QCalendarWidget_new(struct QCalendarWidget_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQCalendarWidget(vtbl, parent);
}

QCalendarWidget* QCalendarWidget_new2(struct QCalendarWidget_VTable* vtbl) {
	return new MiqtVirtualQCalendarWidget(vtbl);
}

void QCalendarWidget_virtbase(QCalendarWidget* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QCalendarWidget_metaObject(const QCalendarWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QCalendarWidget_metacast(QCalendarWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QCalendarWidget_metacall(QCalendarWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QCalendarWidget_tr(const char* s) {
	QString _ret = QCalendarWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QCalendarWidget_sizeHint(const QCalendarWidget* self) {
	return new QSize(self->sizeHint());
}

QSize* QCalendarWidget_minimumSizeHint(const QCalendarWidget* self) {
	return new QSize(self->minimumSizeHint());
}

QDate* QCalendarWidget_selectedDate(const QCalendarWidget* self) {
	return new QDate(self->selectedDate());
}

int QCalendarWidget_yearShown(const QCalendarWidget* self) {
	return self->yearShown();
}

int QCalendarWidget_monthShown(const QCalendarWidget* self) {
	return self->monthShown();
}

QDate* QCalendarWidget_minimumDate(const QCalendarWidget* self) {
	return new QDate(self->minimumDate());
}

void QCalendarWidget_setMinimumDate(QCalendarWidget* self, QDate* date) {
	self->setMinimumDate(*date);
}

QDate* QCalendarWidget_maximumDate(const QCalendarWidget* self) {
	return new QDate(self->maximumDate());
}

void QCalendarWidget_setMaximumDate(QCalendarWidget* self, QDate* date) {
	self->setMaximumDate(*date);
}

int QCalendarWidget_firstDayOfWeek(const QCalendarWidget* self) {
	Qt::DayOfWeek _ret = self->firstDayOfWeek();
	return static_cast<int>(_ret);
}

void QCalendarWidget_setFirstDayOfWeek(QCalendarWidget* self, int dayOfWeek) {
	self->setFirstDayOfWeek(static_cast<Qt::DayOfWeek>(dayOfWeek));
}

bool QCalendarWidget_isNavigationBarVisible(const QCalendarWidget* self) {
	return self->isNavigationBarVisible();
}

bool QCalendarWidget_isGridVisible(const QCalendarWidget* self) {
	return self->isGridVisible();
}

QCalendar* QCalendarWidget_calendar(const QCalendarWidget* self) {
	return new QCalendar(self->calendar());
}

void QCalendarWidget_setCalendar(QCalendarWidget* self, QCalendar* calendar) {
	self->setCalendar(*calendar);
}

int QCalendarWidget_selectionMode(const QCalendarWidget* self) {
	QCalendarWidget::SelectionMode _ret = self->selectionMode();
	return static_cast<int>(_ret);
}

void QCalendarWidget_setSelectionMode(QCalendarWidget* self, int mode) {
	self->setSelectionMode(static_cast<QCalendarWidget::SelectionMode>(mode));
}

int QCalendarWidget_horizontalHeaderFormat(const QCalendarWidget* self) {
	QCalendarWidget::HorizontalHeaderFormat _ret = self->horizontalHeaderFormat();
	return static_cast<int>(_ret);
}

void QCalendarWidget_setHorizontalHeaderFormat(QCalendarWidget* self, int format) {
	self->setHorizontalHeaderFormat(static_cast<QCalendarWidget::HorizontalHeaderFormat>(format));
}

int QCalendarWidget_verticalHeaderFormat(const QCalendarWidget* self) {
	QCalendarWidget::VerticalHeaderFormat _ret = self->verticalHeaderFormat();
	return static_cast<int>(_ret);
}

void QCalendarWidget_setVerticalHeaderFormat(QCalendarWidget* self, int format) {
	self->setVerticalHeaderFormat(static_cast<QCalendarWidget::VerticalHeaderFormat>(format));
}

QTextCharFormat* QCalendarWidget_headerTextFormat(const QCalendarWidget* self) {
	return new QTextCharFormat(self->headerTextFormat());
}

void QCalendarWidget_setHeaderTextFormat(QCalendarWidget* self, QTextCharFormat* format) {
	self->setHeaderTextFormat(*format);
}

QTextCharFormat* QCalendarWidget_weekdayTextFormat(const QCalendarWidget* self, int dayOfWeek) {
	return new QTextCharFormat(self->weekdayTextFormat(static_cast<Qt::DayOfWeek>(dayOfWeek)));
}

void QCalendarWidget_setWeekdayTextFormat(QCalendarWidget* self, int dayOfWeek, QTextCharFormat* format) {
	self->setWeekdayTextFormat(static_cast<Qt::DayOfWeek>(dayOfWeek), *format);
}

struct miqt_map /* of QDate* to QTextCharFormat* */  QCalendarWidget_dateTextFormat(const QCalendarWidget* self) {
	QMap<QDate, QTextCharFormat> _ret = self->dateTextFormat();
	// Convert QMap<> from C++ memory to manually-managed C memory
	QDate** _karr = static_cast<QDate**>(malloc(sizeof(QDate*) * _ret.size()));
	QTextCharFormat** _varr = static_cast<QTextCharFormat**>(malloc(sizeof(QTextCharFormat*) * _ret.size()));
	int _ctr = 0;
	for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
		_karr[_ctr] = new QDate(_itr->first);
		_varr[_ctr] = new QTextCharFormat(_itr->second);
		_ctr++;
	}
	struct miqt_map _out;
	_out.len = _ret.size();
	_out.keys = static_cast<void*>(_karr);
	_out.values = static_cast<void*>(_varr);
	return _out;
}

QTextCharFormat* QCalendarWidget_dateTextFormatWithDate(const QCalendarWidget* self, QDate* date) {
	return new QTextCharFormat(self->dateTextFormat(*date));
}

void QCalendarWidget_setDateTextFormat(QCalendarWidget* self, QDate* date, QTextCharFormat* format) {
	self->setDateTextFormat(*date, *format);
}

bool QCalendarWidget_isDateEditEnabled(const QCalendarWidget* self) {
	return self->isDateEditEnabled();
}

void QCalendarWidget_setDateEditEnabled(QCalendarWidget* self, bool enable) {
	self->setDateEditEnabled(enable);
}

int QCalendarWidget_dateEditAcceptDelay(const QCalendarWidget* self) {
	return self->dateEditAcceptDelay();
}

void QCalendarWidget_setDateEditAcceptDelay(QCalendarWidget* self, int delay) {
	self->setDateEditAcceptDelay(static_cast<int>(delay));
}

void QCalendarWidget_setSelectedDate(QCalendarWidget* self, QDate* date) {
	self->setSelectedDate(*date);
}

void QCalendarWidget_setDateRange(QCalendarWidget* self, QDate* min, QDate* max) {
	self->setDateRange(*min, *max);
}

void QCalendarWidget_setCurrentPage(QCalendarWidget* self, int year, int month) {
	self->setCurrentPage(static_cast<int>(year), static_cast<int>(month));
}

void QCalendarWidget_setGridVisible(QCalendarWidget* self, bool show) {
	self->setGridVisible(show);
}

void QCalendarWidget_setNavigationBarVisible(QCalendarWidget* self, bool visible) {
	self->setNavigationBarVisible(visible);
}

void QCalendarWidget_showNextMonth(QCalendarWidget* self) {
	self->showNextMonth();
}

void QCalendarWidget_showPreviousMonth(QCalendarWidget* self) {
	self->showPreviousMonth();
}

void QCalendarWidget_showNextYear(QCalendarWidget* self) {
	self->showNextYear();
}

void QCalendarWidget_showPreviousYear(QCalendarWidget* self) {
	self->showPreviousYear();
}

void QCalendarWidget_showSelectedDate(QCalendarWidget* self) {
	self->showSelectedDate();
}

void QCalendarWidget_showToday(QCalendarWidget* self) {
	self->showToday();
}

void QCalendarWidget_selectionChanged(QCalendarWidget* self) {
	self->selectionChanged();
}

void QCalendarWidget_connect_selectionChanged(QCalendarWidget* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QCalendarWidget_selectionChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QCalendarWidget_selectionChanged_release(slot); }
	};
	MiqtVirtualQCalendarWidget::connect(self, static_cast<void (QCalendarWidget::*)()>(&QCalendarWidget::selectionChanged), self, caller{slot});
}

void QCalendarWidget_clicked(QCalendarWidget* self, QDate* date) {
	self->clicked(*date);
}

void QCalendarWidget_connect_clicked(QCalendarWidget* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QDate date) {
			QDate* sigval1 = new QDate(date);
			miqt_exec_callback_QCalendarWidget_clicked(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QCalendarWidget_clicked_release(slot); }
	};
	MiqtVirtualQCalendarWidget::connect(self, static_cast<void (QCalendarWidget::*)(QDate)>(&QCalendarWidget::clicked), self, caller{slot});
}

void QCalendarWidget_activated(QCalendarWidget* self, QDate* date) {
	self->activated(*date);
}

void QCalendarWidget_connect_activated(QCalendarWidget* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QDate date) {
			QDate* sigval1 = new QDate(date);
			miqt_exec_callback_QCalendarWidget_activated(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QCalendarWidget_activated_release(slot); }
	};
	MiqtVirtualQCalendarWidget::connect(self, static_cast<void (QCalendarWidget::*)(QDate)>(&QCalendarWidget::activated), self, caller{slot});
}

void QCalendarWidget_currentPageChanged(QCalendarWidget* self, int year, int month) {
	self->currentPageChanged(static_cast<int>(year), static_cast<int>(month));
}

void QCalendarWidget_connect_currentPageChanged(QCalendarWidget* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(int year, int month) {
			int sigval1 = year;
			int sigval2 = month;
			miqt_exec_callback_QCalendarWidget_currentPageChanged(slot, sigval1, sigval2);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QCalendarWidget_currentPageChanged_release(slot); }
	};
	MiqtVirtualQCalendarWidget::connect(self, static_cast<void (QCalendarWidget::*)(int, int)>(&QCalendarWidget::currentPageChanged), self, caller{slot});
}

struct miqt_string QCalendarWidget_tr2(const char* s, const char* c) {
	QString _ret = QCalendarWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QCalendarWidget_tr3(const char* s, const char* c, int n) {
	QString _ret = QCalendarWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QCalendarWidget_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQCalendarWidget*)(self) )->virtualbase_metaObject();
}

void* QCalendarWidget_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_metacast(param1);
}

int QCalendarWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QSize* QCalendarWidget_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQCalendarWidget*)(self) )->virtualbase_sizeHint();
}

QSize* QCalendarWidget_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQCalendarWidget*)(self) )->virtualbase_minimumSizeHint();
}

bool QCalendarWidget_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_event(event);
}

bool QCalendarWidget_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_eventFilter(watched, event);
}

void QCalendarWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_mousePressEvent(event);
}

void QCalendarWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_resizeEvent(event);
}

void QCalendarWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_keyPressEvent(event);
}

void QCalendarWidget_virtualbase_paintCell(const void* self, QPainter* painter, QRect* rect, QDate* date) {
	( (const MiqtVirtualQCalendarWidget*)(self) )->virtualbase_paintCell(painter, rect, date);
}

int QCalendarWidget_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQCalendarWidget*)(self) )->virtualbase_devType();
}

void QCalendarWidget_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_setVisible(visible);
}

int QCalendarWidget_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQCalendarWidget*)(self) )->virtualbase_heightForWidth(param1);
}

bool QCalendarWidget_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQCalendarWidget*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QCalendarWidget_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQCalendarWidget*)(self) )->virtualbase_paintEngine();
}

void QCalendarWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QCalendarWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QCalendarWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QCalendarWidget_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_wheelEvent(event);
}

void QCalendarWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QCalendarWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_focusInEvent(event);
}

void QCalendarWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_focusOutEvent(event);
}

void QCalendarWidget_virtualbase_enterEvent(void* self, QEnterEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_enterEvent(event);
}

void QCalendarWidget_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_leaveEvent(event);
}

void QCalendarWidget_virtualbase_paintEvent(void* self, QPaintEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_paintEvent(event);
}

void QCalendarWidget_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_moveEvent(event);
}

void QCalendarWidget_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_closeEvent(event);
}

void QCalendarWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_contextMenuEvent(event);
}

void QCalendarWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_tabletEvent(event);
}

void QCalendarWidget_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_actionEvent(event);
}

void QCalendarWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_dragEnterEvent(event);
}

void QCalendarWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_dragMoveEvent(event);
}

void QCalendarWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QCalendarWidget_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_dropEvent(event);
}

void QCalendarWidget_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_showEvent(event);
}

void QCalendarWidget_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_hideEvent(event);
}

bool QCalendarWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	return ( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

void QCalendarWidget_virtualbase_changeEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_changeEvent(param1);
}

int QCalendarWidget_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQCalendarWidget*)(self) )->virtualbase_metric(param1);
}

void QCalendarWidget_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQCalendarWidget*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QCalendarWidget_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQCalendarWidget*)(self) )->virtualbase_redirected(offset);
}

QPainter* QCalendarWidget_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQCalendarWidget*)(self) )->virtualbase_sharedPainter();
}

void QCalendarWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QCalendarWidget_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQCalendarWidget*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QCalendarWidget_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_focusNextPrevChild(next);
}

void QCalendarWidget_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_timerEvent(event);
}

void QCalendarWidget_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_childEvent(event);
}

void QCalendarWidget_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_customEvent(event);
}

void QCalendarWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_connectNotify(signal);
}

void QCalendarWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQCalendarWidget*)(self) )->virtualbase_disconnectNotify(signal);
}

void QCalendarWidget_protectedbase_updateCell(void* self, QDate* date) {
	( (MiqtVirtualQCalendarWidget*)(self) )->protectedbase_updateCell(date);
}

void QCalendarWidget_protectedbase_updateCells(void* self) {
	( (MiqtVirtualQCalendarWidget*)(self) )->protectedbase_updateCells();
}

void QCalendarWidget_protectedbase_updateMicroFocus(void* self) {
	( (MiqtVirtualQCalendarWidget*)(self) )->protectedbase_updateMicroFocus();
}

void QCalendarWidget_protectedbase_create(void* self) {
	( (MiqtVirtualQCalendarWidget*)(self) )->protectedbase_create();
}

void QCalendarWidget_protectedbase_destroy(void* self) {
	( (MiqtVirtualQCalendarWidget*)(self) )->protectedbase_destroy();
}

bool QCalendarWidget_protectedbase_focusNextChild(void* self) {
	return ( (MiqtVirtualQCalendarWidget*)(self) )->protectedbase_focusNextChild();
}

bool QCalendarWidget_protectedbase_focusPreviousChild(void* self) {
	return ( (MiqtVirtualQCalendarWidget*)(self) )->protectedbase_focusPreviousChild();
}

QObject* QCalendarWidget_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQCalendarWidget*)(self) )->protectedbase_sender();
}

int QCalendarWidget_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQCalendarWidget*)(self) )->protectedbase_senderSignalIndex();
}

int QCalendarWidget_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQCalendarWidget*)(self) )->protectedbase_receivers(signal);
}

bool QCalendarWidget_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQCalendarWidget*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QCalendarWidget_staticMetaObject() { return &QCalendarWidget::staticMetaObject; }
void QCalendarWidget_delete(QCalendarWidget* self) {
	delete self;
}

