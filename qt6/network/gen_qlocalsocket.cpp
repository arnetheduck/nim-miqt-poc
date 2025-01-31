#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QIODeviceBase>
#include <QLocalSocket>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qlocalsocket.h>
#include "gen_qlocalsocket.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QLocalSocket_connected(intptr_t);
void miqt_exec_callback_QLocalSocket_connected_release(intptr_t);
void miqt_exec_callback_QLocalSocket_disconnected(intptr_t);
void miqt_exec_callback_QLocalSocket_disconnected_release(intptr_t);
void miqt_exec_callback_QLocalSocket_errorOccurred(intptr_t, int);
void miqt_exec_callback_QLocalSocket_errorOccurred_release(intptr_t);
void miqt_exec_callback_QLocalSocket_stateChanged(intptr_t, int);
void miqt_exec_callback_QLocalSocket_stateChanged_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQLocalSocket final : public QLocalSocket {
	struct QLocalSocket_VTable* vtbl;
public:

	MiqtVirtualQLocalSocket(struct QLocalSocket_VTable* vtbl): QLocalSocket(), vtbl(vtbl) {};
	MiqtVirtualQLocalSocket(struct QLocalSocket_VTable* vtbl, QObject* parent): QLocalSocket(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQLocalSocket() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QLocalSocket::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QLocalSocket::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QLocalSocket::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QLocalSocket::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QLocalSocket::qt_metacall(param1, param2, param3);
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

		return QLocalSocket::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QLocalSocket::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isSequential() const {

		return QLocalSocket::isSequential();

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QLocalSocket::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_bytesAvailable() const {

		qint64 _ret = QLocalSocket::bytesAvailable();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QLocalSocket::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_bytesToWrite() const {

		qint64 _ret = QLocalSocket::bytesToWrite();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QLocalSocket::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_canReadLine() const {

		return QLocalSocket::canReadLine();

	}

	// Subclass to allow providing a Go implementation
	virtual bool open(QIODeviceBase::OpenMode openMode) override {
		if (vtbl->open == 0) {
			return QLocalSocket::open(openMode);
		}

		QIODeviceBase::OpenMode openMode_ret = openMode;
		int sigval1 = static_cast<int>(openMode_ret);

		bool callback_return_value = vtbl->open(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_open(int openMode) {

		return QLocalSocket::open(static_cast<QIODeviceBase::OpenMode>(openMode));

	}

	// Subclass to allow providing a Go implementation
	virtual void close() override {
		if (vtbl->close == 0) {
			QLocalSocket::close();
			return;
		}


		vtbl->close(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_close() {

		QLocalSocket::close();

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QLocalSocket::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForBytesWritten(int msecs) {

		return QLocalSocket::waitForBytesWritten(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QLocalSocket::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForReadyRead(int msecs) {

		return QLocalSocket::waitForReadyRead(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 readData(char* param1, qint64 param2) override {
		if (vtbl->readData == 0) {
			return QLocalSocket::readData(param1, param2);
		}

		char* sigval1 = param1;
		qint64 param2_ret = param2;
		long long sigval2 = static_cast<long long>(param2_ret);

		long long callback_return_value = vtbl->readData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_readData(char* param1, long long param2) {

		qint64 _ret = QLocalSocket::readData(param1, static_cast<qint64>(param2));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 readLineData(char* data, qint64 maxSize) override {
		if (vtbl->readLineData == 0) {
			return QLocalSocket::readLineData(data, maxSize);
		}

		char* sigval1 = data;
		qint64 maxSize_ret = maxSize;
		long long sigval2 = static_cast<long long>(maxSize_ret);

		long long callback_return_value = vtbl->readLineData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_readLineData(char* data, long long maxSize) {

		qint64 _ret = QLocalSocket::readLineData(data, static_cast<qint64>(maxSize));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 skipData(qint64 maxSize) override {
		if (vtbl->skipData == 0) {
			return QLocalSocket::skipData(maxSize);
		}

		qint64 maxSize_ret = maxSize;
		long long sigval1 = static_cast<long long>(maxSize_ret);

		long long callback_return_value = vtbl->skipData(vtbl, this, sigval1);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_skipData(long long maxSize) {

		qint64 _ret = QLocalSocket::skipData(static_cast<qint64>(maxSize));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 writeData(const char* param1, qint64 param2) override {
		if (vtbl->writeData == 0) {
			return QLocalSocket::writeData(param1, param2);
		}

		const char* sigval1 = (const char*) param1;
		qint64 param2_ret = param2;
		long long sigval2 = static_cast<long long>(param2_ret);

		long long callback_return_value = vtbl->writeData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_writeData(const char* param1, long long param2) {

		qint64 _ret = QLocalSocket::writeData(param1, static_cast<qint64>(param2));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QLocalSocket::pos();
		}


		long long callback_return_value = vtbl->pos(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_pos() const {

		qint64 _ret = QLocalSocket::pos();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QLocalSocket::size();
		}


		long long callback_return_value = vtbl->size(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_size() const {

		qint64 _ret = QLocalSocket::size();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool seek(qint64 pos) override {
		if (vtbl->seek == 0) {
			return QLocalSocket::seek(pos);
		}

		qint64 pos_ret = pos;
		long long sigval1 = static_cast<long long>(pos_ret);

		bool callback_return_value = vtbl->seek(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_seek(long long pos) {

		return QLocalSocket::seek(static_cast<qint64>(pos));

	}

	// Subclass to allow providing a Go implementation
	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QLocalSocket::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_atEnd() const {

		return QLocalSocket::atEnd();

	}

	// Subclass to allow providing a Go implementation
	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QLocalSocket::reset();
		}


		bool callback_return_value = vtbl->reset(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_reset() {

		return QLocalSocket::reset();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QLocalSocket::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QLocalSocket::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QLocalSocket::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QLocalSocket::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QLocalSocket::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QLocalSocket::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QLocalSocket::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QLocalSocket::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QLocalSocket::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QLocalSocket::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QLocalSocket::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QLocalSocket::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QLocalSocket::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QLocalSocket::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	void protectedbase_setOpenMode(int openMode) {

		QLocalSocket::setOpenMode(static_cast<QIODeviceBase::OpenMode>(openMode));

	}

	// Wrapper to allow calling protected method
	void protectedbase_setErrorString(struct miqt_string errorString) {
		QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);

		QLocalSocket::setErrorString(errorString_QString);

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QLocalSocket::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QLocalSocket::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QLocalSocket::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QLocalSocket::isSignalConnected(*signal);

	}

};

QLocalSocket* QLocalSocket_new(struct QLocalSocket_VTable* vtbl) {
	return new MiqtVirtualQLocalSocket(vtbl);
}

QLocalSocket* QLocalSocket_new2(struct QLocalSocket_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQLocalSocket(vtbl, parent);
}

void QLocalSocket_virtbase(QLocalSocket* src, QIODevice** outptr_QIODevice) {
	*outptr_QIODevice = static_cast<QIODevice*>(src);
}

QMetaObject* QLocalSocket_metaObject(const QLocalSocket* self) {
	return (QMetaObject*) self->metaObject();
}

void* QLocalSocket_metacast(QLocalSocket* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QLocalSocket_metacall(QLocalSocket* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QLocalSocket_tr(const char* s) {
	QString _ret = QLocalSocket::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QLocalSocket_connectToServer(QLocalSocket* self) {
	self->connectToServer();
}

void QLocalSocket_connectToServerWithName(QLocalSocket* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->connectToServer(name_QString);
}

void QLocalSocket_disconnectFromServer(QLocalSocket* self) {
	self->disconnectFromServer();
}

void QLocalSocket_setServerName(QLocalSocket* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setServerName(name_QString);
}

struct miqt_string QLocalSocket_serverName(const QLocalSocket* self) {
	QString _ret = self->serverName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLocalSocket_fullServerName(const QLocalSocket* self) {
	QString _ret = self->fullServerName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QLocalSocket_abort(QLocalSocket* self) {
	self->abort();
}

bool QLocalSocket_isSequential(const QLocalSocket* self) {
	return self->isSequential();
}

long long QLocalSocket_bytesAvailable(const QLocalSocket* self) {
	qint64 _ret = self->bytesAvailable();
	return static_cast<long long>(_ret);
}

long long QLocalSocket_bytesToWrite(const QLocalSocket* self) {
	qint64 _ret = self->bytesToWrite();
	return static_cast<long long>(_ret);
}

bool QLocalSocket_canReadLine(const QLocalSocket* self) {
	return self->canReadLine();
}

bool QLocalSocket_open(QLocalSocket* self, int openMode) {
	return self->open(static_cast<QIODeviceBase::OpenMode>(openMode));
}

void QLocalSocket_close(QLocalSocket* self) {
	self->close();
}

int QLocalSocket_error(const QLocalSocket* self) {
	QLocalSocket::LocalSocketError _ret = self->error();
	return static_cast<int>(_ret);
}

bool QLocalSocket_flush(QLocalSocket* self) {
	return self->flush();
}

bool QLocalSocket_isValid(const QLocalSocket* self) {
	return self->isValid();
}

long long QLocalSocket_readBufferSize(const QLocalSocket* self) {
	qint64 _ret = self->readBufferSize();
	return static_cast<long long>(_ret);
}

void QLocalSocket_setReadBufferSize(QLocalSocket* self, long long size) {
	self->setReadBufferSize(static_cast<qint64>(size));
}

bool QLocalSocket_setSocketDescriptor(QLocalSocket* self, intptr_t socketDescriptor) {
	return self->setSocketDescriptor((qintptr)(socketDescriptor));
}

intptr_t QLocalSocket_socketDescriptor(const QLocalSocket* self) {
	qintptr _ret = self->socketDescriptor();
	return (intptr_t)(_ret);
}

void QLocalSocket_setSocketOptions(QLocalSocket* self, int option) {
	self->setSocketOptions(static_cast<QLocalSocket::SocketOptions>(option));
}

int QLocalSocket_socketOptions(const QLocalSocket* self) {
	QLocalSocket::SocketOptions _ret = self->socketOptions();
	return static_cast<int>(_ret);
}

int QLocalSocket_state(const QLocalSocket* self) {
	QLocalSocket::LocalSocketState _ret = self->state();
	return static_cast<int>(_ret);
}

bool QLocalSocket_waitForBytesWritten(QLocalSocket* self, int msecs) {
	return self->waitForBytesWritten(static_cast<int>(msecs));
}

bool QLocalSocket_waitForConnected(QLocalSocket* self) {
	return self->waitForConnected();
}

bool QLocalSocket_waitForDisconnected(QLocalSocket* self) {
	return self->waitForDisconnected();
}

bool QLocalSocket_waitForReadyRead(QLocalSocket* self, int msecs) {
	return self->waitForReadyRead(static_cast<int>(msecs));
}

void QLocalSocket_connected(QLocalSocket* self) {
	self->connected();
}

void QLocalSocket_connect_connected(QLocalSocket* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QLocalSocket_connected(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QLocalSocket_connected_release(slot); }
	};
	MiqtVirtualQLocalSocket::connect(self, static_cast<void (QLocalSocket::*)()>(&QLocalSocket::connected), self, caller{slot});
}

void QLocalSocket_disconnected(QLocalSocket* self) {
	self->disconnected();
}

void QLocalSocket_connect_disconnected(QLocalSocket* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QLocalSocket_disconnected(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QLocalSocket_disconnected_release(slot); }
	};
	MiqtVirtualQLocalSocket::connect(self, static_cast<void (QLocalSocket::*)()>(&QLocalSocket::disconnected), self, caller{slot});
}

void QLocalSocket_errorOccurred(QLocalSocket* self, int socketError) {
	self->errorOccurred(static_cast<QLocalSocket::LocalSocketError>(socketError));
}

void QLocalSocket_connect_errorOccurred(QLocalSocket* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QLocalSocket::LocalSocketError socketError) {
			QLocalSocket::LocalSocketError socketError_ret = socketError;
			int sigval1 = static_cast<int>(socketError_ret);
			miqt_exec_callback_QLocalSocket_errorOccurred(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QLocalSocket_errorOccurred_release(slot); }
	};
	MiqtVirtualQLocalSocket::connect(self, static_cast<void (QLocalSocket::*)(QLocalSocket::LocalSocketError)>(&QLocalSocket::errorOccurred), self, caller{slot});
}

void QLocalSocket_stateChanged(QLocalSocket* self, int socketState) {
	self->stateChanged(static_cast<QLocalSocket::LocalSocketState>(socketState));
}

void QLocalSocket_connect_stateChanged(QLocalSocket* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QLocalSocket::LocalSocketState socketState) {
			QLocalSocket::LocalSocketState socketState_ret = socketState;
			int sigval1 = static_cast<int>(socketState_ret);
			miqt_exec_callback_QLocalSocket_stateChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QLocalSocket_stateChanged_release(slot); }
	};
	MiqtVirtualQLocalSocket::connect(self, static_cast<void (QLocalSocket::*)(QLocalSocket::LocalSocketState)>(&QLocalSocket::stateChanged), self, caller{slot});
}

struct miqt_string QLocalSocket_tr2(const char* s, const char* c) {
	QString _ret = QLocalSocket::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QLocalSocket_tr3(const char* s, const char* c, int n) {
	QString _ret = QLocalSocket::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QLocalSocket_connectToServer1(QLocalSocket* self, int openMode) {
	self->connectToServer(static_cast<QIODeviceBase::OpenMode>(openMode));
}

void QLocalSocket_connectToServer2(QLocalSocket* self, struct miqt_string name, int openMode) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->connectToServer(name_QString, static_cast<QIODeviceBase::OpenMode>(openMode));
}

bool QLocalSocket_setSocketDescriptor2(QLocalSocket* self, intptr_t socketDescriptor, int socketState) {
	return self->setSocketDescriptor((qintptr)(socketDescriptor), static_cast<QLocalSocket::LocalSocketState>(socketState));
}

bool QLocalSocket_setSocketDescriptor3(QLocalSocket* self, intptr_t socketDescriptor, int socketState, int openMode) {
	return self->setSocketDescriptor((qintptr)(socketDescriptor), static_cast<QLocalSocket::LocalSocketState>(socketState), static_cast<QIODeviceBase::OpenMode>(openMode));
}

bool QLocalSocket_waitForConnected1(QLocalSocket* self, int msecs) {
	return self->waitForConnected(static_cast<int>(msecs));
}

bool QLocalSocket_waitForDisconnected1(QLocalSocket* self, int msecs) {
	return self->waitForDisconnected(static_cast<int>(msecs));
}

QMetaObject* QLocalSocket_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQLocalSocket*)(self) )->virtualbase_metaObject();
}

void* QLocalSocket_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQLocalSocket*)(self) )->virtualbase_metacast(param1);
}

int QLocalSocket_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQLocalSocket*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QLocalSocket_virtualbase_isSequential(const void* self) {
	return ( (const MiqtVirtualQLocalSocket*)(self) )->virtualbase_isSequential();
}

long long QLocalSocket_virtualbase_bytesAvailable(const void* self) {
	return ( (const MiqtVirtualQLocalSocket*)(self) )->virtualbase_bytesAvailable();
}

long long QLocalSocket_virtualbase_bytesToWrite(const void* self) {
	return ( (const MiqtVirtualQLocalSocket*)(self) )->virtualbase_bytesToWrite();
}

bool QLocalSocket_virtualbase_canReadLine(const void* self) {
	return ( (const MiqtVirtualQLocalSocket*)(self) )->virtualbase_canReadLine();
}

bool QLocalSocket_virtualbase_open(void* self, int openMode) {
	return ( (MiqtVirtualQLocalSocket*)(self) )->virtualbase_open(openMode);
}

void QLocalSocket_virtualbase_close(void* self) {
	( (MiqtVirtualQLocalSocket*)(self) )->virtualbase_close();
}

bool QLocalSocket_virtualbase_waitForBytesWritten(void* self, int msecs) {
	return ( (MiqtVirtualQLocalSocket*)(self) )->virtualbase_waitForBytesWritten(msecs);
}

bool QLocalSocket_virtualbase_waitForReadyRead(void* self, int msecs) {
	return ( (MiqtVirtualQLocalSocket*)(self) )->virtualbase_waitForReadyRead(msecs);
}

long long QLocalSocket_virtualbase_readData(void* self, char* param1, long long param2) {
	return ( (MiqtVirtualQLocalSocket*)(self) )->virtualbase_readData(param1, param2);
}

long long QLocalSocket_virtualbase_readLineData(void* self, char* data, long long maxSize) {
	return ( (MiqtVirtualQLocalSocket*)(self) )->virtualbase_readLineData(data, maxSize);
}

long long QLocalSocket_virtualbase_skipData(void* self, long long maxSize) {
	return ( (MiqtVirtualQLocalSocket*)(self) )->virtualbase_skipData(maxSize);
}

long long QLocalSocket_virtualbase_writeData(void* self, const char* param1, long long param2) {
	return ( (MiqtVirtualQLocalSocket*)(self) )->virtualbase_writeData(param1, param2);
}

long long QLocalSocket_virtualbase_pos(const void* self) {
	return ( (const MiqtVirtualQLocalSocket*)(self) )->virtualbase_pos();
}

long long QLocalSocket_virtualbase_size(const void* self) {
	return ( (const MiqtVirtualQLocalSocket*)(self) )->virtualbase_size();
}

bool QLocalSocket_virtualbase_seek(void* self, long long pos) {
	return ( (MiqtVirtualQLocalSocket*)(self) )->virtualbase_seek(pos);
}

bool QLocalSocket_virtualbase_atEnd(const void* self) {
	return ( (const MiqtVirtualQLocalSocket*)(self) )->virtualbase_atEnd();
}

bool QLocalSocket_virtualbase_reset(void* self) {
	return ( (MiqtVirtualQLocalSocket*)(self) )->virtualbase_reset();
}

bool QLocalSocket_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQLocalSocket*)(self) )->virtualbase_event(event);
}

bool QLocalSocket_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQLocalSocket*)(self) )->virtualbase_eventFilter(watched, event);
}

void QLocalSocket_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQLocalSocket*)(self) )->virtualbase_timerEvent(event);
}

void QLocalSocket_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQLocalSocket*)(self) )->virtualbase_childEvent(event);
}

void QLocalSocket_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQLocalSocket*)(self) )->virtualbase_customEvent(event);
}

void QLocalSocket_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQLocalSocket*)(self) )->virtualbase_connectNotify(signal);
}

void QLocalSocket_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQLocalSocket*)(self) )->virtualbase_disconnectNotify(signal);
}

void QLocalSocket_protectedbase_setOpenMode(void* self, int openMode) {
	( (MiqtVirtualQLocalSocket*)(self) )->protectedbase_setOpenMode(openMode);
}

void QLocalSocket_protectedbase_setErrorString(void* self, struct miqt_string errorString) {
	( (MiqtVirtualQLocalSocket*)(self) )->protectedbase_setErrorString(errorString);
}

QObject* QLocalSocket_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQLocalSocket*)(self) )->protectedbase_sender();
}

int QLocalSocket_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQLocalSocket*)(self) )->protectedbase_senderSignalIndex();
}

int QLocalSocket_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQLocalSocket*)(self) )->protectedbase_receivers(signal);
}

bool QLocalSocket_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQLocalSocket*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QLocalSocket_staticMetaObject() { return &QLocalSocket::staticMetaObject; }
void QLocalSocket_delete(QLocalSocket* self) {
	delete self;
}

