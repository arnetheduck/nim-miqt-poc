#include <QChildEvent>
#include <QEvent>
#include <QLocalServer>
#include <QLocalSocket>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qlocalserver.h>
#include "gen_qlocalserver.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QLocalServer_newConnection(intptr_t);
void miqt_exec_callback_QLocalServer_newConnection_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQLocalServer final : public QLocalServer {
	struct QLocalServer_VTable* vtbl;
public:

	MiqtVirtualQLocalServer(struct QLocalServer_VTable* vtbl): QLocalServer(), vtbl(vtbl) {};
	MiqtVirtualQLocalServer(struct QLocalServer_VTable* vtbl, QObject* parent): QLocalServer(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQLocalServer() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QLocalServer::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QLocalServer::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QLocalServer::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QLocalServer::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QLocalServer::qt_metacall(param1, param2, param3);
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

		return QLocalServer::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasPendingConnections() const override {
		if (vtbl->hasPendingConnections == 0) {
			return QLocalServer::hasPendingConnections();
		}


		bool callback_return_value = vtbl->hasPendingConnections(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasPendingConnections() const {

		return QLocalServer::hasPendingConnections();

	}

	// Subclass to allow providing a Go implementation
	virtual QLocalSocket* nextPendingConnection() override {
		if (vtbl->nextPendingConnection == 0) {
			return QLocalServer::nextPendingConnection();
		}


		QLocalSocket* callback_return_value = vtbl->nextPendingConnection(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QLocalSocket* virtualbase_nextPendingConnection() {

		return QLocalServer::nextPendingConnection();

	}

	// Subclass to allow providing a Go implementation
	virtual void incomingConnection(quintptr socketDescriptor) override {
		if (vtbl->incomingConnection == 0) {
			QLocalServer::incomingConnection(socketDescriptor);
			return;
		}

		quintptr socketDescriptor_ret = socketDescriptor;
		uintptr_t sigval1 = static_cast<uintptr_t>(socketDescriptor_ret);

		vtbl->incomingConnection(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_incomingConnection(uintptr_t socketDescriptor) {

		QLocalServer::incomingConnection(static_cast<quintptr>(socketDescriptor));

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QLocalServer::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QLocalServer::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QLocalServer::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QLocalServer::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QLocalServer::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QLocalServer::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QLocalServer::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QLocalServer::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QLocalServer::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QLocalServer::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QLocalServer::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QLocalServer::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QLocalServer::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QLocalServer::disconnectNotify(*signal);

	}

};

QLocalServer* QLocalServer_new(struct QLocalServer_VTable* vtbl) {
	return new MiqtVirtualQLocalServer(vtbl);
}

QLocalServer* QLocalServer_new2(struct QLocalServer_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQLocalServer(vtbl, parent);
}

void QLocalServer_virtbase(QLocalServer* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QLocalServer_metaObject(const QLocalServer* self) {
	return (QMetaObject*) self->metaObject();
}

void* QLocalServer_metacast(QLocalServer* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QLocalServer_metacall(QLocalServer* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QLocalServer_tr(const char* s) {
	QString _ret = QLocalServer::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QLocalServer_newConnection(QLocalServer* self) {
	self->newConnection();
}

void QLocalServer_connect_newConnection(QLocalServer* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QLocalServer_newConnection(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QLocalServer_newConnection_release(slot); }
	};
	MiqtVirtualQLocalServer::connect(self, static_cast<void (QLocalServer::*)()>(&QLocalServer::newConnection), self, caller{slot});
}

void QLocalServer_close(QLocalServer* self) {
	self->close();
}

struct miqt_string QLocalServer_errorString(const QLocalServer* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QLocalServer_hasPendingConnections(const QLocalServer* self) {
	return self->hasPendingConnections();
}

bool QLocalServer_isListening(const QLocalServer* self) {
	return self->isListening();
}

bool QLocalServer_listen(QLocalServer* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->listen(name_QString);
}

bool QLocalServer_listenWithSocketDescriptor(QLocalServer* self, intptr_t socketDescriptor) {
	return self->listen((qintptr)(socketDescriptor));
}

int QLocalServer_maxPendingConnections(const QLocalServer* self) {
	return self->maxPendingConnections();
}

QLocalSocket* QLocalServer_nextPendingConnection(QLocalServer* self) {
	return self->nextPendingConnection();
}

struct miqt_string QLocalServer_serverName(const QLocalServer* self) {
	QString _ret = self->serverName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLocalServer_fullServerName(const QLocalServer* self) {
	QString _ret = self->fullServerName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QLocalServer_removeServer(struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return QLocalServer::removeServer(name_QString);
}

int QLocalServer_serverError(const QLocalServer* self) {
	QAbstractSocket::SocketError _ret = self->serverError();
	return static_cast<int>(_ret);
}

void QLocalServer_setMaxPendingConnections(QLocalServer* self, int numConnections) {
	self->setMaxPendingConnections(static_cast<int>(numConnections));
}

bool QLocalServer_waitForNewConnection(QLocalServer* self) {
	return self->waitForNewConnection();
}

void QLocalServer_setListenBacklogSize(QLocalServer* self, int size) {
	self->setListenBacklogSize(static_cast<int>(size));
}

int QLocalServer_listenBacklogSize(const QLocalServer* self) {
	return self->listenBacklogSize();
}

void QLocalServer_setSocketOptions(QLocalServer* self, int options) {
	self->setSocketOptions(static_cast<QLocalServer::SocketOptions>(options));
}

int QLocalServer_socketOptions(const QLocalServer* self) {
	QLocalServer::SocketOptions _ret = self->socketOptions();
	return static_cast<int>(_ret);
}

intptr_t QLocalServer_socketDescriptor(const QLocalServer* self) {
	qintptr _ret = self->socketDescriptor();
	return (intptr_t)(_ret);
}

struct miqt_string QLocalServer_tr2(const char* s, const char* c) {
	QString _ret = QLocalServer::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLocalServer_tr3(const char* s, const char* c, int n) {
	QString _ret = QLocalServer::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QLocalServer_waitForNewConnection1(QLocalServer* self, int msec) {
	return self->waitForNewConnection(static_cast<int>(msec));
}

bool QLocalServer_waitForNewConnection2(QLocalServer* self, int msec, bool* timedOut) {
	return self->waitForNewConnection(static_cast<int>(msec), timedOut);
}

QMetaObject* QLocalServer_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQLocalServer*)(self) )->virtualbase_metaObject();
}

void* QLocalServer_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQLocalServer*)(self) )->virtualbase_metacast(param1);
}

int QLocalServer_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQLocalServer*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QLocalServer_virtualbase_hasPendingConnections(const void* self) {
	return ( (const MiqtVirtualQLocalServer*)(self) )->virtualbase_hasPendingConnections();
}

QLocalSocket* QLocalServer_virtualbase_nextPendingConnection(void* self) {
	return ( (MiqtVirtualQLocalServer*)(self) )->virtualbase_nextPendingConnection();
}

void QLocalServer_virtualbase_incomingConnection(void* self, uintptr_t socketDescriptor) {
	( (MiqtVirtualQLocalServer*)(self) )->virtualbase_incomingConnection(socketDescriptor);
}

bool QLocalServer_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQLocalServer*)(self) )->virtualbase_event(event);
}

bool QLocalServer_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQLocalServer*)(self) )->virtualbase_eventFilter(watched, event);
}

void QLocalServer_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQLocalServer*)(self) )->virtualbase_timerEvent(event);
}

void QLocalServer_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQLocalServer*)(self) )->virtualbase_childEvent(event);
}

void QLocalServer_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQLocalServer*)(self) )->virtualbase_customEvent(event);
}

void QLocalServer_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQLocalServer*)(self) )->virtualbase_connectNotify(signal);
}

void QLocalServer_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQLocalServer*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QLocalServer_staticMetaObject() { return &QLocalServer::staticMetaObject; }
void QLocalServer_delete(QLocalServer* self) {
	delete self;
}

