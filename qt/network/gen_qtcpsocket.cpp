#include <QAbstractSocket>
#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTcpSocket>
#include <QTimerEvent>
#include <QVariant>
#include <qtcpsocket.h>
#include "gen_qtcpsocket.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQTcpSocket final : public QTcpSocket {
	struct QTcpSocket_VTable* vtbl;
public:

	MiqtVirtualQTcpSocket(struct QTcpSocket_VTable* vtbl): QTcpSocket(), vtbl(vtbl) {};
	MiqtVirtualQTcpSocket(struct QTcpSocket_VTable* vtbl, QObject* parent): QTcpSocket(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQTcpSocket() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTcpSocket::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QTcpSocket::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTcpSocket::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QTcpSocket::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTcpSocket::qt_metacall(param1, param2, param3);
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

		return QTcpSocket::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void resume() override {
		if (vtbl->resume == 0) {
			QTcpSocket::resume();
			return;
		}


		vtbl->resume(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resume() {

		QTcpSocket::resume();

	}

	// Subclass to allow providing a Go implementation
	virtual void connectToHost(const QString& hostName, quint16 port, QIODevice::OpenMode mode, QAbstractSocket::NetworkLayerProtocol protocol) override {
		if (vtbl->connectToHost == 0) {
			QTcpSocket::connectToHost(hostName, port, mode, protocol);
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

		QTcpSocket::connectToHost(hostName_QString, static_cast<quint16>(port), static_cast<QIODevice::OpenMode>(mode), static_cast<QAbstractSocket::NetworkLayerProtocol>(protocol));

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectFromHost() override {
		if (vtbl->disconnectFromHost == 0) {
			QTcpSocket::disconnectFromHost();
			return;
		}


		vtbl->disconnectFromHost(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectFromHost() {

		QTcpSocket::disconnectFromHost();

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QTcpSocket::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_bytesAvailable() const {

		qint64 _ret = QTcpSocket::bytesAvailable();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QTcpSocket::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_bytesToWrite() const {

		qint64 _ret = QTcpSocket::bytesToWrite();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QTcpSocket::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_canReadLine() const {

		return QTcpSocket::canReadLine();

	}

	// Subclass to allow providing a Go implementation
	virtual void setReadBufferSize(qint64 size) override {
		if (vtbl->setReadBufferSize == 0) {
			QTcpSocket::setReadBufferSize(size);
			return;
		}

		qint64 size_ret = size;
		long long sigval1 = static_cast<long long>(size_ret);

		vtbl->setReadBufferSize(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setReadBufferSize(long long size) {

		QTcpSocket::setReadBufferSize(static_cast<qint64>(size));

	}

	// Subclass to allow providing a Go implementation
	virtual qintptr socketDescriptor() const override {
		if (vtbl->socketDescriptor == 0) {
			return QTcpSocket::socketDescriptor();
		}


		intptr_t callback_return_value = vtbl->socketDescriptor(vtbl, this);

		return (qintptr)(callback_return_value);
	}

	// Wrapper to allow calling protected method
	intptr_t virtualbase_socketDescriptor() const {

		qintptr _ret = QTcpSocket::socketDescriptor();
		return (intptr_t)(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool setSocketDescriptor(qintptr socketDescriptor, QAbstractSocket::SocketState state, QIODevice::OpenMode openMode) override {
		if (vtbl->setSocketDescriptor == 0) {
			return QTcpSocket::setSocketDescriptor(socketDescriptor, state, openMode);
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

		return QTcpSocket::setSocketDescriptor((qintptr)(socketDescriptor), static_cast<QAbstractSocket::SocketState>(state), static_cast<QIODevice::OpenMode>(openMode));

	}

	// Subclass to allow providing a Go implementation
	virtual void setSocketOption(QAbstractSocket::SocketOption option, const QVariant& value) override {
		if (vtbl->setSocketOption == 0) {
			QTcpSocket::setSocketOption(option, value);
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

		QTcpSocket::setSocketOption(static_cast<QAbstractSocket::SocketOption>(option), *value);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant socketOption(QAbstractSocket::SocketOption option) override {
		if (vtbl->socketOption == 0) {
			return QTcpSocket::socketOption(option);
		}

		QAbstractSocket::SocketOption option_ret = option;
		int sigval1 = static_cast<int>(option_ret);

		QVariant* callback_return_value = vtbl->socketOption(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_socketOption(int option) {

		return new QVariant(QTcpSocket::socketOption(static_cast<QAbstractSocket::SocketOption>(option)));

	}

	// Subclass to allow providing a Go implementation
	virtual void close() override {
		if (vtbl->close == 0) {
			QTcpSocket::close();
			return;
		}


		vtbl->close(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_close() {

		QTcpSocket::close();

	}

	// Subclass to allow providing a Go implementation
	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QTcpSocket::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isSequential() const {

		return QTcpSocket::isSequential();

	}

	// Subclass to allow providing a Go implementation
	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QTcpSocket::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_atEnd() const {

		return QTcpSocket::atEnd();

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForConnected(int msecs) override {
		if (vtbl->waitForConnected == 0) {
			return QTcpSocket::waitForConnected(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForConnected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForConnected(int msecs) {

		return QTcpSocket::waitForConnected(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QTcpSocket::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForReadyRead(int msecs) {

		return QTcpSocket::waitForReadyRead(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QTcpSocket::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForBytesWritten(int msecs) {

		return QTcpSocket::waitForBytesWritten(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForDisconnected(int msecs) override {
		if (vtbl->waitForDisconnected == 0) {
			return QTcpSocket::waitForDisconnected(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForDisconnected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForDisconnected(int msecs) {

		return QTcpSocket::waitForDisconnected(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 readData(char* data, qint64 maxlen) override {
		if (vtbl->readData == 0) {
			return QTcpSocket::readData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_readData(char* data, long long maxlen) {

		qint64 _ret = QTcpSocket::readData(data, static_cast<qint64>(maxlen));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QTcpSocket::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_readLineData(char* data, long long maxlen) {

		qint64 _ret = QTcpSocket::readLineData(data, static_cast<qint64>(maxlen));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 writeData(const char* data, qint64 len) override {
		if (vtbl->writeData == 0) {
			return QTcpSocket::writeData(data, len);
		}

		const char* sigval1 = (const char*) data;
		qint64 len_ret = len;
		long long sigval2 = static_cast<long long>(len_ret);

		long long callback_return_value = vtbl->writeData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_writeData(const char* data, long long len) {

		qint64 _ret = QTcpSocket::writeData(data, static_cast<qint64>(len));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool open(QIODevice::OpenMode mode) override {
		if (vtbl->open == 0) {
			return QTcpSocket::open(mode);
		}

		QIODevice::OpenMode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->open(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_open(int mode) {

		return QTcpSocket::open(static_cast<QIODevice::OpenMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QTcpSocket::pos();
		}


		long long callback_return_value = vtbl->pos(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_pos() const {

		qint64 _ret = QTcpSocket::pos();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QTcpSocket::size();
		}


		long long callback_return_value = vtbl->size(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_size() const {

		qint64 _ret = QTcpSocket::size();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool seek(qint64 pos) override {
		if (vtbl->seek == 0) {
			return QTcpSocket::seek(pos);
		}

		qint64 pos_ret = pos;
		long long sigval1 = static_cast<long long>(pos_ret);

		bool callback_return_value = vtbl->seek(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_seek(long long pos) {

		return QTcpSocket::seek(static_cast<qint64>(pos));

	}

	// Subclass to allow providing a Go implementation
	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QTcpSocket::reset();
		}


		bool callback_return_value = vtbl->reset(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_reset() {

		return QTcpSocket::reset();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTcpSocket::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QTcpSocket::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTcpSocket::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QTcpSocket::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTcpSocket::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QTcpSocket::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTcpSocket::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QTcpSocket::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTcpSocket::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QTcpSocket::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTcpSocket::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QTcpSocket::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTcpSocket::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QTcpSocket::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	void protectedbase_setSocketState(int state) {

		QTcpSocket::setSocketState(static_cast<QAbstractSocket::SocketState>(state));

	}

	// Wrapper to allow calling protected method
	void protectedbase_setSocketError(int socketError) {

		QTcpSocket::setSocketError(static_cast<QAbstractSocket::SocketError>(socketError));

	}

	// Wrapper to allow calling protected method
	void protectedbase_setLocalPort(uint16_t port) {

		QTcpSocket::setLocalPort(static_cast<quint16>(port));

	}

	// Wrapper to allow calling protected method
	void protectedbase_setLocalAddress(QHostAddress* address) {

		QTcpSocket::setLocalAddress(*address);

	}

	// Wrapper to allow calling protected method
	void protectedbase_setPeerPort(uint16_t port) {

		QTcpSocket::setPeerPort(static_cast<quint16>(port));

	}

	// Wrapper to allow calling protected method
	void protectedbase_setPeerAddress(QHostAddress* address) {

		QTcpSocket::setPeerAddress(*address);

	}

	// Wrapper to allow calling protected method
	void protectedbase_setPeerName(struct miqt_string name) {
		QString name_QString = QString::fromUtf8(name.data, name.len);

		QTcpSocket::setPeerName(name_QString);

	}

	// Wrapper to allow calling protected method
	void protectedbase_setOpenMode(int openMode) {

		QTcpSocket::setOpenMode(static_cast<QIODevice::OpenMode>(openMode));

	}

	// Wrapper to allow calling protected method
	void protectedbase_setErrorString(struct miqt_string errorString) {
		QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);

		QTcpSocket::setErrorString(errorString_QString);

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QTcpSocket::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QTcpSocket::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QTcpSocket::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QTcpSocket::isSignalConnected(*signal);

	}

};

QTcpSocket* QTcpSocket_new(struct QTcpSocket_VTable* vtbl) {
	return new MiqtVirtualQTcpSocket(vtbl);
}

QTcpSocket* QTcpSocket_new2(struct QTcpSocket_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQTcpSocket(vtbl, parent);
}

void QTcpSocket_virtbase(QTcpSocket* src, QAbstractSocket** outptr_QAbstractSocket) {
	*outptr_QAbstractSocket = static_cast<QAbstractSocket*>(src);
}

QMetaObject* QTcpSocket_metaObject(const QTcpSocket* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTcpSocket_metacast(QTcpSocket* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTcpSocket_metacall(QTcpSocket* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTcpSocket_tr(const char* s) {
	QString _ret = QTcpSocket::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTcpSocket_trUtf8(const char* s) {
	QString _ret = QTcpSocket::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTcpSocket_tr2(const char* s, const char* c) {
	QString _ret = QTcpSocket::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTcpSocket_tr3(const char* s, const char* c, int n) {
	QString _ret = QTcpSocket::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTcpSocket_trUtf82(const char* s, const char* c) {
	QString _ret = QTcpSocket::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTcpSocket_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QTcpSocket::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QTcpSocket_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQTcpSocket*)(self) )->virtualbase_metaObject();
}

void* QTcpSocket_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_metacast(param1);
}

int QTcpSocket_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QTcpSocket_virtualbase_resume(void* self) {
	( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_resume();
}

void QTcpSocket_virtualbase_connectToHost(void* self, struct miqt_string hostName, uint16_t port, int mode, int protocol) {
	( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_connectToHost(hostName, port, mode, protocol);
}

void QTcpSocket_virtualbase_disconnectFromHost(void* self) {
	( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_disconnectFromHost();
}

long long QTcpSocket_virtualbase_bytesAvailable(const void* self) {
	return ( (const MiqtVirtualQTcpSocket*)(self) )->virtualbase_bytesAvailable();
}

long long QTcpSocket_virtualbase_bytesToWrite(const void* self) {
	return ( (const MiqtVirtualQTcpSocket*)(self) )->virtualbase_bytesToWrite();
}

bool QTcpSocket_virtualbase_canReadLine(const void* self) {
	return ( (const MiqtVirtualQTcpSocket*)(self) )->virtualbase_canReadLine();
}

void QTcpSocket_virtualbase_setReadBufferSize(void* self, long long size) {
	( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_setReadBufferSize(size);
}

intptr_t QTcpSocket_virtualbase_socketDescriptor(const void* self) {
	return ( (const MiqtVirtualQTcpSocket*)(self) )->virtualbase_socketDescriptor();
}

bool QTcpSocket_virtualbase_setSocketDescriptor(void* self, intptr_t socketDescriptor, int state, int openMode) {
	return ( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_setSocketDescriptor(socketDescriptor, state, openMode);
}

void QTcpSocket_virtualbase_setSocketOption(void* self, int option, QVariant* value) {
	( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_setSocketOption(option, value);
}

QVariant* QTcpSocket_virtualbase_socketOption(void* self, int option) {
	return ( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_socketOption(option);
}

void QTcpSocket_virtualbase_close(void* self) {
	( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_close();
}

bool QTcpSocket_virtualbase_isSequential(const void* self) {
	return ( (const MiqtVirtualQTcpSocket*)(self) )->virtualbase_isSequential();
}

bool QTcpSocket_virtualbase_atEnd(const void* self) {
	return ( (const MiqtVirtualQTcpSocket*)(self) )->virtualbase_atEnd();
}

bool QTcpSocket_virtualbase_waitForConnected(void* self, int msecs) {
	return ( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_waitForConnected(msecs);
}

bool QTcpSocket_virtualbase_waitForReadyRead(void* self, int msecs) {
	return ( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_waitForReadyRead(msecs);
}

bool QTcpSocket_virtualbase_waitForBytesWritten(void* self, int msecs) {
	return ( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_waitForBytesWritten(msecs);
}

bool QTcpSocket_virtualbase_waitForDisconnected(void* self, int msecs) {
	return ( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_waitForDisconnected(msecs);
}

long long QTcpSocket_virtualbase_readData(void* self, char* data, long long maxlen) {
	return ( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_readData(data, maxlen);
}

long long QTcpSocket_virtualbase_readLineData(void* self, char* data, long long maxlen) {
	return ( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_readLineData(data, maxlen);
}

long long QTcpSocket_virtualbase_writeData(void* self, const char* data, long long len) {
	return ( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_writeData(data, len);
}

bool QTcpSocket_virtualbase_open(void* self, int mode) {
	return ( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_open(mode);
}

long long QTcpSocket_virtualbase_pos(const void* self) {
	return ( (const MiqtVirtualQTcpSocket*)(self) )->virtualbase_pos();
}

long long QTcpSocket_virtualbase_size(const void* self) {
	return ( (const MiqtVirtualQTcpSocket*)(self) )->virtualbase_size();
}

bool QTcpSocket_virtualbase_seek(void* self, long long pos) {
	return ( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_seek(pos);
}

bool QTcpSocket_virtualbase_reset(void* self) {
	return ( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_reset();
}

bool QTcpSocket_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_event(event);
}

bool QTcpSocket_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_eventFilter(watched, event);
}

void QTcpSocket_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_timerEvent(event);
}

void QTcpSocket_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_childEvent(event);
}

void QTcpSocket_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_customEvent(event);
}

void QTcpSocket_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_connectNotify(signal);
}

void QTcpSocket_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQTcpSocket*)(self) )->virtualbase_disconnectNotify(signal);
}

void QTcpSocket_protectedbase_setSocketState(void* self, int state) {
	( (MiqtVirtualQTcpSocket*)(self) )->protectedbase_setSocketState(state);
}

void QTcpSocket_protectedbase_setSocketError(void* self, int socketError) {
	( (MiqtVirtualQTcpSocket*)(self) )->protectedbase_setSocketError(socketError);
}

void QTcpSocket_protectedbase_setLocalPort(void* self, uint16_t port) {
	( (MiqtVirtualQTcpSocket*)(self) )->protectedbase_setLocalPort(port);
}

void QTcpSocket_protectedbase_setLocalAddress(void* self, QHostAddress* address) {
	( (MiqtVirtualQTcpSocket*)(self) )->protectedbase_setLocalAddress(address);
}

void QTcpSocket_protectedbase_setPeerPort(void* self, uint16_t port) {
	( (MiqtVirtualQTcpSocket*)(self) )->protectedbase_setPeerPort(port);
}

void QTcpSocket_protectedbase_setPeerAddress(void* self, QHostAddress* address) {
	( (MiqtVirtualQTcpSocket*)(self) )->protectedbase_setPeerAddress(address);
}

void QTcpSocket_protectedbase_setPeerName(void* self, struct miqt_string name) {
	( (MiqtVirtualQTcpSocket*)(self) )->protectedbase_setPeerName(name);
}

void QTcpSocket_protectedbase_setOpenMode(void* self, int openMode) {
	( (MiqtVirtualQTcpSocket*)(self) )->protectedbase_setOpenMode(openMode);
}

void QTcpSocket_protectedbase_setErrorString(void* self, struct miqt_string errorString) {
	( (MiqtVirtualQTcpSocket*)(self) )->protectedbase_setErrorString(errorString);
}

QObject* QTcpSocket_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQTcpSocket*)(self) )->protectedbase_sender();
}

int QTcpSocket_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQTcpSocket*)(self) )->protectedbase_senderSignalIndex();
}

int QTcpSocket_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQTcpSocket*)(self) )->protectedbase_receivers(signal);
}

bool QTcpSocket_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQTcpSocket*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QTcpSocket_staticMetaObject() { return &QTcpSocket::staticMetaObject; }
void QTcpSocket_delete(QTcpSocket* self) {
	delete self;
}

