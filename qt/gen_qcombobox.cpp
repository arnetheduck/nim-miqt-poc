#include <QAbstractItemDelegate>
#include <QAbstractItemModel>
#include <QAbstractItemView>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QComboBox>
#include <QCompleter>
#include <QContextMenuEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QIcon>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QLineEdit>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QModelIndex>
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
#include <QValidator>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qcombobox.h>
#include "gen_qcombobox.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QComboBox_editTextChanged(intptr_t, struct miqt_string);
void miqt_exec_callback_QComboBox_activated(intptr_t, int);
void miqt_exec_callback_QComboBox_textActivated(intptr_t, struct miqt_string);
void miqt_exec_callback_QComboBox_highlighted(intptr_t, int);
void miqt_exec_callback_QComboBox_textHighlighted(intptr_t, struct miqt_string);
void miqt_exec_callback_QComboBox_currentIndexChanged(intptr_t, int);
void miqt_exec_callback_QComboBox_currentIndexChangedWithQString(intptr_t, struct miqt_string);
void miqt_exec_callback_QComboBox_currentTextChanged(intptr_t, struct miqt_string);
void miqt_exec_callback_QComboBox_activatedWithQString(intptr_t, struct miqt_string);
void miqt_exec_callback_QComboBox_highlightedWithQString(intptr_t, struct miqt_string);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQComboBox final : public QComboBox {
	struct QComboBox_VTable* vtbl;
public:

	MiqtVirtualQComboBox(struct QComboBox_VTable* vtbl, QWidget* parent): QComboBox(parent), vtbl(vtbl) {};
	MiqtVirtualQComboBox(struct QComboBox_VTable* vtbl): QComboBox(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQComboBox() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QComboBox::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QComboBox::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QComboBox::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QComboBox::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QComboBox::qt_metacall(param1, param2, param3);
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

		return QComboBox::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QComboBox::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QComboBox::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QComboBox::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QComboBox::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual void showPopup() override {
		if (vtbl->showPopup == 0) {
			QComboBox::showPopup();
			return;
		}


		vtbl->showPopup(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showPopup() {

		QComboBox::showPopup();

	}

	// Subclass to allow providing a Go implementation
	virtual void hidePopup() override {
		if (vtbl->hidePopup == 0) {
			QComboBox::hidePopup();
			return;
		}


		vtbl->hidePopup(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hidePopup() {

		QComboBox::hidePopup();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QComboBox::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QComboBox::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QComboBox::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QComboBox::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* e) override {
		if (vtbl->focusInEvent == 0) {
			QComboBox::focusInEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* e) {

		QComboBox::focusInEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* e) override {
		if (vtbl->focusOutEvent == 0) {
			QComboBox::focusOutEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* e) {

		QComboBox::focusOutEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QComboBox::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* e) {

		QComboBox::changeEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* e) override {
		if (vtbl->resizeEvent == 0) {
			QComboBox::resizeEvent(e);
			return;
		}

		QResizeEvent* sigval1 = e;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* e) {

		QComboBox::resizeEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* e) override {
		if (vtbl->paintEvent == 0) {
			QComboBox::paintEvent(e);
			return;
		}

		QPaintEvent* sigval1 = e;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* e) {

		QComboBox::paintEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* e) override {
		if (vtbl->showEvent == 0) {
			QComboBox::showEvent(e);
			return;
		}

		QShowEvent* sigval1 = e;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* e) {

		QComboBox::showEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* e) override {
		if (vtbl->hideEvent == 0) {
			QComboBox::hideEvent(e);
			return;
		}

		QHideEvent* sigval1 = e;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* e) {

		QComboBox::hideEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* e) override {
		if (vtbl->mousePressEvent == 0) {
			QComboBox::mousePressEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* e) {

		QComboBox::mousePressEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QComboBox::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* e) {

		QComboBox::mouseReleaseEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* e) override {
		if (vtbl->keyPressEvent == 0) {
			QComboBox::keyPressEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* e) {

		QComboBox::keyPressEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* e) override {
		if (vtbl->keyReleaseEvent == 0) {
			QComboBox::keyReleaseEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* e) {

		QComboBox::keyReleaseEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* e) override {
		if (vtbl->wheelEvent == 0) {
			QComboBox::wheelEvent(e);
			return;
		}

		QWheelEvent* sigval1 = e;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* e) {

		QComboBox::wheelEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* e) override {
		if (vtbl->contextMenuEvent == 0) {
			QComboBox::contextMenuEvent(e);
			return;
		}

		QContextMenuEvent* sigval1 = e;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* e) {

		QComboBox::contextMenuEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QComboBox::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QComboBox::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QComboBox::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QComboBox::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QComboBox::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QComboBox::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QComboBox::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QComboBox::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QComboBox::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QComboBox::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QComboBox::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QComboBox::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QComboBox::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QComboBox::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QComboBox::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QComboBox::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QComboBox::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEvent* event) {

		QComboBox::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QComboBox::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QComboBox::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QComboBox::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QComboBox::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QComboBox::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QComboBox::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QComboBox::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QComboBox::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QComboBox::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QComboBox::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QComboBox::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QComboBox::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QComboBox::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QComboBox::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QComboBox::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QComboBox::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QComboBox::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QComboBox::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QComboBox::nativeEvent(eventType, message, result);
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

		return QComboBox::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QComboBox::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QComboBox::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QComboBox::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QComboBox::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QComboBox::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QComboBox::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QComboBox::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QComboBox::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QComboBox::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QComboBox::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QComboBox::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QComboBox::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QComboBox::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QComboBox::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QComboBox::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QComboBox::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QComboBox::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QComboBox::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QComboBox::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QComboBox::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QComboBox::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QComboBox::disconnectNotify(*signal);

	}

};

QComboBox* QComboBox_new(struct QComboBox_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQComboBox(vtbl, parent);
}

QComboBox* QComboBox_new2(struct QComboBox_VTable* vtbl) {
	return new MiqtVirtualQComboBox(vtbl);
}

void QComboBox_virtbase(QComboBox* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QComboBox_metaObject(const QComboBox* self) {
	return (QMetaObject*) self->metaObject();
}

void* QComboBox_metacast(QComboBox* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QComboBox_metacall(QComboBox* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QComboBox_tr(const char* s) {
	QString _ret = QComboBox::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QComboBox_trUtf8(const char* s) {
	QString _ret = QComboBox::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QComboBox_maxVisibleItems(const QComboBox* self) {
	return self->maxVisibleItems();
}

void QComboBox_setMaxVisibleItems(QComboBox* self, int maxItems) {
	self->setMaxVisibleItems(static_cast<int>(maxItems));
}

int QComboBox_count(const QComboBox* self) {
	return self->count();
}

void QComboBox_setMaxCount(QComboBox* self, int max) {
	self->setMaxCount(static_cast<int>(max));
}

int QComboBox_maxCount(const QComboBox* self) {
	return self->maxCount();
}

bool QComboBox_autoCompletion(const QComboBox* self) {
	return self->autoCompletion();
}

void QComboBox_setAutoCompletion(QComboBox* self, bool enable) {
	self->setAutoCompletion(enable);
}

int QComboBox_autoCompletionCaseSensitivity(const QComboBox* self) {
	Qt::CaseSensitivity _ret = self->autoCompletionCaseSensitivity();
	return static_cast<int>(_ret);
}

void QComboBox_setAutoCompletionCaseSensitivity(QComboBox* self, int sensitivity) {
	self->setAutoCompletionCaseSensitivity(static_cast<Qt::CaseSensitivity>(sensitivity));
}

bool QComboBox_duplicatesEnabled(const QComboBox* self) {
	return self->duplicatesEnabled();
}

void QComboBox_setDuplicatesEnabled(QComboBox* self, bool enable) {
	self->setDuplicatesEnabled(enable);
}

void QComboBox_setFrame(QComboBox* self, bool frame) {
	self->setFrame(frame);
}

bool QComboBox_hasFrame(const QComboBox* self) {
	return self->hasFrame();
}

int QComboBox_findText(const QComboBox* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->findText(text_QString);
}

int QComboBox_findData(const QComboBox* self, QVariant* data) {
	return self->findData(*data);
}

int QComboBox_insertPolicy(const QComboBox* self) {
	QComboBox::InsertPolicy _ret = self->insertPolicy();
	return static_cast<int>(_ret);
}

void QComboBox_setInsertPolicy(QComboBox* self, int policy) {
	self->setInsertPolicy(static_cast<QComboBox::InsertPolicy>(policy));
}

int QComboBox_sizeAdjustPolicy(const QComboBox* self) {
	QComboBox::SizeAdjustPolicy _ret = self->sizeAdjustPolicy();
	return static_cast<int>(_ret);
}

void QComboBox_setSizeAdjustPolicy(QComboBox* self, int policy) {
	self->setSizeAdjustPolicy(static_cast<QComboBox::SizeAdjustPolicy>(policy));
}

int QComboBox_minimumContentsLength(const QComboBox* self) {
	return self->minimumContentsLength();
}

void QComboBox_setMinimumContentsLength(QComboBox* self, int characters) {
	self->setMinimumContentsLength(static_cast<int>(characters));
}

QSize* QComboBox_iconSize(const QComboBox* self) {
	return new QSize(self->iconSize());
}

void QComboBox_setIconSize(QComboBox* self, QSize* size) {
	self->setIconSize(*size);
}

void QComboBox_setPlaceholderText(QComboBox* self, struct miqt_string placeholderText) {
	QString placeholderText_QString = QString::fromUtf8(placeholderText.data, placeholderText.len);
	self->setPlaceholderText(placeholderText_QString);
}

struct miqt_string QComboBox_placeholderText(const QComboBox* self) {
	QString _ret = self->placeholderText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QComboBox_isEditable(const QComboBox* self) {
	return self->isEditable();
}

void QComboBox_setEditable(QComboBox* self, bool editable) {
	self->setEditable(editable);
}

void QComboBox_setLineEdit(QComboBox* self, QLineEdit* edit) {
	self->setLineEdit(edit);
}

QLineEdit* QComboBox_lineEdit(const QComboBox* self) {
	return self->lineEdit();
}

void QComboBox_setValidator(QComboBox* self, QValidator* v) {
	self->setValidator(v);
}

QValidator* QComboBox_validator(const QComboBox* self) {
	return (QValidator*) self->validator();
}

void QComboBox_setCompleter(QComboBox* self, QCompleter* c) {
	self->setCompleter(c);
}

QCompleter* QComboBox_completer(const QComboBox* self) {
	return self->completer();
}

QAbstractItemDelegate* QComboBox_itemDelegate(const QComboBox* self) {
	return self->itemDelegate();
}

void QComboBox_setItemDelegate(QComboBox* self, QAbstractItemDelegate* delegate) {
	self->setItemDelegate(delegate);
}

QAbstractItemModel* QComboBox_model(const QComboBox* self) {
	return self->model();
}

void QComboBox_setModel(QComboBox* self, QAbstractItemModel* model) {
	self->setModel(model);
}

QModelIndex* QComboBox_rootModelIndex(const QComboBox* self) {
	return new QModelIndex(self->rootModelIndex());
}

void QComboBox_setRootModelIndex(QComboBox* self, QModelIndex* index) {
	self->setRootModelIndex(*index);
}

int QComboBox_modelColumn(const QComboBox* self) {
	return self->modelColumn();
}

void QComboBox_setModelColumn(QComboBox* self, int visibleColumn) {
	self->setModelColumn(static_cast<int>(visibleColumn));
}

int QComboBox_currentIndex(const QComboBox* self) {
	return self->currentIndex();
}

struct miqt_string QComboBox_currentText(const QComboBox* self) {
	QString _ret = self->currentText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QVariant* QComboBox_currentData(const QComboBox* self) {
	return new QVariant(self->currentData());
}

struct miqt_string QComboBox_itemText(const QComboBox* self, int index) {
	QString _ret = self->itemText(static_cast<int>(index));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QIcon* QComboBox_itemIcon(const QComboBox* self, int index) {
	return new QIcon(self->itemIcon(static_cast<int>(index)));
}

QVariant* QComboBox_itemData(const QComboBox* self, int index) {
	return new QVariant(self->itemData(static_cast<int>(index)));
}

void QComboBox_addItem(QComboBox* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->addItem(text_QString);
}

void QComboBox_addItem2(QComboBox* self, QIcon* icon, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->addItem(*icon, text_QString);
}

void QComboBox_addItems(QComboBox* self, struct miqt_array /* of struct miqt_string */  texts) {
	QStringList texts_QList;
	texts_QList.reserve(texts.len);
	struct miqt_string* texts_arr = static_cast<struct miqt_string*>(texts.data);
	for(size_t i = 0; i < texts.len; ++i) {
		QString texts_arr_i_QString = QString::fromUtf8(texts_arr[i].data, texts_arr[i].len);
		texts_QList.push_back(texts_arr_i_QString);
	}
	self->addItems(texts_QList);
}

void QComboBox_insertItem(QComboBox* self, int index, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->insertItem(static_cast<int>(index), text_QString);
}

void QComboBox_insertItem2(QComboBox* self, int index, QIcon* icon, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->insertItem(static_cast<int>(index), *icon, text_QString);
}

void QComboBox_insertItems(QComboBox* self, int index, struct miqt_array /* of struct miqt_string */  texts) {
	QStringList texts_QList;
	texts_QList.reserve(texts.len);
	struct miqt_string* texts_arr = static_cast<struct miqt_string*>(texts.data);
	for(size_t i = 0; i < texts.len; ++i) {
		QString texts_arr_i_QString = QString::fromUtf8(texts_arr[i].data, texts_arr[i].len);
		texts_QList.push_back(texts_arr_i_QString);
	}
	self->insertItems(static_cast<int>(index), texts_QList);
}

void QComboBox_insertSeparator(QComboBox* self, int index) {
	self->insertSeparator(static_cast<int>(index));
}

void QComboBox_removeItem(QComboBox* self, int index) {
	self->removeItem(static_cast<int>(index));
}

void QComboBox_setItemText(QComboBox* self, int index, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setItemText(static_cast<int>(index), text_QString);
}

void QComboBox_setItemIcon(QComboBox* self, int index, QIcon* icon) {
	self->setItemIcon(static_cast<int>(index), *icon);
}

void QComboBox_setItemData(QComboBox* self, int index, QVariant* value) {
	self->setItemData(static_cast<int>(index), *value);
}

QAbstractItemView* QComboBox_view(const QComboBox* self) {
	return self->view();
}

void QComboBox_setView(QComboBox* self, QAbstractItemView* itemView) {
	self->setView(itemView);
}

QSize* QComboBox_sizeHint(const QComboBox* self) {
	return new QSize(self->sizeHint());
}

QSize* QComboBox_minimumSizeHint(const QComboBox* self) {
	return new QSize(self->minimumSizeHint());
}

void QComboBox_showPopup(QComboBox* self) {
	self->showPopup();
}

void QComboBox_hidePopup(QComboBox* self) {
	self->hidePopup();
}

bool QComboBox_event(QComboBox* self, QEvent* event) {
	return self->event(event);
}

QVariant* QComboBox_inputMethodQuery(const QComboBox* self, int param1) {
	return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

QVariant* QComboBox_inputMethodQuery2(const QComboBox* self, int query, QVariant* argument) {
	return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(query), *argument));
}

void QComboBox_clear(QComboBox* self) {
	self->clear();
}

void QComboBox_clearEditText(QComboBox* self) {
	self->clearEditText();
}

void QComboBox_setEditText(QComboBox* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setEditText(text_QString);
}

void QComboBox_setCurrentIndex(QComboBox* self, int index) {
	self->setCurrentIndex(static_cast<int>(index));
}

void QComboBox_setCurrentText(QComboBox* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setCurrentText(text_QString);
}

void QComboBox_editTextChanged(QComboBox* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->editTextChanged(param1_QString);
}

void QComboBox_connect_editTextChanged(QComboBox* self, intptr_t slot) {
	MiqtVirtualQComboBox::connect(self, static_cast<void (QComboBox::*)(const QString&)>(&QComboBox::editTextChanged), self, [=](const QString& param1) {
		const QString param1_ret = param1;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray param1_b = param1_ret.toUtf8();
		struct miqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct miqt_string sigval1 = param1_ms;
		miqt_exec_callback_QComboBox_editTextChanged(slot, sigval1);
	});
}

void QComboBox_activated(QComboBox* self, int index) {
	self->activated(static_cast<int>(index));
}

void QComboBox_connect_activated(QComboBox* self, intptr_t slot) {
	MiqtVirtualQComboBox::connect(self, static_cast<void (QComboBox::*)(int)>(&QComboBox::activated), self, [=](int index) {
		int sigval1 = index;
		miqt_exec_callback_QComboBox_activated(slot, sigval1);
	});
}

void QComboBox_textActivated(QComboBox* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->textActivated(param1_QString);
}

void QComboBox_connect_textActivated(QComboBox* self, intptr_t slot) {
	MiqtVirtualQComboBox::connect(self, static_cast<void (QComboBox::*)(const QString&)>(&QComboBox::textActivated), self, [=](const QString& param1) {
		const QString param1_ret = param1;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray param1_b = param1_ret.toUtf8();
		struct miqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct miqt_string sigval1 = param1_ms;
		miqt_exec_callback_QComboBox_textActivated(slot, sigval1);
	});
}

void QComboBox_highlighted(QComboBox* self, int index) {
	self->highlighted(static_cast<int>(index));
}

void QComboBox_connect_highlighted(QComboBox* self, intptr_t slot) {
	MiqtVirtualQComboBox::connect(self, static_cast<void (QComboBox::*)(int)>(&QComboBox::highlighted), self, [=](int index) {
		int sigval1 = index;
		miqt_exec_callback_QComboBox_highlighted(slot, sigval1);
	});
}

void QComboBox_textHighlighted(QComboBox* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->textHighlighted(param1_QString);
}

void QComboBox_connect_textHighlighted(QComboBox* self, intptr_t slot) {
	MiqtVirtualQComboBox::connect(self, static_cast<void (QComboBox::*)(const QString&)>(&QComboBox::textHighlighted), self, [=](const QString& param1) {
		const QString param1_ret = param1;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray param1_b = param1_ret.toUtf8();
		struct miqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct miqt_string sigval1 = param1_ms;
		miqt_exec_callback_QComboBox_textHighlighted(slot, sigval1);
	});
}

void QComboBox_currentIndexChanged(QComboBox* self, int index) {
	self->currentIndexChanged(static_cast<int>(index));
}

void QComboBox_connect_currentIndexChanged(QComboBox* self, intptr_t slot) {
	MiqtVirtualQComboBox::connect(self, static_cast<void (QComboBox::*)(int)>(&QComboBox::currentIndexChanged), self, [=](int index) {
		int sigval1 = index;
		miqt_exec_callback_QComboBox_currentIndexChanged(slot, sigval1);
	});
}

void QComboBox_currentIndexChangedWithQString(QComboBox* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->currentIndexChanged(param1_QString);
}

void QComboBox_connect_currentIndexChangedWithQString(QComboBox* self, intptr_t slot) {
	MiqtVirtualQComboBox::connect(self, static_cast<void (QComboBox::*)(const QString&)>(&QComboBox::currentIndexChanged), self, [=](const QString& param1) {
		const QString param1_ret = param1;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray param1_b = param1_ret.toUtf8();
		struct miqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct miqt_string sigval1 = param1_ms;
		miqt_exec_callback_QComboBox_currentIndexChangedWithQString(slot, sigval1);
	});
}

void QComboBox_currentTextChanged(QComboBox* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->currentTextChanged(param1_QString);
}

void QComboBox_connect_currentTextChanged(QComboBox* self, intptr_t slot) {
	MiqtVirtualQComboBox::connect(self, static_cast<void (QComboBox::*)(const QString&)>(&QComboBox::currentTextChanged), self, [=](const QString& param1) {
		const QString param1_ret = param1;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray param1_b = param1_ret.toUtf8();
		struct miqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct miqt_string sigval1 = param1_ms;
		miqt_exec_callback_QComboBox_currentTextChanged(slot, sigval1);
	});
}

void QComboBox_activatedWithQString(QComboBox* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->activated(param1_QString);
}

void QComboBox_connect_activatedWithQString(QComboBox* self, intptr_t slot) {
	MiqtVirtualQComboBox::connect(self, static_cast<void (QComboBox::*)(const QString&)>(&QComboBox::activated), self, [=](const QString& param1) {
		const QString param1_ret = param1;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray param1_b = param1_ret.toUtf8();
		struct miqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct miqt_string sigval1 = param1_ms;
		miqt_exec_callback_QComboBox_activatedWithQString(slot, sigval1);
	});
}

void QComboBox_highlightedWithQString(QComboBox* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->highlighted(param1_QString);
}

void QComboBox_connect_highlightedWithQString(QComboBox* self, intptr_t slot) {
	MiqtVirtualQComboBox::connect(self, static_cast<void (QComboBox::*)(const QString&)>(&QComboBox::highlighted), self, [=](const QString& param1) {
		const QString param1_ret = param1;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray param1_b = param1_ret.toUtf8();
		struct miqt_string param1_ms;
		param1_ms.len = param1_b.length();
		param1_ms.data = static_cast<char*>(malloc(param1_ms.len));
		memcpy(param1_ms.data, param1_b.data(), param1_ms.len);
		struct miqt_string sigval1 = param1_ms;
		miqt_exec_callback_QComboBox_highlightedWithQString(slot, sigval1);
	});
}

struct miqt_string QComboBox_tr2(const char* s, const char* c) {
	QString _ret = QComboBox::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QComboBox_tr3(const char* s, const char* c, int n) {
	QString _ret = QComboBox::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QComboBox_trUtf82(const char* s, const char* c) {
	QString _ret = QComboBox::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QComboBox_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QComboBox::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QComboBox_findText2(const QComboBox* self, struct miqt_string text, int flags) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	return self->findText(text_QString, static_cast<Qt::MatchFlags>(flags));
}

int QComboBox_findData2(const QComboBox* self, QVariant* data, int role) {
	return self->findData(*data, static_cast<int>(role));
}

int QComboBox_findData3(const QComboBox* self, QVariant* data, int role, int flags) {
	return self->findData(*data, static_cast<int>(role), static_cast<Qt::MatchFlags>(flags));
}

QVariant* QComboBox_currentData1(const QComboBox* self, int role) {
	return new QVariant(self->currentData(static_cast<int>(role)));
}

QVariant* QComboBox_itemData2(const QComboBox* self, int index, int role) {
	return new QVariant(self->itemData(static_cast<int>(index), static_cast<int>(role)));
}

void QComboBox_addItem22(QComboBox* self, struct miqt_string text, QVariant* userData) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->addItem(text_QString, *userData);
}

void QComboBox_addItem3(QComboBox* self, QIcon* icon, struct miqt_string text, QVariant* userData) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->addItem(*icon, text_QString, *userData);
}

void QComboBox_insertItem3(QComboBox* self, int index, struct miqt_string text, QVariant* userData) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->insertItem(static_cast<int>(index), text_QString, *userData);
}

void QComboBox_insertItem4(QComboBox* self, int index, QIcon* icon, struct miqt_string text, QVariant* userData) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->insertItem(static_cast<int>(index), *icon, text_QString, *userData);
}

void QComboBox_setItemData3(QComboBox* self, int index, QVariant* value, int role) {
	self->setItemData(static_cast<int>(index), *value, static_cast<int>(role));
}

QMetaObject* QComboBox_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQComboBox*)(self) )->virtualbase_metaObject();
}

void* QComboBox_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQComboBox*)(self) )->virtualbase_metacast(param1);
}

int QComboBox_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQComboBox*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QSize* QComboBox_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQComboBox*)(self) )->virtualbase_sizeHint();
}

QSize* QComboBox_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQComboBox*)(self) )->virtualbase_minimumSizeHint();
}

void QComboBox_virtualbase_showPopup(void* self) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_showPopup();
}

void QComboBox_virtualbase_hidePopup(void* self) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_hidePopup();
}

bool QComboBox_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQComboBox*)(self) )->virtualbase_event(event);
}

