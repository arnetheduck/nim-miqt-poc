#include <QByteArray>
#include <QChildEvent>
#include <QDtls>
#include <QDtlsClientVerifier>
#define WORKAROUND_INNER_CLASS_DEFINITION_QDtlsClientVerifier__GeneratorParameters
#include <QEvent>
#include <QHostAddress>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSslCipher>
#include <QSslConfiguration>
#include <QSslError>
#include <QSslPreSharedKeyAuthenticator>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUdpSocket>
#include <qdtls.h>
#include "gen_qdtls.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QDtls_pskRequired(intptr_t, QSslPreSharedKeyAuthenticator*);
void miqt_exec_callback_QDtls_pskRequired_release(intptr_t);
void miqt_exec_callback_QDtls_handshakeTimeout(intptr_t);
void miqt_exec_callback_QDtls_handshakeTimeout_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQDtlsClientVerifier final : public QDtlsClientVerifier {
	struct QDtlsClientVerifier_VTable* vtbl;
public:

	MiqtVirtualQDtlsClientVerifier(struct QDtlsClientVerifier_VTable* vtbl): QDtlsClientVerifier(), vtbl(vtbl) {};
	MiqtVirtualQDtlsClientVerifier(struct QDtlsClientVerifier_VTable* vtbl, QObject* parent): QDtlsClientVerifier(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQDtlsClientVerifier() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDtlsClientVerifier::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QDtlsClientVerifier::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDtlsClientVerifier::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QDtlsClientVerifier::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDtlsClientVerifier::qt_metacall(param1, param2, param3);
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

		return QDtlsClientVerifier::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDtlsClientVerifier::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QDtlsClientVerifier::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDtlsClientVerifier::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QDtlsClientVerifier::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDtlsClientVerifier::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QDtlsClientVerifier::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDtlsClientVerifier::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QDtlsClientVerifier::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDtlsClientVerifier::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QDtlsClientVerifier::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDtlsClientVerifier::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QDtlsClientVerifier::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDtlsClientVerifier::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QDtlsClientVerifier::disconnectNotify(*signal);

	}

};

QDtlsClientVerifier* QDtlsClientVerifier_new(struct QDtlsClientVerifier_VTable* vtbl) {
	return new MiqtVirtualQDtlsClientVerifier(vtbl);
}

QDtlsClientVerifier* QDtlsClientVerifier_new2(struct QDtlsClientVerifier_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQDtlsClientVerifier(vtbl, parent);
}

void QDtlsClientVerifier_virtbase(QDtlsClientVerifier* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QDtlsClientVerifier_metaObject(const QDtlsClientVerifier* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDtlsClientVerifier_metacast(QDtlsClientVerifier* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDtlsClientVerifier_metacall(QDtlsClientVerifier* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QDtlsClientVerifier_tr(const char* s) {
	QString _ret = QDtlsClientVerifier::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDtlsClientVerifier_trUtf8(const char* s) {
	QString _ret = QDtlsClientVerifier::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QDtlsClientVerifier_setCookieGeneratorParameters(QDtlsClientVerifier* self, QDtlsClientVerifier__GeneratorParameters* params) {
	return self->setCookieGeneratorParameters(*params);
}

QDtlsClientVerifier__GeneratorParameters* QDtlsClientVerifier_cookieGeneratorParameters(const QDtlsClientVerifier* self) {
	return new QDtlsClientVerifier::GeneratorParameters(self->cookieGeneratorParameters());
}

bool QDtlsClientVerifier_verifyClient(QDtlsClientVerifier* self, QUdpSocket* socket, struct miqt_string dgram, QHostAddress* address, uint16_t port) {
	QByteArray dgram_QByteArray(dgram.data, dgram.len);
	return self->verifyClient(socket, dgram_QByteArray, *address, static_cast<quint16>(port));
}

struct miqt_string QDtlsClientVerifier_verifiedHello(const QDtlsClientVerifier* self) {
	QByteArray _qb = self->verifiedHello();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

unsigned char QDtlsClientVerifier_dtlsError(const QDtlsClientVerifier* self) {
	QDtlsError _ret = self->dtlsError();
	return static_cast<unsigned char>(_ret);
}

struct miqt_string QDtlsClientVerifier_dtlsErrorString(const QDtlsClientVerifier* self) {
	QString _ret = self->dtlsErrorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDtlsClientVerifier_tr2(const char* s, const char* c) {
	QString _ret = QDtlsClientVerifier::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDtlsClientVerifier_tr3(const char* s, const char* c, int n) {
	QString _ret = QDtlsClientVerifier::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDtlsClientVerifier_trUtf82(const char* s, const char* c) {
	QString _ret = QDtlsClientVerifier::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDtlsClientVerifier_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QDtlsClientVerifier::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QDtlsClientVerifier_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQDtlsClientVerifier*)(self) )->virtualbase_metaObject();
}

void* QDtlsClientVerifier_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQDtlsClientVerifier*)(self) )->virtualbase_metacast(param1);
}

int QDtlsClientVerifier_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQDtlsClientVerifier*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QDtlsClientVerifier_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQDtlsClientVerifier*)(self) )->virtualbase_event(event);
}

bool QDtlsClientVerifier_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQDtlsClientVerifier*)(self) )->virtualbase_eventFilter(watched, event);
}

