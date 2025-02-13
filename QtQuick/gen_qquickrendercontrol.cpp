#include <QChildEvent>
#include <QEvent>
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
void miqt_exec_callback_QQuickRenderControl_renderRequested_release(intptr_t);
void miqt_exec_callback_QQuickRenderControl_sceneChanged(intptr_t);
void miqt_exec_callback_QQuickRenderControl_sceneChanged_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQQuickRenderControl final : public QQuickRenderControl {
	struct QQuickRenderControl_VTable* vtbl;
public:

	MiqtVirtualQQuickRenderControl(struct QQuickRenderControl_VTable* vtbl): QQuickRenderControl(), vtbl(vtbl) {};
	MiqtVirtualQQuickRenderControl(struct QQuickRenderControl_VTable* vtbl, QObject* parent): QQuickRenderControl(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQQuickRenderControl() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQuickRenderControl::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QQuickRenderControl::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQuickRenderControl::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QQuickRenderControl::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQuickRenderControl::qt_metacall(param1, param2, param3);
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

		return QQuickRenderControl::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QWindow* renderWindow(QPoint* offset) override {
		if (vtbl->renderWindow == 0) {
			return QQuickRenderControl::renderWindow(offset);
		}

		QPoint* sigval1 = offset;

		QWindow* callback_return_value = vtbl->renderWindow(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QWindow* virtualbase_renderWindow(QPoint* offset) {

		return QQuickRenderControl::renderWindow(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QQuickRenderControl::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QQuickRenderControl::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQuickRenderControl::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QQuickRenderControl::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQuickRenderControl::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QQuickRenderControl::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQuickRenderControl::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QQuickRenderControl::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQuickRenderControl::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QQuickRenderControl::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQuickRenderControl::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QQuickRenderControl::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQuickRenderControl::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QQuickRenderControl::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend QObject* QQuickRenderControl_protectedbase_sender(const void* self);
	friend int QQuickRenderControl_protectedbase_senderSignalIndex(const void* self);
	friend int QQuickRenderControl_protectedbase_receivers(const void* self, const char* signal);
	friend bool QQuickRenderControl_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QQuickRenderControl* QQuickRenderControl_new(struct QQuickRenderControl_VTable* vtbl) {
	return new MiqtVirtualQQuickRenderControl(vtbl);
}

QQuickRenderControl* QQuickRenderControl_new2(struct QQuickRenderControl_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQQuickRenderControl(vtbl, parent);
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

void QQuickRenderControl_prepareThread(QQuickRenderControl* self, QThread* targetThread) {
	self->prepareThread(targetThread);
}

void QQuickRenderControl_setSamples(QQuickRenderControl* self, int sampleCount) {
	self->setSamples(static_cast<int>(sampleCount));
}

int QQuickRenderControl_samples(const QQuickRenderControl* self) {
	return self->samples();
}

bool QQuickRenderControl_initialize(QQuickRenderControl* self) {
	return self->initialize();
}

void QQuickRenderControl_invalidate(QQuickRenderControl* self) {
	self->invalidate();
}

void QQuickRenderControl_beginFrame(QQuickRenderControl* self) {
	self->beginFrame();
}

void QQuickRenderControl_endFrame(QQuickRenderControl* self) {
	self->endFrame();
}

void QQuickRenderControl_polishItems(QQuickRenderControl* self) {
	self->polishItems();
}

bool QQuickRenderControl_sync(QQuickRenderControl* self) {
	return self->sync();
}

void QQuickRenderControl_render(QQuickRenderControl* self) {
	self->render();
}

QWindow* QQuickRenderControl_renderWindowFor(QQuickWindow* win) {
	return QQuickRenderControl::renderWindowFor(win);
}

QWindow* QQuickRenderControl_renderWindow(QQuickRenderControl* self, QPoint* offset) {
	return self->renderWindow(offset);
}

QQuickWindow* QQuickRenderControl_window(const QQuickRenderControl* self) {
	return self->window();
}

void QQuickRenderControl_renderRequested(QQuickRenderControl* self) {
	self->renderRequested();
}

void QQuickRenderControl_connect_renderRequested(QQuickRenderControl* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QQuickRenderControl_renderRequested(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QQuickRenderControl_renderRequested_release(slot); }
	};
	MiqtVirtualQQuickRenderControl::connect(self, static_cast<void (QQuickRenderControl::*)()>(&QQuickRenderControl::renderRequested), self, caller{slot});
}

void QQuickRenderControl_sceneChanged(QQuickRenderControl* self) {
	self->sceneChanged();
}

void QQuickRenderControl_connect_sceneChanged(QQuickRenderControl* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QQuickRenderControl_sceneChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QQuickRenderControl_sceneChanged_release(slot); }
	};
	MiqtVirtualQQuickRenderControl::connect(self, static_cast<void (QQuickRenderControl::*)()>(&QQuickRenderControl::sceneChanged), self, caller{slot});
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

QWindow* QQuickRenderControl_renderWindowFor2(QQuickWindow* win, QPoint* offset) {
	return QQuickRenderControl::renderWindowFor(win, offset);
}

QMetaObject* QQuickRenderControl_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQQuickRenderControl*)(self) )->virtualbase_metaObject();
}

void* QQuickRenderControl_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQQuickRenderControl*)(self) )->virtualbase_metacast(param1);
}

int QQuickRenderControl_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQQuickRenderControl*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QWindow* QQuickRenderControl_virtualbase_renderWindow(void* self, QPoint* offset) {
	return ( (MiqtVirtualQQuickRenderControl*)(self) )->virtualbase_renderWindow(offset);
}

bool QQuickRenderControl_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQQuickRenderControl*)(self) )->virtualbase_event(event);
}

bool QQuickRenderControl_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQQuickRenderControl*)(self) )->virtualbase_eventFilter(watched, event);
}

void QQuickRenderControl_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQQuickRenderControl*)(self) )->virtualbase_timerEvent(event);
}

void QQuickRenderControl_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQQuickRenderControl*)(self) )->virtualbase_childEvent(event);
}

void QQuickRenderControl_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQQuickRenderControl*)(self) )->virtualbase_customEvent(event);
}

void QQuickRenderControl_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickRenderControl*)(self) )->virtualbase_connectNotify(signal);
}

void QQuickRenderControl_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickRenderControl*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QQuickRenderControl_staticMetaObject() { return &QQuickRenderControl::staticMetaObject; }
QObject* QQuickRenderControl_protectedbase_sender(const void* self) {
	MiqtVirtualQQuickRenderControl* self_cast = static_cast<MiqtVirtualQQuickRenderControl*>( (QQuickRenderControl*)(self) );
	
	return self_cast->sender();

}

int QQuickRenderControl_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQQuickRenderControl* self_cast = static_cast<MiqtVirtualQQuickRenderControl*>( (QQuickRenderControl*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QQuickRenderControl_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQQuickRenderControl* self_cast = static_cast<MiqtVirtualQQuickRenderControl*>( (QQuickRenderControl*)(self) );
	
	return self_cast->receivers(signal);

}

bool QQuickRenderControl_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQQuickRenderControl* self_cast = static_cast<MiqtVirtualQQuickRenderControl*>( (QQuickRenderControl*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QQuickRenderControl_delete(QQuickRenderControl* self) {
	delete self;
}