QVariant* QComboBox_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQComboBox*)(self) )->virtualbase_inputMethodQuery(param1);
}

void QComboBox_virtualbase_focusInEvent(void* self, QFocusEvent* e) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_focusInEvent(e);
}

void QComboBox_virtualbase_focusOutEvent(void* self, QFocusEvent* e) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_focusOutEvent(e);
}

void QComboBox_virtualbase_changeEvent(void* self, QEvent* e) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_changeEvent(e);
}

void QComboBox_virtualbase_resizeEvent(void* self, QResizeEvent* e) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_resizeEvent(e);
}

void QComboBox_virtualbase_paintEvent(void* self, QPaintEvent* e) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_paintEvent(e);
}

void QComboBox_virtualbase_showEvent(void* self, QShowEvent* e) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_showEvent(e);
}

void QComboBox_virtualbase_hideEvent(void* self, QHideEvent* e) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_hideEvent(e);
}

void QComboBox_virtualbase_mousePressEvent(void* self, QMouseEvent* e) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_mousePressEvent(e);
}

void QComboBox_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_mouseReleaseEvent(e);
}

void QComboBox_virtualbase_keyPressEvent(void* self, QKeyEvent* e) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_keyPressEvent(e);
}

void QComboBox_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_keyReleaseEvent(e);
}

