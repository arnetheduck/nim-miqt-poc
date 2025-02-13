#include <QAbstractScrollArea>
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
#include <QFrame>
#include <QHideEvent>
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QList>
#include <QMargins>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMimeData>
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
#include <QStyleOptionFrame>
#include <QTabletEvent>
#include <QTextBrowser>
#include <QTextCursor>
#include <QTextEdit>
#include <QTimerEvent>
#include <QUrl>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qtextbrowser.h>
#include "gen_qtextbrowser.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QTextBrowser_backwardAvailable(intptr_t, bool);
void miqt_exec_callback_QTextBrowser_backwardAvailable_release(intptr_t);
void miqt_exec_callback_QTextBrowser_forwardAvailable(intptr_t, bool);
void miqt_exec_callback_QTextBrowser_forwardAvailable_release(intptr_t);
void miqt_exec_callback_QTextBrowser_historyChanged(intptr_t);
void miqt_exec_callback_QTextBrowser_historyChanged_release(intptr_t);
void miqt_exec_callback_QTextBrowser_sourceChanged(intptr_t, QUrl*);
void miqt_exec_callback_QTextBrowser_sourceChanged_release(intptr_t);
void miqt_exec_callback_QTextBrowser_highlighted(intptr_t, QUrl*);
void miqt_exec_callback_QTextBrowser_highlighted_release(intptr_t);
void miqt_exec_callback_QTextBrowser_anchorClicked(intptr_t, QUrl*);
void miqt_exec_callback_QTextBrowser_anchorClicked_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQTextBrowser final : public QTextBrowser {
	struct QTextBrowser_VTable* vtbl;
public:

	MiqtVirtualQTextBrowser(struct QTextBrowser_VTable* vtbl, QWidget* parent): QTextBrowser(parent), vtbl(vtbl) {};
	MiqtVirtualQTextBrowser(struct QTextBrowser_VTable* vtbl): QTextBrowser(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQTextBrowser() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTextBrowser::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QTextBrowser::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTextBrowser::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QTextBrowser::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTextBrowser::qt_metacall(param1, param2, param3);
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

		return QTextBrowser::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant loadResource(int type, const QUrl& name) override {
		if (vtbl->loadResource == 0) {
			return QTextBrowser::loadResource(type, name);
		}

		int sigval1 = type;
		const QUrl& name_ret = name;
		// Cast returned reference into pointer
		QUrl* sigval2 = const_cast<QUrl*>(&name_ret);

		QVariant* callback_return_value = vtbl->loadResource(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_loadResource(int type, QUrl* name) {

		return new QVariant(QTextBrowser::loadResource(static_cast<int>(type), *name));

	}

	// Subclass to allow providing a Go implementation
	virtual void backward() override {
		if (vtbl->backward == 0) {
			QTextBrowser::backward();
			return;
		}


		vtbl->backward(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_backward() {

		QTextBrowser::backward();

	}

	// Subclass to allow providing a Go implementation
	virtual void forward() override {
		if (vtbl->forward == 0) {
			QTextBrowser::forward();
			return;
		}


		vtbl->forward(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_forward() {

		QTextBrowser::forward();

	}

	// Subclass to allow providing a Go implementation
	virtual void home() override {
		if (vtbl->home == 0) {
			QTextBrowser::home();
			return;
		}


		vtbl->home(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_home() {

		QTextBrowser::home();

	}

	// Subclass to allow providing a Go implementation
	virtual void reload() override {
		if (vtbl->reload == 0) {
			QTextBrowser::reload();
			return;
		}


		vtbl->reload(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_reload() {

		QTextBrowser::reload();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QTextBrowser::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* e) {

		return QTextBrowser::event(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* ev) override {
		if (vtbl->keyPressEvent == 0) {
			QTextBrowser::keyPressEvent(ev);
			return;
		}

		QKeyEvent* sigval1 = ev;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* ev) {

		QTextBrowser::keyPressEvent(ev);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* ev) override {
		if (vtbl->mouseMoveEvent == 0) {
			QTextBrowser::mouseMoveEvent(ev);
			return;
		}

		QMouseEvent* sigval1 = ev;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* ev) {

		QTextBrowser::mouseMoveEvent(ev);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* ev) override {
		if (vtbl->mousePressEvent == 0) {
			QTextBrowser::mousePressEvent(ev);
			return;
		}

		QMouseEvent* sigval1 = ev;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* ev) {

		QTextBrowser::mousePressEvent(ev);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* ev) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QTextBrowser::mouseReleaseEvent(ev);
			return;
		}

		QMouseEvent* sigval1 = ev;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* ev) {

		QTextBrowser::mouseReleaseEvent(ev);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* ev) override {
		if (vtbl->focusOutEvent == 0) {
			QTextBrowser::focusOutEvent(ev);
			return;
		}

		QFocusEvent* sigval1 = ev;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* ev) {

		QTextBrowser::focusOutEvent(ev);

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QTextBrowser::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QTextBrowser::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* e) override {
		if (vtbl->paintEvent == 0) {
			QTextBrowser::paintEvent(e);
			return;
		}

		QPaintEvent* sigval1 = e;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* e) {

		QTextBrowser::paintEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void doSetSource(const QUrl& name, QTextDocument::ResourceType type) override {
		if (vtbl->doSetSource == 0) {
			QTextBrowser::doSetSource(name, type);
			return;
		}

		const QUrl& name_ret = name;
		// Cast returned reference into pointer
		QUrl* sigval1 = const_cast<QUrl*>(&name_ret);
		QTextDocument::ResourceType type_ret = type;
		int sigval2 = static_cast<int>(type_ret);

		vtbl->doSetSource(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_doSetSource(QUrl* name, int type) {

		QTextBrowser::doSetSource(*name, static_cast<QTextDocument::ResourceType>(type));

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery property) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QTextBrowser::inputMethodQuery(property);
		}

		Qt::InputMethodQuery property_ret = property;
		int sigval1 = static_cast<int>(property_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int property) const {

		return new QVariant(QTextBrowser::inputMethodQuery(static_cast<Qt::InputMethodQuery>(property)));

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* e) override {
		if (vtbl->timerEvent == 0) {
			QTextBrowser::timerEvent(e);
			return;
		}

		QTimerEvent* sigval1 = e;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* e) {

		QTextBrowser::timerEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* e) override {
		if (vtbl->keyReleaseEvent == 0) {
			QTextBrowser::keyReleaseEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* e) {

		QTextBrowser::keyReleaseEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* e) override {
		if (vtbl->resizeEvent == 0) {
			QTextBrowser::resizeEvent(e);
			return;
		}

		QResizeEvent* sigval1 = e;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* e) {

		QTextBrowser::resizeEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* e) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QTextBrowser::mouseDoubleClickEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* e) {

		QTextBrowser::mouseDoubleClickEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* e) override {
		if (vtbl->contextMenuEvent == 0) {
			QTextBrowser::contextMenuEvent(e);
			return;
		}

		QContextMenuEvent* sigval1 = e;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* e) {

		QTextBrowser::contextMenuEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* e) override {
		if (vtbl->dragEnterEvent == 0) {
			QTextBrowser::dragEnterEvent(e);
			return;
		}

		QDragEnterEvent* sigval1 = e;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* e) {

		QTextBrowser::dragEnterEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* e) override {
		if (vtbl->dragLeaveEvent == 0) {
			QTextBrowser::dragLeaveEvent(e);
			return;
		}

		QDragLeaveEvent* sigval1 = e;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* e) {

		QTextBrowser::dragLeaveEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* e) override {
		if (vtbl->dragMoveEvent == 0) {
			QTextBrowser::dragMoveEvent(e);
			return;
		}

		QDragMoveEvent* sigval1 = e;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* e) {

		QTextBrowser::dragMoveEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* e) override {
		if (vtbl->dropEvent == 0) {
			QTextBrowser::dropEvent(e);
			return;
		}

		QDropEvent* sigval1 = e;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* e) {

		QTextBrowser::dropEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* e) override {
		if (vtbl->focusInEvent == 0) {
			QTextBrowser::focusInEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* e) {

		QTextBrowser::focusInEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QTextBrowser::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* param1) {

		QTextBrowser::showEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QTextBrowser::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* e) {

		QTextBrowser::changeEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* e) override {
		if (vtbl->wheelEvent == 0) {
			QTextBrowser::wheelEvent(e);
			return;
		}

		QWheelEvent* sigval1 = e;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* e) {

		QTextBrowser::wheelEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual QMimeData* createMimeDataFromSelection() const override {
		if (vtbl->createMimeDataFromSelection == 0) {
			return QTextBrowser::createMimeDataFromSelection();
		}


		QMimeData* callback_return_value = vtbl->createMimeDataFromSelection(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMimeData* virtualbase_createMimeDataFromSelection() const {

		return QTextBrowser::createMimeDataFromSelection();

	}

	// Subclass to allow providing a Go implementation
	virtual bool canInsertFromMimeData(const QMimeData* source) const override {
		if (vtbl->canInsertFromMimeData == 0) {
			return QTextBrowser::canInsertFromMimeData(source);
		}

		QMimeData* sigval1 = (QMimeData*) source;

		bool callback_return_value = vtbl->canInsertFromMimeData(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_canInsertFromMimeData(QMimeData* source) const {

		return QTextBrowser::canInsertFromMimeData(source);

	}

	// Subclass to allow providing a Go implementation
	virtual void insertFromMimeData(const QMimeData* source) override {
		if (vtbl->insertFromMimeData == 0) {
			QTextBrowser::insertFromMimeData(source);
			return;
		}

		QMimeData* sigval1 = (QMimeData*) source;

		vtbl->insertFromMimeData(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_insertFromMimeData(QMimeData* source) {

		QTextBrowser::insertFromMimeData(source);

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QTextBrowser::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* param1) {

		QTextBrowser::inputMethodEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QTextBrowser::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_scrollContentsBy(int dx, int dy) {

		QTextBrowser::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));

	}

	// Subclass to allow providing a Go implementation
	virtual void doSetTextCursor(const QTextCursor& cursor) override {
		if (vtbl->doSetTextCursor == 0) {
			QTextBrowser::doSetTextCursor(cursor);
			return;
		}

		const QTextCursor& cursor_ret = cursor;
		// Cast returned reference into pointer
		QTextCursor* sigval1 = const_cast<QTextCursor*>(&cursor_ret);

		vtbl->doSetTextCursor(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_doSetTextCursor(QTextCursor* cursor) {

		QTextBrowser::doSetTextCursor(*cursor);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QTextBrowser::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QTextBrowser::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QTextBrowser::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QTextBrowser::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QTextBrowser::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setupViewport(QWidget* viewport) {

		QTextBrowser::setupViewport(viewport);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QTextBrowser::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* param1, QEvent* param2) {

		return QTextBrowser::eventFilter(param1, param2);

	}

	// Subclass to allow providing a Go implementation
	virtual bool viewportEvent(QEvent* param1) override {
		if (vtbl->viewportEvent == 0) {
			return QTextBrowser::viewportEvent(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->viewportEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_viewportEvent(QEvent* param1) {

		return QTextBrowser::viewportEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QTextBrowser::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_viewportSizeHint() const {

		return new QSize(QTextBrowser::viewportSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionFrame* option) const override {
		if (vtbl->initStyleOption == 0) {
			QTextBrowser::initStyleOption(option);
			return;
		}

		QStyleOptionFrame* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initStyleOption(QStyleOptionFrame* option) const {

		QTextBrowser::initStyleOption(option);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QTextBrowser::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QTextBrowser::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QTextBrowser::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QTextBrowser::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QTextBrowser::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QTextBrowser::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QTextBrowser::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QTextBrowser::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QTextBrowser::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QTextBrowser::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QTextBrowser::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEnterEvent* event) {

		QTextBrowser::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QTextBrowser::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QTextBrowser::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QTextBrowser::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QTextBrowser::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QTextBrowser::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QTextBrowser::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QTextBrowser::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QTextBrowser::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QTextBrowser::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QTextBrowser::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QTextBrowser::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QTextBrowser::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QTextBrowser::nativeEvent(eventType, message, result);
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

		return QTextBrowser::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QTextBrowser::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QTextBrowser::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QTextBrowser::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QTextBrowser::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QTextBrowser::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QTextBrowser::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QTextBrowser::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QTextBrowser::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTextBrowser::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QTextBrowser::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTextBrowser::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QTextBrowser::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTextBrowser::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QTextBrowser::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTextBrowser::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QTextBrowser::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QTextBrowser_protectedbase_zoomInF(bool* _dynamic_cast_ok, void* self, float range);
	friend void QTextBrowser_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom);
	friend QMargins* QTextBrowser_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self);
	friend void QTextBrowser_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1);
	friend void QTextBrowser_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QTextBrowser_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QTextBrowser_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QTextBrowser_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QTextBrowser_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QTextBrowser_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QTextBrowser_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QTextBrowser_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QTextBrowser_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QTextBrowser* QTextBrowser_new(struct QTextBrowser_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQTextBrowser(vtbl, parent);
}

QTextBrowser* QTextBrowser_new2(struct QTextBrowser_VTable* vtbl) {
	return new MiqtVirtualQTextBrowser(vtbl);
}

void QTextBrowser_virtbase(QTextBrowser* src, QTextEdit** outptr_QTextEdit) {
	*outptr_QTextEdit = static_cast<QTextEdit*>(src);
}

QMetaObject* QTextBrowser_metaObject(const QTextBrowser* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTextBrowser_metacast(QTextBrowser* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTextBrowser_metacall(QTextBrowser* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTextBrowser_tr(const char* s) {
	QString _ret = QTextBrowser::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QTextBrowser_source(const QTextBrowser* self) {
	return new QUrl(self->source());
}

int QTextBrowser_sourceType(const QTextBrowser* self) {
	QTextDocument::ResourceType _ret = self->sourceType();
	return static_cast<int>(_ret);
}

struct miqt_array /* of struct miqt_string */  QTextBrowser_searchPaths(const QTextBrowser* self) {
	QStringList _ret = self->searchPaths();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QTextBrowser_setSearchPaths(QTextBrowser* self, struct miqt_array /* of struct miqt_string */  paths) {
	QStringList paths_QList;
	paths_QList.reserve(paths.len);
	struct miqt_string* paths_arr = static_cast<struct miqt_string*>(paths.data);
	for(size_t i = 0; i < paths.len; ++i) {
		QString paths_arr_i_QString = QString::fromUtf8(paths_arr[i].data, paths_arr[i].len);
		paths_QList.push_back(paths_arr_i_QString);
	}
	self->setSearchPaths(paths_QList);
}

QVariant* QTextBrowser_loadResource(QTextBrowser* self, int type, QUrl* name) {
	return new QVariant(self->loadResource(static_cast<int>(type), *name));
}

bool QTextBrowser_isBackwardAvailable(const QTextBrowser* self) {
	return self->isBackwardAvailable();
}

bool QTextBrowser_isForwardAvailable(const QTextBrowser* self) {
	return self->isForwardAvailable();
}

void QTextBrowser_clearHistory(QTextBrowser* self) {
	self->clearHistory();
}

struct miqt_string QTextBrowser_historyTitle(const QTextBrowser* self, int param1) {
	QString _ret = self->historyTitle(static_cast<int>(param1));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QTextBrowser_historyUrl(const QTextBrowser* self, int param1) {
	return new QUrl(self->historyUrl(static_cast<int>(param1)));
}

int QTextBrowser_backwardHistoryCount(const QTextBrowser* self) {
	return self->backwardHistoryCount();
}

int QTextBrowser_forwardHistoryCount(const QTextBrowser* self) {
	return self->forwardHistoryCount();
}

bool QTextBrowser_openExternalLinks(const QTextBrowser* self) {
	return self->openExternalLinks();
}

void QTextBrowser_setOpenExternalLinks(QTextBrowser* self, bool open) {
	self->setOpenExternalLinks(open);
}

bool QTextBrowser_openLinks(const QTextBrowser* self) {
	return self->openLinks();
}

void QTextBrowser_setOpenLinks(QTextBrowser* self, bool open) {
	self->setOpenLinks(open);
}

void QTextBrowser_setSource(QTextBrowser* self, QUrl* name) {
	self->setSource(*name);
}

void QTextBrowser_backward(QTextBrowser* self) {
	self->backward();
}

void QTextBrowser_forward(QTextBrowser* self) {
	self->forward();
}

void QTextBrowser_home(QTextBrowser* self) {
	self->home();
}

void QTextBrowser_reload(QTextBrowser* self) {
	self->reload();
}

void QTextBrowser_backwardAvailable(QTextBrowser* self, bool param1) {
	self->backwardAvailable(param1);
}

void QTextBrowser_connect_backwardAvailable(QTextBrowser* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(bool param1) {
			bool sigval1 = param1;
			miqt_exec_callback_QTextBrowser_backwardAvailable(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QTextBrowser_backwardAvailable_release(slot); }
	};
	MiqtVirtualQTextBrowser::connect(self, static_cast<void (QTextBrowser::*)(bool)>(&QTextBrowser::backwardAvailable), self, caller{slot});
}

void QTextBrowser_forwardAvailable(QTextBrowser* self, bool param1) {
	self->forwardAvailable(param1);
}

void QTextBrowser_connect_forwardAvailable(QTextBrowser* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(bool param1) {
			bool sigval1 = param1;
			miqt_exec_callback_QTextBrowser_forwardAvailable(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QTextBrowser_forwardAvailable_release(slot); }
	};
	MiqtVirtualQTextBrowser::connect(self, static_cast<void (QTextBrowser::*)(bool)>(&QTextBrowser::forwardAvailable), self, caller{slot});
}

void QTextBrowser_historyChanged(QTextBrowser* self) {
	self->historyChanged();
}

void QTextBrowser_connect_historyChanged(QTextBrowser* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QTextBrowser_historyChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QTextBrowser_historyChanged_release(slot); }
	};
	MiqtVirtualQTextBrowser::connect(self, static_cast<void (QTextBrowser::*)()>(&QTextBrowser::historyChanged), self, caller{slot});
}

void QTextBrowser_sourceChanged(QTextBrowser* self, QUrl* param1) {
	self->sourceChanged(*param1);
}

void QTextBrowser_connect_sourceChanged(QTextBrowser* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QUrl& param1) {
			const QUrl& param1_ret = param1;
			// Cast returned reference into pointer
			QUrl* sigval1 = const_cast<QUrl*>(&param1_ret);
			miqt_exec_callback_QTextBrowser_sourceChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QTextBrowser_sourceChanged_release(slot); }
	};
	MiqtVirtualQTextBrowser::connect(self, static_cast<void (QTextBrowser::*)(const QUrl&)>(&QTextBrowser::sourceChanged), self, caller{slot});
}

void QTextBrowser_highlighted(QTextBrowser* self, QUrl* param1) {
	self->highlighted(*param1);
}

void QTextBrowser_connect_highlighted(QTextBrowser* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QUrl& param1) {
			const QUrl& param1_ret = param1;
			// Cast returned reference into pointer
			QUrl* sigval1 = const_cast<QUrl*>(&param1_ret);
			miqt_exec_callback_QTextBrowser_highlighted(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QTextBrowser_highlighted_release(slot); }
	};
	MiqtVirtualQTextBrowser::connect(self, static_cast<void (QTextBrowser::*)(const QUrl&)>(&QTextBrowser::highlighted), self, caller{slot});
}

void QTextBrowser_anchorClicked(QTextBrowser* self, QUrl* param1) {
	self->anchorClicked(*param1);
}

void QTextBrowser_connect_anchorClicked(QTextBrowser* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QUrl& param1) {
			const QUrl& param1_ret = param1;
			// Cast returned reference into pointer
			QUrl* sigval1 = const_cast<QUrl*>(&param1_ret);
			miqt_exec_callback_QTextBrowser_anchorClicked(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QTextBrowser_anchorClicked_release(slot); }
	};
	MiqtVirtualQTextBrowser::connect(self, static_cast<void (QTextBrowser::*)(const QUrl&)>(&QTextBrowser::anchorClicked), self, caller{slot});
}

struct miqt_string QTextBrowser_tr2(const char* s, const char* c) {
	QString _ret = QTextBrowser::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTextBrowser_tr3(const char* s, const char* c, int n) {
	QString _ret = QTextBrowser::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTextBrowser_setSource2(QTextBrowser* self, QUrl* name, int type) {
	self->setSource(*name, static_cast<QTextDocument::ResourceType>(type));
}

QMetaObject* QTextBrowser_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQTextBrowser*)(self) )->virtualbase_metaObject();
}

void* QTextBrowser_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_metacast(param1);
}

int QTextBrowser_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QVariant* QTextBrowser_virtualbase_loadResource(void* self, int type, QUrl* name) {
	return ( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_loadResource(type, name);
}

void QTextBrowser_virtualbase_backward(void* self) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_backward();
}

void QTextBrowser_virtualbase_forward(void* self) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_forward();
}

void QTextBrowser_virtualbase_home(void* self) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_home();
}

void QTextBrowser_virtualbase_reload(void* self) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_reload();
}

bool QTextBrowser_virtualbase_event(void* self, QEvent* e) {
	return ( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_event(e);
}

void QTextBrowser_virtualbase_keyPressEvent(void* self, QKeyEvent* ev) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_keyPressEvent(ev);
}

void QTextBrowser_virtualbase_mouseMoveEvent(void* self, QMouseEvent* ev) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_mouseMoveEvent(ev);
}

void QTextBrowser_virtualbase_mousePressEvent(void* self, QMouseEvent* ev) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_mousePressEvent(ev);
}

void QTextBrowser_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* ev) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_mouseReleaseEvent(ev);
}

void QTextBrowser_virtualbase_focusOutEvent(void* self, QFocusEvent* ev) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_focusOutEvent(ev);
}

bool QTextBrowser_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_focusNextPrevChild(next);
}

void QTextBrowser_virtualbase_paintEvent(void* self, QPaintEvent* e) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_paintEvent(e);
}

void QTextBrowser_virtualbase_doSetSource(void* self, QUrl* name, int type) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_doSetSource(name, type);
}

QVariant* QTextBrowser_virtualbase_inputMethodQuery(const void* self, int property) {
	return ( (const MiqtVirtualQTextBrowser*)(self) )->virtualbase_inputMethodQuery(property);
}

void QTextBrowser_virtualbase_timerEvent(void* self, QTimerEvent* e) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_timerEvent(e);
}

void QTextBrowser_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_keyReleaseEvent(e);
}

void QTextBrowser_virtualbase_resizeEvent(void* self, QResizeEvent* e) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_resizeEvent(e);
}

void QTextBrowser_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* e) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_mouseDoubleClickEvent(e);
}

void QTextBrowser_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* e) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_contextMenuEvent(e);
}

void QTextBrowser_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* e) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_dragEnterEvent(e);
}

void QTextBrowser_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* e) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_dragLeaveEvent(e);
}

void QTextBrowser_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* e) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_dragMoveEvent(e);
}

void QTextBrowser_virtualbase_dropEvent(void* self, QDropEvent* e) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_dropEvent(e);
}

