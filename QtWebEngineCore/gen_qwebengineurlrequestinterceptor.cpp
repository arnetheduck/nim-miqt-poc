#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QWebEngineUrlRequestInfo>
#include <QWebEngineUrlRequestInterceptor>
#include <qwebengineurlrequestinterceptor.h>
#include "gen_qwebengineurlrequestinterceptor.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQWebEngineUrlRequestInterceptor final : public QWebEngineUrlRequestInterceptor {
	struct QWebEngineUrlRequestInterceptor_VTable* vtbl;
public:

	MiqtVirtualQWebEngineUrlRequestInterceptor(struct QWebEngineUrlRequestInterceptor_VTable* vtbl): QWebEngineUrlRequestInterceptor(), vtbl(vtbl) {};
	MiqtVirtualQWebEngineUrlRequestInterceptor(struct QWebEngineUrlRequestInterceptor_VTable* vtbl, QObject* p): QWebEngineUrlRequestInterceptor(p), vtbl(vtbl) {};

	virtual ~MiqtVirtualQWebEngineUrlRequestInterceptor() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWebEngineUrlRequestInterceptor::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QWebEngineUrlRequestInterceptor::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWebEngineUrlRequestInterceptor::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QWebEngineUrlRequestInterceptor::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWebEngineUrlRequestInterceptor::qt_metacall(param1, param2, param3);
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

		return QWebEngineUrlRequestInterceptor::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void interceptRequest(QWebEngineUrlRequestInfo& info) override {
		if (vtbl->interceptRequest == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QWebEngineUrlRequestInfo& info_ret = info;
		// Cast returned reference into pointer
		QWebEngineUrlRequestInfo* sigval1 = &info_ret;

		vtbl->interceptRequest(vtbl, this, sigval1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QWebEngineUrlRequestInterceptor::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QWebEngineUrlRequestInterceptor::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWebEngineUrlRequestInterceptor::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QWebEngineUrlRequestInterceptor::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWebEngineUrlRequestInterceptor::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QWebEngineUrlRequestInterceptor::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWebEngineUrlRequestInterceptor::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QWebEngineUrlRequestInterceptor::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWebEngineUrlRequestInterceptor::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QWebEngineUrlRequestInterceptor::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWebEngineUrlRequestInterceptor::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QWebEngineUrlRequestInterceptor::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWebEngineUrlRequestInterceptor::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QWebEngineUrlRequestInterceptor::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend QObject* QWebEngineUrlRequestInterceptor_protectedbase_sender(const void* self);
	friend int QWebEngineUrlRequestInterceptor_protectedbase_senderSignalIndex(const void* self);
	friend int QWebEngineUrlRequestInterceptor_protectedbase_receivers(const void* self, const char* signal);
	friend bool QWebEngineUrlRequestInterceptor_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QWebEngineUrlRequestInterceptor* QWebEngineUrlRequestInterceptor_new(struct QWebEngineUrlRequestInterceptor_VTable* vtbl) {
	return new MiqtVirtualQWebEngineUrlRequestInterceptor(vtbl);
}

QWebEngineUrlRequestInterceptor* QWebEngineUrlRequestInterceptor_new2(struct QWebEngineUrlRequestInterceptor_VTable* vtbl, QObject* p) {
	return new MiqtVirtualQWebEngineUrlRequestInterceptor(vtbl, p);
}

void QWebEngineUrlRequestInterceptor_virtbase(QWebEngineUrlRequestInterceptor* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebEngineUrlRequestInterceptor_metaObject(const QWebEngineUrlRequestInterceptor* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebEngineUrlRequestInterceptor_metacast(QWebEngineUrlRequestInterceptor* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebEngineUrlRequestInterceptor_metacall(QWebEngineUrlRequestInterceptor* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWebEngineUrlRequestInterceptor_tr(const char* s) {
	QString _ret = QWebEngineUrlRequestInterceptor::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebEngineUrlRequestInterceptor_interceptRequest(QWebEngineUrlRequestInterceptor* self, QWebEngineUrlRequestInfo* info) {
	self->interceptRequest(*info);
}

struct miqt_string QWebEngineUrlRequestInterceptor_tr2(const char* s, const char* c) {
	QString _ret = QWebEngineUrlRequestInterceptor::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebEngineUrlRequestInterceptor_tr3(const char* s, const char* c, int n) {
	QString _ret = QWebEngineUrlRequestInterceptor::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QWebEngineUrlRequestInterceptor_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQWebEngineUrlRequestInterceptor*)(self) )->virtualbase_metaObject();
}

void* QWebEngineUrlRequestInterceptor_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQWebEngineUrlRequestInterceptor*)(self) )->virtualbase_metacast(param1);
}

int QWebEngineUrlRequestInterceptor_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQWebEngineUrlRequestInterceptor*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QWebEngineUrlRequestInterceptor_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQWebEngineUrlRequestInterceptor*)(self) )->virtualbase_event(event);
}

bool QWebEngineUrlRequestInterceptor_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQWebEngineUrlRequestInterceptor*)(self) )->virtualbase_eventFilter(watched, event);
}

void QWebEngineUrlRequestInterceptor_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQWebEngineUrlRequestInterceptor*)(self) )->virtualbase_timerEvent(event);
}

void QWebEngineUrlRequestInterceptor_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQWebEngineUrlRequestInterceptor*)(self) )->virtualbase_childEvent(event);
}

void QWebEngineUrlRequestInterceptor_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQWebEngineUrlRequestInterceptor*)(self) )->virtualbase_customEvent(event);
}

void QWebEngineUrlRequestInterceptor_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQWebEngineUrlRequestInterceptor*)(self) )->virtualbase_connectNotify(signal);
}

void QWebEngineUrlRequestInterceptor_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQWebEngineUrlRequestInterceptor*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QWebEngineUrlRequestInterceptor_staticMetaObject() { return &QWebEngineUrlRequestInterceptor::staticMetaObject; }
QObject* QWebEngineUrlRequestInterceptor_protectedbase_sender(const void* self) {
	MiqtVirtualQWebEngineUrlRequestInterceptor* self_cast = static_cast<MiqtVirtualQWebEngineUrlRequestInterceptor*>( (QWebEngineUrlRequestInterceptor*)(self) );
	
	return self_cast->sender();

}

int QWebEngineUrlRequestInterceptor_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQWebEngineUrlRequestInterceptor* self_cast = static_cast<MiqtVirtualQWebEngineUrlRequestInterceptor*>( (QWebEngineUrlRequestInterceptor*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QWebEngineUrlRequestInterceptor_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQWebEngineUrlRequestInterceptor* self_cast = static_cast<MiqtVirtualQWebEngineUrlRequestInterceptor*>( (QWebEngineUrlRequestInterceptor*)(self) );
	
	return self_cast->receivers(signal);

}

bool QWebEngineUrlRequestInterceptor_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQWebEngineUrlRequestInterceptor* self_cast = static_cast<MiqtVirtualQWebEngineUrlRequestInterceptor*>( (QWebEngineUrlRequestInterceptor*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QWebEngineUrlRequestInterceptor_delete(QWebEngineUrlRequestInterceptor* self) {
	delete self;
}

