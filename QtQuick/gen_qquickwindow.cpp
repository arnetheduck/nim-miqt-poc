#include <QAccessibleInterface>
#include <QByteArray>
#include <QChildEvent>
#include <QColor>
#include <QEvent>
#include <QExposeEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QImage>
#include <QKeyEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QQmlIncubationController>
#include <QQuickItem>
#include <QQuickRenderControl>
#include <QQuickWindow>
#define WORKAROUND_INNER_CLASS_DEFINITION_QQuickWindow__GraphicsStateInfo
#include <QResizeEvent>
#include <QRunnable>
#include <QSGImageNode>
#include <QSGNinePatchNode>
#include <QSGRectangleNode>
#include <QSGRendererInterface>
#include <QSGTexture>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QSurface>
#include <QSurfaceFormat>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QTouchEvent>
#include <QWheelEvent>
#include <QWindow>
#include <qquickwindow.h>
#include "gen_qquickwindow.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QQuickWindow_frameSwapped(intptr_t);
void miqt_exec_callback_QQuickWindow_sceneGraphInitialized(intptr_t);
void miqt_exec_callback_QQuickWindow_sceneGraphInvalidated(intptr_t);
void miqt_exec_callback_QQuickWindow_beforeSynchronizing(intptr_t);
void miqt_exec_callback_QQuickWindow_afterSynchronizing(intptr_t);
void miqt_exec_callback_QQuickWindow_beforeRendering(intptr_t);
void miqt_exec_callback_QQuickWindow_afterRendering(intptr_t);
void miqt_exec_callback_QQuickWindow_afterAnimating(intptr_t);
void miqt_exec_callback_QQuickWindow_sceneGraphAboutToStop(intptr_t);
void miqt_exec_callback_QQuickWindow_colorChanged(intptr_t, QColor*);
void miqt_exec_callback_QQuickWindow_activeFocusItemChanged(intptr_t);
void miqt_exec_callback_QQuickWindow_sceneGraphError(intptr_t, int, struct miqt_string);
void miqt_exec_callback_QQuickWindow_beforeRenderPassRecording(intptr_t);
void miqt_exec_callback_QQuickWindow_afterRenderPassRecording(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQQuickWindow final : public QQuickWindow {
	struct QQuickWindow_VTable* vtbl;
public:

	MiqtVirtualQQuickWindow(struct QQuickWindow_VTable* vtbl): QQuickWindow(), vtbl(vtbl) {};
	MiqtVirtualQQuickWindow(struct QQuickWindow_VTable* vtbl, QQuickRenderControl* renderControl): QQuickWindow(renderControl), vtbl(vtbl) {};
	MiqtVirtualQQuickWindow(struct QQuickWindow_VTable* vtbl, QWindow* parent): QQuickWindow(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQQuickWindow() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQuickWindow::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QQuickWindow::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQuickWindow::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QQuickWindow::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQuickWindow::qt_metacall(param1, param2, param3);
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

		return QQuickWindow::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QObject* focusObject() const override {
		if (vtbl->focusObject == 0) {
			return QQuickWindow::focusObject();
		}


		QObject* callback_return_value = vtbl->focusObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QObject* virtualbase_focusObject() const {

		return QQuickWindow::focusObject();

	}

	// Subclass to allow providing a Go implementation
	virtual QAccessibleInterface* accessibleRoot() const override {
		if (vtbl->accessibleRoot == 0) {
			return QQuickWindow::accessibleRoot();
		}


		QAccessibleInterface* callback_return_value = vtbl->accessibleRoot(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QAccessibleInterface* virtualbase_accessibleRoot() const {

		return QQuickWindow::accessibleRoot();

	}

	// Subclass to allow providing a Go implementation
	virtual void exposeEvent(QExposeEvent* param1) override {
		if (vtbl->exposeEvent == 0) {
			QQuickWindow::exposeEvent(param1);
			return;
		}

		QExposeEvent* sigval1 = param1;

		vtbl->exposeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_exposeEvent(QExposeEvent* param1) {

		QQuickWindow::exposeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QQuickWindow::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* param1) {

		QQuickWindow::resizeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QQuickWindow::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* param1) {

		QQuickWindow::showEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* param1) override {
		if (vtbl->hideEvent == 0) {
			QQuickWindow::hideEvent(param1);
			return;
		}

		QHideEvent* sigval1 = param1;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* param1) {

		QQuickWindow::hideEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QQuickWindow::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* param1) {

		QQuickWindow::focusInEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QQuickWindow::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* param1) {

		QQuickWindow::focusOutEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QQuickWindow::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* param1) {

		return QQuickWindow::event(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QQuickWindow::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* param1) {

		QQuickWindow::keyPressEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* param1) override {
		if (vtbl->keyReleaseEvent == 0) {
			QQuickWindow::keyReleaseEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* param1) {

		QQuickWindow::keyReleaseEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QQuickWindow::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* param1) {

		QQuickWindow::mousePressEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QQuickWindow::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* param1) {

		QQuickWindow::mouseReleaseEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* param1) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QQuickWindow::mouseDoubleClickEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* param1) {

		QQuickWindow::mouseDoubleClickEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QQuickWindow::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* param1) {

		QQuickWindow::mouseMoveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QQuickWindow::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* param1) {

		QQuickWindow::wheelEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* param1) override {
		if (vtbl->tabletEvent == 0) {
			QQuickWindow::tabletEvent(param1);
			return;
		}

		QTabletEvent* sigval1 = param1;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* param1) {

		QQuickWindow::tabletEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QSurface::SurfaceType surfaceType() const override {
		if (vtbl->surfaceType == 0) {
			return QQuickWindow::surfaceType();
		}


		int callback_return_value = vtbl->surfaceType(vtbl, this);

		return static_cast<QSurface::SurfaceType>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_surfaceType() const {

		QSurface::SurfaceType _ret = QQuickWindow::surfaceType();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual QSurfaceFormat format() const override {
		if (vtbl->format == 0) {
			return QQuickWindow::format();
		}


		QSurfaceFormat* callback_return_value = vtbl->format(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSurfaceFormat* virtualbase_format() const {

		return new QSurfaceFormat(QQuickWindow::format());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize size() const override {
		if (vtbl->size == 0) {
			return QQuickWindow::size();
		}


		QSize* callback_return_value = vtbl->size(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_size() const {

		return new QSize(QQuickWindow::size());

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* param1) override {
		if (vtbl->moveEvent == 0) {
			QQuickWindow::moveEvent(param1);
			return;
		}

		QMoveEvent* sigval1 = param1;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* param1) {

		QQuickWindow::moveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void touchEvent(QTouchEvent* param1) override {
		if (vtbl->touchEvent == 0) {
			QQuickWindow::touchEvent(param1);
			return;
		}

		QTouchEvent* sigval1 = param1;

		vtbl->touchEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_touchEvent(QTouchEvent* param1) {

		QQuickWindow::touchEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QQuickWindow::nativeEvent(eventType, message, result);
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

		return QQuickWindow::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQuickWindow::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QQuickWindow::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQuickWindow::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QQuickWindow::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQuickWindow::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QQuickWindow::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQuickWindow::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QQuickWindow::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQuickWindow::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QQuickWindow::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQuickWindow::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QQuickWindow::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend QObject* QQuickWindow_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickWindow_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickWindow_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QQuickWindow_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QQuickWindow* QQuickWindow_new(struct QQuickWindow_VTable* vtbl) {
	return new MiqtVirtualQQuickWindow(vtbl);
}

QQuickWindow* QQuickWindow_new2(struct QQuickWindow_VTable* vtbl, QQuickRenderControl* renderControl) {
	return new MiqtVirtualQQuickWindow(vtbl, renderControl);
}

QQuickWindow* QQuickWindow_new3(struct QQuickWindow_VTable* vtbl, QWindow* parent) {
	return new MiqtVirtualQQuickWindow(vtbl, parent);
}

void QQuickWindow_virtbase(QQuickWindow* src, QWindow** outptr_QWindow) {
	*outptr_QWindow = static_cast<QWindow*>(src);
}

QMetaObject* QQuickWindow_metaObject(const QQuickWindow* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickWindow_metacast(QQuickWindow* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQuickWindow_metacall(QQuickWindow* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQuickWindow_tr(const char* s) {
	QString _ret = QQuickWindow::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickWindow_trUtf8(const char* s) {
	QString _ret = QQuickWindow::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QQuickItem* QQuickWindow_contentItem(const QQuickWindow* self) {
	return self->contentItem();
}

QQuickItem* QQuickWindow_activeFocusItem(const QQuickWindow* self) {
	return self->activeFocusItem();
}

QObject* QQuickWindow_focusObject(const QQuickWindow* self) {
	return self->focusObject();
}

QQuickItem* QQuickWindow_mouseGrabberItem(const QQuickWindow* self) {
	return self->mouseGrabberItem();
}

bool QQuickWindow_sendEvent(QQuickWindow* self, QQuickItem* param1, QEvent* param2) {
	return self->sendEvent(param1, param2);
}

QImage* QQuickWindow_grabWindow(QQuickWindow* self) {
	return new QImage(self->grabWindow());
}

void QQuickWindow_setRenderTarget2(QQuickWindow* self, unsigned int fboId, QSize* size) {
	self->setRenderTarget(static_cast<uint>(fboId), *size);
}

unsigned int QQuickWindow_renderTargetId(const QQuickWindow* self) {
	uint _ret = self->renderTargetId();
	return static_cast<unsigned int>(_ret);
}

QSize* QQuickWindow_renderTargetSize(const QQuickWindow* self) {
	return new QSize(self->renderTargetSize());
}

void QQuickWindow_resetOpenGLState(QQuickWindow* self) {
	self->resetOpenGLState();
}

QQuickWindow__GraphicsStateInfo* QQuickWindow_graphicsStateInfo(QQuickWindow* self) {
	const QQuickWindow::GraphicsStateInfo& _ret = self->graphicsStateInfo();
	// Cast returned reference into pointer
	return const_cast<QQuickWindow::GraphicsStateInfo*>(&_ret);
}

void QQuickWindow_beginExternalCommands(QQuickWindow* self) {
	self->beginExternalCommands();
}

void QQuickWindow_endExternalCommands(QQuickWindow* self) {
	self->endExternalCommands();
}

QQmlIncubationController* QQuickWindow_incubationController(const QQuickWindow* self) {
	return self->incubationController();
}

QAccessibleInterface* QQuickWindow_accessibleRoot(const QQuickWindow* self) {
	return self->accessibleRoot();
}

QSGTexture* QQuickWindow_createTextureFromImage(const QQuickWindow* self, QImage* image) {
	return self->createTextureFromImage(*image);
}

QSGTexture* QQuickWindow_createTextureFromImage2(const QQuickWindow* self, QImage* image, int options) {
	return self->createTextureFromImage(*image, static_cast<QQuickWindow::CreateTextureOptions>(options));
}

QSGTexture* QQuickWindow_createTextureFromId(const QQuickWindow* self, unsigned int id, QSize* size) {
	return self->createTextureFromId(static_cast<uint>(id), *size);
}

QSGTexture* QQuickWindow_createTextureFromNativeObject(const QQuickWindow* self, int type, const void* nativeObjectPtr, int nativeLayout, QSize* size) {
	return self->createTextureFromNativeObject(static_cast<QQuickWindow::NativeObjectType>(type), nativeObjectPtr, static_cast<int>(nativeLayout), *size);
}

void QQuickWindow_setClearBeforeRendering(QQuickWindow* self, bool enabled) {
	self->setClearBeforeRendering(enabled);
}

bool QQuickWindow_clearBeforeRendering(const QQuickWindow* self) {
	return self->clearBeforeRendering();
}

void QQuickWindow_setColor(QQuickWindow* self, QColor* color) {
	self->setColor(*color);
}

QColor* QQuickWindow_color(const QQuickWindow* self) {
	return new QColor(self->color());
}

bool QQuickWindow_hasDefaultAlphaBuffer() {
	return QQuickWindow::hasDefaultAlphaBuffer();
}

void QQuickWindow_setDefaultAlphaBuffer(bool useAlpha) {
	QQuickWindow::setDefaultAlphaBuffer(useAlpha);
}

void QQuickWindow_setPersistentOpenGLContext(QQuickWindow* self, bool persistent) {
	self->setPersistentOpenGLContext(persistent);
}

bool QQuickWindow_isPersistentOpenGLContext(const QQuickWindow* self) {
	return self->isPersistentOpenGLContext();
}

void QQuickWindow_setPersistentSceneGraph(QQuickWindow* self, bool persistent) {
	self->setPersistentSceneGraph(persistent);
}

bool QQuickWindow_isPersistentSceneGraph(const QQuickWindow* self) {
	return self->isPersistentSceneGraph();
}

bool QQuickWindow_isSceneGraphInitialized(const QQuickWindow* self) {
	return self->isSceneGraphInitialized();
}

void QQuickWindow_scheduleRenderJob(QQuickWindow* self, QRunnable* job, int schedule) {
	self->scheduleRenderJob(job, static_cast<QQuickWindow::RenderStage>(schedule));
}

double QQuickWindow_effectiveDevicePixelRatio(const QQuickWindow* self) {
	qreal _ret = self->effectiveDevicePixelRatio();
	return static_cast<double>(_ret);
}

QSGRendererInterface* QQuickWindow_rendererInterface(const QQuickWindow* self) {
	return self->rendererInterface();
}

void QQuickWindow_setSceneGraphBackend(int api) {
	QQuickWindow::setSceneGraphBackend(static_cast<QSGRendererInterface::GraphicsApi>(api));
}

void QQuickWindow_setSceneGraphBackendWithBackend(struct miqt_string backend) {
	QString backend_QString = QString::fromUtf8(backend.data, backend.len);
	QQuickWindow::setSceneGraphBackend(backend_QString);
}

struct miqt_string QQuickWindow_sceneGraphBackend() {
	QString _ret = QQuickWindow::sceneGraphBackend();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSGRectangleNode* QQuickWindow_createRectangleNode(const QQuickWindow* self) {
	return self->createRectangleNode();
}

QSGImageNode* QQuickWindow_createImageNode(const QQuickWindow* self) {
	return self->createImageNode();
}

QSGNinePatchNode* QQuickWindow_createNinePatchNode(const QQuickWindow* self) {
	return self->createNinePatchNode();
}

int QQuickWindow_textRenderType() {
	QQuickWindow::TextRenderType _ret = QQuickWindow::textRenderType();
	return static_cast<int>(_ret);
}

void QQuickWindow_setTextRenderType(int renderType) {
	QQuickWindow::setTextRenderType(static_cast<QQuickWindow::TextRenderType>(renderType));
}

void QQuickWindow_frameSwapped(QQuickWindow* self) {
	self->frameSwapped();
}

void QQuickWindow_connect_frameSwapped(QQuickWindow* self, intptr_t slot) {
	MiqtVirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::frameSwapped), self, [=]() {
		miqt_exec_callback_QQuickWindow_frameSwapped(slot);
	});
}

void QQuickWindow_sceneGraphInitialized(QQuickWindow* self) {
	self->sceneGraphInitialized();
}

void QQuickWindow_connect_sceneGraphInitialized(QQuickWindow* self, intptr_t slot) {
	MiqtVirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::sceneGraphInitialized), self, [=]() {
		miqt_exec_callback_QQuickWindow_sceneGraphInitialized(slot);
	});
}

void QQuickWindow_sceneGraphInvalidated(QQuickWindow* self) {
	self->sceneGraphInvalidated();
}

void QQuickWindow_connect_sceneGraphInvalidated(QQuickWindow* self, intptr_t slot) {
	MiqtVirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::sceneGraphInvalidated), self, [=]() {
		miqt_exec_callback_QQuickWindow_sceneGraphInvalidated(slot);
	});
}

void QQuickWindow_beforeSynchronizing(QQuickWindow* self) {
	self->beforeSynchronizing();
}

void QQuickWindow_connect_beforeSynchronizing(QQuickWindow* self, intptr_t slot) {
	MiqtVirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::beforeSynchronizing), self, [=]() {
		miqt_exec_callback_QQuickWindow_beforeSynchronizing(slot);
	});
}

void QQuickWindow_afterSynchronizing(QQuickWindow* self) {
	self->afterSynchronizing();
}

void QQuickWindow_connect_afterSynchronizing(QQuickWindow* self, intptr_t slot) {
	MiqtVirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::afterSynchronizing), self, [=]() {
		miqt_exec_callback_QQuickWindow_afterSynchronizing(slot);
	});
}

void QQuickWindow_beforeRendering(QQuickWindow* self) {
	self->beforeRendering();
}

void QQuickWindow_connect_beforeRendering(QQuickWindow* self, intptr_t slot) {
	MiqtVirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::beforeRendering), self, [=]() {
		miqt_exec_callback_QQuickWindow_beforeRendering(slot);
	});
}

void QQuickWindow_afterRendering(QQuickWindow* self) {
	self->afterRendering();
}

void QQuickWindow_connect_afterRendering(QQuickWindow* self, intptr_t slot) {
	MiqtVirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::afterRendering), self, [=]() {
		miqt_exec_callback_QQuickWindow_afterRendering(slot);
	});
}

void QQuickWindow_afterAnimating(QQuickWindow* self) {
	self->afterAnimating();
}

void QQuickWindow_connect_afterAnimating(QQuickWindow* self, intptr_t slot) {
	MiqtVirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::afterAnimating), self, [=]() {
		miqt_exec_callback_QQuickWindow_afterAnimating(slot);
	});
}

void QQuickWindow_sceneGraphAboutToStop(QQuickWindow* self) {
	self->sceneGraphAboutToStop();
}

void QQuickWindow_connect_sceneGraphAboutToStop(QQuickWindow* self, intptr_t slot) {
	MiqtVirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::sceneGraphAboutToStop), self, [=]() {
		miqt_exec_callback_QQuickWindow_sceneGraphAboutToStop(slot);
	});
}

void QQuickWindow_colorChanged(QQuickWindow* self, QColor* param1) {
	self->colorChanged(*param1);
}

void QQuickWindow_connect_colorChanged(QQuickWindow* self, intptr_t slot) {
	MiqtVirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)(const QColor&)>(&QQuickWindow::colorChanged), self, [=](const QColor& param1) {
		const QColor& param1_ret = param1;
		// Cast returned reference into pointer
		QColor* sigval1 = const_cast<QColor*>(&param1_ret);
		miqt_exec_callback_QQuickWindow_colorChanged(slot, sigval1);
	});
}

void QQuickWindow_activeFocusItemChanged(QQuickWindow* self) {
	self->activeFocusItemChanged();
}

void QQuickWindow_connect_activeFocusItemChanged(QQuickWindow* self, intptr_t slot) {
	MiqtVirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::activeFocusItemChanged), self, [=]() {
		miqt_exec_callback_QQuickWindow_activeFocusItemChanged(slot);
	});
}

void QQuickWindow_sceneGraphError(QQuickWindow* self, int error, struct miqt_string message) {
	QString message_QString = QString::fromUtf8(message.data, message.len);
	self->sceneGraphError(static_cast<QQuickWindow::SceneGraphError>(error), message_QString);
}

void QQuickWindow_connect_sceneGraphError(QQuickWindow* self, intptr_t slot) {
	MiqtVirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)(QQuickWindow::SceneGraphError, const QString&)>(&QQuickWindow::sceneGraphError), self, [=](QQuickWindow::SceneGraphError error, const QString& message) {
		QQuickWindow::SceneGraphError error_ret = error;
		int sigval1 = static_cast<int>(error_ret);
		const QString message_ret = message;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray message_b = message_ret.toUtf8();
		struct miqt_string message_ms;
		message_ms.len = message_b.length();
		message_ms.data = static_cast<char*>(malloc(message_ms.len));
		memcpy(message_ms.data, message_b.data(), message_ms.len);
		struct miqt_string sigval2 = message_ms;
		miqt_exec_callback_QQuickWindow_sceneGraphError(slot, sigval1, sigval2);
	});
}

void QQuickWindow_beforeRenderPassRecording(QQuickWindow* self) {
	self->beforeRenderPassRecording();
}

void QQuickWindow_connect_beforeRenderPassRecording(QQuickWindow* self, intptr_t slot) {
	MiqtVirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::beforeRenderPassRecording), self, [=]() {
		miqt_exec_callback_QQuickWindow_beforeRenderPassRecording(slot);
	});
}

