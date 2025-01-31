#include <QAbstractSocket>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QHostAddress>
#include <QIODevice>
#include <QIODeviceBase>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QOcspResponse>
#include <QSslCertificate>
#include <QSslCipher>
#include <QSslConfiguration>
#include <QSslError>
#include <QSslKey>
#include <QSslPreSharedKeyAuthenticator>
#include <QSslSocket>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTcpSocket>
#include <QTimerEvent>
#include <QVariant>
#include <qsslsocket.h>
#include "gen_qsslsocket.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QSslSocket_encrypted(intptr_t);
void miqt_exec_callback_QSslSocket_encrypted_release(intptr_t);
void miqt_exec_callback_QSslSocket_peerVerifyError(intptr_t, QSslError*);
void miqt_exec_callback_QSslSocket_peerVerifyError_release(intptr_t);
void miqt_exec_callback_QSslSocket_sslErrors(intptr_t, struct miqt_array /* of QSslError* */ );
void miqt_exec_callback_QSslSocket_sslErrors_release(intptr_t);
void miqt_exec_callback_QSslSocket_modeChanged(intptr_t, int);
void miqt_exec_callback_QSslSocket_modeChanged_release(intptr_t);
void miqt_exec_callback_QSslSocket_encryptedBytesWritten(intptr_t, long long);
void miqt_exec_callback_QSslSocket_encryptedBytesWritten_release(intptr_t);
void miqt_exec_callback_QSslSocket_preSharedKeyAuthenticationRequired(intptr_t, QSslPreSharedKeyAuthenticator*);
void miqt_exec_callback_QSslSocket_preSharedKeyAuthenticationRequired_release(intptr_t);
void miqt_exec_callback_QSslSocket_newSessionTicketReceived(intptr_t);
void miqt_exec_callback_QSslSocket_newSessionTicketReceived_release(intptr_t);
void miqt_exec_callback_QSslSocket_alertSent(intptr_t, int, int, struct miqt_string);
void miqt_exec_callback_QSslSocket_alertSent_release(intptr_t);
void miqt_exec_callback_QSslSocket_alertReceived(intptr_t, int, int, struct miqt_string);
void miqt_exec_callback_QSslSocket_alertReceived_release(intptr_t);
void miqt_exec_callback_QSslSocket_handshakeInterruptedOnError(intptr_t, QSslError*);
void miqt_exec_callback_QSslSocket_handshakeInterruptedOnError_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQSslSocket final : public QSslSocket {
	struct QSslSocket_VTable* vtbl;
public:

	MiqtVirtualQSslSocket(struct QSslSocket_VTable* vtbl): QSslSocket(), vtbl(vtbl) {};
	MiqtVirtualQSslSocket(struct QSslSocket_VTable* vtbl, QObject* parent): QSslSocket(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSslSocket() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSslSocket::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QSslSocket::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSslSocket::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QSslSocket::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSslSocket::qt_metacall(param1, param2, param3);
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

		return QSslSocket::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void resume() override {
		if (vtbl->resume == 0) {
			QSslSocket::resume();
			return;
		}


		vtbl->resume(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resume() {

		QSslSocket::resume();

	}

	// Subclass to allow providing a Go implementation
	virtual bool setSocketDescriptor(qintptr socketDescriptor, QAbstractSocket::SocketState state, QIODeviceBase::OpenMode openMode) override {
		if (vtbl->setSocketDescriptor == 0) {
			return QSslSocket::setSocketDescriptor(socketDescriptor, state, openMode);
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

		return QSslSocket::setSocketDescriptor((qintptr)(socketDescriptor), static_cast<QAbstractSocket::SocketState>(state), static_cast<QIODeviceBase::OpenMode>(openMode));

	}

	// Subclass to allow providing a Go implementation
	virtual void connectToHost(const QString& hostName, quint16 port, QIODeviceBase::OpenMode openMode, QAbstractSocket::NetworkLayerProtocol protocol) override {
		if (vtbl->connectToHost == 0) {
			QSslSocket::connectToHost(hostName, port, openMode, protocol);
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
		QIODeviceBase::OpenMode openMode_ret = openMode;
		int sigval3 = static_cast<int>(openMode_ret);
		QAbstractSocket::NetworkLayerProtocol protocol_ret = protocol;
		int sigval4 = static_cast<int>(protocol_ret);

		vtbl->connectToHost(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectToHost(struct miqt_string hostName, uint16_t port, int openMode, int protocol) {
		QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);

		QSslSocket::connectToHost(hostName_QString, static_cast<quint16>(port), static_cast<QIODeviceBase::OpenMode>(openMode), static_cast<QAbstractSocket::NetworkLayerProtocol>(protocol));

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectFromHost() override {
		if (vtbl->disconnectFromHost == 0) {
			QSslSocket::disconnectFromHost();
			return;
		}


		vtbl->disconnectFromHost(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectFromHost() {

		QSslSocket::disconnectFromHost();

	}

	// Subclass to allow providing a Go implementation
	virtual void setSocketOption(QAbstractSocket::SocketOption option, const QVariant& value) override {
		if (vtbl->setSocketOption == 0) {
			QSslSocket::setSocketOption(option, value);
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

		QSslSocket::setSocketOption(static_cast<QAbstractSocket::SocketOption>(option), *value);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant socketOption(QAbstractSocket::SocketOption option) override {
		if (vtbl->socketOption == 0) {
			return QSslSocket::socketOption(option);
		}

		QAbstractSocket::SocketOption option_ret = option;
		int sigval1 = static_cast<int>(option_ret);

		QVariant* callback_return_value = vtbl->socketOption(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_socketOption(int option) {

		return new QVariant(QSslSocket::socketOption(static_cast<QAbstractSocket::SocketOption>(option)));

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QSslSocket::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_bytesAvailable() const {

		qint64 _ret = QSslSocket::bytesAvailable();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QSslSocket::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_bytesToWrite() const {

		qint64 _ret = QSslSocket::bytesToWrite();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QSslSocket::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_canReadLine() const {

		return QSslSocket::canReadLine();

	}

	// Subclass to allow providing a Go implementation
	virtual void close() override {
		if (vtbl->close == 0) {
			QSslSocket::close();
			return;
		}


		vtbl->close(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_close() {

		QSslSocket::close();

	}

	// Subclass to allow providing a Go implementation
	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QSslSocket::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_atEnd() const {

		return QSslSocket::atEnd();

	}

	// Subclass to allow providing a Go implementation
	virtual void setReadBufferSize(qint64 size) override {
		if (vtbl->setReadBufferSize == 0) {
			QSslSocket::setReadBufferSize(size);
			return;
		}

		qint64 size_ret = size;
		long long sigval1 = static_cast<long long>(size_ret);

		vtbl->setReadBufferSize(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setReadBufferSize(long long size) {

		QSslSocket::setReadBufferSize(static_cast<qint64>(size));

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForConnected(int msecs) override {
		if (vtbl->waitForConnected == 0) {
			return QSslSocket::waitForConnected(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForConnected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForConnected(int msecs) {

		return QSslSocket::waitForConnected(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QSslSocket::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForReadyRead(int msecs) {

		return QSslSocket::waitForReadyRead(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QSslSocket::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForBytesWritten(int msecs) {

		return QSslSocket::waitForBytesWritten(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForDisconnected(int msecs) override {
		if (vtbl->waitForDisconnected == 0) {
			return QSslSocket::waitForDisconnected(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForDisconnected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForDisconnected(int msecs) {

		return QSslSocket::waitForDisconnected(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 readData(char* data, qint64 maxlen) override {
		if (vtbl->readData == 0) {
			return QSslSocket::readData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_readData(char* data, long long maxlen) {

		qint64 _ret = QSslSocket::readData(data, static_cast<qint64>(maxlen));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 skipData(qint64 maxSize) override {
		if (vtbl->skipData == 0) {
			return QSslSocket::skipData(maxSize);
		}

		qint64 maxSize_ret = maxSize;
		long long sigval1 = static_cast<long long>(maxSize_ret);

		long long callback_return_value = vtbl->skipData(vtbl, this, sigval1);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_skipData(long long maxSize) {

		qint64 _ret = QSslSocket::skipData(static_cast<qint64>(maxSize));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 writeData(const char* data, qint64 len) override {
		if (vtbl->writeData == 0) {
			return QSslSocket::writeData(data, len);
		}

		const char* sigval1 = (const char*) data;
		qint64 len_ret = len;
		long long sigval2 = static_cast<long long>(len_ret);

		long long callback_return_value = vtbl->writeData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_writeData(const char* data, long long len) {

		qint64 _ret = QSslSocket::writeData(data, static_cast<qint64>(len));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool bind(const QHostAddress& address, quint16 port, QAbstractSocket::BindMode mode) override {
		if (vtbl->bind == 0) {
			return QSslSocket::bind(address, port, mode);
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

		return QSslSocket::bind(*address, static_cast<quint16>(port), static_cast<QAbstractSocket::BindMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual qintptr socketDescriptor() const override {
		if (vtbl->socketDescriptor == 0) {
			return QSslSocket::socketDescriptor();
		}


		intptr_t callback_return_value = vtbl->socketDescriptor(vtbl, this);

		return (qintptr)(callback_return_value);
	}

	// Wrapper to allow calling protected method
	intptr_t virtualbase_socketDescriptor() const {

		qintptr _ret = QSslSocket::socketDescriptor();
		return (intptr_t)(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QSslSocket::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isSequential() const {

		return QSslSocket::isSequential();

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QSslSocket::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_readLineData(char* data, long long maxlen) {

		qint64 _ret = QSslSocket::readLineData(data, static_cast<qint64>(maxlen));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool open(QIODeviceBase::OpenMode mode) override {
		if (vtbl->open == 0) {
			return QSslSocket::open(mode);
		}

		QIODeviceBase::OpenMode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->open(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_open(int mode) {

		return QSslSocket::open(static_cast<QIODeviceBase::OpenMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QSslSocket::pos();
		}


		long long callback_return_value = vtbl->pos(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_pos() const {

		qint64 _ret = QSslSocket::pos();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QSslSocket::size();
		}


		long long callback_return_value = vtbl->size(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_size() const {

		qint64 _ret = QSslSocket::size();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool seek(qint64 pos) override {
		if (vtbl->seek == 0) {
			return QSslSocket::seek(pos);
		}

		qint64 pos_ret = pos;
		long long sigval1 = static_cast<long long>(pos_ret);

		bool callback_return_value = vtbl->seek(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_seek(long long pos) {

		return QSslSocket::seek(static_cast<qint64>(pos));

	}

	// Subclass to allow providing a Go implementation
	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QSslSocket::reset();
		}


		bool callback_return_value = vtbl->reset(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_reset() {

		return QSslSocket::reset();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSslSocket::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QSslSocket::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSslSocket::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QSslSocket::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSslSocket::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QSslSocket::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSslSocket::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QSslSocket::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSslSocket::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QSslSocket::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSslSocket::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QSslSocket::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSslSocket::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QSslSocket::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	void protectedbase_setSocketState(int state) {

		QSslSocket::setSocketState(static_cast<QAbstractSocket::SocketState>(state));

	}

	// Wrapper to allow calling protected method
	void protectedbase_setSocketError(int socketError) {

		QSslSocket::setSocketError(static_cast<QAbstractSocket::SocketError>(socketError));

	}

	// Wrapper to allow calling protected method
	void protectedbase_setLocalPort(uint16_t port) {

		QSslSocket::setLocalPort(static_cast<quint16>(port));

	}

	// Wrapper to allow calling protected method
	void protectedbase_setLocalAddress(QHostAddress* address) {

		QSslSocket::setLocalAddress(*address);

	}

	// Wrapper to allow calling protected method
	void protectedbase_setPeerPort(uint16_t port) {

		QSslSocket::setPeerPort(static_cast<quint16>(port));

	}

	// Wrapper to allow calling protected method
	void protectedbase_setPeerAddress(QHostAddress* address) {

		QSslSocket::setPeerAddress(*address);

	}

	// Wrapper to allow calling protected method
	void protectedbase_setPeerName(struct miqt_string name) {
		QString name_QString = QString::fromUtf8(name.data, name.len);

		QSslSocket::setPeerName(name_QString);

	}

	// Wrapper to allow calling protected method
	void protectedbase_setOpenMode(int openMode) {

		QSslSocket::setOpenMode(static_cast<QIODeviceBase::OpenMode>(openMode));

	}

	// Wrapper to allow calling protected method
	void protectedbase_setErrorString(struct miqt_string errorString) {
		QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);

		QSslSocket::setErrorString(errorString_QString);

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QSslSocket::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QSslSocket::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QSslSocket::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QSslSocket::isSignalConnected(*signal);

	}

};

QSslSocket* QSslSocket_new(struct QSslSocket_VTable* vtbl) {
	return new MiqtVirtualQSslSocket(vtbl);
}

QSslSocket* QSslSocket_new2(struct QSslSocket_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQSslSocket(vtbl, parent);
}

void QSslSocket_virtbase(QSslSocket* src, QTcpSocket** outptr_QTcpSocket) {
	*outptr_QTcpSocket = static_cast<QTcpSocket*>(src);
}

QMetaObject* QSslSocket_metaObject(const QSslSocket* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSslSocket_metacast(QSslSocket* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSslSocket_metacall(QSslSocket* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSslSocket_tr(const char* s) {
	QString _ret = QSslSocket::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSslSocket_resume(QSslSocket* self) {
	self->resume();
}

void QSslSocket_connectToHostEncrypted(QSslSocket* self, struct miqt_string hostName, uint16_t port) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);
	self->connectToHostEncrypted(hostName_QString, static_cast<quint16>(port));
}

void QSslSocket_connectToHostEncrypted2(QSslSocket* self, struct miqt_string hostName, uint16_t port, struct miqt_string sslPeerName) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);
	QString sslPeerName_QString = QString::fromUtf8(sslPeerName.data, sslPeerName.len);
	self->connectToHostEncrypted(hostName_QString, static_cast<quint16>(port), sslPeerName_QString);
}

bool QSslSocket_setSocketDescriptor(QSslSocket* self, intptr_t socketDescriptor, int state, int openMode) {
	return self->setSocketDescriptor((qintptr)(socketDescriptor), static_cast<QAbstractSocket::SocketState>(state), static_cast<QIODeviceBase::OpenMode>(openMode));
}

void QSslSocket_connectToHost(QSslSocket* self, struct miqt_string hostName, uint16_t port, int openMode, int protocol) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);
	self->connectToHost(hostName_QString, static_cast<quint16>(port), static_cast<QIODeviceBase::OpenMode>(openMode), static_cast<QAbstractSocket::NetworkLayerProtocol>(protocol));
}

void QSslSocket_disconnectFromHost(QSslSocket* self) {
	self->disconnectFromHost();
}

void QSslSocket_setSocketOption(QSslSocket* self, int option, QVariant* value) {
	self->setSocketOption(static_cast<QAbstractSocket::SocketOption>(option), *value);
}

QVariant* QSslSocket_socketOption(QSslSocket* self, int option) {
	return new QVariant(self->socketOption(static_cast<QAbstractSocket::SocketOption>(option)));
}

int QSslSocket_mode(const QSslSocket* self) {
	QSslSocket::SslMode _ret = self->mode();
	return static_cast<int>(_ret);
}

bool QSslSocket_isEncrypted(const QSslSocket* self) {
	return self->isEncrypted();
}

int QSslSocket_protocol(const QSslSocket* self) {
	QSsl::SslProtocol _ret = self->protocol();
	return static_cast<int>(_ret);
}

void QSslSocket_setProtocol(QSslSocket* self, int protocol) {
	self->setProtocol(static_cast<QSsl::SslProtocol>(protocol));
}

int QSslSocket_peerVerifyMode(const QSslSocket* self) {
	QSslSocket::PeerVerifyMode _ret = self->peerVerifyMode();
	return static_cast<int>(_ret);
}

void QSslSocket_setPeerVerifyMode(QSslSocket* self, int mode) {
	self->setPeerVerifyMode(static_cast<QSslSocket::PeerVerifyMode>(mode));
}

int QSslSocket_peerVerifyDepth(const QSslSocket* self) {
	return self->peerVerifyDepth();
}

void QSslSocket_setPeerVerifyDepth(QSslSocket* self, int depth) {
	self->setPeerVerifyDepth(static_cast<int>(depth));
}

struct miqt_string QSslSocket_peerVerifyName(const QSslSocket* self) {
	QString _ret = self->peerVerifyName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSslSocket_setPeerVerifyName(QSslSocket* self, struct miqt_string hostName) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);
	self->setPeerVerifyName(hostName_QString);
}

long long QSslSocket_bytesAvailable(const QSslSocket* self) {
	qint64 _ret = self->bytesAvailable();
	return static_cast<long long>(_ret);
}

long long QSslSocket_bytesToWrite(const QSslSocket* self) {
	qint64 _ret = self->bytesToWrite();
	return static_cast<long long>(_ret);
}

bool QSslSocket_canReadLine(const QSslSocket* self) {
	return self->canReadLine();
}

void QSslSocket_close(QSslSocket* self) {
	self->close();
}

bool QSslSocket_atEnd(const QSslSocket* self) {
	return self->atEnd();
}

void QSslSocket_setReadBufferSize(QSslSocket* self, long long size) {
	self->setReadBufferSize(static_cast<qint64>(size));
}

long long QSslSocket_encryptedBytesAvailable(const QSslSocket* self) {
	qint64 _ret = self->encryptedBytesAvailable();
	return static_cast<long long>(_ret);
}

long long QSslSocket_encryptedBytesToWrite(const QSslSocket* self) {
	qint64 _ret = self->encryptedBytesToWrite();
	return static_cast<long long>(_ret);
}

QSslConfiguration* QSslSocket_sslConfiguration(const QSslSocket* self) {
	return new QSslConfiguration(self->sslConfiguration());
}

void QSslSocket_setSslConfiguration(QSslSocket* self, QSslConfiguration* config) {
	self->setSslConfiguration(*config);
}

void QSslSocket_setLocalCertificateChain(QSslSocket* self, struct miqt_array /* of QSslCertificate* */  localChain) {
	QList<QSslCertificate> localChain_QList;
	localChain_QList.reserve(localChain.len);
	QSslCertificate** localChain_arr = static_cast<QSslCertificate**>(localChain.data);
	for(size_t i = 0; i < localChain.len; ++i) {
		localChain_QList.push_back(*(localChain_arr[i]));
	}
	self->setLocalCertificateChain(localChain_QList);
}

struct miqt_array /* of QSslCertificate* */  QSslSocket_localCertificateChain(const QSslSocket* self) {
	QList<QSslCertificate> _ret = self->localCertificateChain();
	// Convert QList<> from C++ memory to manually-managed C memory
	QSslCertificate** _arr = static_cast<QSslCertificate**>(malloc(sizeof(QSslCertificate*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QSslCertificate(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QSslSocket_setLocalCertificate(QSslSocket* self, QSslCertificate* certificate) {
	self->setLocalCertificate(*certificate);
}

void QSslSocket_setLocalCertificateWithFileName(QSslSocket* self, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setLocalCertificate(fileName_QString);
}

QSslCertificate* QSslSocket_localCertificate(const QSslSocket* self) {
	return new QSslCertificate(self->localCertificate());
}

QSslCertificate* QSslSocket_peerCertificate(const QSslSocket* self) {
	return new QSslCertificate(self->peerCertificate());
}

struct miqt_array /* of QSslCertificate* */  QSslSocket_peerCertificateChain(const QSslSocket* self) {
	QList<QSslCertificate> _ret = self->peerCertificateChain();
	// Convert QList<> from C++ memory to manually-managed C memory
	QSslCertificate** _arr = static_cast<QSslCertificate**>(malloc(sizeof(QSslCertificate*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QSslCertificate(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QSslCipher* QSslSocket_sessionCipher(const QSslSocket* self) {
	return new QSslCipher(self->sessionCipher());
}

int QSslSocket_sessionProtocol(const QSslSocket* self) {
	QSsl::SslProtocol _ret = self->sessionProtocol();
	return static_cast<int>(_ret);
}

struct miqt_array /* of QOcspResponse* */  QSslSocket_ocspResponses(const QSslSocket* self) {
	QList<QOcspResponse> _ret = self->ocspResponses();
	// Convert QList<> from C++ memory to manually-managed C memory
	QOcspResponse** _arr = static_cast<QOcspResponse**>(malloc(sizeof(QOcspResponse*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QOcspResponse(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QSslSocket_setPrivateKey(QSslSocket* self, QSslKey* key) {
	self->setPrivateKey(*key);
}

void QSslSocket_setPrivateKeyWithFileName(QSslSocket* self, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setPrivateKey(fileName_QString);
}

QSslKey* QSslSocket_privateKey(const QSslSocket* self) {
	return new QSslKey(self->privateKey());
}

bool QSslSocket_waitForConnected(QSslSocket* self, int msecs) {
	return self->waitForConnected(static_cast<int>(msecs));
}

bool QSslSocket_waitForEncrypted(QSslSocket* self) {
	return self->waitForEncrypted();
}

bool QSslSocket_waitForReadyRead(QSslSocket* self, int msecs) {
	return self->waitForReadyRead(static_cast<int>(msecs));
}

bool QSslSocket_waitForBytesWritten(QSslSocket* self, int msecs) {
	return self->waitForBytesWritten(static_cast<int>(msecs));
}

bool QSslSocket_waitForDisconnected(QSslSocket* self, int msecs) {
	return self->waitForDisconnected(static_cast<int>(msecs));
}

struct miqt_array /* of QSslError* */  QSslSocket_sslHandshakeErrors(const QSslSocket* self) {
	QList<QSslError> _ret = self->sslHandshakeErrors();
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

bool QSslSocket_supportsSsl() {
	return QSslSocket::supportsSsl();
}

long QSslSocket_sslLibraryVersionNumber() {
	return QSslSocket::sslLibraryVersionNumber();
}

struct miqt_string QSslSocket_sslLibraryVersionString() {
	QString _ret = QSslSocket::sslLibraryVersionString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

long QSslSocket_sslLibraryBuildVersionNumber() {
	return QSslSocket::sslLibraryBuildVersionNumber();
}

struct miqt_string QSslSocket_sslLibraryBuildVersionString() {
	QString _ret = QSslSocket::sslLibraryBuildVersionString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of struct miqt_string */  QSslSocket_availableBackends() {
	QList<QString> _ret = QSslSocket::availableBackends();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_string QSslSocket_activeBackend() {
	QString _ret = QSslSocket::activeBackend();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QSslSocket_setActiveBackend(struct miqt_string backendName) {
	QString backendName_QString = QString::fromUtf8(backendName.data, backendName.len);
	return QSslSocket::setActiveBackend(backendName_QString);
}

struct miqt_array /* of int */  QSslSocket_supportedProtocols() {
	QList<QSsl::SslProtocol> _ret = QSslSocket::supportedProtocols();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QSsl::SslProtocol _lv_ret = _ret[i];
		_arr[i] = static_cast<int>(_lv_ret);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QSslSocket_isProtocolSupported(int protocol) {
	return QSslSocket::isProtocolSupported(static_cast<QSsl::SslProtocol>(protocol));
}

struct miqt_array /* of int */  QSslSocket_implementedClasses() {
	QList<QSsl::ImplementedClass> _ret = QSslSocket::implementedClasses();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QSsl::ImplementedClass _lv_ret = _ret[i];
		_arr[i] = static_cast<int>(_lv_ret);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QSslSocket_isClassImplemented(int cl) {
	return QSslSocket::isClassImplemented(static_cast<QSsl::ImplementedClass>(cl));
}

struct miqt_array /* of int */  QSslSocket_supportedFeatures() {
	QList<QSsl::SupportedFeature> _ret = QSslSocket::supportedFeatures();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QSsl::SupportedFeature _lv_ret = _ret[i];
		_arr[i] = static_cast<int>(_lv_ret);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QSslSocket_isFeatureSupported(int feat) {
	return QSslSocket::isFeatureSupported(static_cast<QSsl::SupportedFeature>(feat));
}

void QSslSocket_ignoreSslErrors(QSslSocket* self, struct miqt_array /* of QSslError* */  errors) {
	QList<QSslError> errors_QList;
	errors_QList.reserve(errors.len);
	QSslError** errors_arr = static_cast<QSslError**>(errors.data);
	for(size_t i = 0; i < errors.len; ++i) {
		errors_QList.push_back(*(errors_arr[i]));
	}
	self->ignoreSslErrors(errors_QList);
}

void QSslSocket_continueInterruptedHandshake(QSslSocket* self) {
	self->continueInterruptedHandshake();
}

void QSslSocket_startClientEncryption(QSslSocket* self) {
	self->startClientEncryption();
}

void QSslSocket_startServerEncryption(QSslSocket* self) {
	self->startServerEncryption();
}

void QSslSocket_ignoreSslErrors2(QSslSocket* self) {
	self->ignoreSslErrors();
}

void QSslSocket_encrypted(QSslSocket* self) {
	self->encrypted();
}

void QSslSocket_connect_encrypted(QSslSocket* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QSslSocket_encrypted(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QSslSocket_encrypted_release(slot); }
	};
	MiqtVirtualQSslSocket::connect(self, static_cast<void (QSslSocket::*)()>(&QSslSocket::encrypted), self, caller{slot});
}

void QSslSocket_peerVerifyError(QSslSocket* self, QSslError* error) {
	self->peerVerifyError(*error);
}

void QSslSocket_connect_peerVerifyError(QSslSocket* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QSslError& error) {
			const QSslError& error_ret = error;
			// Cast returned reference into pointer
			QSslError* sigval1 = const_cast<QSslError*>(&error_ret);
			miqt_exec_callback_QSslSocket_peerVerifyError(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QSslSocket_peerVerifyError_release(slot); }
	};
	MiqtVirtualQSslSocket::connect(self, static_cast<void (QSslSocket::*)(const QSslError&)>(&QSslSocket::peerVerifyError), self, caller{slot});
}

void QSslSocket_sslErrors(QSslSocket* self, struct miqt_array /* of QSslError* */  errors) {
	QList<QSslError> errors_QList;
	errors_QList.reserve(errors.len);
	QSslError** errors_arr = static_cast<QSslError**>(errors.data);
	for(size_t i = 0; i < errors.len; ++i) {
		errors_QList.push_back(*(errors_arr[i]));
	}
	self->sslErrors(errors_QList);
}

void QSslSocket_connect_sslErrors(QSslSocket* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QList<QSslError>& errors) {
			const QList<QSslError>& errors_ret = errors;
			// Convert QList<> from C++ memory to manually-managed C memory
			QSslError** errors_arr = static_cast<QSslError**>(malloc(sizeof(QSslError*) * errors_ret.length()));
			for (size_t i = 0, e = errors_ret.length(); i < e; ++i) {
				errors_arr[i] = new QSslError(errors_ret[i]);
			}
			struct miqt_array errors_out;
			errors_out.len = errors_ret.length();
			errors_out.data = static_cast<void*>(errors_arr);
			struct miqt_array /* of QSslError* */  sigval1 = errors_out;
			miqt_exec_callback_QSslSocket_sslErrors(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QSslSocket_sslErrors_release(slot); }
	};
	MiqtVirtualQSslSocket::connect(self, static_cast<void (QSslSocket::*)(const QList<QSslError>&)>(&QSslSocket::sslErrors), self, caller{slot});
}

void QSslSocket_modeChanged(QSslSocket* self, int newMode) {
	self->modeChanged(static_cast<QSslSocket::SslMode>(newMode));
}

void QSslSocket_connect_modeChanged(QSslSocket* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QSslSocket::SslMode newMode) {
			QSslSocket::SslMode newMode_ret = newMode;
			int sigval1 = static_cast<int>(newMode_ret);
			miqt_exec_callback_QSslSocket_modeChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QSslSocket_modeChanged_release(slot); }
	};
	MiqtVirtualQSslSocket::connect(self, static_cast<void (QSslSocket::*)(QSslSocket::SslMode)>(&QSslSocket::modeChanged), self, caller{slot});
}

void QSslSocket_encryptedBytesWritten(QSslSocket* self, long long totalBytes) {
	self->encryptedBytesWritten(static_cast<qint64>(totalBytes));
}

void QSslSocket_connect_encryptedBytesWritten(QSslSocket* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(qint64 totalBytes) {
			qint64 totalBytes_ret = totalBytes;
			long long sigval1 = static_cast<long long>(totalBytes_ret);
			miqt_exec_callback_QSslSocket_encryptedBytesWritten(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QSslSocket_encryptedBytesWritten_release(slot); }
	};
	MiqtVirtualQSslSocket::connect(self, static_cast<void (QSslSocket::*)(qint64)>(&QSslSocket::encryptedBytesWritten), self, caller{slot});
}

void QSslSocket_preSharedKeyAuthenticationRequired(QSslSocket* self, QSslPreSharedKeyAuthenticator* authenticator) {
	self->preSharedKeyAuthenticationRequired(authenticator);
}

void QSslSocket_connect_preSharedKeyAuthenticationRequired(QSslSocket* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QSslPreSharedKeyAuthenticator* authenticator) {
			QSslPreSharedKeyAuthenticator* sigval1 = authenticator;
			miqt_exec_callback_QSslSocket_preSharedKeyAuthenticationRequired(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QSslSocket_preSharedKeyAuthenticationRequired_release(slot); }
	};
	MiqtVirtualQSslSocket::connect(self, static_cast<void (QSslSocket::*)(QSslPreSharedKeyAuthenticator*)>(&QSslSocket::preSharedKeyAuthenticationRequired), self, caller{slot});
}

void QSslSocket_newSessionTicketReceived(QSslSocket* self) {
	self->newSessionTicketReceived();
}

void QSslSocket_connect_newSessionTicketReceived(QSslSocket* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QSslSocket_newSessionTicketReceived(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QSslSocket_newSessionTicketReceived_release(slot); }
	};
	MiqtVirtualQSslSocket::connect(self, static_cast<void (QSslSocket::*)()>(&QSslSocket::newSessionTicketReceived), self, caller{slot});
}

void QSslSocket_alertSent(QSslSocket* self, int level, int type, struct miqt_string description) {
	QString description_QString = QString::fromUtf8(description.data, description.len);
	self->alertSent(static_cast<QSsl::AlertLevel>(level), static_cast<QSsl::AlertType>(type), description_QString);
}

void QSslSocket_connect_alertSent(QSslSocket* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QSsl::AlertLevel level, QSsl::AlertType type, const QString& description) {
			QSsl::AlertLevel level_ret = level;
			int sigval1 = static_cast<int>(level_ret);
			QSsl::AlertType type_ret = type;
			int sigval2 = static_cast<int>(type_ret);
			const QString description_ret = description;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray description_b = description_ret.toUtf8();
			struct miqt_string description_ms;
			description_ms.len = description_b.length();
			description_ms.data = static_cast<char*>(malloc(description_ms.len));
			memcpy(description_ms.data, description_b.data(), description_ms.len);
			struct miqt_string sigval3 = description_ms;
			miqt_exec_callback_QSslSocket_alertSent(slot, sigval1, sigval2, sigval3);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QSslSocket_alertSent_release(slot); }
	};
	MiqtVirtualQSslSocket::connect(self, static_cast<void (QSslSocket::*)(QSsl::AlertLevel, QSsl::AlertType, const QString&)>(&QSslSocket::alertSent), self, caller{slot});
}

void QSslSocket_alertReceived(QSslSocket* self, int level, int type, struct miqt_string description) {
	QString description_QString = QString::fromUtf8(description.data, description.len);
	self->alertReceived(static_cast<QSsl::AlertLevel>(level), static_cast<QSsl::AlertType>(type), description_QString);
}

void QSslSocket_connect_alertReceived(QSslSocket* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QSsl::AlertLevel level, QSsl::AlertType type, const QString& description) {
			QSsl::AlertLevel level_ret = level;
			int sigval1 = static_cast<int>(level_ret);
			QSsl::AlertType type_ret = type;
			int sigval2 = static_cast<int>(type_ret);
			const QString description_ret = description;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray description_b = description_ret.toUtf8();
			struct miqt_string description_ms;
			description_ms.len = description_b.length();
			description_ms.data = static_cast<char*>(malloc(description_ms.len));
			memcpy(description_ms.data, description_b.data(), description_ms.len);
			struct miqt_string sigval3 = description_ms;
			miqt_exec_callback_QSslSocket_alertReceived(slot, sigval1, sigval2, sigval3);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QSslSocket_alertReceived_release(slot); }
	};
	MiqtVirtualQSslSocket::connect(self, static_cast<void (QSslSocket::*)(QSsl::AlertLevel, QSsl::AlertType, const QString&)>(&QSslSocket::alertReceived), self, caller{slot});
}

void QSslSocket_handshakeInterruptedOnError(QSslSocket* self, QSslError* error) {
	self->handshakeInterruptedOnError(*error);
}

void QSslSocket_connect_handshakeInterruptedOnError(QSslSocket* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QSslError& error) {
			const QSslError& error_ret = error;
			// Cast returned reference into pointer
			QSslError* sigval1 = const_cast<QSslError*>(&error_ret);
			miqt_exec_callback_QSslSocket_handshakeInterruptedOnError(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QSslSocket_handshakeInterruptedOnError_release(slot); }
	};
	MiqtVirtualQSslSocket::connect(self, static_cast<void (QSslSocket::*)(const QSslError&)>(&QSslSocket::handshakeInterruptedOnError), self, caller{slot});
}

struct miqt_string QSslSocket_tr2(const char* s, const char* c) {
	QString _ret = QSslSocket::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSslSocket_tr3(const char* s, const char* c, int n) {
	QString _ret = QSslSocket::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSslSocket_connectToHostEncrypted3(QSslSocket* self, struct miqt_string hostName, uint16_t port, int mode) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);
	self->connectToHostEncrypted(hostName_QString, static_cast<quint16>(port), static_cast<QIODeviceBase::OpenMode>(mode));
}

void QSslSocket_connectToHostEncrypted4(QSslSocket* self, struct miqt_string hostName, uint16_t port, int mode, int protocol) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);
	self->connectToHostEncrypted(hostName_QString, static_cast<quint16>(port), static_cast<QIODeviceBase::OpenMode>(mode), static_cast<QAbstractSocket::NetworkLayerProtocol>(protocol));
}

void QSslSocket_connectToHostEncrypted42(QSslSocket* self, struct miqt_string hostName, uint16_t port, struct miqt_string sslPeerName, int mode) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);
	QString sslPeerName_QString = QString::fromUtf8(sslPeerName.data, sslPeerName.len);
	self->connectToHostEncrypted(hostName_QString, static_cast<quint16>(port), sslPeerName_QString, static_cast<QIODeviceBase::OpenMode>(mode));
}

void QSslSocket_connectToHostEncrypted5(QSslSocket* self, struct miqt_string hostName, uint16_t port, struct miqt_string sslPeerName, int mode, int protocol) {
	QString hostName_QString = QString::fromUtf8(hostName.data, hostName.len);
	QString sslPeerName_QString = QString::fromUtf8(sslPeerName.data, sslPeerName.len);
	self->connectToHostEncrypted(hostName_QString, static_cast<quint16>(port), sslPeerName_QString, static_cast<QIODeviceBase::OpenMode>(mode), static_cast<QAbstractSocket::NetworkLayerProtocol>(protocol));
}

void QSslSocket_setLocalCertificate2(QSslSocket* self, struct miqt_string fileName, int format) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setLocalCertificate(fileName_QString, static_cast<QSsl::EncodingFormat>(format));
}

void QSslSocket_setPrivateKey2(QSslSocket* self, struct miqt_string fileName, int algorithm) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setPrivateKey(fileName_QString, static_cast<QSsl::KeyAlgorithm>(algorithm));
}

void QSslSocket_setPrivateKey3(QSslSocket* self, struct miqt_string fileName, int algorithm, int format) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setPrivateKey(fileName_QString, static_cast<QSsl::KeyAlgorithm>(algorithm), static_cast<QSsl::EncodingFormat>(format));
}

void QSslSocket_setPrivateKey4(QSslSocket* self, struct miqt_string fileName, int algorithm, int format, struct miqt_string passPhrase) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	QByteArray passPhrase_QByteArray(passPhrase.data, passPhrase.len);
	self->setPrivateKey(fileName_QString, static_cast<QSsl::KeyAlgorithm>(algorithm), static_cast<QSsl::EncodingFormat>(format), passPhrase_QByteArray);
}

bool QSslSocket_waitForEncrypted1(QSslSocket* self, int msecs) {
	return self->waitForEncrypted(static_cast<int>(msecs));
}

struct miqt_array /* of int */  QSslSocket_supportedProtocols1(struct miqt_string backendName) {
	QString backendName_QString = QString::fromUtf8(backendName.data, backendName.len);
	QList<QSsl::SslProtocol> _ret = QSslSocket::supportedProtocols(backendName_QString);
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QSsl::SslProtocol _lv_ret = _ret[i];
		_arr[i] = static_cast<int>(_lv_ret);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QSslSocket_isProtocolSupported2(int protocol, struct miqt_string backendName) {
	QString backendName_QString = QString::fromUtf8(backendName.data, backendName.len);
	return QSslSocket::isProtocolSupported(static_cast<QSsl::SslProtocol>(protocol), backendName_QString);
}

struct miqt_array /* of int */  QSslSocket_implementedClasses1(struct miqt_string backendName) {
	QString backendName_QString = QString::fromUtf8(backendName.data, backendName.len);
	QList<QSsl::ImplementedClass> _ret = QSslSocket::implementedClasses(backendName_QString);
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QSsl::ImplementedClass _lv_ret = _ret[i];
		_arr[i] = static_cast<int>(_lv_ret);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QSslSocket_isClassImplemented2(int cl, struct miqt_string backendName) {
	QString backendName_QString = QString::fromUtf8(backendName.data, backendName.len);
	return QSslSocket::isClassImplemented(static_cast<QSsl::ImplementedClass>(cl), backendName_QString);
}

struct miqt_array /* of int */  QSslSocket_supportedFeatures1(struct miqt_string backendName) {
	QString backendName_QString = QString::fromUtf8(backendName.data, backendName.len);
	QList<QSsl::SupportedFeature> _ret = QSslSocket::supportedFeatures(backendName_QString);
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QSsl::SupportedFeature _lv_ret = _ret[i];
		_arr[i] = static_cast<int>(_lv_ret);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QSslSocket_isFeatureSupported2(int feat, struct miqt_string backendName) {
	QString backendName_QString = QString::fromUtf8(backendName.data, backendName.len);
	return QSslSocket::isFeatureSupported(static_cast<QSsl::SupportedFeature>(feat), backendName_QString);
}

QMetaObject* QSslSocket_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQSslSocket*)(self) )->virtualbase_metaObject();
}

void* QSslSocket_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQSslSocket*)(self) )->virtualbase_metacast(param1);
}

int QSslSocket_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQSslSocket*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QSslSocket_virtualbase_resume(void* self) {
	( (MiqtVirtualQSslSocket*)(self) )->virtualbase_resume();
}

bool QSslSocket_virtualbase_setSocketDescriptor(void* self, intptr_t socketDescriptor, int state, int openMode) {
	return ( (MiqtVirtualQSslSocket*)(self) )->virtualbase_setSocketDescriptor(socketDescriptor, state, openMode);
}

void QSslSocket_virtualbase_connectToHost(void* self, struct miqt_string hostName, uint16_t port, int openMode, int protocol) {
	( (MiqtVirtualQSslSocket*)(self) )->virtualbase_connectToHost(hostName, port, openMode, protocol);
}

void QSslSocket_virtualbase_disconnectFromHost(void* self) {
	( (MiqtVirtualQSslSocket*)(self) )->virtualbase_disconnectFromHost();
}

void QSslSocket_virtualbase_setSocketOption(void* self, int option, QVariant* value) {
	( (MiqtVirtualQSslSocket*)(self) )->virtualbase_setSocketOption(option, value);
}

QVariant* QSslSocket_virtualbase_socketOption(void* self, int option) {
	return ( (MiqtVirtualQSslSocket*)(self) )->virtualbase_socketOption(option);
}

long long QSslSocket_virtualbase_bytesAvailable(const void* self) {
	return ( (const MiqtVirtualQSslSocket*)(self) )->virtualbase_bytesAvailable();
}

long long QSslSocket_virtualbase_bytesToWrite(const void* self) {
	return ( (const MiqtVirtualQSslSocket*)(self) )->virtualbase_bytesToWrite();
}

bool QSslSocket_virtualbase_canReadLine(const void* self) {
	return ( (const MiqtVirtualQSslSocket*)(self) )->virtualbase_canReadLine();
}

void QSslSocket_virtualbase_close(void* self) {
	( (MiqtVirtualQSslSocket*)(self) )->virtualbase_close();
}

bool QSslSocket_virtualbase_atEnd(const void* self) {
	return ( (const MiqtVirtualQSslSocket*)(self) )->virtualbase_atEnd();
}

void QSslSocket_virtualbase_setReadBufferSize(void* self, long long size) {
	( (MiqtVirtualQSslSocket*)(self) )->virtualbase_setReadBufferSize(size);
}

bool QSslSocket_virtualbase_waitForConnected(void* self, int msecs) {
	return ( (MiqtVirtualQSslSocket*)(self) )->virtualbase_waitForConnected(msecs);
}

bool QSslSocket_virtualbase_waitForReadyRead(void* self, int msecs) {
	return ( (MiqtVirtualQSslSocket*)(self) )->virtualbase_waitForReadyRead(msecs);
}

bool QSslSocket_virtualbase_waitForBytesWritten(void* self, int msecs) {
	return ( (MiqtVirtualQSslSocket*)(self) )->virtualbase_waitForBytesWritten(msecs);
}

bool QSslSocket_virtualbase_waitForDisconnected(void* self, int msecs) {
	return ( (MiqtVirtualQSslSocket*)(self) )->virtualbase_waitForDisconnected(msecs);
}

long long QSslSocket_virtualbase_readData(void* self, char* data, long long maxlen) {
	return ( (MiqtVirtualQSslSocket*)(self) )->virtualbase_readData(data, maxlen);
}

long long QSslSocket_virtualbase_skipData(void* self, long long maxSize) {
	return ( (MiqtVirtualQSslSocket*)(self) )->virtualbase_skipData(maxSize);
}

long long QSslSocket_virtualbase_writeData(void* self, const char* data, long long len) {
	return ( (MiqtVirtualQSslSocket*)(self) )->virtualbase_writeData(data, len);
}

bool QSslSocket_virtualbase_bind(void* self, QHostAddress* address, uint16_t port, int mode) {
	return ( (MiqtVirtualQSslSocket*)(self) )->virtualbase_bind(address, port, mode);
}

intptr_t QSslSocket_virtualbase_socketDescriptor(const void* self) {
	return ( (const MiqtVirtualQSslSocket*)(self) )->virtualbase_socketDescriptor();
}

bool QSslSocket_virtualbase_isSequential(const void* self) {
	return ( (const MiqtVirtualQSslSocket*)(self) )->virtualbase_isSequential();
}

long long QSslSocket_virtualbase_readLineData(void* self, char* data, long long maxlen) {
	return ( (MiqtVirtualQSslSocket*)(self) )->virtualbase_readLineData(data, maxlen);
}

bool QSslSocket_virtualbase_open(void* self, int mode) {
	return ( (MiqtVirtualQSslSocket*)(self) )->virtualbase_open(mode);
}

long long QSslSocket_virtualbase_pos(const void* self) {
	return ( (const MiqtVirtualQSslSocket*)(self) )->virtualbase_pos();
}

long long QSslSocket_virtualbase_size(const void* self) {
	return ( (const MiqtVirtualQSslSocket*)(self) )->virtualbase_size();
}

bool QSslSocket_virtualbase_seek(void* self, long long pos) {
	return ( (MiqtVirtualQSslSocket*)(self) )->virtualbase_seek(pos);
}

bool QSslSocket_virtualbase_reset(void* self) {
	return ( (MiqtVirtualQSslSocket*)(self) )->virtualbase_reset();
}

bool QSslSocket_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQSslSocket*)(self) )->virtualbase_event(event);
}

bool QSslSocket_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQSslSocket*)(self) )->virtualbase_eventFilter(watched, event);
}

void QSslSocket_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQSslSocket*)(self) )->virtualbase_timerEvent(event);
}

void QSslSocket_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQSslSocket*)(self) )->virtualbase_childEvent(event);
}

void QSslSocket_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSslSocket*)(self) )->virtualbase_customEvent(event);
}

void QSslSocket_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSslSocket*)(self) )->virtualbase_connectNotify(signal);
}

void QSslSocket_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSslSocket*)(self) )->virtualbase_disconnectNotify(signal);
}

void QSslSocket_protectedbase_setSocketState(void* self, int state) {
	( (MiqtVirtualQSslSocket*)(self) )->protectedbase_setSocketState(state);
}

void QSslSocket_protectedbase_setSocketError(void* self, int socketError) {
	( (MiqtVirtualQSslSocket*)(self) )->protectedbase_setSocketError(socketError);
}

void QSslSocket_protectedbase_setLocalPort(void* self, uint16_t port) {
	( (MiqtVirtualQSslSocket*)(self) )->protectedbase_setLocalPort(port);
}

void QSslSocket_protectedbase_setLocalAddress(void* self, QHostAddress* address) {
	( (MiqtVirtualQSslSocket*)(self) )->protectedbase_setLocalAddress(address);
}

void QSslSocket_protectedbase_setPeerPort(void* self, uint16_t port) {
	( (MiqtVirtualQSslSocket*)(self) )->protectedbase_setPeerPort(port);
}

void QSslSocket_protectedbase_setPeerAddress(void* self, QHostAddress* address) {
	( (MiqtVirtualQSslSocket*)(self) )->protectedbase_setPeerAddress(address);
}

void QSslSocket_protectedbase_setPeerName(void* self, struct miqt_string name) {
	( (MiqtVirtualQSslSocket*)(self) )->protectedbase_setPeerName(name);
}

void QSslSocket_protectedbase_setOpenMode(void* self, int openMode) {
	( (MiqtVirtualQSslSocket*)(self) )->protectedbase_setOpenMode(openMode);
}

void QSslSocket_protectedbase_setErrorString(void* self, struct miqt_string errorString) {
	( (MiqtVirtualQSslSocket*)(self) )->protectedbase_setErrorString(errorString);
}

QObject* QSslSocket_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQSslSocket*)(self) )->protectedbase_sender();
}

int QSslSocket_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQSslSocket*)(self) )->protectedbase_senderSignalIndex();
}

int QSslSocket_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQSslSocket*)(self) )->protectedbase_receivers(signal);
}

bool QSslSocket_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQSslSocket*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QSslSocket_staticMetaObject() { return &QSslSocket::staticMetaObject; }
void QSslSocket_delete(QSslSocket* self) {
	delete self;
}

