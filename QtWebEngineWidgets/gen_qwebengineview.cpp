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
#include <QPageLayout>
#include <QPageRanges>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPoint>
#include <QPrinter>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QUrl>
#include <QVariant>
#include <QWebEngineContextMenuRequest>
#include <QWebEngineHistory>
#include <QWebEngineHttpRequest>
#include <QWebEnginePage>
#include <QWebEngineProfile>
#include <QWebEngineSettings>
#include <QWebEngineView>
#include <QWheelEvent>
#include <QWidget>
#include <qwebengineview.h>
#include "gen_qwebengineview.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QWebEngineView_loadStarted(intptr_t);
void miqt_exec_callback_QWebEngineView_loadStarted_release(intptr_t);
void miqt_exec_callback_QWebEngineView_loadProgress(intptr_t, int);
void miqt_exec_callback_QWebEngineView_loadProgress_release(intptr_t);
void miqt_exec_callback_QWebEngineView_loadFinished(intptr_t, bool);
void miqt_exec_callback_QWebEngineView_loadFinished_release(intptr_t);
void miqt_exec_callback_QWebEngineView_titleChanged(intptr_t, struct miqt_string);
void miqt_exec_callback_QWebEngineView_titleChanged_release(intptr_t);
void miqt_exec_callback_QWebEngineView_selectionChanged(intptr_t);
void miqt_exec_callback_QWebEngineView_selectionChanged_release(intptr_t);
void miqt_exec_callback_QWebEngineView_urlChanged(intptr_t, QUrl*);
void miqt_exec_callback_QWebEngineView_urlChanged_release(intptr_t);
void miqt_exec_callback_QWebEngineView_iconUrlChanged(intptr_t, QUrl*);
void miqt_exec_callback_QWebEngineView_iconUrlChanged_release(intptr_t);
void miqt_exec_callback_QWebEngineView_iconChanged(intptr_t, QIcon*);
void miqt_exec_callback_QWebEngineView_iconChanged_release(intptr_t);
void miqt_exec_callback_QWebEngineView_renderProcessTerminated(intptr_t, int, int);
void miqt_exec_callback_QWebEngineView_renderProcessTerminated_release(intptr_t);
void miqt_exec_callback_QWebEngineView_pdfPrintingFinished(intptr_t, struct miqt_string, bool);
void miqt_exec_callback_QWebEngineView_pdfPrintingFinished_release(intptr_t);
void miqt_exec_callback_QWebEngineView_printRequested(intptr_t);
void miqt_exec_callback_QWebEngineView_printRequested_release(intptr_t);
void miqt_exec_callback_QWebEngineView_printFinished(intptr_t, bool);
void miqt_exec_callback_QWebEngineView_printFinished_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQWebEngineView final : public QWebEngineView {
	struct QWebEngineView_VTable* vtbl;
public:

	MiqtVirtualQWebEngineView(struct QWebEngineView_VTable* vtbl, QWidget* parent): QWebEngineView(parent), vtbl(vtbl) {};
	MiqtVirtualQWebEngineView(struct QWebEngineView_VTable* vtbl): QWebEngineView(), vtbl(vtbl) {};
	MiqtVirtualQWebEngineView(struct QWebEngineView_VTable* vtbl, QWebEngineProfile* profile): QWebEngineView(profile), vtbl(vtbl) {};
	MiqtVirtualQWebEngineView(struct QWebEngineView_VTable* vtbl, QWebEnginePage* page): QWebEngineView(page), vtbl(vtbl) {};
	MiqtVirtualQWebEngineView(struct QWebEngineView_VTable* vtbl, QWebEngineProfile* profile, QWidget* parent): QWebEngineView(profile, parent), vtbl(vtbl) {};
	MiqtVirtualQWebEngineView(struct QWebEngineView_VTable* vtbl, QWebEnginePage* page, QWidget* parent): QWebEngineView(page, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQWebEngineView() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWebEngineView::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QWebEngineView::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWebEngineView::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QWebEngineView::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWebEngineView::qt_metacall(param1, param2, param3);
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

		return QWebEngineView::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QWebEngineView::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QWebEngineView::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QWebEngineView* createWindow(QWebEnginePage::WebWindowType type) override {
		if (vtbl->createWindow == 0) {
			return QWebEngineView::createWindow(type);
		}

		QWebEnginePage::WebWindowType type_ret = type;
		int sigval1 = static_cast<int>(type_ret);

		QWebEngineView* callback_return_value = vtbl->createWindow(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QWebEngineView* virtualbase_createWindow(int type) {

		return QWebEngineView::createWindow(static_cast<QWebEnginePage::WebWindowType>(type));

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QWebEngineView::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* param1) {

		QWebEngineView::contextMenuEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QWebEngineView::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* param1) {

		return QWebEngineView::event(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QWebEngineView::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* param1) {

		QWebEngineView::showEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* param1) override {
		if (vtbl->hideEvent == 0) {
			QWebEngineView::hideEvent(param1);
			return;
		}

		QHideEvent* sigval1 = param1;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* param1) {

		QWebEngineView::hideEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* param1) override {
		if (vtbl->closeEvent == 0) {
			QWebEngineView::closeEvent(param1);
			return;
		}

		QCloseEvent* sigval1 = param1;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* param1) {

		QWebEngineView::closeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* e) override {
		if (vtbl->dragEnterEvent == 0) {
			QWebEngineView::dragEnterEvent(e);
			return;
		}

		QDragEnterEvent* sigval1 = e;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* e) {

		QWebEngineView::dragEnterEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* e) override {
		if (vtbl->dragLeaveEvent == 0) {
			QWebEngineView::dragLeaveEvent(e);
			return;
		}

		QDragLeaveEvent* sigval1 = e;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* e) {

		QWebEngineView::dragLeaveEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* e) override {
		if (vtbl->dragMoveEvent == 0) {
			QWebEngineView::dragMoveEvent(e);
			return;
		}

		QDragMoveEvent* sigval1 = e;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* e) {

		QWebEngineView::dragMoveEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* e) override {
		if (vtbl->dropEvent == 0) {
			QWebEngineView::dropEvent(e);
			return;
		}

		QDropEvent* sigval1 = e;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* e) {

		QWebEngineView::dropEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QWebEngineView::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QWebEngineView::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QWebEngineView::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QWebEngineView::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QWebEngineView::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QWebEngineView::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QWebEngineView::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QWebEngineView::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QWebEngineView::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QWebEngineView::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QWebEngineView::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QWebEngineView::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QWebEngineView::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QWebEngineView::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QWebEngineView::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QWebEngineView::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QWebEngineView::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QWebEngineView::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QWebEngineView::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QWebEngineView::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QWebEngineView::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* event) {

		QWebEngineView::wheelEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QWebEngineView::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QWebEngineView::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QWebEngineView::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QWebEngineView::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QWebEngineView::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QWebEngineView::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QWebEngineView::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QWebEngineView::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QWebEngineView::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEnterEvent* event) {

		QWebEngineView::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QWebEngineView::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QWebEngineView::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QWebEngineView::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* event) {

		QWebEngineView::paintEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QWebEngineView::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QWebEngineView::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QWebEngineView::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* event) {

		QWebEngineView::resizeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QWebEngineView::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QWebEngineView::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QWebEngineView::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QWebEngineView::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QWebEngineView::nativeEvent(eventType, message, result);
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

		return QWebEngineView::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QWebEngineView::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* param1) {

		QWebEngineView::changeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QWebEngineView::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QWebEngineView::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QWebEngineView::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QWebEngineView::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QWebEngineView::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QWebEngineView::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QWebEngineView::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QWebEngineView::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QWebEngineView::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QWebEngineView::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QWebEngineView::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int param1) const {

		return new QVariant(QWebEngineView::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QWebEngineView::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QWebEngineView::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWebEngineView::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QWebEngineView::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWebEngineView::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QWebEngineView::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWebEngineView::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QWebEngineView::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWebEngineView::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QWebEngineView::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWebEngineView::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QWebEngineView::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWebEngineView::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QWebEngineView::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QWebEngineView_protectedbase_updateMicroFocus(void* self);
	friend void QWebEngineView_protectedbase_create(void* self);
	friend void QWebEngineView_protectedbase_destroy(void* self);
	friend bool QWebEngineView_protectedbase_focusNextChild(void* self);
	friend bool QWebEngineView_protectedbase_focusPreviousChild(void* self);
	friend QObject* QWebEngineView_protectedbase_sender(const void* self);
	friend int QWebEngineView_protectedbase_senderSignalIndex(const void* self);
	friend int QWebEngineView_protectedbase_receivers(const void* self, const char* signal);
	friend bool QWebEngineView_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QWebEngineView* QWebEngineView_new(struct QWebEngineView_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQWebEngineView(vtbl, parent);
}

QWebEngineView* QWebEngineView_new2(struct QWebEngineView_VTable* vtbl) {
	return new MiqtVirtualQWebEngineView(vtbl);
}

QWebEngineView* QWebEngineView_new3(struct QWebEngineView_VTable* vtbl, QWebEngineProfile* profile) {
	return new MiqtVirtualQWebEngineView(vtbl, profile);
}

QWebEngineView* QWebEngineView_new4(struct QWebEngineView_VTable* vtbl, QWebEnginePage* page) {
	return new MiqtVirtualQWebEngineView(vtbl, page);
}

QWebEngineView* QWebEngineView_new5(struct QWebEngineView_VTable* vtbl, QWebEngineProfile* profile, QWidget* parent) {
	return new MiqtVirtualQWebEngineView(vtbl, profile, parent);
}

QWebEngineView* QWebEngineView_new6(struct QWebEngineView_VTable* vtbl, QWebEnginePage* page, QWidget* parent) {
	return new MiqtVirtualQWebEngineView(vtbl, page, parent);
}

void QWebEngineView_virtbase(QWebEngineView* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QWebEngineView_metaObject(const QWebEngineView* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebEngineView_metacast(QWebEngineView* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebEngineView_metacall(QWebEngineView* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWebEngineView_tr(const char* s) {
	QString _ret = QWebEngineView::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWebEngineView* QWebEngineView_forPage(QWebEnginePage* page) {
	return QWebEngineView::forPage(page);
}

QWebEnginePage* QWebEngineView_page(const QWebEngineView* self) {
	return self->page();
}

void QWebEngineView_setPage(QWebEngineView* self, QWebEnginePage* page) {
	self->setPage(page);
}

void QWebEngineView_load(QWebEngineView* self, QUrl* url) {
	self->load(*url);
}

void QWebEngineView_loadWithRequest(QWebEngineView* self, QWebEngineHttpRequest* request) {
	self->load(*request);
}

void QWebEngineView_setHtml(QWebEngineView* self, struct miqt_string html) {
	QString html_QString = QString::fromUtf8(html.data, html.len);
	self->setHtml(html_QString);
}

void QWebEngineView_setContent(QWebEngineView* self, struct miqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	self->setContent(data_QByteArray);
}

QWebEngineHistory* QWebEngineView_history(const QWebEngineView* self) {
	return self->history();
}

struct miqt_string QWebEngineView_title(const QWebEngineView* self) {
	QString _ret = self->title();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebEngineView_setUrl(QWebEngineView* self, QUrl* url) {
	self->setUrl(*url);
}

QUrl* QWebEngineView_url(const QWebEngineView* self) {
	return new QUrl(self->url());
}

QUrl* QWebEngineView_iconUrl(const QWebEngineView* self) {
	return new QUrl(self->iconUrl());
}

QIcon* QWebEngineView_icon(const QWebEngineView* self) {
	return new QIcon(self->icon());
}

bool QWebEngineView_hasSelection(const QWebEngineView* self) {
	return self->hasSelection();
}

struct miqt_string QWebEngineView_selectedText(const QWebEngineView* self) {
	QString _ret = self->selectedText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebEngineView_triggerPageAction(QWebEngineView* self, int action) {
	self->triggerPageAction(static_cast<QWebEnginePage::WebAction>(action));
}

double QWebEngineView_zoomFactor(const QWebEngineView* self) {
	qreal _ret = self->zoomFactor();
	return static_cast<double>(_ret);
}

void QWebEngineView_setZoomFactor(QWebEngineView* self, double factor) {
	self->setZoomFactor(static_cast<qreal>(factor));
}

QSize* QWebEngineView_sizeHint(const QWebEngineView* self) {
	return new QSize(self->sizeHint());
}

QWebEngineSettings* QWebEngineView_settings(const QWebEngineView* self) {
	return self->settings();
}

QMenu* QWebEngineView_createStandardContextMenu(QWebEngineView* self) {
	return self->createStandardContextMenu();
}

QWebEngineContextMenuRequest* QWebEngineView_lastContextMenuRequest(const QWebEngineView* self) {
	return self->lastContextMenuRequest();
}

void QWebEngineView_printToPdf(QWebEngineView* self, struct miqt_string filePath) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	self->printToPdf(filePath_QString);
}

void QWebEngineView_print(QWebEngineView* self, QPrinter* printer) {
	self->print(printer);
}

void QWebEngineView_stop(QWebEngineView* self) {
	self->stop();
}

void QWebEngineView_back(QWebEngineView* self) {
	self->back();
}

void QWebEngineView_forward(QWebEngineView* self) {
	self->forward();
}

void QWebEngineView_reload(QWebEngineView* self) {
	self->reload();
}

void QWebEngineView_loadStarted(QWebEngineView* self) {
	self->loadStarted();
}

void QWebEngineView_connect_loadStarted(QWebEngineView* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QWebEngineView_loadStarted(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QWebEngineView_loadStarted_release(slot); }
	};
	MiqtVirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)()>(&QWebEngineView::loadStarted), self, caller{slot});
}

void QWebEngineView_loadProgress(QWebEngineView* self, int progress) {
	self->loadProgress(static_cast<int>(progress));
}

void QWebEngineView_connect_loadProgress(QWebEngineView* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(int progress) {
			int sigval1 = progress;
			miqt_exec_callback_QWebEngineView_loadProgress(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QWebEngineView_loadProgress_release(slot); }
	};
	MiqtVirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)(int)>(&QWebEngineView::loadProgress), self, caller{slot});
}

void QWebEngineView_loadFinished(QWebEngineView* self, bool param1) {
	self->loadFinished(param1);
}

void QWebEngineView_connect_loadFinished(QWebEngineView* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(bool param1) {
			bool sigval1 = param1;
			miqt_exec_callback_QWebEngineView_loadFinished(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QWebEngineView_loadFinished_release(slot); }
	};
	MiqtVirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)(bool)>(&QWebEngineView::loadFinished), self, caller{slot});
}

void QWebEngineView_titleChanged(QWebEngineView* self, struct miqt_string title) {
	QString title_QString = QString::fromUtf8(title.data, title.len);
	self->titleChanged(title_QString);
}

void QWebEngineView_connect_titleChanged(QWebEngineView* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QString& title) {
			const QString title_ret = title;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray title_b = title_ret.toUtf8();
			struct miqt_string title_ms;
			title_ms.len = title_b.length();
			title_ms.data = static_cast<char*>(malloc(title_ms.len));
			memcpy(title_ms.data, title_b.data(), title_ms.len);
			struct miqt_string sigval1 = title_ms;
			miqt_exec_callback_QWebEngineView_titleChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QWebEngineView_titleChanged_release(slot); }
	};
	MiqtVirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)(const QString&)>(&QWebEngineView::titleChanged), self, caller{slot});
}

void QWebEngineView_selectionChanged(QWebEngineView* self) {
	self->selectionChanged();
}

void QWebEngineView_connect_selectionChanged(QWebEngineView* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QWebEngineView_selectionChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QWebEngineView_selectionChanged_release(slot); }
	};
	MiqtVirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)()>(&QWebEngineView::selectionChanged), self, caller{slot});
}