void QTextBrowser_virtualbase_focusInEvent(void* self, QFocusEvent* e) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_focusInEvent(e);
}

void QTextBrowser_virtualbase_showEvent(void* self, QShowEvent* param1) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_showEvent(param1);
}

void QTextBrowser_virtualbase_changeEvent(void* self, QEvent* e) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_changeEvent(e);
}

void QTextBrowser_virtualbase_wheelEvent(void* self, QWheelEvent* e) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_wheelEvent(e);
}

QMimeData* QTextBrowser_virtualbase_createMimeDataFromSelection(const void* self) {
	return ( (const MiqtVirtualQTextBrowser*)(self) )->virtualbase_createMimeDataFromSelection();
}

bool QTextBrowser_virtualbase_canInsertFromMimeData(const void* self, QMimeData* source) {
	return ( (const MiqtVirtualQTextBrowser*)(self) )->virtualbase_canInsertFromMimeData(source);
}

void QTextBrowser_virtualbase_insertFromMimeData(void* self, QMimeData* source) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_insertFromMimeData(source);
}

void QTextBrowser_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_inputMethodEvent(param1);
}

void QTextBrowser_virtualbase_scrollContentsBy(void* self, int dx, int dy) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_scrollContentsBy(dx, dy);
}

void QTextBrowser_virtualbase_doSetTextCursor(void* self, QTextCursor* cursor) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_doSetTextCursor(cursor);
}

