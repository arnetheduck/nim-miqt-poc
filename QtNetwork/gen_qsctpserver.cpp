#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSctpServer>
#include <QSctpSocket>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTcpServer>
#include <QTcpSocket>
#include <QTimerEvent>
#include <qsctpserver.h>
#include "gen_qsctpserver.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQSctpServer final : public QSctpServer {
	struct QSctpServer_VTable* vtbl;
public:

	MiqtVirtualQSctpServer(struct QSctpServer_VTable* vtbl): QSctpServer(), vtbl(vtbl) {};
	MiqtVirtualQSctpServer(struct QSctpServer_VTable* vtbl, QObject* parent): QSctpServer(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSctpServer() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSctpServer::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QSctpServer::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSctpServer::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QSctpServer::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSctpServer::qt_metacall(param1, param2, param3);
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

		return QSctpServer::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void incomingConnection(qintptr handle) override {
		if (vtbl->incomingConnection == 0) {
			QSctpServer::incomingConnection(handle);
			return;
		}

		qintptr handle_ret = handle;
		intptr_t sigval1 = (intptr_t)(handle_ret);

		vtbl->incomingConnection(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_incomingConnection(intptr_t handle) {

		QSctpServer::incomingConnection((qintptr)(handle));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasPendingConnections() const override {
		if (vtbl->hasPendingConnections == 0) {
			return QSctpServer::hasPendingConnections();
		}


		bool callback_return_value = vtbl->hasPendingConnections(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasPendingConnections() const {

		return QSctpServer::hasPendingConnections();

	}

	// Subclass to allow providing a Go implementation
	virtual QTcpSocket* nextPendingConnection() override {
		if (vtbl->nextPendingConnection == 0) {
			return QSctpServer::nextPendingConnection();
		}


		QTcpSocket* callback_return_value = vtbl->nextPendingConnection(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QTcpSocket* virtualbase_nextPendingConnection() {

		return QSctpServer::nextPendingConnection();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSctpServer::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QSctpServer::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSctpServer::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QSctpServer::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSctpServer::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QSctpServer::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSctpServer::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QSctpServer::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSctpServer::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QSctpServer::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSctpServer::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QSctpServer::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSctpServer::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QSctpServer::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QSctpServer_protectedbase_addPendingConnection(void* self, QTcpSocket* socket);
	friend QObject* QSctpServer_protectedbase_sender(const void* self);
	friend int QSctpServer_protectedbase_senderSignalIndex(const void* self);
	friend int QSctpServer_protectedbase_receivers(const void* self, const char* signal);
	friend bool QSctpServer_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QSctpServer* QSctpServer_new(struct QSctpServer_VTable* vtbl) {
	return new MiqtVirtualQSctpServer(vtbl);
}

QSctpServer* QSctpServer_new2(struct QSctpServer_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQSctpServer(vtbl, parent);
}

void QSctpServer_virtbase(QSctpServer* src, QTcpServer** outptr_QTcpServer) {
	*outptr_QTcpServer = static_cast<QTcpServer*>(src);
}

QMetaObject* QSctpServer_metaObject(const QSctpServer* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSctpServer_metacast(QSctpServer* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSctpServer_metacall(QSctpServer* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSctpServer_tr(const char* s) {
	QString _ret = QSctpServer::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSctpServer_setMaximumChannelCount(QSctpServer* self, int count) {
	self->setMaximumChannelCount(static_cast<int>(count));
}

int QSctpServer_maximumChannelCount(const QSctpServer* self) {
	return self->maximumChannelCount();
}

QSctpSocket* QSctpServer_nextPendingDatagramConnection(QSctpServer* self) {
	return self->nextPendingDatagramConnection();
}

struct miqt_string QSctpServer_tr2(const char* s, const char* c) {
	QString _ret = QSctpServer::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSctpServer_tr3(const char* s, const char* c, int n) {
	QString _ret = QSctpServer::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSctpServer_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQSctpServer*)(self) )->virtualbase_metaObject();
}

void* QSctpServer_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQSctpServer*)(self) )->virtualbase_metacast(param1);
}

int QSctpServer_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQSctpServer*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QSctpServer_virtualbase_incomingConnection(void* self, intptr_t handle) {
	( (MiqtVirtualQSctpServer*)(self) )->virtualbase_incomingConnection(handle);
}

bool QSctpServer_virtualbase_hasPendingConnections(const void* self) {
	return ( (const MiqtVirtualQSctpServer*)(self) )->virtualbase_hasPendingConnections();
}

QTcpSocket* QSctpServer_virtualbase_nextPendingConnection(void* self) {
	return ( (MiqtVirtualQSctpServer*)(self) )->virtualbase_nextPendingConnection();
}

bool QSctpServer_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQSctpServer*)(self) )->virtualbase_event(event);
}

bool QSctpServer_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQSctpServer*)(self) )->virtualbase_eventFilter(watched, event);
}

void QSctpServer_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQSctpServer*)(self) )->virtualbase_timerEvent(event);
}

void QSctpServer_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQSctpServer*)(self) )->virtualbase_childEvent(event);
}

void QSctpServer_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSctpServer*)(self) )->virtualbase_customEvent(event);
}

void QSctpServer_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSctpServer*)(self) )->virtualbase_connectNotify(signal);
}

void QSctpServer_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSctpServer*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QSctpServer_staticMetaObject() { return &QSctpServer::staticMetaObject; }
void QSctpServer_protectedbase_addPendingConnection(void* self, QTcpSocket* socket) {
	MiqtVirtualQSctpServer* self_cast = static_cast<MiqtVirtualQSctpServer*>( (QSctpServer*)(self) );
	
	self_cast->addPendingConnection(socket);

}

QObject* QSctpServer_protectedbase_sender(const void* self) {
	MiqtVirtualQSctpServer* self_cast = static_cast<MiqtVirtualQSctpServer*>( (QSctpServer*)(self) );
	
	return self_cast->sender();

}

int QSctpServer_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQSctpServer* self_cast = static_cast<MiqtVirtualQSctpServer*>( (QSctpServer*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QSctpServer_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQSctpServer* self_cast = static_cast<MiqtVirtualQSctpServer*>( (QSctpServer*)(self) );
	
	return self_cast->receivers(signal);

}

bool QSctpServer_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQSctpServer* self_cast = static_cast<MiqtVirtualQSctpServer*>( (QSctpServer*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QSctpServer_delete(QSctpServer* self) {
	delete self;
}