void QWebEngineView_urlChanged(QWebEngineView* self, QUrl* param1) {
	self->urlChanged(*param1);
}

void QWebEngineView_connect_urlChanged(QWebEngineView* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QUrl& param1) {
			const QUrl& param1_ret = param1;
			// Cast returned reference into pointer
			QUrl* sigval1 = const_cast<QUrl*>(&param1_ret);
			miqt_exec_callback_QWebEngineView_urlChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QWebEngineView_urlChanged_release(slot); }
	};
	MiqtVirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)(const QUrl&)>(&QWebEngineView::urlChanged), self, caller{slot});
}

void QWebEngineView_iconUrlChanged(QWebEngineView* self, QUrl* param1) {
	self->iconUrlChanged(*param1);
}

void QWebEngineView_connect_iconUrlChanged(QWebEngineView* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QUrl& param1) {
			const QUrl& param1_ret = param1;
			// Cast returned reference into pointer
			QUrl* sigval1 = const_cast<QUrl*>(&param1_ret);
			miqt_exec_callback_QWebEngineView_iconUrlChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QWebEngineView_iconUrlChanged_release(slot); }
	};
	MiqtVirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)(const QUrl&)>(&QWebEngineView::iconUrlChanged), self, caller{slot});
}

void QWebEngineView_iconChanged(QWebEngineView* self, QIcon* param1) {
	self->iconChanged(*param1);
}

