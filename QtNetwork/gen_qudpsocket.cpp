#include <QAbstractSocket>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QHostAddress>
#include <QIODevice>
#include <QIODeviceBase>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkDatagram>
#include <QNetworkInterface>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUdpSocket>
#include <QVariant>
#include <qudpsocket.h>
#include "gen_qudpsocket.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQUdpSocket final : public QUdpSocket {
	struct QUdpSocket_VTable* vtbl;
public:

	MiqtVirtualQUdpSocket(struct QUdpSocket_VTable* vtbl): QUdpSocket(), vtbl(vtbl) {};
	MiqtVirtualQUdpSocket(struct QUdpSocket_VTable* vtbl, QObject* parent): QUdpSocket(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQUdpSocket() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QUdpSocket::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QUdpSocket::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QUdpSocket::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QUdpSocket::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QUdpSocket::qt_metacall(param1, param2, param3);
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

		return QUdpSocket::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void resume() override {
		if (vtbl->resume == 0) {
			QUdpSocket::resume();
			return;
		}


		vtbl->resume(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resume() {

		QUdpSocket::resume();

	}

	// Subclass to allow providing a Go implementation
	virtual bool bind(const QHostAddress& address, quint16 port, QAbstractSocket::BindMode mode) override {
		if (vtbl->bind == 0) {
			return QUdpSocket::bind(address, port, mode);
		}

		const QHostAddress& address_ret = address;
		// Cast returned reference into pointer
		QHostAddress* sigval1 = const_cast<QHostAddress*>(&address_ret);
		quint16 port_ret = port;
		uint16_t sigval2 = static_cast<uint16_t>(port_ret);
		QAbstractSocket::BindMode mode_ret = mode;
		int sigval3 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->bind(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_bind(QHostAddress* address, uint16_t port, int mode) {

		return QUdpSocket::bind(*address, static_cast<quint16>(port), static_cast<QAbstractSocket::BindMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual void connectToHost(const QString& hostName, quint16 port, QIODeviceBase::OpenMode mode, QAbstractSocket::NetworkLayerProtocol protocol) override {
		if (vtbl->connectToHost == 0) {
			QUdpSocket::connectToHost(hostName, port, mode, protocol);
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
		QIODeviceBase::OpenMode mode_ret = mode;
		int sigval3 = static_cast<int>(mode_ret);
		QAbstractSocket::NetworkLayerProtocol protocol_ret = protocol;
		int sigval4 = static_cast<int>(protocol_ret);

		vtbl->connectToHost(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectToHost(struct miqt_string hostName, uint16_t port, int mode, int protocol) {
		QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);

		QUdpSocket::connectToHost(hostName_QString, static_cast<quint16>(port), static_cast<QIODeviceBase::OpenMode>(mode), static_cast<QAbstractSocket::NetworkLayerProtocol>(protocol));

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectFromHost() override {
		if (vtbl->disconnectFromHost == 0) {
			QUdpSocket::disconnectFromHost();
			return;
		}


		vtbl->disconnectFromHost(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectFromHost() {

		QUdpSocket::disconnectFromHost();

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QUdpSocket::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_bytesAvailable() const {

		qint64 _ret = QUdpSocket::bytesAvailable();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QUdpSocket::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_bytesToWrite() const {

		qint64 _ret = QUdpSocket::bytesToWrite();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual void setReadBufferSize(qint64 size) override {
		if (vtbl->setReadBufferSize == 0) {
			QUdpSocket::setReadBufferSize(size);
			return;
		}

		qint64 size_ret = size;
		long long sigval1 = static_cast<long long>(size_ret);

		vtbl->setReadBufferSize(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setReadBufferSize(long long size) {

		QUdpSocket::setReadBufferSize(static_cast<qint64>(size));

	}

	// Subclass to allow providing a Go implementation
	virtual qintptr socketDescriptor() const override {
		if (vtbl->socketDescriptor == 0) {
			return QUdpSocket::socketDescriptor();
		}


		intptr_t callback_return_value = vtbl->socketDescriptor(vtbl, this);

		return (qintptr)(callback_return_value);
	}

	// Wrapper to allow calling protected method
	intptr_t virtualbase_socketDescriptor() const {

		qintptr _ret = QUdpSocket::socketDescriptor();
		return (intptr_t)(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool setSocketDescriptor(qintptr socketDescriptor, QAbstractSocket::SocketState state, QIODeviceBase::OpenMode openMode) override {
		if (vtbl->setSocketDescriptor == 0) {
			return QUdpSocket::setSocketDescriptor(socketDescriptor, state, openMode);
		}

		qintptr socketDescriptor_ret = socketDescriptor;
		intptr_t sigval1 = (intptr_t)(socketDescriptor_ret);
		QAbstractSocket::SocketState state_ret = state;
		int sigval2 = static_cast<int>(state_ret);
		QIODeviceBase::OpenMode openMode_ret = openMode;
		int sigval3 = static_cast<int>(openMode_ret);

		bool callback_return_value = vtbl->setSocketDescriptor(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_setSocketDescriptor(intptr_t socketDescriptor, int state, int openMode) {

		return QUdpSocket::setSocketDescriptor((qintptr)(socketDescriptor), static_cast<QAbstractSocket::SocketState>(state), static_cast<QIODeviceBase::OpenMode>(openMode));

	}

	// Subclass to allow providing a Go implementation
	virtual void setSocketOption(QAbstractSocket::SocketOption option, const QVariant& value) override {
		if (vtbl->setSocketOption == 0) {
			QUdpSocket::setSocketOption(option, value);
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

		QUdpSocket::setSocketOption(static_cast<QAbstractSocket::SocketOption>(option), *value);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant socketOption(QAbstractSocket::SocketOption option) override {
		if (vtbl->socketOption == 0) {
			return QUdpSocket::socketOption(option);
		}

		QAbstractSocket::SocketOption option_ret = option;
		int sigval1 = static_cast<int>(option_ret);

		QVariant* callback_return_value = vtbl->socketOption(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_socketOption(int option) {

		return new QVariant(QUdpSocket::socketOption(static_cast<QAbstractSocket::SocketOption>(option)));

	}

	// Subclass to allow providing a Go implementation
	virtual void close() override {
		if (vtbl->close == 0) {
			QUdpSocket::close();
			return;
		}


		vtbl->close(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_close() {

		QUdpSocket::close();

	}

	// Subclass to allow providing a Go implementation
	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QUdpSocket::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isSequential() const {

		return QUdpSocket::isSequential();

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForConnected(int msecs) override {
		if (vtbl->waitForConnected == 0) {
			return QUdpSocket::waitForConnected(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForConnected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForConnected(int msecs) {

		return QUdpSocket::waitForConnected(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QUdpSocket::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForReadyRead(int msecs) {

		return QUdpSocket::waitForReadyRead(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QUdpSocket::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForBytesWritten(int msecs) {

		return QUdpSocket::waitForBytesWritten(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForDisconnected(int msecs) override {
		if (vtbl->waitForDisconnected == 0) {
			return QUdpSocket::waitForDisconnected(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForDisconnected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForDisconnected(int msecs) {

		return QUdpSocket::waitForDisconnected(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 readData(char* data, qint64 maxlen) override {
		if (vtbl->readData == 0) {
			return QUdpSocket::readData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_readData(char* data, long long maxlen) {

		qint64 _ret = QUdpSocket::readData(data, static_cast<qint64>(maxlen));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QUdpSocket::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_readLineData(char* data, long long maxlen) {

		qint64 _ret = QUdpSocket::readLineData(data, static_cast<qint64>(maxlen));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 skipData(qint64 maxSize) override {
		if (vtbl->skipData == 0) {
			return QUdpSocket::skipData(maxSize);
		}

		qint64 maxSize_ret = maxSize;
		long long sigval1 = static_cast<long long>(maxSize_ret);

		long long callback_return_value = vtbl->skipData(vtbl, this, sigval1);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_skipData(long long maxSize) {

		qint64 _ret = QUdpSocket::skipData(static_cast<qint64>(maxSize));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 writeData(const char* data, qint64 len) override {
		if (vtbl->writeData == 0) {
			return QUdpSocket::writeData(data, len);
		}

		const char* sigval1 = (const char*) data;
		qint64 len_ret = len;
		long long sigval2 = static_cast<long long>(len_ret);

		long long callback_return_value = vtbl->writeData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_writeData(const char* data, long long len) {

		qint64 _ret = QUdpSocket::writeData(data, static_cast<qint64>(len));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool open(QIODeviceBase::OpenMode mode) override {
		if (vtbl->open == 0) {
			return QUdpSocket::open(mode);
		}

		QIODeviceBase::OpenMode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->open(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_open(int mode) {

		return QUdpSocket::open(static_cast<QIODeviceBase::OpenMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QUdpSocket::pos();
		}


		long long callback_return_value = vtbl->pos(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_pos() const {

		qint64 _ret = QUdpSocket::pos();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QUdpSocket::size();
		}


		long long callback_return_value = vtbl->size(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_size() const {

		qint64 _ret = QUdpSocket::size();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool seek(qint64 pos) override {
		if (vtbl->seek == 0) {
			return QUdpSocket::seek(pos);
		}

		qint64 pos_ret = pos;
		long long sigval1 = static_cast<long long>(pos_ret);

		bool callback_return_value = vtbl->seek(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_seek(long long pos) {

		return QUdpSocket::seek(static_cast<qint64>(pos));

	}

	// Subclass to allow providing a Go implementation
	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QUdpSocket::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_atEnd() const {

		return QUdpSocket::atEnd();

	}

	// Subclass to allow providing a Go implementation
	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QUdpSocket::reset();
		}


		bool callback_return_value = vtbl->reset(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_reset() {

		return QUdpSocket::reset();

	}

	// Subclass to allow providing a Go implementation
	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QUdpSocket::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_canReadLine() const {

		return QUdpSocket::canReadLine();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QUdpSocket::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QUdpSocket::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QUdpSocket::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QUdpSocket::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QUdpSocket::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QUdpSocket::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QUdpSocket::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QUdpSocket::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QUdpSocket::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QUdpSocket::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QUdpSocket::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QUdpSocket::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QUdpSocket::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QUdpSocket::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QUdpSocket_protectedbase_setSocketState(void* self, int state);
	friend void QUdpSocket_protectedbase_setSocketError(void* self, int socketError);
	friend void QUdpSocket_protectedbase_setLocalPort(void* self, uint16_t port);
	friend void QUdpSocket_protectedbase_setLocalAddress(void* self, QHostAddress* address);
	friend void QUdpSocket_protectedbase_setPeerPort(void* self, uint16_t port);
	friend void QUdpSocket_protectedbase_setPeerAddress(void* self, QHostAddress* address);
	friend void QUdpSocket_protectedbase_setPeerName(void* self, struct miqt_string name);
	friend void QUdpSocket_protectedbase_setOpenMode(void* self, int openMode);
	friend void QUdpSocket_protectedbase_setErrorString(void* self, struct miqt_string errorString);
	friend QObject* QUdpSocket_protectedbase_sender(const void* self);
	friend int QUdpSocket_protectedbase_senderSignalIndex(const void* self);
	friend int QUdpSocket_protectedbase_receivers(const void* self, const char* signal);
	friend bool QUdpSocket_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QUdpSocket* QUdpSocket_new(struct QUdpSocket_VTable* vtbl) {
	return new MiqtVirtualQUdpSocket(vtbl);
}

QUdpSocket* QUdpSocket_new2(struct QUdpSocket_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQUdpSocket(vtbl, parent);
}

void QUdpSocket_virtbase(QUdpSocket* src, QAbstractSocket** outptr_QAbstractSocket) {
	*outptr_QAbstractSocket = static_cast<QAbstractSocket*>(src);
}

QMetaObject* QUdpSocket_metaObject(const QUdpSocket* self) {
	return (QMetaObject*) self->metaObject();
}

void* QUdpSocket_metacast(QUdpSocket* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QUdpSocket_metacall(QUdpSocket* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QUdpSocket_tr(const char* s) {
	QString _ret = QUdpSocket::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QUdpSocket_bind(QUdpSocket* self, int addr) {
	return self->bind(static_cast<QHostAddress::SpecialAddress>(addr));
}

bool QUdpSocket_joinMulticastGroup(QUdpSocket* self, QHostAddress* groupAddress) {
	return self->joinMulticastGroup(*groupAddress);
}

bool QUdpSocket_joinMulticastGroup2(QUdpSocket* self, QHostAddress* groupAddress, QNetworkInterface* iface) {
	return self->joinMulticastGroup(*groupAddress, *iface);
}

bool QUdpSocket_leaveMulticastGroup(QUdpSocket* self, QHostAddress* groupAddress) {
	return self->leaveMulticastGroup(*groupAddress);
}

bool QUdpSocket_leaveMulticastGroup2(QUdpSocket* self, QHostAddress* groupAddress, QNetworkInterface* iface) {
	return self->leaveMulticastGroup(*groupAddress, *iface);
}

QNetworkInterface* QUdpSocket_multicastInterface(const QUdpSocket* self) {
	return new QNetworkInterface(self->multicastInterface());
}

void QUdpSocket_setMulticastInterface(QUdpSocket* self, QNetworkInterface* iface) {
	self->setMulticastInterface(*iface);
}

bool QUdpSocket_hasPendingDatagrams(const QUdpSocket* self) {
	return self->hasPendingDatagrams();
}

long long QUdpSocket_pendingDatagramSize(const QUdpSocket* self) {
	qint64 _ret = self->pendingDatagramSize();
	return static_cast<long long>(_ret);
}

QNetworkDatagram* QUdpSocket_receiveDatagram(QUdpSocket* self) {
	return new QNetworkDatagram(self->receiveDatagram());
}

long long QUdpSocket_readDatagram(QUdpSocket* self, char* data, long long maxlen) {
	qint64 _ret = self->readDatagram(data, static_cast<qint64>(maxlen));
	return static_cast<long long>(_ret);
}

long long QUdpSocket_writeDatagram(QUdpSocket* self, QNetworkDatagram* datagram) {
	qint64 _ret = self->writeDatagram(*datagram);
	return static_cast<long long>(_ret);
}

long long QUdpSocket_writeDatagram2(QUdpSocket* self, const char* data, long long len, QHostAddress* host, uint16_t port) {
	qint64 _ret = self->writeDatagram(data, static_cast<qint64>(len), *host, static_cast<quint16>(port));
	return static_cast<long long>(_ret);
}

long long QUdpSocket_writeDatagram3(QUdpSocket* self, struct miqt_string datagram, QHostAddress* host, uint16_t port) {
	QByteArray datagram_QByteArray(datagram.data, datagram.len);
	qint64 _ret = self->writeDatagram(datagram_QByteArray, *host, static_cast<quint16>(port));
	return static_cast<long long>(_ret);
}

struct miqt_string QUdpSocket_tr2(const char* s, const char* c) {
	QString _ret = QUdpSocket::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QUdpSocket_tr3(const char* s, const char* c, int n) {
	QString _ret = QUdpSocket::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QUdpSocket_bind2(QUdpSocket* self, int addr, uint16_t port) {
	return self->bind(static_cast<QHostAddress::SpecialAddress>(addr), static_cast<quint16>(port));
}

bool QUdpSocket_bind3(QUdpSocket* self, int addr, uint16_t port, int mode) {
	return self->bind(static_cast<QHostAddress::SpecialAddress>(addr), static_cast<quint16>(port), static_cast<QAbstractSocket::BindMode>(mode));
}

QNetworkDatagram* QUdpSocket_receiveDatagram1(QUdpSocket* self, long long maxSize) {
	return new QNetworkDatagram(self->receiveDatagram(static_cast<qint64>(maxSize)));
}

long long QUdpSocket_readDatagram3(QUdpSocket* self, char* data, long long maxlen, QHostAddress* host) {
	qint64 _ret = self->readDatagram(data, static_cast<qint64>(maxlen), host);
	return static_cast<long long>(_ret);
}

long long QUdpSocket_readDatagram4(QUdpSocket* self, char* data, long long maxlen, QHostAddress* host, uint16_t* port) {
	qint64 _ret = self->readDatagram(data, static_cast<qint64>(maxlen), host, static_cast<quint16*>(port));
	return static_cast<long long>(_ret);
}

QMetaObject* QUdpSocket_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQUdpSocket*)(self) )->virtualbase_metaObject();
}

void* QUdpSocket_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_metacast(param1);
}

int QUdpSocket_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QUdpSocket_virtualbase_resume(void* self) {
	( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_resume();
}

bool QUdpSocket_virtualbase_bind(void* self, QHostAddress* address, uint16_t port, int mode) {
	return ( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_bind(address, port, mode);
}

void QUdpSocket_virtualbase_connectToHost(void* self, struct miqt_string hostName, uint16_t port, int mode, int protocol) {
	( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_connectToHost(hostName, port, mode, protocol);
}

void QUdpSocket_virtualbase_disconnectFromHost(void* self) {
	( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_disconnectFromHost();
}

long long QUdpSocket_virtualbase_bytesAvailable(const void* self) {
	return ( (const MiqtVirtualQUdpSocket*)(self) )->virtualbase_bytesAvailable();
}

long long QUdpSocket_virtualbase_bytesToWrite(const void* self) {
	return ( (const MiqtVirtualQUdpSocket*)(self) )->virtualbase_bytesToWrite();
}

void QUdpSocket_virtualbase_setReadBufferSize(void* self, long long size) {
	( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_setReadBufferSize(size);
}

intptr_t QUdpSocket_virtualbase_socketDescriptor(const void* self) {
	return ( (const MiqtVirtualQUdpSocket*)(self) )->virtualbase_socketDescriptor();
}

bool QUdpSocket_virtualbase_setSocketDescriptor(void* self, intptr_t socketDescriptor, int state, int openMode) {
	return ( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_setSocketDescriptor(socketDescriptor, state, openMode);
}

void QUdpSocket_virtualbase_setSocketOption(void* self, int option, QVariant* value) {
	( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_setSocketOption(option, value);
}

QVariant* QUdpSocket_virtualbase_socketOption(void* self, int option) {
	return ( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_socketOption(option);
}

void QUdpSocket_virtualbase_close(void* self) {
	( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_close();
}

bool QUdpSocket_virtualbase_isSequential(const void* self) {
	return ( (const MiqtVirtualQUdpSocket*)(self) )->virtualbase_isSequential();
}

bool QUdpSocket_virtualbase_waitForConnected(void* self, int msecs) {
	return ( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_waitForConnected(msecs);
}

bool QUdpSocket_virtualbase_waitForReadyRead(void* self, int msecs) {
	return ( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_waitForReadyRead(msecs);
}

bool QUdpSocket_virtualbase_waitForBytesWritten(void* self, int msecs) {
	return ( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_waitForBytesWritten(msecs);
}

bool QUdpSocket_virtualbase_waitForDisconnected(void* self, int msecs) {
	return ( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_waitForDisconnected(msecs);
}

long long QUdpSocket_virtualbase_readData(void* self, char* data, long long maxlen) {
	return ( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_readData(data, maxlen);
}

long long QUdpSocket_virtualbase_readLineData(void* self, char* data, long long maxlen) {
	return ( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_readLineData(data, maxlen);
}

long long QUdpSocket_virtualbase_skipData(void* self, long long maxSize) {
	return ( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_skipData(maxSize);
}

long long QUdpSocket_virtualbase_writeData(void* self, const char* data, long long len) {
	return ( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_writeData(data, len);
}

bool QUdpSocket_virtualbase_open(void* self, int mode) {
	return ( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_open(mode);
}

long long QUdpSocket_virtualbase_pos(const void* self) {
	return ( (const MiqtVirtualQUdpSocket*)(self) )->virtualbase_pos();
}

long long QUdpSocket_virtualbase_size(const void* self) {
	return ( (const MiqtVirtualQUdpSocket*)(self) )->virtualbase_size();
}

bool QUdpSocket_virtualbase_seek(void* self, long long pos) {
	return ( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_seek(pos);
}

bool QUdpSocket_virtualbase_atEnd(const void* self) {
	return ( (const MiqtVirtualQUdpSocket*)(self) )->virtualbase_atEnd();
}

bool QUdpSocket_virtualbase_reset(void* self) {
	return ( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_reset();
}

bool QUdpSocket_virtualbase_canReadLine(const void* self) {
	return ( (const MiqtVirtualQUdpSocket*)(self) )->virtualbase_canReadLine();
}

bool QUdpSocket_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_event(event);
}

bool QUdpSocket_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_eventFilter(watched, event);
}

void QUdpSocket_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_timerEvent(event);
}

void QUdpSocket_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_childEvent(event);
}

void QUdpSocket_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_customEvent(event);
}

void QUdpSocket_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_connectNotify(signal);
}

void QUdpSocket_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQUdpSocket*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QUdpSocket_staticMetaObject() { return &QUdpSocket::staticMetaObject; }
void QUdpSocket_protectedbase_setSocketState(void* self, int state) {
	MiqtVirtualQUdpSocket* self_cast = static_cast<MiqtVirtualQUdpSocket*>( (QUdpSocket*)(self) );
	
	self_cast->setSocketState(static_cast<MiqtVirtualQUdpSocket::SocketState>(state));

}

void QUdpSocket_protectedbase_setSocketError(void* self, int socketError) {
	MiqtVirtualQUdpSocket* self_cast = static_cast<MiqtVirtualQUdpSocket*>( (QUdpSocket*)(self) );
	
	self_cast->setSocketError(static_cast<MiqtVirtualQUdpSocket::SocketError>(socketError));

}

void QUdpSocket_protectedbase_setLocalPort(void* self, uint16_t port) {
	MiqtVirtualQUdpSocket* self_cast = static_cast<MiqtVirtualQUdpSocket*>( (QUdpSocket*)(self) );
	
	self_cast->setLocalPort(static_cast<quint16>(port));

}

void QUdpSocket_protectedbase_setLocalAddress(void* self, QHostAddress* address) {
	MiqtVirtualQUdpSocket* self_cast = static_cast<MiqtVirtualQUdpSocket*>( (QUdpSocket*)(self) );
	
	self_cast->setLocalAddress(*address);

}

void QUdpSocket_protectedbase_setPeerPort(void* self, uint16_t port) {
	MiqtVirtualQUdpSocket* self_cast = static_cast<MiqtVirtualQUdpSocket*>( (QUdpSocket*)(self) );
	
	self_cast->setPeerPort(static_cast<quint16>(port));

}

void QUdpSocket_protectedbase_setPeerAddress(void* self, QHostAddress* address) {
	MiqtVirtualQUdpSocket* self_cast = static_cast<MiqtVirtualQUdpSocket*>( (QUdpSocket*)(self) );
	
	self_cast->setPeerAddress(*address);

}

void QUdpSocket_protectedbase_setPeerName(void* self, struct miqt_string name) {
	MiqtVirtualQUdpSocket* self_cast = static_cast<MiqtVirtualQUdpSocket*>( (QUdpSocket*)(self) );
			QString name_QString = QString::fromUtf8(name.data, name.len);

	self_cast->setPeerName(name_QString);

}

void QUdpSocket_protectedbase_setOpenMode(void* self, int openMode) {
	MiqtVirtualQUdpSocket* self_cast = static_cast<MiqtVirtualQUdpSocket*>( (QUdpSocket*)(self) );
	
	self_cast->setOpenMode(static_cast<MiqtVirtualQUdpSocket::OpenMode>(openMode));

}

void QUdpSocket_protectedbase_setErrorString(void* self, struct miqt_string errorString) {
	MiqtVirtualQUdpSocket* self_cast = static_cast<MiqtVirtualQUdpSocket*>( (QUdpSocket*)(self) );
			QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);

	self_cast->setErrorString(errorString_QString);

}

QObject* QUdpSocket_protectedbase_sender(const void* self) {
	MiqtVirtualQUdpSocket* self_cast = static_cast<MiqtVirtualQUdpSocket*>( (QUdpSocket*)(self) );
	
	return self_cast->sender();

}

int QUdpSocket_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQUdpSocket* self_cast = static_cast<MiqtVirtualQUdpSocket*>( (QUdpSocket*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QUdpSocket_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQUdpSocket* self_cast = static_cast<MiqtVirtualQUdpSocket*>( (QUdpSocket*)(self) );
	
	return self_cast->receivers(signal);

}

bool QUdpSocket_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQUdpSocket* self_cast = static_cast<MiqtVirtualQUdpSocket*>( (QUdpSocket*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QUdpSocket_delete(QUdpSocket* self) {
	delete self;
}

