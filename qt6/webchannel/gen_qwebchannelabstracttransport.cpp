#include <QChildEvent>
#include <QEvent>
#include <QJsonObject>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QWebChannelAbstractTransport>
#include <qwebchannelabstracttransport.h>
#include "gen_qwebchannelabstracttransport.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QWebChannelAbstractTransport_messageReceived(intptr_t, QJsonObject*, QWebChannelAbstractTransport*);
void miqt_exec_callback_QWebChannelAbstractTransport_messageReceived_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQWebChannelAbstractTransport final : public QWebChannelAbstractTransport {
	struct QWebChannelAbstractTransport_VTable* vtbl;
public:

	MiqtVirtualQWebChannelAbstractTransport(struct QWebChannelAbstractTransport_VTable* vtbl): QWebChannelAbstractTransport(), vtbl(vtbl) {};
	MiqtVirtualQWebChannelAbstractTransport(struct QWebChannelAbstractTransport_VTable* vtbl, QObject* parent): QWebChannelAbstractTransport(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQWebChannelAbstractTransport() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWebChannelAbstractTransport::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QWebChannelAbstractTransport::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWebChannelAbstractTransport::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QWebChannelAbstractTransport::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWebChannelAbstractTransport::qt_metacall(param1, param2, param3);
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

		return QWebChannelAbstractTransport::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void sendMessage(const QJsonObject& message) override {
		if (vtbl->sendMessage == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QJsonObject& message_ret = message;
		// Cast returned reference into pointer
		QJsonObject* sigval1 = const_cast<QJsonObject*>(&message_ret);

		vtbl->sendMessage(vtbl, this, sigval1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QWebChannelAbstractTransport::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QWebChannelAbstractTransport::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWebChannelAbstractTransport::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QWebChannelAbstractTransport::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWebChannelAbstractTransport::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QWebChannelAbstractTransport::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWebChannelAbstractTransport::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QWebChannelAbstractTransport::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWebChannelAbstractTransport::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QWebChannelAbstractTransport::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWebChannelAbstractTransport::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QWebChannelAbstractTransport::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWebChannelAbstractTransport::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QWebChannelAbstractTransport::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QWebChannelAbstractTransport::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QWebChannelAbstractTransport::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QWebChannelAbstractTransport::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QWebChannelAbstractTransport::isSignalConnected(*signal);

	}

};

QWebChannelAbstractTransport* QWebChannelAbstractTransport_new(struct QWebChannelAbstractTransport_VTable* vtbl) {
	return new MiqtVirtualQWebChannelAbstractTransport(vtbl);
}

QWebChannelAbstractTransport* QWebChannelAbstractTransport_new2(struct QWebChannelAbstractTransport_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQWebChannelAbstractTransport(vtbl, parent);
}

void QWebChannelAbstractTransport_virtbase(QWebChannelAbstractTransport* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebChannelAbstractTransport_metaObject(const QWebChannelAbstractTransport* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebChannelAbstractTransport_metacast(QWebChannelAbstractTransport* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebChannelAbstractTransport_metacall(QWebChannelAbstractTransport* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWebChannelAbstractTransport_tr(const char* s) {
	QString _ret = QWebChannelAbstractTransport::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebChannelAbstractTransport_sendMessage(QWebChannelAbstractTransport* self, QJsonObject* message) {
	self->sendMessage(*message);
}

void QWebChannelAbstractTransport_messageReceived(QWebChannelAbstractTransport* self, QJsonObject* message, QWebChannelAbstractTransport* transport) {
	self->messageReceived(*message, transport);
}

void QWebChannelAbstractTransport_connect_messageReceived(QWebChannelAbstractTransport* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QJsonObject& message, QWebChannelAbstractTransport* transport) {
			const QJsonObject& message_ret = message;
			// Cast returned reference into pointer
			QJsonObject* sigval1 = const_cast<QJsonObject*>(&message_ret);
			QWebChannelAbstractTransport* sigval2 = transport;
			miqt_exec_callback_QWebChannelAbstractTransport_messageReceived(slot, sigval1, sigval2);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QWebChannelAbstractTransport_messageReceived_release(slot); }
	};
	MiqtVirtualQWebChannelAbstractTransport::connect(self, static_cast<void (QWebChannelAbstractTransport::*)(const QJsonObject&, QWebChannelAbstractTransport*)>(&QWebChannelAbstractTransport::messageReceived), self, caller{slot});
}

struct miqt_string QWebChannelAbstractTransport_tr2(const char* s, const char* c) {
	QString _ret = QWebChannelAbstractTransport::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebChannelAbstractTransport_tr3(const char* s, const char* c, int n) {
	QString _ret = QWebChannelAbstractTransport::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QWebChannelAbstractTransport_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQWebChannelAbstractTransport*)(self) )->virtualbase_metaObject();
}

void* QWebChannelAbstractTransport_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQWebChannelAbstractTransport*)(self) )->virtualbase_metacast(param1);
}

int QWebChannelAbstractTransport_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQWebChannelAbstractTransport*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QWebChannelAbstractTransport_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQWebChannelAbstractTransport*)(self) )->virtualbase_event(event);
}

bool QWebChannelAbstractTransport_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQWebChannelAbstractTransport*)(self) )->virtualbase_eventFilter(watched, event);
}

void QWebChannelAbstractTransport_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQWebChannelAbstractTransport*)(self) )->virtualbase_timerEvent(event);
}

void QWebChannelAbstractTransport_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQWebChannelAbstractTransport*)(self) )->virtualbase_childEvent(event);
}

void QWebChannelAbstractTransport_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQWebChannelAbstractTransport*)(self) )->virtualbase_customEvent(event);
}

void QWebChannelAbstractTransport_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQWebChannelAbstractTransport*)(self) )->virtualbase_connectNotify(signal);
}

void QWebChannelAbstractTransport_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQWebChannelAbstractTransport*)(self) )->virtualbase_disconnectNotify(signal);
}

QObject* QWebChannelAbstractTransport_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQWebChannelAbstractTransport*)(self) )->protectedbase_sender();
}

int QWebChannelAbstractTransport_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQWebChannelAbstractTransport*)(self) )->protectedbase_senderSignalIndex();
}

int QWebChannelAbstractTransport_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQWebChannelAbstractTransport*)(self) )->protectedbase_receivers(signal);
}

bool QWebChannelAbstractTransport_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQWebChannelAbstractTransport*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QWebChannelAbstractTransport_staticMetaObject() { return &QWebChannelAbstractTransport::staticMetaObject; }
void QWebChannelAbstractTransport_delete(QWebChannelAbstractTransport* self) {
	delete self;
}