void QWebEngineView_connect_iconChanged(QWebEngineView* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QIcon& param1) {
			const QIcon& param1_ret = param1;
			// Cast returned reference into pointer
			QIcon* sigval1 = const_cast<QIcon*>(&param1_ret);
			miqt_exec_callback_QWebEngineView_iconChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QWebEngineView_iconChanged_release(slot); }
	};
	MiqtVirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)(const QIcon&)>(&QWebEngineView::iconChanged), self, caller{slot});
}

void QWebEngineView_renderProcessTerminated(QWebEngineView* self, int terminationStatus, int exitCode) {
	self->renderProcessTerminated(static_cast<QWebEnginePage::RenderProcessTerminationStatus>(terminationStatus), static_cast<int>(exitCode));
}

void QWebEngineView_connect_renderProcessTerminated(QWebEngineView* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QWebEnginePage::RenderProcessTerminationStatus terminationStatus, int exitCode) {
			QWebEnginePage::RenderProcessTerminationStatus terminationStatus_ret = terminationStatus;
			int sigval1 = static_cast<int>(terminationStatus_ret);
			int sigval2 = exitCode;
			miqt_exec_callback_QWebEngineView_renderProcessTerminated(slot, sigval1, sigval2);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QWebEngineView_renderProcessTerminated_release(slot); }
	};
	MiqtVirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)(QWebEnginePage::RenderProcessTerminationStatus, int)>(&QWebEngineView::renderProcessTerminated), self, caller{slot});
}