void QDtlsClientVerifier_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQDtlsClientVerifier*)(self) )->virtualbase_timerEvent(event);
}

void QDtlsClientVerifier_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQDtlsClientVerifier*)(self) )->virtualbase_childEvent(event);
}

void QDtlsClientVerifier_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQDtlsClientVerifier*)(self) )->virtualbase_customEvent(event);
}

void QDtlsClientVerifier_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQDtlsClientVerifier*)(self) )->virtualbase_connectNotify(signal);
}

void QDtlsClientVerifier_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQDtlsClientVerifier*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QDtlsClientVerifier_staticMetaObject() { return &QDtlsClientVerifier::staticMetaObject; }
void QDtlsClientVerifier_delete(QDtlsClientVerifier* self) {
	delete self;
}

class MiqtVirtualQDtls final : public QDtls {
	struct QDtls_VTable* vtbl;
public:

	MiqtVirtualQDtls(struct QDtls_VTable* vtbl, QSslSocket::SslMode mode): QDtls(mode), vtbl(vtbl) {};
	MiqtVirtualQDtls(struct QDtls_VTable* vtbl, QSslSocket::SslMode mode, QObject* parent): QDtls(mode, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQDtls() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDtls::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QDtls::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDtls::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QDtls::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDtls::qt_metacall(param1, param2, param3);
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

		return QDtls::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDtls::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QDtls::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDtls::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QDtls::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDtls::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QDtls::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDtls::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QDtls::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDtls::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QDtls::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDtls::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QDtls::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDtls::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QDtls::disconnectNotify(*signal);

	}

};

QDtls* QDtls_new(struct QDtls_VTable* vtbl, int mode) {
	return new MiqtVirtualQDtls(vtbl, static_cast<QSslSocket::SslMode>(mode));
}

QDtls* QDtls_new2(struct QDtls_VTable* vtbl, int mode, QObject* parent) {
	return new MiqtVirtualQDtls(vtbl, static_cast<QSslSocket::SslMode>(mode), parent);
}