void QQuickWindow_afterRenderPassRecording(QQuickWindow* self) {
	self->afterRenderPassRecording();
}

void QQuickWindow_connect_afterRenderPassRecording(QQuickWindow* self, intptr_t slot) {
	MiqtVirtualQQuickWindow::connect(self, static_cast<void (QQuickWindow::*)()>(&QQuickWindow::afterRenderPassRecording), self, [=]() {
		miqt_exec_callback_QQuickWindow_afterRenderPassRecording(slot);
	});
}

void QQuickWindow_update(QQuickWindow* self) {
	self->update();
}

void QQuickWindow_releaseResources(QQuickWindow* self) {
	self->releaseResources();
}

struct miqt_string QQuickWindow_tr2(const char* s, const char* c) {
	QString _ret = QQuickWindow::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickWindow_tr3(const char* s, const char* c, int n) {
	QString _ret = QQuickWindow::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickWindow_trUtf82(const char* s, const char* c) {
	QString _ret = QQuickWindow::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickWindow_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQuickWindow::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSGTexture* QQuickWindow_createTextureFromId3(const QQuickWindow* self, unsigned int id, QSize* size, int options) {
	return self->createTextureFromId(static_cast<uint>(id), *size, static_cast<QQuickWindow::CreateTextureOptions>(options));
}

QSGTexture* QQuickWindow_createTextureFromNativeObject5(const QQuickWindow* self, int type, const void* nativeObjectPtr, int nativeLayout, QSize* size, int options) {
	return self->createTextureFromNativeObject(static_cast<QQuickWindow::NativeObjectType>(type), nativeObjectPtr, static_cast<int>(nativeLayout), *size, static_cast<QQuickWindow::CreateTextureOptions>(options));
}

QMetaObject* QQuickWindow_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQQuickWindow*)(self) )->virtualbase_metaObject();
}