void QWebEngineView_pdfPrintingFinished(QWebEngineView* self, struct miqt_string filePath, bool success) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	self->pdfPrintingFinished(filePath_QString, success);
}

void QWebEngineView_connect_pdfPrintingFinished(QWebEngineView* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QString& filePath, bool success) {
			const QString filePath_ret = filePath;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray filePath_b = filePath_ret.toUtf8();
			struct miqt_string filePath_ms;
			filePath_ms.len = filePath_b.length();
			filePath_ms.data = static_cast<char*>(malloc(filePath_ms.len));
			memcpy(filePath_ms.data, filePath_b.data(), filePath_ms.len);
			struct miqt_string sigval1 = filePath_ms;
			bool sigval2 = success;
			miqt_exec_callback_QWebEngineView_pdfPrintingFinished(slot, sigval1, sigval2);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QWebEngineView_pdfPrintingFinished_release(slot); }
	};
	MiqtVirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)(const QString&, bool)>(&QWebEngineView::pdfPrintingFinished), self, caller{slot});
}

void QWebEngineView_printRequested(QWebEngineView* self) {
	self->printRequested();
}

void QWebEngineView_connect_printRequested(QWebEngineView* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QWebEngineView_printRequested(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QWebEngineView_printRequested_release(slot); }
	};
	MiqtVirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)()>(&QWebEngineView::printRequested), self, caller{slot});
}

