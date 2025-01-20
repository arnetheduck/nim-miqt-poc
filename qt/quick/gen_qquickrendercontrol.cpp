#include <QChildEvent>
#include <QEvent>
#include <QImage>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPoint>
#include <QQuickRenderControl>
#include <QQuickWindow>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <QWindow>
#include <qquickrendercontrol.h>
#include "gen_qquickrendercontrol.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QQuickRenderControl_renderRequested(intptr_t);
void miqt_exec_callback_QQuickRenderControl_sceneChanged(intptr_t);
QMetaObject* miqt_exec_callback_QQuickRenderControl_metaObject(const QQuickRenderControl*, intptr_t);
void* miqt_exec_callback_QQuickRenderControl_metacast(QQuickRenderControl*, intptr_t, const char*);
int miqt_exec_callback_QQuickRenderControl_metacall(QQuickRenderControl*, intptr_t, int, int, void**);
QWindow* miqt_exec_callback_QQuickRenderControl_renderWindow(QQuickRenderControl*, intptr_t, QPoint*);
bool miqt_exec_callback_QQuickRenderControl_event(QQuickRenderControl*, intptr_t, QEvent*);
bool miqt_exec_callback_QQuickRenderControl_eventFilter(QQuickRenderControl*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QQuickRenderControl_timerEvent(QQuickRenderControl*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QQuickRenderControl_childEvent(QQuickRenderControl*, intptr_t, QChildEvent*);
void miqt_exec_callback_QQuickRenderControl_customEvent(QQuickRenderControl*, intptr_t, QEvent*);
void miqt_exec_callback_QQuickRenderControl_connectNotify(QQuickRenderControl*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QQuickRenderControl_disconnectNotify(QQuickRenderControl*, intptr_t, QMetaMethod*);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQQuickRenderControl final : public QQuickRenderControl {
public:

	MiqtVirtualQQuickRenderControl(): QQuickRenderControl() {};
	MiqtVirtualQQuickRenderControl(QObject* parent): QQuickRenderControl(parent) {};

	virtual ~MiqtVirtualQQuickRenderControl() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metaObject = 0;

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (handle__metaObject == 0) {
			return QQuickRenderControl::metaObject();
		}
		

		QMetaObject* callback_return_value = miqt_exec_callback_QQuickRenderControl_metaObject(this, handle__metaObject);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QQuickRenderControl::metaObject();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacast = 0;

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (handle__metacast == 0) {
			return QQuickRenderControl::qt_metacast(param1);
		}
		
		const char* sigval1 = (const char*) param1;

		void* callback_return_value = miqt_exec_callback_QQuickRenderControl_metacast(this, handle__metacast, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QQuickRenderControl::qt_metacast(param1);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QQuickRenderControl::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QQuickRenderControl_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metacall(int param1, int param2, void** param3) {

		return QQuickRenderControl::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__renderWindow = 0;

	// Subclass to allow providing a Go implementation
	virtual QWindow* renderWindow(QPoint* offset) override {
		if (handle__renderWindow == 0) {
			return QQuickRenderControl::renderWindow(offset);
		}
		
		QPoint* sigval1 = offset;

		QWindow* callback_return_value = miqt_exec_callback_QQuickRenderControl_renderWindow(this, handle__renderWindow, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QWindow* virtualbase_renderWindow(QPoint* offset) {

		return QQuickRenderControl::renderWindow(offset);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QQuickRenderControl::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QQuickRenderControl_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QQuickRenderControl::event(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QQuickRenderControl::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QQuickRenderControl_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QQuickRenderControl::eventFilter(watched, event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QQuickRenderControl::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QQuickRenderControl_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QQuickRenderControl::timerEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QQuickRenderControl::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QQuickRenderControl_childEvent(this, handle__childEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QQuickRenderControl::childEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QQuickRenderControl::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QQuickRenderControl_customEvent(this, handle__customEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QQuickRenderControl::customEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QQuickRenderControl::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQuickRenderControl_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QQuickRenderControl::connectNotify(*signal);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QQuickRenderControl::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQuickRenderControl_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QQuickRenderControl::disconnectNotify(*signal);

	}

};

QQuickRenderControl* QQuickRenderControl_new() {
	return new MiqtVirtualQQuickRenderControl();
}

QQuickRenderControl* QQuickRenderControl_new2(QObject* parent) {
	return new MiqtVirtualQQuickRenderControl(parent);
}

void QQuickRenderControl_virtbase(QQuickRenderControl* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QQuickRenderControl_metaObject(const QQuickRenderControl* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickRenderControl_metacast(QQuickRenderControl* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQuickRenderControl_metacall(QQuickRenderControl* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQuickRenderControl_tr(const char* s) {
	QString _ret = QQuickRenderControl::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickRenderControl_trUtf8(const char* s) {
	QString _ret = QQuickRenderControl::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickRenderControl_prepareThread(QQuickRenderControl* self, QThread* targetThread) {
	self->prepareThread(targetThread);
}

void QQuickRenderControl_invalidate(QQuickRenderControl* self) {
	self->invalidate();
}

void QQuickRenderControl_polishItems(QQuickRenderControl* self) {
	self->polishItems();
}

void QQuickRenderControl_render(QQuickRenderControl* self) {
	self->render();
}

bool QQuickRenderControl_sync(QQuickRenderControl* self) {
	return self->sync();
}

QImage* QQuickRenderControl_grab(QQuickRenderControl* self) {
	return new QImage(self->grab());
}

QWindow* QQuickRenderControl_renderWindowFor(QQuickWindow* win) {
	return QQuickRenderControl::renderWindowFor(win);
}

QWindow* QQuickRenderControl_renderWindow(QQuickRenderControl* self, QPoint* offset) {
	return self->renderWindow(offset);
}

void QQuickRenderControl_renderRequested(QQuickRenderControl* self) {
	self->renderRequested();
}

void QQuickRenderControl_connect_renderRequested(QQuickRenderControl* self, intptr_t slot) {
	MiqtVirtualQQuickRenderControl::connect(self, static_cast<void (QQuickRenderControl::*)()>(&QQuickRenderControl::renderRequested), self, [=]() {
		miqt_exec_callback_QQuickRenderControl_renderRequested(slot);
	});
}

void QQuickRenderControl_sceneChanged(QQuickRenderControl* self) {
	self->sceneChanged();
}

void QQuickRenderControl_connect_sceneChanged(QQuickRenderControl* self, intptr_t slot) {
	MiqtVirtualQQuickRenderControl::connect(self, static_cast<void (QQuickRenderControl::*)()>(&QQuickRenderControl::sceneChanged), self, [=]() {
		miqt_exec_callback_QQuickRenderControl_sceneChanged(slot);
	});
}

struct miqt_string QQuickRenderControl_tr2(const char* s, const char* c) {
	QString _ret = QQuickRenderControl::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickRenderControl_tr3(const char* s, const char* c, int n) {
	QString _ret = QQuickRenderControl::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickRenderControl_trUtf82(const char* s, const char* c) {
	QString _ret = QQuickRenderControl::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickRenderControl_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQuickRenderControl::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QWindow* QQuickRenderControl_renderWindowFor2(QQuickWindow* win, QPoint* offset) {
	return QQuickRenderControl::renderWindowFor(win, offset);
}

bool QQuickRenderControl_override_virtual_metaObject(void* self, intptr_t slot) {
	MiqtVirtualQQuickRenderControl* self_cast = dynamic_cast<MiqtVirtualQQuickRenderControl*>( (QQuickRenderControl*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metaObject = slot;
	return true;
}

QMetaObject* QQuickRenderControl_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQQuickRenderControl*)(self) )->virtualbase_metaObject();
}

bool QQuickRenderControl_override_virtual_metacast(void* self, intptr_t slot) {
	MiqtVirtualQQuickRenderControl* self_cast = dynamic_cast<MiqtVirtualQQuickRenderControl*>( (QQuickRenderControl*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacast = slot;
	return true;
}

void* QQuickRenderControl_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQQuickRenderControl*)(self) )->virtualbase_metacast(param1);
}

bool QQuickRenderControl_override_virtual_metacall(void* self, intptr_t slot) {
	MiqtVirtualQQuickRenderControl* self_cast = dynamic_cast<MiqtVirtualQQuickRenderControl*>( (QQuickRenderControl*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QQuickRenderControl_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQQuickRenderControl*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QQuickRenderControl_override_virtual_renderWindow(void* self, intptr_t slot) {
	MiqtVirtualQQuickRenderControl* self_cast = dynamic_cast<MiqtVirtualQQuickRenderControl*>( (QQuickRenderControl*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__renderWindow = slot;
	return true;
}

QWindow* QQuickRenderControl_virtualbase_renderWindow(void* self, QPoint* offset) {
	return ( (MiqtVirtualQQuickRenderControl*)(self) )->virtualbase_renderWindow(offset);
}

bool QQuickRenderControl_override_virtual_event(void* self, intptr_t slot) {
	MiqtVirtualQQuickRenderControl* self_cast = dynamic_cast<MiqtVirtualQQuickRenderControl*>( (QQuickRenderControl*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QQuickRenderControl_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQQuickRenderControl*)(self) )->virtualbase_event(event);
}

bool QQuickRenderControl_override_virtual_eventFilter(void* self, intptr_t slot) {
	MiqtVirtualQQuickRenderControl* self_cast = dynamic_cast<MiqtVirtualQQuickRenderControl*>( (QQuickRenderControl*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QQuickRenderControl_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQQuickRenderControl*)(self) )->virtualbase_eventFilter(watched, event);
}

bool QQuickRenderControl_override_virtual_timerEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickRenderControl* self_cast = dynamic_cast<MiqtVirtualQQuickRenderControl*>( (QQuickRenderControl*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QQuickRenderControl_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQQuickRenderControl*)(self) )->virtualbase_timerEvent(event);
}

bool QQuickRenderControl_override_virtual_childEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickRenderControl* self_cast = dynamic_cast<MiqtVirtualQQuickRenderControl*>( (QQuickRenderControl*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QQuickRenderControl_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQQuickRenderControl*)(self) )->virtualbase_childEvent(event);
}

bool QQuickRenderControl_override_virtual_customEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickRenderControl* self_cast = dynamic_cast<MiqtVirtualQQuickRenderControl*>( (QQuickRenderControl*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QQuickRenderControl_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQQuickRenderControl*)(self) )->virtualbase_customEvent(event);
}

bool QQuickRenderControl_override_virtual_connectNotify(void* self, intptr_t slot) {
	MiqtVirtualQQuickRenderControl* self_cast = dynamic_cast<MiqtVirtualQQuickRenderControl*>( (QQuickRenderControl*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QQuickRenderControl_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickRenderControl*)(self) )->virtualbase_connectNotify(signal);
}

bool QQuickRenderControl_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	MiqtVirtualQQuickRenderControl* self_cast = dynamic_cast<MiqtVirtualQQuickRenderControl*>( (QQuickRenderControl*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QQuickRenderControl_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickRenderControl*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QQuickRenderControl_staticMetaObject() { return &QQuickRenderControl::staticMetaObject; }
void QQuickRenderControl_delete(QQuickRenderControl* self) {
	delete self;
}

