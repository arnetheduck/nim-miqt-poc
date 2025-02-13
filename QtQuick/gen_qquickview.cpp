#include <QAccessibleInterface>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QExposeEvent>
#include <QFocusEvent>
#include <QHideEvent>
#include <QKeyEvent>
#include <QList>
#include <QMap>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QQmlComponent>
#include <QQmlContext>
#include <QQmlEngine>
#include <QQmlError>
#include <QQuickItem>
#include <QQuickRenderControl>
#include <QQuickView>
#include <QQuickWindow>
#include <QResizeEvent>
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
#include <QUrl>
#include <QVariant>
#include <QWheelEvent>
#include <QWindow>
#include <qquickview.h>
#include "gen_qquickview.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QQuickView_statusChanged(intptr_t, int);
void miqt_exec_callback_QQuickView_resizeEvent(QQuickView*, intptr_t, QResizeEvent*);
void miqt_exec_callback_QQuickView_timerEvent(QQuickView*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QQuickView_keyPressEvent(QQuickView*, intptr_t, QKeyEvent*);
void miqt_exec_callback_QQuickView_keyReleaseEvent(QQuickView*, intptr_t, QKeyEvent*);
void miqt_exec_callback_QQuickView_mousePressEvent(QQuickView*, intptr_t, QMouseEvent*);
void miqt_exec_callback_QQuickView_mouseReleaseEvent(QQuickView*, intptr_t, QMouseEvent*);
void miqt_exec_callback_QQuickView_mouseMoveEvent(QQuickView*, intptr_t, QMouseEvent*);
QObject* miqt_exec_callback_QQuickView_focusObject(const QQuickView*, intptr_t);
QAccessibleInterface* miqt_exec_callback_QQuickView_accessibleRoot(const QQuickView*, intptr_t);
void miqt_exec_callback_QQuickView_exposeEvent(QQuickView*, intptr_t, QExposeEvent*);
void miqt_exec_callback_QQuickView_showEvent(QQuickView*, intptr_t, QShowEvent*);
void miqt_exec_callback_QQuickView_hideEvent(QQuickView*, intptr_t, QHideEvent*);
void miqt_exec_callback_QQuickView_focusInEvent(QQuickView*, intptr_t, QFocusEvent*);
void miqt_exec_callback_QQuickView_focusOutEvent(QQuickView*, intptr_t, QFocusEvent*);
bool miqt_exec_callback_QQuickView_event(QQuickView*, intptr_t, QEvent*);
void miqt_exec_callback_QQuickView_mouseDoubleClickEvent(QQuickView*, intptr_t, QMouseEvent*);
void miqt_exec_callback_QQuickView_wheelEvent(QQuickView*, intptr_t, QWheelEvent*);
void miqt_exec_callback_QQuickView_tabletEvent(QQuickView*, intptr_t, QTabletEvent*);
int miqt_exec_callback_QQuickView_surfaceType(const QQuickView*, intptr_t);
QSurfaceFormat* miqt_exec_callback_QQuickView_format(const QQuickView*, intptr_t);
QSize* miqt_exec_callback_QQuickView_size(const QQuickView*, intptr_t);
void miqt_exec_callback_QQuickView_moveEvent(QQuickView*, intptr_t, QMoveEvent*);
void miqt_exec_callback_QQuickView_touchEvent(QQuickView*, intptr_t, QTouchEvent*);
bool miqt_exec_callback_QQuickView_nativeEvent(QQuickView*, intptr_t, struct miqt_string, void*, long*);
bool miqt_exec_callback_QQuickView_eventFilter(QQuickView*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QQuickView_childEvent(QQuickView*, intptr_t, QChildEvent*);
void miqt_exec_callback_QQuickView_customEvent(QQuickView*, intptr_t, QEvent*);
void miqt_exec_callback_QQuickView_connectNotify(QQuickView*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QQuickView_disconnectNotify(QQuickView*, intptr_t, QMetaMethod*);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQQuickView final : public QQuickView {
public:

	MiqtVirtualQQuickView(): QQuickView() {};
	MiqtVirtualQQuickView(QQmlEngine* engine, QWindow* parent): QQuickView(engine, parent) {};
	MiqtVirtualQQuickView(const QUrl& source): QQuickView(source) {};
	MiqtVirtualQQuickView(const QUrl& source, QQuickRenderControl* renderControl): QQuickView(source, renderControl) {};
	MiqtVirtualQQuickView(QWindow* parent): QQuickView(parent) {};
	MiqtVirtualQQuickView(const QUrl& source, QWindow* parent): QQuickView(source, parent) {};

	virtual ~MiqtVirtualQQuickView() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__resizeEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (handle__resizeEvent == 0) {
			QQuickView::resizeEvent(param1);
			return;
		}
		
		QResizeEvent* sigval1 = param1;

		miqt_exec_callback_QQuickView_resizeEvent(this, handle__resizeEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* param1) {

		QQuickView::resizeEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* param1) override {
		if (handle__timerEvent == 0) {
			QQuickView::timerEvent(param1);
			return;
		}
		
		QTimerEvent* sigval1 = param1;

		miqt_exec_callback_QQuickView_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* param1) {

		QQuickView::timerEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__keyPressEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (handle__keyPressEvent == 0) {
			QQuickView::keyPressEvent(param1);
			return;
		}
		
		QKeyEvent* sigval1 = param1;

		miqt_exec_callback_QQuickView_keyPressEvent(this, handle__keyPressEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* param1) {

		QQuickView::keyPressEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__keyReleaseEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* param1) override {
		if (handle__keyReleaseEvent == 0) {
			QQuickView::keyReleaseEvent(param1);
			return;
		}
		
		QKeyEvent* sigval1 = param1;

		miqt_exec_callback_QQuickView_keyReleaseEvent(this, handle__keyReleaseEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* param1) {

		QQuickView::keyReleaseEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__mousePressEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (handle__mousePressEvent == 0) {
			QQuickView::mousePressEvent(param1);
			return;
		}
		
		QMouseEvent* sigval1 = param1;

		miqt_exec_callback_QQuickView_mousePressEvent(this, handle__mousePressEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* param1) {

		QQuickView::mousePressEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__mouseReleaseEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (handle__mouseReleaseEvent == 0) {
			QQuickView::mouseReleaseEvent(param1);
			return;
		}
		
		QMouseEvent* sigval1 = param1;

		miqt_exec_callback_QQuickView_mouseReleaseEvent(this, handle__mouseReleaseEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* param1) {

		QQuickView::mouseReleaseEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__mouseMoveEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (handle__mouseMoveEvent == 0) {
			QQuickView::mouseMoveEvent(param1);
			return;
		}
		
		QMouseEvent* sigval1 = param1;

		miqt_exec_callback_QQuickView_mouseMoveEvent(this, handle__mouseMoveEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* param1) {

		QQuickView::mouseMoveEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__focusObject = 0;

	// Subclass to allow providing a Go implementation
	virtual QObject* focusObject() const override {
		if (handle__focusObject == 0) {
			return QQuickView::focusObject();
		}
		

		QObject* callback_return_value = miqt_exec_callback_QQuickView_focusObject(this, handle__focusObject);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QObject* virtualbase_focusObject() const {

		return QQuickView::focusObject();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__accessibleRoot = 0;

	// Subclass to allow providing a Go implementation
	virtual QAccessibleInterface* accessibleRoot() const override {
		if (handle__accessibleRoot == 0) {
			return QQuickView::accessibleRoot();
		}
		

		QAccessibleInterface* callback_return_value = miqt_exec_callback_QQuickView_accessibleRoot(this, handle__accessibleRoot);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QAccessibleInterface* virtualbase_accessibleRoot() const {

		return QQuickView::accessibleRoot();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__exposeEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void exposeEvent(QExposeEvent* param1) override {
		if (handle__exposeEvent == 0) {
			QQuickView::exposeEvent(param1);
			return;
		}
		
		QExposeEvent* sigval1 = param1;

		miqt_exec_callback_QQuickView_exposeEvent(this, handle__exposeEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_exposeEvent(QExposeEvent* param1) {

		QQuickView::exposeEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__showEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (handle__showEvent == 0) {
			QQuickView::showEvent(param1);
			return;
		}
		
		QShowEvent* sigval1 = param1;

		miqt_exec_callback_QQuickView_showEvent(this, handle__showEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* param1) {

		QQuickView::showEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__hideEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* param1) override {
		if (handle__hideEvent == 0) {
			QQuickView::hideEvent(param1);
			return;
		}
		
		QHideEvent* sigval1 = param1;

		miqt_exec_callback_QQuickView_hideEvent(this, handle__hideEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* param1) {

		QQuickView::hideEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__focusInEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* param1) override {
		if (handle__focusInEvent == 0) {
			QQuickView::focusInEvent(param1);
			return;
		}
		
		QFocusEvent* sigval1 = param1;

		miqt_exec_callback_QQuickView_focusInEvent(this, handle__focusInEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* param1) {

		QQuickView::focusInEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__focusOutEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (handle__focusOutEvent == 0) {
			QQuickView::focusOutEvent(param1);
			return;
		}
		
		QFocusEvent* sigval1 = param1;

		miqt_exec_callback_QQuickView_focusOutEvent(this, handle__focusOutEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* param1) {

		QQuickView::focusOutEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (handle__event == 0) {
			return QQuickView::event(param1);
		}
		
		QEvent* sigval1 = param1;

		bool callback_return_value = miqt_exec_callback_QQuickView_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* param1) {

		return QQuickView::event(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__mouseDoubleClickEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* param1) override {
		if (handle__mouseDoubleClickEvent == 0) {
			QQuickView::mouseDoubleClickEvent(param1);
			return;
		}
		
		QMouseEvent* sigval1 = param1;

		miqt_exec_callback_QQuickView_mouseDoubleClickEvent(this, handle__mouseDoubleClickEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* param1) {

		QQuickView::mouseDoubleClickEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__wheelEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* param1) override {
		if (handle__wheelEvent == 0) {
			QQuickView::wheelEvent(param1);
			return;
		}
		
		QWheelEvent* sigval1 = param1;

		miqt_exec_callback_QQuickView_wheelEvent(this, handle__wheelEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* param1) {

		QQuickView::wheelEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__tabletEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* param1) override {
		if (handle__tabletEvent == 0) {
			QQuickView::tabletEvent(param1);
			return;
		}
		
		QTabletEvent* sigval1 = param1;

		miqt_exec_callback_QQuickView_tabletEvent(this, handle__tabletEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* param1) {

		QQuickView::tabletEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__surfaceType = 0;

	// Subclass to allow providing a Go implementation
	virtual QSurface::SurfaceType surfaceType() const override {
		if (handle__surfaceType == 0) {
			return QQuickView::surfaceType();
		}
		

		int callback_return_value = miqt_exec_callback_QQuickView_surfaceType(this, handle__surfaceType);

		return static_cast<QSurface::SurfaceType>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_surfaceType() const {

		QSurface::SurfaceType _ret = QQuickView::surfaceType();
		return static_cast<int>(_ret);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__format = 0;

	// Subclass to allow providing a Go implementation
	virtual QSurfaceFormat format() const override {
		if (handle__format == 0) {
			return QQuickView::format();
		}
		

		QSurfaceFormat* callback_return_value = miqt_exec_callback_QQuickView_format(this, handle__format);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSurfaceFormat* virtualbase_format() const {

		return new QSurfaceFormat(QQuickView::format());

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__size = 0;

	// Subclass to allow providing a Go implementation
	virtual QSize size() const override {
		if (handle__size == 0) {
			return QQuickView::size();
		}
		

		QSize* callback_return_value = miqt_exec_callback_QQuickView_size(this, handle__size);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_size() const {

		return new QSize(QQuickView::size());

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__moveEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* param1) override {
		if (handle__moveEvent == 0) {
			QQuickView::moveEvent(param1);
			return;
		}
		
		QMoveEvent* sigval1 = param1;

		miqt_exec_callback_QQuickView_moveEvent(this, handle__moveEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* param1) {

		QQuickView::moveEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__touchEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void touchEvent(QTouchEvent* param1) override {
		if (handle__touchEvent == 0) {
			QQuickView::touchEvent(param1);
			return;
		}
		
		QTouchEvent* sigval1 = param1;

		miqt_exec_callback_QQuickView_touchEvent(this, handle__touchEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_touchEvent(QTouchEvent* param1) {

		QQuickView::touchEvent(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__nativeEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (handle__nativeEvent == 0) {
			return QQuickView::nativeEvent(eventType, message, result);
		}
		
		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		long* sigval3 = result;

		bool callback_return_value = miqt_exec_callback_QQuickView_nativeEvent(this, handle__nativeEvent, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_nativeEvent(struct miqt_string eventType, void* message, long* result) {
		QByteArray eventType_QByteArray(eventType.data, eventType.len);

		return QQuickView::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QQuickView::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QQuickView_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QQuickView::eventFilter(watched, event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QQuickView::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QQuickView_childEvent(this, handle__childEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QQuickView::childEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QQuickView::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QQuickView_customEvent(this, handle__customEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QQuickView::customEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QQuickView::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQuickView_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QQuickView::connectNotify(*signal);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QQuickView::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQuickView_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QQuickView::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend QObject* QQuickView_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickView_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickView_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QQuickView_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QQuickView* QQuickView_new() {
	return new MiqtVirtualQQuickView();
}

QQuickView* QQuickView_new2(QQmlEngine* engine, QWindow* parent) {
	return new MiqtVirtualQQuickView(engine, parent);
}

QQuickView* QQuickView_new3(QUrl* source) {
	return new MiqtVirtualQQuickView(*source);
}

QQuickView* QQuickView_new4(QUrl* source, QQuickRenderControl* renderControl) {
	return new MiqtVirtualQQuickView(*source, renderControl);
}

QQuickView* QQuickView_new5(QWindow* parent) {
	return new MiqtVirtualQQuickView(parent);
}

QQuickView* QQuickView_new6(QUrl* source, QWindow* parent) {
	return new MiqtVirtualQQuickView(*source, parent);
}

void QQuickView_virtbase(QQuickView* src, QQuickWindow** outptr_QQuickWindow) {
	*outptr_QQuickWindow = static_cast<QQuickWindow*>(src);
}

QMetaObject* QQuickView_metaObject(const QQuickView* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickView_metacast(QQuickView* self, const char* param1) {
	return self->qt_metacast(param1);
}

struct miqt_string QQuickView_tr(const char* s) {
	QString _ret = QQuickView::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickView_trUtf8(const char* s) {
	QString _ret = QQuickView::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QQuickView_source(const QQuickView* self) {
	return new QUrl(self->source());
}

QQmlEngine* QQuickView_engine(const QQuickView* self) {
	return self->engine();
}

QQmlContext* QQuickView_rootContext(const QQuickView* self) {
	return self->rootContext();
}

QQuickItem* QQuickView_rootObject(const QQuickView* self) {
	return self->rootObject();
}

int QQuickView_resizeMode(const QQuickView* self) {
	QQuickView::ResizeMode _ret = self->resizeMode();
	return static_cast<int>(_ret);
}

void QQuickView_setResizeMode(QQuickView* self, int resizeMode) {
	self->setResizeMode(static_cast<QQuickView::ResizeMode>(resizeMode));
}

int QQuickView_status(const QQuickView* self) {
	QQuickView::Status _ret = self->status();
	return static_cast<int>(_ret);
}

struct miqt_array /* of QQmlError* */  QQuickView_errors(const QQuickView* self) {
	QList<QQmlError> _ret = self->errors();
	// Convert QList<> from C++ memory to manually-managed C memory
	QQmlError** _arr = static_cast<QQmlError**>(malloc(sizeof(QQmlError*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QQmlError(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QSize* QQuickView_sizeHint(const QQuickView* self) {
	return new QSize(self->sizeHint());
}

QSize* QQuickView_initialSize(const QQuickView* self) {
	return new QSize(self->initialSize());
}

void QQuickView_setSource(QQuickView* self, QUrl* source) {
	self->setSource(*source);
}

void QQuickView_setInitialProperties(QQuickView* self, struct miqt_map /* of struct miqt_string to QVariant* */  initialProperties) {
	QVariantMap initialProperties_QMap;
	struct miqt_string* initialProperties_karr = static_cast<struct miqt_string*>(initialProperties.keys);
	QVariant** initialProperties_varr = static_cast<QVariant**>(initialProperties.values);
	for(size_t i = 0; i < initialProperties.len; ++i) {
		QString initialProperties_karr_i_QString = QString::fromUtf8(initialProperties_karr[i].data, initialProperties_karr[i].len);
		initialProperties_QMap[initialProperties_karr_i_QString] = *(initialProperties_varr[i]);
	}
	self->setInitialProperties(initialProperties_QMap);
}

void QQuickView_setContent(QQuickView* self, QUrl* url, QQmlComponent* component, QObject* item) {
	self->setContent(*url, component, item);
}

void QQuickView_statusChanged(QQuickView* self, int param1) {
	self->statusChanged(static_cast<QQuickView::Status>(param1));
}

void QQuickView_connect_statusChanged(QQuickView* self, intptr_t slot) {
	MiqtVirtualQQuickView::connect(self, static_cast<void (QQuickView::*)(QQuickView::Status)>(&QQuickView::statusChanged), self, [=](QQuickView::Status param1) {
		QQuickView::Status param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		miqt_exec_callback_QQuickView_statusChanged(slot, sigval1);
	});
}

struct miqt_string QQuickView_tr2(const char* s, const char* c) {
	QString _ret = QQuickView::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickView_tr3(const char* s, const char* c, int n) {
	QString _ret = QQuickView::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickView_trUtf82(const char* s, const char* c) {
	QString _ret = QQuickView::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickView_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQuickView::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QQuickView_override_virtual_resizeEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__resizeEvent = slot;
	return true;
}

void QQuickView_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_resizeEvent(param1);
}

bool QQuickView_override_virtual_timerEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QQuickView_virtualbase_timerEvent(void* self, QTimerEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_timerEvent(param1);
}

bool QQuickView_override_virtual_keyPressEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__keyPressEvent = slot;
	return true;
}

void QQuickView_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_keyPressEvent(param1);
}

bool QQuickView_override_virtual_keyReleaseEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__keyReleaseEvent = slot;
	return true;
}

void QQuickView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_keyReleaseEvent(param1);
}

bool QQuickView_override_virtual_mousePressEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__mousePressEvent = slot;
	return true;
}

void QQuickView_virtualbase_mousePressEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_mousePressEvent(param1);
}

bool QQuickView_override_virtual_mouseReleaseEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__mouseReleaseEvent = slot;
	return true;
}

void QQuickView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_mouseReleaseEvent(param1);
}

bool QQuickView_override_virtual_mouseMoveEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__mouseMoveEvent = slot;
	return true;
}

void QQuickView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_mouseMoveEvent(param1);
}

bool QQuickView_override_virtual_focusObject(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__focusObject = slot;
	return true;
}

QObject* QQuickView_virtualbase_focusObject(const void* self) {
	return ( (const MiqtVirtualQQuickView*)(self) )->virtualbase_focusObject();
}

bool QQuickView_override_virtual_accessibleRoot(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__accessibleRoot = slot;
	return true;
}

QAccessibleInterface* QQuickView_virtualbase_accessibleRoot(const void* self) {
	return ( (const MiqtVirtualQQuickView*)(self) )->virtualbase_accessibleRoot();
}

bool QQuickView_override_virtual_exposeEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__exposeEvent = slot;
	return true;
}

void QQuickView_virtualbase_exposeEvent(void* self, QExposeEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_exposeEvent(param1);
}

bool QQuickView_override_virtual_showEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__showEvent = slot;
	return true;
}

void QQuickView_virtualbase_showEvent(void* self, QShowEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_showEvent(param1);
}

bool QQuickView_override_virtual_hideEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__hideEvent = slot;
	return true;
}

void QQuickView_virtualbase_hideEvent(void* self, QHideEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_hideEvent(param1);
}

bool QQuickView_override_virtual_focusInEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__focusInEvent = slot;
	return true;
}

void QQuickView_virtualbase_focusInEvent(void* self, QFocusEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_focusInEvent(param1);
}

bool QQuickView_override_virtual_focusOutEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__focusOutEvent = slot;
	return true;
}

void QQuickView_virtualbase_focusOutEvent(void* self, QFocusEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_focusOutEvent(param1);
}

bool QQuickView_override_virtual_event(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QQuickView_virtualbase_event(void* self, QEvent* param1) {
	return ( (MiqtVirtualQQuickView*)(self) )->virtualbase_event(param1);
}

bool QQuickView_override_virtual_mouseDoubleClickEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__mouseDoubleClickEvent = slot;
	return true;
}

void QQuickView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_mouseDoubleClickEvent(param1);
}

bool QQuickView_override_virtual_wheelEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__wheelEvent = slot;
	return true;
}

void QQuickView_virtualbase_wheelEvent(void* self, QWheelEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_wheelEvent(param1);
}

bool QQuickView_override_virtual_tabletEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__tabletEvent = slot;
	return true;
}

void QQuickView_virtualbase_tabletEvent(void* self, QTabletEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_tabletEvent(param1);
}

bool QQuickView_override_virtual_surfaceType(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__surfaceType = slot;
	return true;
}

int QQuickView_virtualbase_surfaceType(const void* self) {
	return ( (const MiqtVirtualQQuickView*)(self) )->virtualbase_surfaceType();
}

bool QQuickView_override_virtual_format(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__format = slot;
	return true;
}

QSurfaceFormat* QQuickView_virtualbase_format(const void* self) {
	return ( (const MiqtVirtualQQuickView*)(self) )->virtualbase_format();
}

bool QQuickView_override_virtual_size(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__size = slot;
	return true;
}

QSize* QQuickView_virtualbase_size(const void* self) {
	return ( (const MiqtVirtualQQuickView*)(self) )->virtualbase_size();
}

bool QQuickView_override_virtual_moveEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__moveEvent = slot;
	return true;
}

void QQuickView_virtualbase_moveEvent(void* self, QMoveEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_moveEvent(param1);
}

bool QQuickView_override_virtual_touchEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__touchEvent = slot;
	return true;
}

void QQuickView_virtualbase_touchEvent(void* self, QTouchEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_touchEvent(param1);
}

bool QQuickView_override_virtual_nativeEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__nativeEvent = slot;
	return true;
}

bool QQuickView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	return ( (MiqtVirtualQQuickView*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

bool QQuickView_override_virtual_eventFilter(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QQuickView_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQQuickView*)(self) )->virtualbase_eventFilter(watched, event);
}

bool QQuickView_override_virtual_childEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QQuickView_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_childEvent(event);
}

bool QQuickView_override_virtual_customEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QQuickView_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_customEvent(event);
}

bool QQuickView_override_virtual_connectNotify(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QQuickView_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_connectNotify(signal);
}

bool QQuickView_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QQuickView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_disconnectNotify(signal);
}

QObject* QQuickView_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QQuickView_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QQuickView_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QQuickView_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	MiqtVirtualQQuickView* self_cast = dynamic_cast<MiqtVirtualQQuickView*>( (QQuickView*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QQuickView_delete(QQuickView* self) {
	delete self;
}