void QWebEngineView_printFinished(QWebEngineView* self, bool success) {
	self->printFinished(success);
}

void QWebEngineView_connect_printFinished(QWebEngineView* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(bool success) {
			bool sigval1 = success;
			miqt_exec_callback_QWebEngineView_printFinished(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QWebEngineView_printFinished_release(slot); }
	};
	MiqtVirtualQWebEngineView::connect(self, static_cast<void (QWebEngineView::*)(bool)>(&QWebEngineView::printFinished), self, caller{slot});
}

struct miqt_string QWebEngineView_tr2(const char* s, const char* c) {
	QString _ret = QWebEngineView::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebEngineView_tr3(const char* s, const char* c, int n) {
	QString _ret = QWebEngineView::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebEngineView_setHtml2(QWebEngineView* self, struct miqt_string html, QUrl* baseUrl) {
	QString html_QString = QString::fromUtf8(html.data, html.len);
	self->setHtml(html_QString, *baseUrl);
}

void QWebEngineView_setContent2(QWebEngineView* self, struct miqt_string data, struct miqt_string mimeType) {
	QByteArray data_QByteArray(data.data, data.len);
	QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
	self->setContent(data_QByteArray, mimeType_QString);
}

void QWebEngineView_setContent3(QWebEngineView* self, struct miqt_string data, struct miqt_string mimeType, QUrl* baseUrl) {
	QByteArray data_QByteArray(data.data, data.len);
	QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
	self->setContent(data_QByteArray, mimeType_QString, *baseUrl);
}

void QWebEngineView_triggerPageAction2(QWebEngineView* self, int action, bool checked) {
	self->triggerPageAction(static_cast<QWebEnginePage::WebAction>(action), checked);
}

void QWebEngineView_printToPdf2(QWebEngineView* self, struct miqt_string filePath, QPageLayout* layout) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	self->printToPdf(filePath_QString, *layout);
}

void QWebEngineView_printToPdf3(QWebEngineView* self, struct miqt_string filePath, QPageLayout* layout, QPageRanges* ranges) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	self->printToPdf(filePath_QString, *layout, *ranges);
}