void* QQuickWindow_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_metacast(param1);
}

int QQuickWindow_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QObject* QQuickWindow_virtualbase_focusObject(const void* self) {
	return ( (const MiqtVirtualQQuickWindow*)(self) )->virtualbase_focusObject();
}

QAccessibleInterface* QQuickWindow_virtualbase_accessibleRoot(const void* self) {
	return ( (const MiqtVirtualQQuickWindow*)(self) )->virtualbase_accessibleRoot();
}

void QQuickWindow_virtualbase_exposeEvent(void* self, QExposeEvent* param1) {
	( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_exposeEvent(param1);
}

void QQuickWindow_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {
	( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_resizeEvent(param1);
}

void QQuickWindow_virtualbase_showEvent(void* self, QShowEvent* param1) {
	( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_showEvent(param1);
}

void QQuickWindow_virtualbase_hideEvent(void* self, QHideEvent* param1) {
	( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_hideEvent(param1);
}

void QQuickWindow_virtualbase_focusInEvent(void* self, QFocusEvent* param1) {
	( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_focusInEvent(param1);
}

void QQuickWindow_virtualbase_focusOutEvent(void* self, QFocusEvent* param1) {
	( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_focusOutEvent(param1);
}

bool QQuickWindow_virtualbase_event(void* self, QEvent* param1) {
	return ( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_event(param1);
}

void QQuickWindow_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {
	( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_keyPressEvent(param1);
}

void QQuickWindow_virtualbase_keyReleaseEvent(void* self, QKeyEvent* param1) {
	( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_keyReleaseEvent(param1);
}

void QQuickWindow_virtualbase_mousePressEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_mousePressEvent(param1);
}

void QQuickWindow_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_mouseReleaseEvent(param1);
}

void QQuickWindow_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_mouseDoubleClickEvent(param1);
}

void QQuickWindow_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_mouseMoveEvent(param1);
}

void QQuickWindow_virtualbase_wheelEvent(void* self, QWheelEvent* param1) {
	( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_wheelEvent(param1);
}

void QQuickWindow_virtualbase_tabletEvent(void* self, QTabletEvent* param1) {
	( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_tabletEvent(param1);
}

int QQuickWindow_virtualbase_surfaceType(const void* self) {
	return ( (const MiqtVirtualQQuickWindow*)(self) )->virtualbase_surfaceType();
}

QSurfaceFormat* QQuickWindow_virtualbase_format(const void* self) {
	return ( (const MiqtVirtualQQuickWindow*)(self) )->virtualbase_format();
}

QSize* QQuickWindow_virtualbase_size(const void* self) {
	return ( (const MiqtVirtualQQuickWindow*)(self) )->virtualbase_size();
}

void QQuickWindow_virtualbase_moveEvent(void* self, QMoveEvent* param1) {
	( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_moveEvent(param1);
}

void QQuickWindow_virtualbase_touchEvent(void* self, QTouchEvent* param1) {
	( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_touchEvent(param1);
}

bool QQuickWindow_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	return ( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

bool QQuickWindow_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_eventFilter(watched, event);
}

void QQuickWindow_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_timerEvent(event);
}

void QQuickWindow_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_childEvent(event);
}

void QQuickWindow_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_customEvent(event);
}

void QQuickWindow_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_connectNotify(signal);
}

void QQuickWindow_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickWindow*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QQuickWindow_staticMetaObject() { return &QQuickWindow::staticMetaObject; }
QObject* QQuickWindow_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQQuickWindow* self_cast = dynamic_cast<MiqtVirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QQuickWindow_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQQuickWindow* self_cast = dynamic_cast<MiqtVirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QQuickWindow_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	MiqtVirtualQQuickWindow* self_cast = dynamic_cast<MiqtVirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QQuickWindow_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	MiqtVirtualQQuickWindow* self_cast = dynamic_cast<MiqtVirtualQQuickWindow*>( (QQuickWindow*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QQuickWindow_delete(QQuickWindow* self) {
	delete self;
}

void QQuickWindow__GraphicsStateInfo_delete(QQuickWindow__GraphicsStateInfo* self) {
	delete self;
}

