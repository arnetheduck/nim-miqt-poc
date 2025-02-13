#include <QAbstractSocket>
#include <QAuthenticator>
#include <QChildEvent>
#include <QEvent>
#include <QHostAddress>
#include <QIODevice>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkProxy>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qabstractsocket.h>
#include "gen_qabstractsocket.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QAbstractSocket_hostFound(intptr_t);
void miqt_exec_callback_QAbstractSocket_hostFound_release(intptr_t);
void miqt_exec_callback_QAbstractSocket_connected(intptr_t);
void miqt_exec_callback_QAbstractSocket_connected_release(intptr_t);
void miqt_exec_callback_QAbstractSocket_disconnected(intptr_t);
void miqt_exec_callback_QAbstractSocket_disconnected_release(intptr_t);
void miqt_exec_callback_QAbstractSocket_stateChanged(intptr_t, int);
void miqt_exec_callback_QAbstractSocket_stateChanged_release(intptr_t);
void miqt_exec_callback_QAbstractSocket_errorWithQAbstractSocketSocketError(intptr_t, int);
void miqt_exec_callback_QAbstractSocket_errorWithQAbstractSocketSocketError_release(intptr_t);
void miqt_exec_callback_QAbstractSocket_errorOccurred(intptr_t, int);
void miqt_exec_callback_QAbstractSocket_errorOccurred_release(intptr_t);
void miqt_exec_callback_QAbstractSocket_proxyAuthenticationRequired(intptr_t, QNetworkProxy*, QAuthenticator*);
void miqt_exec_callback_QAbstractSocket_proxyAuthenticationRequired_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQAbstractSocket final : public QAbstractSocket {
	struct QAbstractSocket_VTable* vtbl;
public:

	MiqtVirtualQAbstractSocket(struct QAbstractSocket_VTable* vtbl, QAbstractSocket::SocketType socketType, QObject* parent): QAbstractSocket(socketType, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQAbstractSocket() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractSocket::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QAbstractSocket::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractSocket::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QAbstractSocket::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractSocket::qt_metacall(param1, param2, param3);
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

		return QAbstractSocket::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void resume() override {
		if (vtbl->resume == 0) {
			QAbstractSocket::resume();
			return;
		}


		vtbl->resume(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resume() {

		QAbstractSocket::resume();

	}

	// Subclass to allow providing a Go implementation
	virtual void connectToHost(const QString& hostName, quint16 port, QIODevice::OpenMode mode, QAbstractSocket::NetworkLayerProtocol protocol) override {
		if (vtbl->connectToHost == 0) {
			QAbstractSocket::connectToHost(hostName, port, mode, protocol);
			return;
		}

		const QString hostName_ret = hostName;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray hostName_b = hostName_ret.toUtf8();
		struct miqt_string hostName_ms;
		hostName_ms.len = hostName_b.length();
		hostName_ms.data = static_cast<char*>(malloc(hostName_ms.len));
		memcpy(hostName_ms.data, hostName_b.data(), hostName_ms.len);
		struct miqt_string sigval1 = hostName_ms;
		quint16 port_ret = port;
		uint16_t sigval2 = static_cast<uint16_t>(port_ret);
		QIODevice::OpenMode mode_ret = mode;
		int sigval3 = static_cast<int>(mode_ret);
		QAbstractSocket::NetworkLayerProtocol protocol_ret = protocol;
		int sigval4 = static_cast<int>(protocol_ret);

		vtbl->connectToHost(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectToHost(struct miqt_string hostName, uint16_t port, int mode, int protocol) {
		QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);

		QAbstractSocket::connectToHost(hostName_QString, static_cast<quint16>(port), static_cast<QIODevice::OpenMode>(mode), static_cast<QAbstractSocket::NetworkLayerProtocol>(protocol));

	}

	// Subclass to allow providing a Go implementation
	virtual void connectToHost(const QHostAddress& address, quint16 port, QIODevice::OpenMode mode) override {
		if (vtbl->connectToHost2 == 0) {
			QAbstractSocket::connectToHost(address, port, mode);
			return;
		}

		const QHostAddress& address_ret = address;
		// Cast returned reference into pointer
		QHostAddress* sigval1 = const_cast<QHostAddress*>(&address_ret);
		quint16 port_ret = port;
		uint16_t sigval2 = static_cast<uint16_t>(port_ret);
		QIODevice::OpenMode mode_ret = mode;
		int sigval3 = static_cast<int>(mode_ret);

		vtbl->connectToHost2(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectToHost2(QHostAddress* address, uint16_t port, int mode) {

		QAbstractSocket::connectToHost(*address, static_cast<quint16>(port), static_cast<QIODevice::OpenMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectFromHost() override {
		if (vtbl->disconnectFromHost == 0) {
			QAbstractSocket::disconnectFromHost();
			return;
		}


		vtbl->disconnectFromHost(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectFromHost() {

		QAbstractSocket::disconnectFromHost();

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QAbstractSocket::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_bytesAvailable() const {

		qint64 _ret = QAbstractSocket::bytesAvailable();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QAbstractSocket::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_bytesToWrite() const {

		qint64 _ret = QAbstractSocket::bytesToWrite();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QAbstractSocket::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_canReadLine() const {

		return QAbstractSocket::canReadLine();

	}

	// Subclass to allow providing a Go implementation
	virtual void setReadBufferSize(qint64 size) override {
		if (vtbl->setReadBufferSize == 0) {
			QAbstractSocket::setReadBufferSize(size);
			return;
		}

		qint64 size_ret = size;
		long long sigval1 = static_cast<long long>(size_ret);

		vtbl->setReadBufferSize(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setReadBufferSize(long long size) {

		QAbstractSocket::setReadBufferSize(static_cast<qint64>(size));

	}

	// Subclass to allow providing a Go implementation
	virtual qintptr socketDescriptor() const override {
		if (vtbl->socketDescriptor == 0) {
			return QAbstractSocket::socketDescriptor();
		}


		intptr_t callback_return_value = vtbl->socketDescriptor(vtbl, this);

		return (qintptr)(callback_return_value);
	}

	// Wrapper to allow calling protected method
	intptr_t virtualbase_socketDescriptor() const {

		qintptr _ret = QAbstractSocket::socketDescriptor();
		return (intptr_t)(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool setSocketDescriptor(qintptr socketDescriptor, QAbstractSocket::SocketState state, QIODevice::OpenMode openMode) override {
		if (vtbl->setSocketDescriptor == 0) {
			return QAbstractSocket::setSocketDescriptor(socketDescriptor, state, openMode);
		}

		qintptr socketDescriptor_ret = socketDescriptor;
		intptr_t sigval1 = (intptr_t)(socketDescriptor_ret);
		QAbstractSocket::SocketState state_ret = state;
		int sigval2 = static_cast<int>(state_ret);
		QIODevice::OpenMode openMode_ret = openMode;
		int sigval3 = static_cast<int>(openMode_ret);

		bool callback_return_value = vtbl->setSocketDescriptor(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_setSocketDescriptor(intptr_t socketDescriptor, int state, int openMode) {

		return QAbstractSocket::setSocketDescriptor((qintptr)(socketDescriptor), static_cast<QAbstractSocket::SocketState>(state), static_cast<QIODevice::OpenMode>(openMode));

	}

	// Subclass to allow providing a Go implementation
	virtual void setSocketOption(QAbstractSocket::SocketOption option, const QVariant& value) override {
		if (vtbl->setSocketOption == 0) {
			QAbstractSocket::setSocketOption(option, value);
			return;
		}

		QAbstractSocket::SocketOption option_ret = option;
		int sigval1 = static_cast<int>(option_ret);
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);

		vtbl->setSocketOption(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setSocketOption(int option, QVariant* value) {

		QAbstractSocket::setSocketOption(static_cast<QAbstractSocket::SocketOption>(option), *value);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant socketOption(QAbstractSocket::SocketOption option) override {
		if (vtbl->socketOption == 0) {
			return QAbstractSocket::socketOption(option);
		}

		QAbstractSocket::SocketOption option_ret = option;
		int sigval1 = static_cast<int>(option_ret);

		QVariant* callback_return_value = vtbl->socketOption(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_socketOption(int option) {

		return new QVariant(QAbstractSocket::socketOption(static_cast<QAbstractSocket::SocketOption>(option)));

	}

	// Subclass to allow providing a Go implementation
	virtual void close() override {
		if (vtbl->close == 0) {
			QAbstractSocket::close();
			return;
		}


		vtbl->close(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_close() {

		QAbstractSocket::close();

	}

	// Subclass to allow providing a Go implementation
	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QAbstractSocket::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isSequential() const {

		return QAbstractSocket::isSequential();

	}

	// Subclass to allow providing a Go implementation
	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QAbstractSocket::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_atEnd() const {

		return QAbstractSocket::atEnd();

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForConnected(int msecs) override {
		if (vtbl->waitForConnected == 0) {
			return QAbstractSocket::waitForConnected(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForConnected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForConnected(int msecs) {

		return QAbstractSocket::waitForConnected(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QAbstractSocket::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForReadyRead(int msecs) {

		return QAbstractSocket::waitForReadyRead(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QAbstractSocket::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForBytesWritten(int msecs) {

		return QAbstractSocket::waitForBytesWritten(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForDisconnected(int msecs) override {
		if (vtbl->waitForDisconnected == 0) {
			return QAbstractSocket::waitForDisconnected(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForDisconnected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForDisconnected(int msecs) {

		return QAbstractSocket::waitForDisconnected(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 readData(char* data, qint64 maxlen) override {
		if (vtbl->readData == 0) {
			return QAbstractSocket::readData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_readData(char* data, long long maxlen) {

		qint64 _ret = QAbstractSocket::readData(data, static_cast<qint64>(maxlen));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QAbstractSocket::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_readLineData(char* data, long long maxlen) {

		qint64 _ret = QAbstractSocket::readLineData(data, static_cast<qint64>(maxlen));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 writeData(const char* data, qint64 len) override {
		if (vtbl->writeData == 0) {
			return QAbstractSocket::writeData(data, len);
		}

		const char* sigval1 = (const char*) data;
		qint64 len_ret = len;
		long long sigval2 = static_cast<long long>(len_ret);

		long long callback_return_value = vtbl->writeData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_writeData(const char* data, long long len) {

		qint64 _ret = QAbstractSocket::writeData(data, static_cast<qint64>(len));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool open(QIODevice::OpenMode mode) override {
		if (vtbl->open == 0) {
			return QAbstractSocket::open(mode);
		}

		QIODevice::OpenMode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->open(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_open(int mode) {

		return QAbstractSocket::open(static_cast<QIODevice::OpenMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QAbstractSocket::pos();
		}


		long long callback_return_value = vtbl->pos(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_pos() const {

		qint64 _ret = QAbstractSocket::pos();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QAbstractSocket::size();
		}


		long long callback_return_value = vtbl->size(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_size() const {

		qint64 _ret = QAbstractSocket::size();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool seek(qint64 pos) override {
		if (vtbl->seek == 0) {
			return QAbstractSocket::seek(pos);
		}

		qint64 pos_ret = pos;
		long long sigval1 = static_cast<long long>(pos_ret);

		bool callback_return_value = vtbl->seek(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_seek(long long pos) {

		return QAbstractSocket::seek(static_cast<qint64>(pos));

	}

	// Subclass to allow providing a Go implementation
	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QAbstractSocket::reset();
		}


		bool callback_return_value = vtbl->reset(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_reset() {

		return QAbstractSocket::reset();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAbstractSocket::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QAbstractSocket::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractSocket::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QAbstractSocket::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAbstractSocket::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QAbstractSocket::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractSocket::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QAbstractSocket::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractSocket::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QAbstractSocket::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractSocket::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QAbstractSocket::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractSocket::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QAbstractSocket::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QAbstractSocket_protectedbase_setSocketState(void* self, int state);
	friend void QAbstractSocket_protectedbase_setSocketError(void* self, int socketError);
	friend void QAbstractSocket_protectedbase_setLocalPort(void* self, uint16_t port);
	friend void QAbstractSocket_protectedbase_setLocalAddress(void* self, QHostAddress* address);
	friend void QAbstractSocket_protectedbase_setPeerPort(void* self, uint16_t port);
	friend void QAbstractSocket_protectedbase_setPeerAddress(void* self, QHostAddress* address);
	friend void QAbstractSocket_protectedbase_setPeerName(void* self, struct miqt_string name);
	friend void QAbstractSocket_protectedbase_setOpenMode(void* self, int openMode);
	friend void QAbstractSocket_protectedbase_setErrorString(void* self, struct miqt_string errorString);
	friend QObject* QAbstractSocket_protectedbase_sender(const void* self);
	friend int QAbstractSocket_protectedbase_senderSignalIndex(const void* self);
	friend int QAbstractSocket_protectedbase_receivers(const void* self, const char* signal);
	friend bool QAbstractSocket_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QAbstractSocket* QAbstractSocket_new(struct QAbstractSocket_VTable* vtbl, int socketType, QObject* parent) {
	return new MiqtVirtualQAbstractSocket(vtbl, static_cast<QAbstractSocket::SocketType>(socketType), parent);
}

void QAbstractSocket_virtbase(QAbstractSocket* src, QIODevice** outptr_QIODevice) {
	*outptr_QIODevice = static_cast<QIODevice*>(src);
}

QMetaObject* QAbstractSocket_metaObject(const QAbstractSocket* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractSocket_metacast(QAbstractSocket* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractSocket_metacall(QAbstractSocket* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAbstractSocket_tr(const char* s) {
	QString _ret = QAbstractSocket::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractSocket_trUtf8(const char* s) {
	QString _ret = QAbstractSocket::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractSocket_resume(QAbstractSocket* self) {
	self->resume();
}

int QAbstractSocket_pauseMode(const QAbstractSocket* self) {
	QAbstractSocket::PauseModes _ret = self->pauseMode();
	return static_cast<int>(_ret);
}

void QAbstractSocket_setPauseMode(QAbstractSocket* self, int pauseMode) {
	self->setPauseMode(static_cast<QAbstractSocket::PauseModes>(pauseMode));
}

bool QAbstractSocket_bind(QAbstractSocket* self, QHostAddress* address) {
	return self->bind(*address);
}

bool QAbstractSocket_bind2(QAbstractSocket* self) {
	return self->bind();
}

void QAbstractSocket_connectToHost(QAbstractSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);
	self->connectToHost(hostName_QString, static_cast<quint16>(port), static_cast<QIODevice::OpenMode>(mode), static_cast<QAbstractSocket::NetworkLayerProtocol>(protocol));
}

void QAbstractSocket_connectToHost2(QAbstractSocket* self, QHostAddress* address, uint16_t port, int mode) {
	self->connectToHost(*address, static_cast<quint16>(port), static_cast<QIODevice::OpenMode>(mode));
}

void QAbstractSocket_disconnectFromHost(QAbstractSocket* self) {
	self->disconnectFromHost();
}

bool QAbstractSocket_isValid(const QAbstractSocket* self) {
	return self->isValid();
}

long long QAbstractSocket_bytesAvailable(const QAbstractSocket* self) {
	qint64 _ret = self->bytesAvailable();
	return static_cast<long long>(_ret);
}

long long QAbstractSocket_bytesToWrite(const QAbstractSocket* self) {
	qint64 _ret = self->bytesToWrite();
	return static_cast<long long>(_ret);
}

bool QAbstractSocket_canReadLine(const QAbstractSocket* self) {
	return self->canReadLine();
}

uint16_t QAbstractSocket_localPort(const QAbstractSocket* self) {
	quint16 _ret = self->localPort();
	return static_cast<uint16_t>(_ret);
}

QHostAddress* QAbstractSocket_localAddress(const QAbstractSocket* self) {
	return new QHostAddress(self->localAddress());
}

uint16_t QAbstractSocket_peerPort(const QAbstractSocket* self) {
	quint16 _ret = self->peerPort();
	return static_cast<uint16_t>(_ret);
}

QHostAddress* QAbstractSocket_peerAddress(const QAbstractSocket* self) {
	return new QHostAddress(self->peerAddress());
}

struct miqt_string QAbstractSocket_peerName(const QAbstractSocket* self) {
	QString _ret = self->peerName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

long long QAbstractSocket_readBufferSize(const QAbstractSocket* self) {
	qint64 _ret = self->readBufferSize();
	return static_cast<long long>(_ret);
}

void QAbstractSocket_setReadBufferSize(QAbstractSocket* self, long long size) {
	self->setReadBufferSize(static_cast<qint64>(size));
}

void QAbstractSocket_abort(QAbstractSocket* self) {
	self->abort();
}

intptr_t QAbstractSocket_socketDescriptor(const QAbstractSocket* self) {
	qintptr _ret = self->socketDescriptor();
	return (intptr_t)(_ret);
}

bool QAbstractSocket_setSocketDescriptor(QAbstractSocket* self, intptr_t socketDescriptor, int state, int openMode) {
	return self->setSocketDescriptor((qintptr)(socketDescriptor), static_cast<QAbstractSocket::SocketState>(state), static_cast<QIODevice::OpenMode>(openMode));
}

void QAbstractSocket_setSocketOption(QAbstractSocket* self, int option, QVariant* value) {
	self->setSocketOption(static_cast<QAbstractSocket::SocketOption>(option), *value);
}

QVariant* QAbstractSocket_socketOption(QAbstractSocket* self, int option) {
	return new QVariant(self->socketOption(static_cast<QAbstractSocket::SocketOption>(option)));
}

int QAbstractSocket_socketType(const QAbstractSocket* self) {
	QAbstractSocket::SocketType _ret = self->socketType();
	return static_cast<int>(_ret);
}

int QAbstractSocket_state(const QAbstractSocket* self) {
	QAbstractSocket::SocketState _ret = self->state();
	return static_cast<int>(_ret);
}

int QAbstractSocket_error(const QAbstractSocket* self) {
	QAbstractSocket::SocketError _ret = self->error();
	return static_cast<int>(_ret);
}

void QAbstractSocket_close(QAbstractSocket* self) {
	self->close();
}

bool QAbstractSocket_isSequential(const QAbstractSocket* self) {
	return self->isSequential();
}

bool QAbstractSocket_atEnd(const QAbstractSocket* self) {
	return self->atEnd();
}

bool QAbstractSocket_flush(QAbstractSocket* self) {
	return self->flush();
}

bool QAbstractSocket_waitForConnected(QAbstractSocket* self, int msecs) {
	return self->waitForConnected(static_cast<int>(msecs));
}

bool QAbstractSocket_waitForReadyRead(QAbstractSocket* self, int msecs) {
	return self->waitForReadyRead(static_cast<int>(msecs));
}

bool QAbstractSocket_waitForBytesWritten(QAbstractSocket* self, int msecs) {
	return self->waitForBytesWritten(static_cast<int>(msecs));
}

bool QAbstractSocket_waitForDisconnected(QAbstractSocket* self, int msecs) {
	return self->waitForDisconnected(static_cast<int>(msecs));
}

void QAbstractSocket_setProxy(QAbstractSocket* self, QNetworkProxy* networkProxy) {
	self->setProxy(*networkProxy);
}

QNetworkProxy* QAbstractSocket_proxy(const QAbstractSocket* self) {
	return new QNetworkProxy(self->proxy());
}

struct miqt_string QAbstractSocket_protocolTag(const QAbstractSocket* self) {
	QString _ret = self->protocolTag();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractSocket_setProtocolTag(QAbstractSocket* self, struct miqt_string tag) {
	QString tag_QString = QString::fromUtf8(tag.data, tag.len);
	self->setProtocolTag(tag_QString);
}

void QAbstractSocket_hostFound(QAbstractSocket* self) {
	self->hostFound();
}

void QAbstractSocket_connect_hostFound(QAbstractSocket* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QAbstractSocket_hostFound(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QAbstractSocket_hostFound_release(slot); }
	};
	MiqtVirtualQAbstractSocket::connect(self, static_cast<void (QAbstractSocket::*)()>(&QAbstractSocket::hostFound), self, caller{slot});
}

void QAbstractSocket_connected(QAbstractSocket* self) {
	self->connected();
}

void QAbstractSocket_connect_connected(QAbstractSocket* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QAbstractSocket_connected(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QAbstractSocket_connected_release(slot); }
	};
	MiqtVirtualQAbstractSocket::connect(self, static_cast<void (QAbstractSocket::*)()>(&QAbstractSocket::connected), self, caller{slot});
}

void QAbstractSocket_disconnected(QAbstractSocket* self) {
	self->disconnected();
}

void QAbstractSocket_connect_disconnected(QAbstractSocket* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QAbstractSocket_disconnected(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QAbstractSocket_disconnected_release(slot); }
	};
	MiqtVirtualQAbstractSocket::connect(self, static_cast<void (QAbstractSocket::*)()>(&QAbstractSocket::disconnected), self, caller{slot});
}

void QAbstractSocket_stateChanged(QAbstractSocket* self, int param1) {
	self->stateChanged(static_cast<QAbstractSocket::SocketState>(param1));
}

void QAbstractSocket_connect_stateChanged(QAbstractSocket* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QAbstractSocket::SocketState param1) {
			QAbstractSocket::SocketState param1_ret = param1;
			int sigval1 = static_cast<int>(param1_ret);
			miqt_exec_callback_QAbstractSocket_stateChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QAbstractSocket_stateChanged_release(slot); }
	};
	MiqtVirtualQAbstractSocket::connect(self, static_cast<void (QAbstractSocket::*)(QAbstractSocket::SocketState)>(&QAbstractSocket::stateChanged), self, caller{slot});
}

void QAbstractSocket_errorWithQAbstractSocketSocketError(QAbstractSocket* self, int param1) {
	self->error(static_cast<QAbstractSocket::SocketError>(param1));
}

void QAbstractSocket_connect_errorWithQAbstractSocketSocketError(QAbstractSocket* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QAbstractSocket::SocketError param1) {
			QAbstractSocket::SocketError param1_ret = param1;
			int sigval1 = static_cast<int>(param1_ret);
			miqt_exec_callback_QAbstractSocket_errorWithQAbstractSocketSocketError(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QAbstractSocket_errorWithQAbstractSocketSocketError_release(slot); }
	};
	MiqtVirtualQAbstractSocket::connect(self, static_cast<void (QAbstractSocket::*)(QAbstractSocket::SocketError)>(&QAbstractSocket::error), self, caller{slot});
}

void QAbstractSocket_errorOccurred(QAbstractSocket* self, int param1) {
	self->errorOccurred(static_cast<QAbstractSocket::SocketError>(param1));
}

void QAbstractSocket_connect_errorOccurred(QAbstractSocket* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QAbstractSocket::SocketError param1) {
			QAbstractSocket::SocketError param1_ret = param1;
			int sigval1 = static_cast<int>(param1_ret);
			miqt_exec_callback_QAbstractSocket_errorOccurred(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QAbstractSocket_errorOccurred_release(slot); }
	};
	MiqtVirtualQAbstractSocket::connect(self, static_cast<void (QAbstractSocket::*)(QAbstractSocket::SocketError)>(&QAbstractSocket::errorOccurred), self, caller{slot});
}

void QAbstractSocket_proxyAuthenticationRequired(QAbstractSocket* self, QNetworkProxy* proxy, QAuthenticator* authenticator) {
	self->proxyAuthenticationRequired(*proxy, authenticator);
}

void QAbstractSocket_connect_proxyAuthenticationRequired(QAbstractSocket* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QNetworkProxy& proxy, QAuthenticator* authenticator) {
			const QNetworkProxy& proxy_ret = proxy;
			// Cast returned reference into pointer
			QNetworkProxy* sigval1 = const_cast<QNetworkProxy*>(&proxy_ret);
			QAuthenticator* sigval2 = authenticator;
			miqt_exec_callback_QAbstractSocket_proxyAuthenticationRequired(slot, sigval1, sigval2);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QAbstractSocket_proxyAuthenticationRequired_release(slot); }
	};
	MiqtVirtualQAbstractSocket::connect(self, static_cast<void (QAbstractSocket::*)(const QNetworkProxy&, QAuthenticator*)>(&QAbstractSocket::proxyAuthenticationRequired), self, caller{slot});
}

struct miqt_string QAbstractSocket_tr2(const char* s, const char* c) {
	QString _ret = QAbstractSocket::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractSocket_tr3(const char* s, const char* c, int n) {
	QString _ret = QAbstractSocket::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractSocket_trUtf82(const char* s, const char* c) {
	QString _ret = QAbstractSocket::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractSocket_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAbstractSocket::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QAbstractSocket_bind22(QAbstractSocket* self, QHostAddress* address, uint16_t port) {
	return self->bind(*address, static_cast<quint16>(port));
}

bool QAbstractSocket_bind3(QAbstractSocket* self, QHostAddress* address, uint16_t port, int mode) {
	return self->bind(*address, static_cast<quint16>(port), static_cast<QAbstractSocket::BindMode>(mode));
}

bool QAbstractSocket_bind1(QAbstractSocket* self, uint16_t port) {
	return self->bind(static_cast<quint16>(port));
}

bool QAbstractSocket_bind23(QAbstractSocket* self, uint16_t port, int mode) {
	return self->bind(static_cast<quint16>(port), static_cast<QAbstractSocket::BindMode>(mode));
}

QMetaObject* QAbstractSocket_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQAbstractSocket*)(self) )->virtualbase_metaObject();
}

void* QAbstractSocket_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_metacast(param1);
}

int QAbstractSocket_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QAbstractSocket_virtualbase_resume(void* self) {
	( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_resume();
}

void QAbstractSocket_virtualbase_connectToHost(void* self, struct miqt_string hostName, uint16_t port, int mode, int protocol) {
	( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_connectToHost(hostName, port, mode, protocol);
}

void QAbstractSocket_virtualbase_connectToHost2(void* self, QHostAddress* address, uint16_t port, int mode) {
	( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_connectToHost2(address, port, mode);
}

void QAbstractSocket_virtualbase_disconnectFromHost(void* self) {
	( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_disconnectFromHost();
}

long long QAbstractSocket_virtualbase_bytesAvailable(const void* self) {
	return ( (const MiqtVirtualQAbstractSocket*)(self) )->virtualbase_bytesAvailable();
}

long long QAbstractSocket_virtualbase_bytesToWrite(const void* self) {
	return ( (const MiqtVirtualQAbstractSocket*)(self) )->virtualbase_bytesToWrite();
}

bool QAbstractSocket_virtualbase_canReadLine(const void* self) {
	return ( (const MiqtVirtualQAbstractSocket*)(self) )->virtualbase_canReadLine();
}

void QAbstractSocket_virtualbase_setReadBufferSize(void* self, long long size) {
	( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_setReadBufferSize(size);
}

intptr_t QAbstractSocket_virtualbase_socketDescriptor(const void* self) {
	return ( (const MiqtVirtualQAbstractSocket*)(self) )->virtualbase_socketDescriptor();
}

bool QAbstractSocket_virtualbase_setSocketDescriptor(void* self, intptr_t socketDescriptor, int state, int openMode) {
	return ( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_setSocketDescriptor(socketDescriptor, state, openMode);
}

void QAbstractSocket_virtualbase_setSocketOption(void* self, int option, QVariant* value) {
	( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_setSocketOption(option, value);
}

QVariant* QAbstractSocket_virtualbase_socketOption(void* self, int option) {
	return ( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_socketOption(option);
}

void QAbstractSocket_virtualbase_close(void* self) {
	( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_close();
}

bool QAbstractSocket_virtualbase_isSequential(const void* self) {
	return ( (const MiqtVirtualQAbstractSocket*)(self) )->virtualbase_isSequential();
}

bool QAbstractSocket_virtualbase_atEnd(const void* self) {
	return ( (const MiqtVirtualQAbstractSocket*)(self) )->virtualbase_atEnd();
}

bool QAbstractSocket_virtualbase_waitForConnected(void* self, int msecs) {
	return ( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_waitForConnected(msecs);
}

bool QAbstractSocket_virtualbase_waitForReadyRead(void* self, int msecs) {
	return ( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_waitForReadyRead(msecs);
}

bool QAbstractSocket_virtualbase_waitForBytesWritten(void* self, int msecs) {
	return ( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_waitForBytesWritten(msecs);
}

bool QAbstractSocket_virtualbase_waitForDisconnected(void* self, int msecs) {
	return ( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_waitForDisconnected(msecs);
}

long long QAbstractSocket_virtualbase_readData(void* self, char* data, long long maxlen) {
	return ( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_readData(data, maxlen);
}

long long QAbstractSocket_virtualbase_readLineData(void* self, char* data, long long maxlen) {
	return ( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_readLineData(data, maxlen);
}

long long QAbstractSocket_virtualbase_writeData(void* self, const char* data, long long len) {
	return ( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_writeData(data, len);
}

bool QAbstractSocket_virtualbase_open(void* self, int mode) {
	return ( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_open(mode);
}

long long QAbstractSocket_virtualbase_pos(const void* self) {
	return ( (const MiqtVirtualQAbstractSocket*)(self) )->virtualbase_pos();
}

long long QAbstractSocket_virtualbase_size(const void* self) {
	return ( (const MiqtVirtualQAbstractSocket*)(self) )->virtualbase_size();
}

bool QAbstractSocket_virtualbase_seek(void* self, long long pos) {
	return ( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_seek(pos);
}

bool QAbstractSocket_virtualbase_reset(void* self) {
	return ( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_reset();
}

bool QAbstractSocket_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_event(event);
}

bool QAbstractSocket_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_eventFilter(watched, event);
}

void QAbstractSocket_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_timerEvent(event);
}

void QAbstractSocket_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_childEvent(event);
}

void QAbstractSocket_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_customEvent(event);
}

void QAbstractSocket_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_connectNotify(signal);
}

void QAbstractSocket_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQAbstractSocket*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QAbstractSocket_staticMetaObject() { return &QAbstractSocket::staticMetaObject; }
void QAbstractSocket_protectedbase_setSocketState(void* self, int state) {
	MiqtVirtualQAbstractSocket* self_cast = static_cast<MiqtVirtualQAbstractSocket*>( (QAbstractSocket*)(self) );
	
	self_cast->setSocketState(static_cast<MiqtVirtualQAbstractSocket::SocketState>(state));

}

void QAbstractSocket_protectedbase_setSocketError(void* self, int socketError) {
	MiqtVirtualQAbstractSocket* self_cast = static_cast<MiqtVirtualQAbstractSocket*>( (QAbstractSocket*)(self) );
	
	self_cast->setSocketError(static_cast<MiqtVirtualQAbstractSocket::SocketError>(socketError));

}

void QAbstractSocket_protectedbase_setLocalPort(void* self, uint16_t port) {
	MiqtVirtualQAbstractSocket* self_cast = static_cast<MiqtVirtualQAbstractSocket*>( (QAbstractSocket*)(self) );
	
	self_cast->setLocalPort(static_cast<quint16>(port));

}

void QAbstractSocket_protectedbase_setLocalAddress(void* self, QHostAddress* address) {
	MiqtVirtualQAbstractSocket* self_cast = static_cast<MiqtVirtualQAbstractSocket*>( (QAbstractSocket*)(self) );
	
	self_cast->setLocalAddress(*address);

}

void QAbstractSocket_protectedbase_setPeerPort(void* self, uint16_t port) {
	MiqtVirtualQAbstractSocket* self_cast = static_cast<MiqtVirtualQAbstractSocket*>( (QAbstractSocket*)(self) );
	
	self_cast->setPeerPort(static_cast<quint16>(port));

}

void QAbstractSocket_protectedbase_setPeerAddress(void* self, QHostAddress* address) {
	MiqtVirtualQAbstractSocket* self_cast = static_cast<MiqtVirtualQAbstractSocket*>( (QAbstractSocket*)(self) );
	
	self_cast->setPeerAddress(*address);

}

void QAbstractSocket_protectedbase_setPeerName(void* self, struct miqt_string name) {
	MiqtVirtualQAbstractSocket* self_cast = static_cast<MiqtVirtualQAbstractSocket*>( (QAbstractSocket*)(self) );
			QString name_QString = QString::fromUtf8(name.data, name.len);

	self_cast->setPeerName(name_QString);

}

void QAbstractSocket_protectedbase_setOpenMode(void* self, int openMode) {
	MiqtVirtualQAbstractSocket* self_cast = static_cast<MiqtVirtualQAbstractSocket*>( (QAbstractSocket*)(self) );
	
	self_cast->setOpenMode(static_cast<MiqtVirtualQAbstractSocket::OpenMode>(openMode));

}

void QAbstractSocket_protectedbase_setErrorString(void* self, struct miqt_string errorString) {
	MiqtVirtualQAbstractSocket* self_cast = static_cast<MiqtVirtualQAbstractSocket*>( (QAbstractSocket*)(self) );
			QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);

	self_cast->setErrorString(errorString_QString);

}

QObject* QAbstractSocket_protectedbase_sender(const void* self) {
	MiqtVirtualQAbstractSocket* self_cast = static_cast<MiqtVirtualQAbstractSocket*>( (QAbstractSocket*)(self) );
	
	return self_cast->sender();

}

int QAbstractSocket_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQAbstractSocket* self_cast = static_cast<MiqtVirtualQAbstractSocket*>( (QAbstractSocket*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QAbstractSocket_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQAbstractSocket* self_cast = static_cast<MiqtVirtualQAbstractSocket*>( (QAbstractSocket*)(self) );
	
	return self_cast->receivers(signal);

}

bool QAbstractSocket_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQAbstractSocket* self_cast = static_cast<MiqtVirtualQAbstractSocket*>( (QAbstractSocket*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QAbstractSocket_delete(QAbstractSocket* self) {
	delete self;
}