QMetaObject* QWebEngineView_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQWebEngineView*)(self) )->virtualbase_metaObject();
}

void* QWebEngineView_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_metacast(param1);
}

int QWebEngineView_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QSize* QWebEngineView_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQWebEngineView*)(self) )->virtualbase_sizeHint();
}

QWebEngineView* QWebEngineView_virtualbase_createWindow(void* self, int type) {
	return ( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_createWindow(type);
}

void QWebEngineView_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_contextMenuEvent(param1);
}

bool QWebEngineView_virtualbase_event(void* self, QEvent* param1) {
	return ( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_event(param1);
}

void QWebEngineView_virtualbase_showEvent(void* self, QShowEvent* param1) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_showEvent(param1);
}

void QWebEngineView_virtualbase_hideEvent(void* self, QHideEvent* param1) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_hideEvent(param1);
}

void QWebEngineView_virtualbase_closeEvent(void* self, QCloseEvent* param1) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_closeEvent(param1);
}

void QWebEngineView_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* e) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_dragEnterEvent(e);
}

void QWebEngineView_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* e) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_dragLeaveEvent(e);
}

void QWebEngineView_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* e) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_dragMoveEvent(e);
}

void QWebEngineView_virtualbase_dropEvent(void* self, QDropEvent* e) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_dropEvent(e);
}

int QWebEngineView_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQWebEngineView*)(self) )->virtualbase_devType();
}

void QWebEngineView_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_setVisible(visible);
}

QSize* QWebEngineView_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQWebEngineView*)(self) )->virtualbase_minimumSizeHint();
}

int QWebEngineView_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQWebEngineView*)(self) )->virtualbase_heightForWidth(param1);
}

bool QWebEngineView_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQWebEngineView*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QWebEngineView_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQWebEngineView*)(self) )->virtualbase_paintEngine();
}

void QWebEngineView_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_mousePressEvent(event);
}

void QWebEngineView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QWebEngineView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QWebEngineView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QWebEngineView_virtualbase_wheelEvent(void* self, QWheelEvent* event) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_wheelEvent(event);
}

void QWebEngineView_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_keyPressEvent(event);
}