void QDtls_virtbase(QDtls* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QDtls_metaObject(const QDtls* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDtls_metacast(QDtls* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDtls_metacall(QDtls* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QDtls_tr(const char* s) {
	QString _ret = QDtls::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDtls_trUtf8(const char* s) {
	QString _ret = QDtls::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QDtls_setPeer(QDtls* self, QHostAddress* address, uint16_t port) {
	return self->setPeer(*address, static_cast<quint16>(port));
}

bool QDtls_setPeerVerificationName(QDtls* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->setPeerVerificationName(name_QString);
}

QHostAddress* QDtls_peerAddress(const QDtls* self) {
	return new QHostAddress(self->peerAddress());
}

uint16_t QDtls_peerPort(const QDtls* self) {
	quint16 _ret = self->peerPort();
	return static_cast<uint16_t>(_ret);
}

struct miqt_string QDtls_peerVerificationName(const QDtls* self) {
	QString _ret = self->peerVerificationName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QDtls_sslMode(const QDtls* self) {
	QSslSocket::SslMode _ret = self->sslMode();
	return static_cast<int>(_ret);
}

void QDtls_setMtuHint(QDtls* self, uint16_t mtuHint) {
	self->setMtuHint(static_cast<quint16>(mtuHint));
}

uint16_t QDtls_mtuHint(const QDtls* self) {
	quint16 _ret = self->mtuHint();
	return static_cast<uint16_t>(_ret);
}

bool QDtls_setCookieGeneratorParameters(QDtls* self, QDtlsClientVerifier__GeneratorParameters* params) {
	return self->setCookieGeneratorParameters(*params);
}

QDtlsClientVerifier__GeneratorParameters* QDtls_cookieGeneratorParameters(const QDtls* self) {
	return new QDtlsClientVerifier::GeneratorParameters(self->cookieGeneratorParameters());
}

bool QDtls_setDtlsConfiguration(QDtls* self, QSslConfiguration* configuration) {
	return self->setDtlsConfiguration(*configuration);
}

QSslConfiguration* QDtls_dtlsConfiguration(const QDtls* self) {
	return new QSslConfiguration(self->dtlsConfiguration());
}

int QDtls_handshakeState(const QDtls* self) {
	QDtls::HandshakeState _ret = self->handshakeState();
	return static_cast<int>(_ret);
}

bool QDtls_doHandshake(QDtls* self, QUdpSocket* socket) {
	return self->doHandshake(socket);
}

bool QDtls_handleTimeout(QDtls* self, QUdpSocket* socket) {
	return self->handleTimeout(socket);
}

bool QDtls_resumeHandshake(QDtls* self, QUdpSocket* socket) {
	return self->resumeHandshake(socket);
}

bool QDtls_abortHandshake(QDtls* self, QUdpSocket* socket) {
	return self->abortHandshake(socket);
}

bool QDtls_shutdown(QDtls* self, QUdpSocket* socket) {
	return self->shutdown(socket);
}

bool QDtls_isConnectionEncrypted(const QDtls* self) {
	return self->isConnectionEncrypted();
}

QSslCipher* QDtls_sessionCipher(const QDtls* self) {
	return new QSslCipher(self->sessionCipher());
}

int QDtls_sessionProtocol(const QDtls* self) {
	QSsl::SslProtocol _ret = self->sessionProtocol();
	return static_cast<int>(_ret);
}

long long QDtls_writeDatagramEncrypted(QDtls* self, QUdpSocket* socket, struct miqt_string dgram) {
	QByteArray dgram_QByteArray(dgram.data, dgram.len);
	qint64 _ret = self->writeDatagramEncrypted(socket, dgram_QByteArray);
	return static_cast<long long>(_ret);
}

struct miqt_string QDtls_decryptDatagram(QDtls* self, QUdpSocket* socket, struct miqt_string dgram) {
	QByteArray dgram_QByteArray(dgram.data, dgram.len);
	QByteArray _qb = self->decryptDatagram(socket, dgram_QByteArray);
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

unsigned char QDtls_dtlsError(const QDtls* self) {
	QDtlsError _ret = self->dtlsError();
	return static_cast<unsigned char>(_ret);
}

struct miqt_string QDtls_dtlsErrorString(const QDtls* self) {
	QString _ret = self->dtlsErrorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of QSslError* */  QDtls_peerVerificationErrors(const QDtls* self) {
	QVector<QSslError> _ret = self->peerVerificationErrors();
	// Convert QList<> from C++ memory to manually-managed C memory
	QSslError** _arr = static_cast<QSslError**>(malloc(sizeof(QSslError*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QSslError(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QDtls_ignoreVerificationErrors(QDtls* self, struct miqt_array /* of QSslError* */  errorsToIgnore) {
	QVector<QSslError> errorsToIgnore_QList;
	errorsToIgnore_QList.reserve(errorsToIgnore.len);
	QSslError** errorsToIgnore_arr = static_cast<QSslError**>(errorsToIgnore.data);
	for(size_t i = 0; i < errorsToIgnore.len; ++i) {
		errorsToIgnore_QList.push_back(*(errorsToIgnore_arr[i]));
	}
	self->ignoreVerificationErrors(errorsToIgnore_QList);
}

void QDtls_pskRequired(QDtls* self, QSslPreSharedKeyAuthenticator* authenticator) {
	self->pskRequired(authenticator);
}

void QDtls_connect_pskRequired(QDtls* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QSslPreSharedKeyAuthenticator* authenticator) {
			QSslPreSharedKeyAuthenticator* sigval1 = authenticator;
			miqt_exec_callback_QDtls_pskRequired(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QDtls_pskRequired_release(slot); }
	};
	MiqtVirtualQDtls::connect(self, static_cast<void (QDtls::*)(QSslPreSharedKeyAuthenticator*)>(&QDtls::pskRequired), self, caller{slot});
}

void QDtls_handshakeTimeout(QDtls* self) {
	self->handshakeTimeout();
}

void QDtls_connect_handshakeTimeout(QDtls* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QDtls_handshakeTimeout(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QDtls_handshakeTimeout_release(slot); }
	};
	MiqtVirtualQDtls::connect(self, static_cast<void (QDtls::*)()>(&QDtls::handshakeTimeout), self, caller{slot});
}

struct miqt_string QDtls_tr2(const char* s, const char* c) {
	QString _ret = QDtls::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDtls_tr3(const char* s, const char* c, int n) {
	QString _ret = QDtls::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDtls_trUtf82(const char* s, const char* c) {
	QString _ret = QDtls::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDtls_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QDtls::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QDtls_setPeer3(QDtls* self, QHostAddress* address, uint16_t port, struct miqt_string verificationName) {
	QString verificationName_QString = QString::fromUtf8(verificationName.data, verificationName.len);
	return self->setPeer(*address, static_cast<quint16>(port), verificationName_QString);
}

bool QDtls_doHandshake2(QDtls* self, QUdpSocket* socket, struct miqt_string dgram) {
	QByteArray dgram_QByteArray(dgram.data, dgram.len);
	return self->doHandshake(socket, dgram_QByteArray);
}

QMetaObject* QDtls_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQDtls*)(self) )->virtualbase_metaObject();
}

void* QDtls_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQDtls*)(self) )->virtualbase_metacast(param1);
}

int QDtls_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQDtls*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QDtls_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQDtls*)(self) )->virtualbase_event(event);
}

bool QDtls_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQDtls*)(self) )->virtualbase_eventFilter(watched, event);
}

void QDtls_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQDtls*)(self) )->virtualbase_timerEvent(event);
}

