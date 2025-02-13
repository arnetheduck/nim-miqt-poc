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
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQQuickView final : public QQuickView {
	struct QQuickView_VTable* vtbl;
public:

	MiqtVirtualQQuickView(struct QQuickView_VTable* vtbl): QQuickView(), vtbl(vtbl) {};
	MiqtVirtualQQuickView(struct QQuickView_VTable* vtbl, QQmlEngine* engine, QWindow* parent): QQuickView(engine, parent), vtbl(vtbl) {};
	MiqtVirtualQQuickView(struct QQuickView_VTable* vtbl, const QUrl& source): QQuickView(source), vtbl(vtbl) {};
	MiqtVirtualQQuickView(struct QQuickView_VTable* vtbl, const QUrl& source, QQuickRenderControl* renderControl): QQuickView(source, renderControl), vtbl(vtbl) {};
	MiqtVirtualQQuickView(struct QQuickView_VTable* vtbl, QWindow* parent): QQuickView(parent), vtbl(vtbl) {};
	MiqtVirtualQQuickView(struct QQuickView_VTable* vtbl, const QUrl& source, QWindow* parent): QQuickView(source, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQQuickView() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQuickView::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QQuickView::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQuickView::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QQuickView::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQuickView::qt_metacall(param1, param2, param3);
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

		return QQuickView::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* param1) override {
		if (vtbl->resizeEvent == 0) {
			QQuickView::resizeEvent(param1);
			return;
		}

		QResizeEvent* sigval1 = param1;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* param1) {

		QQuickView::resizeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QQuickView::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* param1) {

		QQuickView::timerEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* param1) override {
		if (vtbl->keyPressEvent == 0) {
			QQuickView::keyPressEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* param1) {

		QQuickView::keyPressEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* param1) override {
		if (vtbl->keyReleaseEvent == 0) {
			QQuickView::keyReleaseEvent(param1);
			return;
		}

		QKeyEvent* sigval1 = param1;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* param1) {

		QQuickView::keyReleaseEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* param1) override {
		if (vtbl->mousePressEvent == 0) {
			QQuickView::mousePressEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* param1) {

		QQuickView::mousePressEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* param1) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QQuickView::mouseReleaseEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* param1) {

		QQuickView::mouseReleaseEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* param1) override {
		if (vtbl->mouseMoveEvent == 0) {
			QQuickView::mouseMoveEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* param1) {

		QQuickView::mouseMoveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QObject* focusObject() const override {
		if (vtbl->focusObject == 0) {
			return QQuickView::focusObject();
		}


		QObject* callback_return_value = vtbl->focusObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QObject* virtualbase_focusObject() const {

		return QQuickView::focusObject();

	}

	// Subclass to allow providing a Go implementation
	virtual QAccessibleInterface* accessibleRoot() const override {
		if (vtbl->accessibleRoot == 0) {
			return QQuickView::accessibleRoot();
		}


		QAccessibleInterface* callback_return_value = vtbl->accessibleRoot(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QAccessibleInterface* virtualbase_accessibleRoot() const {

		return QQuickView::accessibleRoot();

	}

	// Subclass to allow providing a Go implementation
	virtual void exposeEvent(QExposeEvent* param1) override {
		if (vtbl->exposeEvent == 0) {
			QQuickView::exposeEvent(param1);
			return;
		}

		QExposeEvent* sigval1 = param1;

		vtbl->exposeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_exposeEvent(QExposeEvent* param1) {

		QQuickView::exposeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* param1) override {
		if (vtbl->showEvent == 0) {
			QQuickView::showEvent(param1);
			return;
		}

		QShowEvent* sigval1 = param1;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* param1) {

		QQuickView::showEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* param1) override {
		if (vtbl->hideEvent == 0) {
			QQuickView::hideEvent(param1);
			return;
		}

		QHideEvent* sigval1 = param1;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* param1) {

		QQuickView::hideEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* param1) override {
		if (vtbl->focusInEvent == 0) {
			QQuickView::focusInEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* param1) {

		QQuickView::focusInEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* param1) override {
		if (vtbl->focusOutEvent == 0) {
			QQuickView::focusOutEvent(param1);
			return;
		}

		QFocusEvent* sigval1 = param1;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* param1) {

		QQuickView::focusOutEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QQuickView::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* param1) {

		return QQuickView::event(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* param1) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QQuickView::mouseDoubleClickEvent(param1);
			return;
		}

		QMouseEvent* sigval1 = param1;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* param1) {

		QQuickView::mouseDoubleClickEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QQuickView::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* param1) {

		QQuickView::wheelEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* param1) override {
		if (vtbl->tabletEvent == 0) {
			QQuickView::tabletEvent(param1);
			return;
		}

		QTabletEvent* sigval1 = param1;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* param1) {

		QQuickView::tabletEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual QSurface::SurfaceType surfaceType() const override {
		if (vtbl->surfaceType == 0) {
			return QQuickView::surfaceType();
		}


		int callback_return_value = vtbl->surfaceType(vtbl, this);

		return static_cast<QSurface::SurfaceType>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_surfaceType() const {

		QSurface::SurfaceType _ret = QQuickView::surfaceType();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual QSurfaceFormat format() const override {
		if (vtbl->format == 0) {
			return QQuickView::format();
		}


		QSurfaceFormat* callback_return_value = vtbl->format(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSurfaceFormat* virtualbase_format() const {

		return new QSurfaceFormat(QQuickView::format());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize size() const override {
		if (vtbl->size == 0) {
			return QQuickView::size();
		}


		QSize* callback_return_value = vtbl->size(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_size() const {

		return new QSize(QQuickView::size());

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* param1) override {
		if (vtbl->moveEvent == 0) {
			QQuickView::moveEvent(param1);
			return;
		}

		QMoveEvent* sigval1 = param1;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* param1) {

		QQuickView::moveEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void touchEvent(QTouchEvent* param1) override {
		if (vtbl->touchEvent == 0) {
			QQuickView::touchEvent(param1);
			return;
		}

		QTouchEvent* sigval1 = param1;

		vtbl->touchEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_touchEvent(QTouchEvent* param1) {

		QQuickView::touchEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
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

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_nativeEvent(struct miqt_string eventType, void* message, long* result) {
		QByteArray eventType_QByteArray(eventType.data, eventType.len);

		return QQuickView::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQuickView::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QQuickView::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQuickView::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QQuickView::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQuickView::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QQuickView::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQuickView::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QQuickView::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQuickView::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

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

QQuickView* QQuickView_new(struct QQuickView_VTable* vtbl) {
	return new MiqtVirtualQQuickView(vtbl);
}

QQuickView* QQuickView_new2(struct QQuickView_VTable* vtbl, QQmlEngine* engine, QWindow* parent) {
	return new MiqtVirtualQQuickView(vtbl, engine, parent);
}

QQuickView* QQuickView_new3(struct QQuickView_VTable* vtbl, QUrl* source) {
	return new MiqtVirtualQQuickView(vtbl, *source);
}

QQuickView* QQuickView_new4(struct QQuickView_VTable* vtbl, QUrl* source, QQuickRenderControl* renderControl) {
	return new MiqtVirtualQQuickView(vtbl, *source, renderControl);
}

QQuickView* QQuickView_new5(struct QQuickView_VTable* vtbl, QWindow* parent) {
	return new MiqtVirtualQQuickView(vtbl, parent);
}

QQuickView* QQuickView_new6(struct QQuickView_VTable* vtbl, QUrl* source, QWindow* parent) {
	return new MiqtVirtualQQuickView(vtbl, *source, parent);
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

int QQuickView_metacall(QQuickView* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
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

QMetaObject* QQuickView_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQQuickView*)(self) )->virtualbase_metaObject();
}

void* QQuickView_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQQuickView*)(self) )->virtualbase_metacast(param1);
}

int QQuickView_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQQuickView*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QQuickView_virtualbase_resizeEvent(void* self, QResizeEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_resizeEvent(param1);
}

void QQuickView_virtualbase_timerEvent(void* self, QTimerEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_timerEvent(param1);
}

void QQuickView_virtualbase_keyPressEvent(void* self, QKeyEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_keyPressEvent(param1);
}

void QQuickView_virtualbase_keyReleaseEvent(void* self, QKeyEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_keyReleaseEvent(param1);
}

void QQuickView_virtualbase_mousePressEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_mousePressEvent(param1);
}

void QQuickView_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_mouseReleaseEvent(param1);
}

void QQuickView_virtualbase_mouseMoveEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_mouseMoveEvent(param1);
}

QObject* QQuickView_virtualbase_focusObject(const void* self) {
	return ( (const MiqtVirtualQQuickView*)(self) )->virtualbase_focusObject();
}

QAccessibleInterface* QQuickView_virtualbase_accessibleRoot(const void* self) {
	return ( (const MiqtVirtualQQuickView*)(self) )->virtualbase_accessibleRoot();
}

void QQuickView_virtualbase_exposeEvent(void* self, QExposeEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_exposeEvent(param1);
}

void QQuickView_virtualbase_showEvent(void* self, QShowEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_showEvent(param1);
}

void QQuickView_virtualbase_hideEvent(void* self, QHideEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_hideEvent(param1);
}

void QQuickView_virtualbase_focusInEvent(void* self, QFocusEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_focusInEvent(param1);
}

void QQuickView_virtualbase_focusOutEvent(void* self, QFocusEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_focusOutEvent(param1);
}

bool QQuickView_virtualbase_event(void* self, QEvent* param1) {
	return ( (MiqtVirtualQQuickView*)(self) )->virtualbase_event(param1);
}

void QQuickView_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_mouseDoubleClickEvent(param1);
}

void QQuickView_virtualbase_wheelEvent(void* self, QWheelEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_wheelEvent(param1);
}

void QQuickView_virtualbase_tabletEvent(void* self, QTabletEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_tabletEvent(param1);
}

int QQuickView_virtualbase_surfaceType(const void* self) {
	return ( (const MiqtVirtualQQuickView*)(self) )->virtualbase_surfaceType();
}

QSurfaceFormat* QQuickView_virtualbase_format(const void* self) {
	return ( (const MiqtVirtualQQuickView*)(self) )->virtualbase_format();
}

QSize* QQuickView_virtualbase_size(const void* self) {
	return ( (const MiqtVirtualQQuickView*)(self) )->virtualbase_size();
}

void QQuickView_virtualbase_moveEvent(void* self, QMoveEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_moveEvent(param1);
}

void QQuickView_virtualbase_touchEvent(void* self, QTouchEvent* param1) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_touchEvent(param1);
}

bool QQuickView_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	return ( (MiqtVirtualQQuickView*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

bool QQuickView_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQQuickView*)(self) )->virtualbase_eventFilter(watched, event);
}

void QQuickView_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_childEvent(event);
}

void QQuickView_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_customEvent(event);
}

void QQuickView_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_connectNotify(signal);
}

void QQuickView_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickView*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QQuickView_staticMetaObject() { return &QQuickView::staticMetaObject; }
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