void QWebEngineView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QWebEngineView_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_focusInEvent(event);
}

void QWebEngineView_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_focusOutEvent(event);
}

void QWebEngineView_virtualbase_enterEvent(void* self, QEnterEvent* event) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_enterEvent(event);
}

void QWebEngineView_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_leaveEvent(event);
}

void QWebEngineView_virtualbase_paintEvent(void* self, QPaintEvent* event) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_paintEvent(event);
}

void QWebEngineView_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_moveEvent(event);
}

void QWebEngineView_virtualbase_resizeEvent(void* self, QResizeEvent* event) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_resizeEvent(event);
}

void QWebEngineView_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_tabletEvent(event);
}

void QWebEngineView_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_actionEvent(event);
}

bool QWebEngineView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	return ( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

void QWebEngineView_virtualbase_changeEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_changeEvent(param1);
}

int QWebEngineView_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQWebEngineView*)(self) )->virtualbase_metric(param1);
}

void QWebEngineView_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQWebEngineView*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QWebEngineView_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQWebEngineView*)(self) )->virtualbase_redirected(offset);
}

QPainter* QWebEngineView_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQWebEngineView*)(self) )->virtualbase_sharedPainter();
}

void QWebEngineView_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_inputMethodEvent(param1);
}

QVariant* QWebEngineView_virtualbase_inputMethodQuery(const void* self, int param1) {
	return ( (const MiqtVirtualQWebEngineView*)(self) )->virtualbase_inputMethodQuery(param1);
}

bool QWebEngineView_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_focusNextPrevChild(next);
}

bool QWebEngineView_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_eventFilter(watched, event);
}

void QWebEngineView_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_timerEvent(event);
}

void QWebEngineView_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_childEvent(event);
}

void QWebEngineView_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_customEvent(event);
}

void QWebEngineView_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_connectNotify(signal);
}

void QWebEngineView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQWebEngineView*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QWebEngineView_staticMetaObject() { return &QWebEngineView::staticMetaObject; }
void QWebEngineView_protectedbase_updateMicroFocus(void* self) {
	MiqtVirtualQWebEngineView* self_cast = static_cast<MiqtVirtualQWebEngineView*>( (QWebEngineView*)(self) );
	
	self_cast->updateMicroFocus();

}

void QWebEngineView_protectedbase_create(void* self) {
	MiqtVirtualQWebEngineView* self_cast = static_cast<MiqtVirtualQWebEngineView*>( (QWebEngineView*)(self) );
	
	self_cast->create();

}

void QWebEngineView_protectedbase_destroy(void* self) {
	MiqtVirtualQWebEngineView* self_cast = static_cast<MiqtVirtualQWebEngineView*>( (QWebEngineView*)(self) );
	
	self_cast->destroy();

}

bool QWebEngineView_protectedbase_focusNextChild(void* self) {
	MiqtVirtualQWebEngineView* self_cast = static_cast<MiqtVirtualQWebEngineView*>( (QWebEngineView*)(self) );
	
	return self_cast->focusNextChild();

}

bool QWebEngineView_protectedbase_focusPreviousChild(void* self) {
	MiqtVirtualQWebEngineView* self_cast = static_cast<MiqtVirtualQWebEngineView*>( (QWebEngineView*)(self) );
	
	return self_cast->focusPreviousChild();

}

QObject* QWebEngineView_protectedbase_sender(const void* self) {
	MiqtVirtualQWebEngineView* self_cast = static_cast<MiqtVirtualQWebEngineView*>( (QWebEngineView*)(self) );
	
	return self_cast->sender();

}

int QWebEngineView_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQWebEngineView* self_cast = static_cast<MiqtVirtualQWebEngineView*>( (QWebEngineView*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QWebEngineView_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQWebEngineView* self_cast = static_cast<MiqtVirtualQWebEngineView*>( (QWebEngineView*)(self) );
	
	return self_cast->receivers(signal);

}

bool QWebEngineView_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQWebEngineView* self_cast = static_cast<MiqtVirtualQWebEngineView*>( (QWebEngineView*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QWebEngineView_delete(QWebEngineView* self) {
	delete self;
}