void QComboBox_virtualbase_wheelEvent(void* self, QWheelEvent* e) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_wheelEvent(e);
}

void QComboBox_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* e) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_contextMenuEvent(e);
}

void QComboBox_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_inputMethodEvent(param1);
}

int QComboBox_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQComboBox*)(self) )->virtualbase_devType();
}

void QComboBox_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_setVisible(visible);
}

int QComboBox_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQComboBox*)(self) )->virtualbase_heightForWidth(param1);
}

bool QComboBox_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQComboBox*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QComboBox_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQComboBox*)(self) )->virtualbase_paintEngine();
}

void QComboBox_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QComboBox_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QComboBox_virtualbase_enterEvent(void* self, QEvent* event) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_enterEvent(event);
}

void QComboBox_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_leaveEvent(event);
}

void QComboBox_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_moveEvent(event);
}

void QComboBox_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_closeEvent(event);
}

void QComboBox_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_tabletEvent(event);
}

void QComboBox_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_actionEvent(event);
}

void QComboBox_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_dragEnterEvent(event);
}

void QComboBox_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_dragMoveEvent(event);
}

void QComboBox_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QComboBox_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_dropEvent(event);
}

bool QComboBox_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	return ( (MiqtVirtualQComboBox*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

int QComboBox_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQComboBox*)(self) )->virtualbase_metric(param1);
}

void QComboBox_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQComboBox*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QComboBox_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQComboBox*)(self) )->virtualbase_redirected(offset);
}

QPainter* QComboBox_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQComboBox*)(self) )->virtualbase_sharedPainter();
}

bool QComboBox_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQComboBox*)(self) )->virtualbase_focusNextPrevChild(next);
}

bool QComboBox_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQComboBox*)(self) )->virtualbase_eventFilter(watched, event);
}

void QComboBox_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_timerEvent(event);
}

void QComboBox_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_childEvent(event);
}

void QComboBox_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_customEvent(event);
}

void QComboBox_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_connectNotify(signal);
}

void QComboBox_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQComboBox*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QComboBox_staticMetaObject() { return &QComboBox::staticMetaObject; }
void QComboBox_delete(QComboBox* self) {
	delete self;
}