QSize* QTextBrowser_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQTextBrowser*)(self) )->virtualbase_minimumSizeHint();
}

QSize* QTextBrowser_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQTextBrowser*)(self) )->virtualbase_sizeHint();
}

void QTextBrowser_virtualbase_setupViewport(void* self, QWidget* viewport) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_setupViewport(viewport);
}

bool QTextBrowser_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2) {
	return ( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_eventFilter(param1, param2);
}

bool QTextBrowser_virtualbase_viewportEvent(void* self, QEvent* param1) {
	return ( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_viewportEvent(param1);
}

QSize* QTextBrowser_virtualbase_viewportSizeHint(const void* self) {
	return ( (const MiqtVirtualQTextBrowser*)(self) )->virtualbase_viewportSizeHint();
}

void QTextBrowser_virtualbase_initStyleOption(const void* self, QStyleOptionFrame* option) {
	( (const MiqtVirtualQTextBrowser*)(self) )->virtualbase_initStyleOption(option);
}

int QTextBrowser_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQTextBrowser*)(self) )->virtualbase_devType();
}

void QTextBrowser_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_setVisible(visible);
}

int QTextBrowser_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQTextBrowser*)(self) )->virtualbase_heightForWidth(param1);
}

bool QTextBrowser_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQTextBrowser*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QTextBrowser_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQTextBrowser*)(self) )->virtualbase_paintEngine();
}

