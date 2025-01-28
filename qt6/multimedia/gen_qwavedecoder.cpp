#include <QAudioFormat>
#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QIODeviceBase>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QWaveDecoder>
#include <qwavedecoder.h>
#include "gen_qwavedecoder.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QWaveDecoder_formatKnown(intptr_t);
void miqt_exec_callback_QWaveDecoder_parsingError(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQWaveDecoder final : public QWaveDecoder {
	struct QWaveDecoder_VTable* vtbl;
public:

	MiqtVirtualQWaveDecoder(struct QWaveDecoder_VTable* vtbl, QIODevice* device): QWaveDecoder(device), vtbl(vtbl) {};
	MiqtVirtualQWaveDecoder(struct QWaveDecoder_VTable* vtbl, QIODevice* device, const QAudioFormat& format): QWaveDecoder(device, format), vtbl(vtbl) {};
	MiqtVirtualQWaveDecoder(struct QWaveDecoder_VTable* vtbl, QIODevice* device, QObject* parent): QWaveDecoder(device, parent), vtbl(vtbl) {};
	MiqtVirtualQWaveDecoder(struct QWaveDecoder_VTable* vtbl, QIODevice* device, const QAudioFormat& format, QObject* parent): QWaveDecoder(device, format, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQWaveDecoder() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWaveDecoder::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QWaveDecoder::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWaveDecoder::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QWaveDecoder::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWaveDecoder::qt_metacall(param1, param2, param3);
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

		return QWaveDecoder::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool open(QIODevice::OpenMode mode) override {
		if (vtbl->open == 0) {
			return QWaveDecoder::open(mode);
		}

		QIODevice::OpenMode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->open(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_open(int mode) {

		return QWaveDecoder::open(static_cast<QIODevice::OpenMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual void close() override {
		if (vtbl->close == 0) {
			QWaveDecoder::close();
			return;
		}


		vtbl->close(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_close() {

		QWaveDecoder::close();

	}

	// Subclass to allow providing a Go implementation
	virtual bool seek(qint64 pos) override {
		if (vtbl->seek == 0) {
			return QWaveDecoder::seek(pos);
		}

		qint64 pos_ret = pos;
		long long sigval1 = static_cast<long long>(pos_ret);

		bool callback_return_value = vtbl->seek(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_seek(long long pos) {

		return QWaveDecoder::seek(static_cast<qint64>(pos));

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QWaveDecoder::pos();
		}


		long long callback_return_value = vtbl->pos(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_pos() const {

		qint64 _ret = QWaveDecoder::pos();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QWaveDecoder::size();
		}


		long long callback_return_value = vtbl->size(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_size() const {

		qint64 _ret = QWaveDecoder::size();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QWaveDecoder::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isSequential() const {

		return QWaveDecoder::isSequential();

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QWaveDecoder::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_bytesAvailable() const {

		qint64 _ret = QWaveDecoder::bytesAvailable();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QWaveDecoder::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_atEnd() const {

		return QWaveDecoder::atEnd();

	}

	// Subclass to allow providing a Go implementation
	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QWaveDecoder::reset();
		}


		bool callback_return_value = vtbl->reset(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_reset() {

		return QWaveDecoder::reset();

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QWaveDecoder::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_bytesToWrite() const {

		qint64 _ret = QWaveDecoder::bytesToWrite();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QWaveDecoder::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_canReadLine() const {

		return QWaveDecoder::canReadLine();

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QWaveDecoder::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForReadyRead(int msecs) {

		return QWaveDecoder::waitForReadyRead(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QWaveDecoder::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForBytesWritten(int msecs) {

		return QWaveDecoder::waitForBytesWritten(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QWaveDecoder::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_readLineData(char* data, long long maxlen) {

		qint64 _ret = QWaveDecoder::readLineData(data, static_cast<qint64>(maxlen));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 skipData(qint64 maxSize) override {
		if (vtbl->skipData == 0) {
			return QWaveDecoder::skipData(maxSize);
		}

		qint64 maxSize_ret = maxSize;
		long long sigval1 = static_cast<long long>(maxSize_ret);

		long long callback_return_value = vtbl->skipData(vtbl, this, sigval1);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_skipData(long long maxSize) {

		qint64 _ret = QWaveDecoder::skipData(static_cast<qint64>(maxSize));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QWaveDecoder::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QWaveDecoder::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWaveDecoder::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QWaveDecoder::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWaveDecoder::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QWaveDecoder::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWaveDecoder::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QWaveDecoder::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWaveDecoder::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QWaveDecoder::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWaveDecoder::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QWaveDecoder::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWaveDecoder::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QWaveDecoder::disconnectNotify(*signal);

	}

};

QWaveDecoder* QWaveDecoder_new(struct QWaveDecoder_VTable* vtbl, QIODevice* device) {
	return new MiqtVirtualQWaveDecoder(vtbl, device);
}

QWaveDecoder* QWaveDecoder_new2(struct QWaveDecoder_VTable* vtbl, QIODevice* device, QAudioFormat* format) {
	return new MiqtVirtualQWaveDecoder(vtbl, device, *format);
}

QWaveDecoder* QWaveDecoder_new3(struct QWaveDecoder_VTable* vtbl, QIODevice* device, QObject* parent) {
	return new MiqtVirtualQWaveDecoder(vtbl, device, parent);
}

QWaveDecoder* QWaveDecoder_new4(struct QWaveDecoder_VTable* vtbl, QIODevice* device, QAudioFormat* format, QObject* parent) {
	return new MiqtVirtualQWaveDecoder(vtbl, device, *format, parent);
}

void QWaveDecoder_virtbase(QWaveDecoder* src, QIODevice** outptr_QIODevice) {
	*outptr_QIODevice = static_cast<QIODevice*>(src);
}

QMetaObject* QWaveDecoder_metaObject(const QWaveDecoder* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWaveDecoder_metacast(QWaveDecoder* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWaveDecoder_metacall(QWaveDecoder* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWaveDecoder_tr(const char* s) {
	QString _ret = QWaveDecoder::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAudioFormat* QWaveDecoder_audioFormat(const QWaveDecoder* self) {
	return new QAudioFormat(self->audioFormat());
}

QIODevice* QWaveDecoder_getDevice(QWaveDecoder* self) {
	return self->getDevice();
}

int QWaveDecoder_duration(const QWaveDecoder* self) {
	return self->duration();
}

long long QWaveDecoder_headerLength() {
	qint64 _ret = QWaveDecoder::headerLength();
	return static_cast<long long>(_ret);
}

bool QWaveDecoder_open(QWaveDecoder* self, int mode) {
	return self->open(static_cast<QIODevice::OpenMode>(mode));
}

void QWaveDecoder_close(QWaveDecoder* self) {
	self->close();
}

bool QWaveDecoder_seek(QWaveDecoder* self, long long pos) {
	return self->seek(static_cast<qint64>(pos));
}

long long QWaveDecoder_pos(const QWaveDecoder* self) {
	qint64 _ret = self->pos();
	return static_cast<long long>(_ret);
}

long long QWaveDecoder_size(const QWaveDecoder* self) {
	qint64 _ret = self->size();
	return static_cast<long long>(_ret);
}

bool QWaveDecoder_isSequential(const QWaveDecoder* self) {
	return self->isSequential();
}

long long QWaveDecoder_bytesAvailable(const QWaveDecoder* self) {
	qint64 _ret = self->bytesAvailable();
	return static_cast<long long>(_ret);
}

void QWaveDecoder_formatKnown(QWaveDecoder* self) {
	self->formatKnown();
}

void QWaveDecoder_connect_formatKnown(QWaveDecoder* self, intptr_t slot) {
	MiqtVirtualQWaveDecoder::connect(self, static_cast<void (QWaveDecoder::*)()>(&QWaveDecoder::formatKnown), self, [=]() {
		miqt_exec_callback_QWaveDecoder_formatKnown(slot);
	});
}

void QWaveDecoder_parsingError(QWaveDecoder* self) {
	self->parsingError();
}

void QWaveDecoder_connect_parsingError(QWaveDecoder* self, intptr_t slot) {
	MiqtVirtualQWaveDecoder::connect(self, static_cast<void (QWaveDecoder::*)()>(&QWaveDecoder::parsingError), self, [=]() {
		miqt_exec_callback_QWaveDecoder_parsingError(slot);
	});
}

struct miqt_string QWaveDecoder_tr2(const char* s, const char* c) {
	QString _ret = QWaveDecoder::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWaveDecoder_tr3(const char* s, const char* c, int n) {
	QString _ret = QWaveDecoder::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QWaveDecoder_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQWaveDecoder*)(self) )->virtualbase_metaObject();
}

void* QWaveDecoder_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQWaveDecoder*)(self) )->virtualbase_metacast(param1);
}

int QWaveDecoder_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQWaveDecoder*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QWaveDecoder_virtualbase_open(void* self, int mode) {
	return ( (MiqtVirtualQWaveDecoder*)(self) )->virtualbase_open(mode);
}

void QWaveDecoder_virtualbase_close(void* self) {
	( (MiqtVirtualQWaveDecoder*)(self) )->virtualbase_close();
}

bool QWaveDecoder_virtualbase_seek(void* self, long long pos) {
	return ( (MiqtVirtualQWaveDecoder*)(self) )->virtualbase_seek(pos);
}

long long QWaveDecoder_virtualbase_pos(const void* self) {
	return ( (const MiqtVirtualQWaveDecoder*)(self) )->virtualbase_pos();
}

long long QWaveDecoder_virtualbase_size(const void* self) {
	return ( (const MiqtVirtualQWaveDecoder*)(self) )->virtualbase_size();
}

bool QWaveDecoder_virtualbase_isSequential(const void* self) {
	return ( (const MiqtVirtualQWaveDecoder*)(self) )->virtualbase_isSequential();
}

long long QWaveDecoder_virtualbase_bytesAvailable(const void* self) {
	return ( (const MiqtVirtualQWaveDecoder*)(self) )->virtualbase_bytesAvailable();
}

bool QWaveDecoder_virtualbase_atEnd(const void* self) {
	return ( (const MiqtVirtualQWaveDecoder*)(self) )->virtualbase_atEnd();
}

bool QWaveDecoder_virtualbase_reset(void* self) {
	return ( (MiqtVirtualQWaveDecoder*)(self) )->virtualbase_reset();
}

long long QWaveDecoder_virtualbase_bytesToWrite(const void* self) {
	return ( (const MiqtVirtualQWaveDecoder*)(self) )->virtualbase_bytesToWrite();
}

bool QWaveDecoder_virtualbase_canReadLine(const void* self) {
	return ( (const MiqtVirtualQWaveDecoder*)(self) )->virtualbase_canReadLine();
}

bool QWaveDecoder_virtualbase_waitForReadyRead(void* self, int msecs) {
	return ( (MiqtVirtualQWaveDecoder*)(self) )->virtualbase_waitForReadyRead(msecs);
}

bool QWaveDecoder_virtualbase_waitForBytesWritten(void* self, int msecs) {
	return ( (MiqtVirtualQWaveDecoder*)(self) )->virtualbase_waitForBytesWritten(msecs);
}

long long QWaveDecoder_virtualbase_readLineData(void* self, char* data, long long maxlen) {
	return ( (MiqtVirtualQWaveDecoder*)(self) )->virtualbase_readLineData(data, maxlen);
}

long long QWaveDecoder_virtualbase_skipData(void* self, long long maxSize) {
	return ( (MiqtVirtualQWaveDecoder*)(self) )->virtualbase_skipData(maxSize);
}

bool QWaveDecoder_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQWaveDecoder*)(self) )->virtualbase_event(event);
}

bool QWaveDecoder_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQWaveDecoder*)(self) )->virtualbase_eventFilter(watched, event);
}

void QWaveDecoder_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQWaveDecoder*)(self) )->virtualbase_timerEvent(event);
}

void QWaveDecoder_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQWaveDecoder*)(self) )->virtualbase_childEvent(event);
}

void QWaveDecoder_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQWaveDecoder*)(self) )->virtualbase_customEvent(event);
}

void QWaveDecoder_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQWaveDecoder*)(self) )->virtualbase_connectNotify(signal);
}

void QWaveDecoder_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQWaveDecoder*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QWaveDecoder_staticMetaObject() { return &QWaveDecoder::staticMetaObject; }
void QWaveDecoder_delete(QWaveDecoder* self) {
	delete self;
}