void QDtls_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQDtls*)(self) )->virtualbase_childEvent(event);
}

void QDtls_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQDtls*)(self) )->virtualbase_customEvent(event);
}

void QDtls_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQDtls*)(self) )->virtualbase_connectNotify(signal);
}

void QDtls_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQDtls*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QDtls_staticMetaObject() { return &QDtls::staticMetaObject; }
void QDtls_delete(QDtls* self) {
	delete self;
}

QDtlsClientVerifier__GeneratorParameters* QDtlsClientVerifier__GeneratorParameters_new() {
	return new QDtlsClientVerifier::GeneratorParameters();
}

QDtlsClientVerifier__GeneratorParameters* QDtlsClientVerifier__GeneratorParameters_new2(int a, struct miqt_string s) {
	QByteArray s_QByteArray(s.data, s.len);
	return new QDtlsClientVerifier::GeneratorParameters(static_cast<QCryptographicHash::Algorithm>(a), s_QByteArray);
}

QDtlsClientVerifier__GeneratorParameters* QDtlsClientVerifier__GeneratorParameters_new3(QDtlsClientVerifier__GeneratorParameters* param1) {
	return new QDtlsClientVerifier::GeneratorParameters(*param1);
}

void QDtlsClientVerifier__GeneratorParameters_operatorAssign(QDtlsClientVerifier__GeneratorParameters* self, QDtlsClientVerifier__GeneratorParameters* param1) {
	self->operator=(*param1);
}

void QDtlsClientVerifier__GeneratorParameters_delete(QDtlsClientVerifier__GeneratorParameters* self) {
	delete self;
}