void QTextBrowser_virtualbase_enterEvent(void* self, QEnterEvent* event) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_enterEvent(event);
}

void QTextBrowser_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_leaveEvent(event);
}

void QTextBrowser_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_moveEvent(event);
}

void QTextBrowser_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_closeEvent(event);
}

void QTextBrowser_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_tabletEvent(event);
}

void QTextBrowser_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_actionEvent(event);
}

void QTextBrowser_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_hideEvent(event);
}

bool QTextBrowser_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	return ( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

int QTextBrowser_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQTextBrowser*)(self) )->virtualbase_metric(param1);
}

void QTextBrowser_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQTextBrowser*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QTextBrowser_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQTextBrowser*)(self) )->virtualbase_redirected(offset);
}

QPainter* QTextBrowser_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQTextBrowser*)(self) )->virtualbase_sharedPainter();
}

void QTextBrowser_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_childEvent(event);
}

void QTextBrowser_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_customEvent(event);
}

void QTextBrowser_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_connectNotify(signal);
}

void QTextBrowser_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQTextBrowser*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QTextBrowser_staticMetaObject() { return &QTextBrowser::staticMetaObject; }
void QTextBrowser_protectedbase_zoomInF(bool* _dynamic_cast_ok, void* self, float range) {
	MiqtVirtualQTextBrowser* self_cast = dynamic_cast<MiqtVirtualQTextBrowser*>( (QTextBrowser*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->zoomInF(static_cast<float>(range));

}

void QTextBrowser_protectedbase_setViewportMargins(bool* _dynamic_cast_ok, void* self, int left, int top, int right, int bottom) {
	MiqtVirtualQTextBrowser* self_cast = dynamic_cast<MiqtVirtualQTextBrowser*>( (QTextBrowser*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));

}

QMargins* QTextBrowser_protectedbase_viewportMargins(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQTextBrowser* self_cast = dynamic_cast<MiqtVirtualQTextBrowser*>( (QTextBrowser*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return new QMargins(self_cast->viewportMargins());

}

void QTextBrowser_protectedbase_drawFrame(bool* _dynamic_cast_ok, void* self, QPainter* param1) {
	MiqtVirtualQTextBrowser* self_cast = dynamic_cast<MiqtVirtualQTextBrowser*>( (QTextBrowser*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->drawFrame(param1);

}

void QTextBrowser_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQTextBrowser* self_cast = dynamic_cast<MiqtVirtualQTextBrowser*>( (QTextBrowser*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QTextBrowser_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQTextBrowser* self_cast = dynamic_cast<MiqtVirtualQTextBrowser*>( (QTextBrowser*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QTextBrowser_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQTextBrowser* self_cast = dynamic_cast<MiqtVirtualQTextBrowser*>( (QTextBrowser*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QTextBrowser_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQTextBrowser* self_cast = dynamic_cast<MiqtVirtualQTextBrowser*>( (QTextBrowser*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QTextBrowser_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	MiqtVirtualQTextBrowser* self_cast = dynamic_cast<MiqtVirtualQTextBrowser*>( (QTextBrowser*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QTextBrowser_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQTextBrowser* self_cast = dynamic_cast<MiqtVirtualQTextBrowser*>( (QTextBrowser*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QTextBrowser_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQTextBrowser* self_cast = dynamic_cast<MiqtVirtualQTextBrowser*>( (QTextBrowser*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QTextBrowser_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	MiqtVirtualQTextBrowser* self_cast = dynamic_cast<MiqtVirtualQTextBrowser*>( (QTextBrowser*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QTextBrowser_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	MiqtVirtualQTextBrowser* self_cast = dynamic_cast<MiqtVirtualQTextBrowser*>( (QTextBrowser*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QTextBrowser_delete(QTextBrowser* self) {
	delete self;
}

