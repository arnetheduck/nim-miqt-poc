#include <QChildEvent>
#include <QEvent>
#include <QFileDevice>
#include <QIODevice>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSaveFile>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qsavefile.h>
#include "gen_qsavefile.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQSaveFile final : public QSaveFile {
	struct QSaveFile_VTable* vtbl;
public:

	MiqtVirtualQSaveFile(struct QSaveFile_VTable* vtbl, const QString& name): QSaveFile(name), vtbl(vtbl) {};
	MiqtVirtualQSaveFile(struct QSaveFile_VTable* vtbl): QSaveFile(), vtbl(vtbl) {};
	MiqtVirtualQSaveFile(struct QSaveFile_VTable* vtbl, const QString& name, QObject* parent): QSaveFile(name, parent), vtbl(vtbl) {};
	MiqtVirtualQSaveFile(struct QSaveFile_VTable* vtbl, QObject* parent): QSaveFile(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSaveFile() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSaveFile::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QSaveFile::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSaveFile::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QSaveFile::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSaveFile::qt_metacall(param1, param2, param3);
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

		return QSaveFile::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QString fileName() const override {
		if (vtbl->fileName == 0) {
			return QSaveFile::fileName();
		}


		struct miqt_string callback_return_value = vtbl->fileName(vtbl, this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);

		return callback_return_value_QString;
	}

	// Wrapper to allow calling protected method
	struct miqt_string virtualbase_fileName() const {

		QString _ret = QSaveFile::fileName();
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _b = _ret.toUtf8();
		struct miqt_string _ms;
		_ms.len = _b.length();
		_ms.data = static_cast<char*>(malloc(_ms.len));
		memcpy(_ms.data, _b.data(), _ms.len);
		return _ms;

	}

	// Subclass to allow providing a Go implementation
	virtual bool open(QIODevice::OpenMode flags) override {
		if (vtbl->open == 0) {
			return QSaveFile::open(flags);
		}

		QIODevice::OpenMode flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		bool callback_return_value = vtbl->open(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_open(int flags) {

		return QSaveFile::open(static_cast<QIODevice::OpenMode>(flags));

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 writeData(const char* data, qint64 len) override {
		if (vtbl->writeData == 0) {
			return QSaveFile::writeData(data, len);
		}

		const char* sigval1 = (const char*) data;
		qint64 len_ret = len;
		long long sigval2 = static_cast<long long>(len_ret);

		long long callback_return_value = vtbl->writeData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_writeData(const char* data, long long len) {

		qint64 _ret = QSaveFile::writeData(data, static_cast<qint64>(len));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QSaveFile::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isSequential() const {

		return QSaveFile::isSequential();

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QSaveFile::pos();
		}


		long long callback_return_value = vtbl->pos(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_pos() const {

		qint64 _ret = QSaveFile::pos();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool seek(qint64 offset) override {
		if (vtbl->seek == 0) {
			return QSaveFile::seek(offset);
		}

		qint64 offset_ret = offset;
		long long sigval1 = static_cast<long long>(offset_ret);

		bool callback_return_value = vtbl->seek(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_seek(long long offset) {

		return QSaveFile::seek(static_cast<qint64>(offset));

	}

	// Subclass to allow providing a Go implementation
	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QSaveFile::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_atEnd() const {

		return QSaveFile::atEnd();

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QSaveFile::size();
		}


		long long callback_return_value = vtbl->size(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_size() const {

		qint64 _ret = QSaveFile::size();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool resize(qint64 sz) override {
		if (vtbl->resize == 0) {
			return QSaveFile::resize(sz);
		}

		qint64 sz_ret = sz;
		long long sigval1 = static_cast<long long>(sz_ret);

		bool callback_return_value = vtbl->resize(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_resize(long long sz) {

		return QSaveFile::resize(static_cast<qint64>(sz));

	}

	// Subclass to allow providing a Go implementation
	virtual QFileDevice::Permissions permissions() const override {
		if (vtbl->permissions == 0) {
			return QSaveFile::permissions();
		}


		int callback_return_value = vtbl->permissions(vtbl, this);

		return static_cast<QFileDevice::Permissions>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_permissions() const {

		QFileDevice::Permissions _ret = QSaveFile::permissions();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool setPermissions(QFileDevice::Permissions permissionSpec) override {
		if (vtbl->setPermissions == 0) {
			return QSaveFile::setPermissions(permissionSpec);
		}

		QFileDevice::Permissions permissionSpec_ret = permissionSpec;
		int sigval1 = static_cast<int>(permissionSpec_ret);

		bool callback_return_value = vtbl->setPermissions(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_setPermissions(int permissionSpec) {

		return QSaveFile::setPermissions(static_cast<QFileDevice::Permissions>(permissionSpec));

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 readData(char* data, qint64 maxlen) override {
		if (vtbl->readData == 0) {
			return QSaveFile::readData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_readData(char* data, long long maxlen) {

		qint64 _ret = QSaveFile::readData(data, static_cast<qint64>(maxlen));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QSaveFile::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_readLineData(char* data, long long maxlen) {

		qint64 _ret = QSaveFile::readLineData(data, static_cast<qint64>(maxlen));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QSaveFile::reset();
		}


		bool callback_return_value = vtbl->reset(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_reset() {

		return QSaveFile::reset();

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QSaveFile::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_bytesAvailable() const {

		qint64 _ret = QSaveFile::bytesAvailable();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QSaveFile::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_bytesToWrite() const {

		qint64 _ret = QSaveFile::bytesToWrite();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QSaveFile::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_canReadLine() const {

		return QSaveFile::canReadLine();

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QSaveFile::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForReadyRead(int msecs) {

		return QSaveFile::waitForReadyRead(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QSaveFile::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForBytesWritten(int msecs) {

		return QSaveFile::waitForBytesWritten(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSaveFile::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QSaveFile::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSaveFile::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QSaveFile::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSaveFile::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QSaveFile::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSaveFile::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QSaveFile::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSaveFile::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QSaveFile::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSaveFile::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QSaveFile::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSaveFile::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QSaveFile::disconnectNotify(*signal);

	}

};

QSaveFile* QSaveFile_new(struct QSaveFile_VTable* vtbl, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return new MiqtVirtualQSaveFile(vtbl, name_QString);
}

QSaveFile* QSaveFile_new2(struct QSaveFile_VTable* vtbl) {
	return new MiqtVirtualQSaveFile(vtbl);
}

QSaveFile* QSaveFile_new3(struct QSaveFile_VTable* vtbl, struct miqt_string name, QObject* parent) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return new MiqtVirtualQSaveFile(vtbl, name_QString, parent);
}

QSaveFile* QSaveFile_new4(struct QSaveFile_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQSaveFile(vtbl, parent);
}

void QSaveFile_virtbase(QSaveFile* src, QFileDevice** outptr_QFileDevice) {
	*outptr_QFileDevice = static_cast<QFileDevice*>(src);
}

QMetaObject* QSaveFile_metaObject(const QSaveFile* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSaveFile_metacast(QSaveFile* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSaveFile_metacall(QSaveFile* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSaveFile_tr(const char* s) {
	QString _ret = QSaveFile::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSaveFile_trUtf8(const char* s) {
	QString _ret = QSaveFile::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSaveFile_fileName(const QSaveFile* self) {
	QString _ret = self->fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSaveFile_setFileName(QSaveFile* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setFileName(name_QString);
}

bool QSaveFile_open(QSaveFile* self, int flags) {
	return self->open(static_cast<QIODevice::OpenMode>(flags));
}

bool QSaveFile_commit(QSaveFile* self) {
	return self->commit();
}

void QSaveFile_cancelWriting(QSaveFile* self) {
	self->cancelWriting();
}

void QSaveFile_setDirectWriteFallback(QSaveFile* self, bool enabled) {
	self->setDirectWriteFallback(enabled);
}

bool QSaveFile_directWriteFallback(const QSaveFile* self) {
	return self->directWriteFallback();
}

struct miqt_string QSaveFile_tr2(const char* s, const char* c) {
	QString _ret = QSaveFile::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSaveFile_tr3(const char* s, const char* c, int n) {
	QString _ret = QSaveFile::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSaveFile_trUtf82(const char* s, const char* c) {
	QString _ret = QSaveFile::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSaveFile_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSaveFile::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSaveFile_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQSaveFile*)(self) )->virtualbase_metaObject();
}

void* QSaveFile_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQSaveFile*)(self) )->virtualbase_metacast(param1);
}

int QSaveFile_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQSaveFile*)(self) )->virtualbase_metacall(param1, param2, param3);
}

struct miqt_string QSaveFile_virtualbase_fileName(const void* self) {
	return ( (const MiqtVirtualQSaveFile*)(self) )->virtualbase_fileName();
}

bool QSaveFile_virtualbase_open(void* self, int flags) {
	return ( (MiqtVirtualQSaveFile*)(self) )->virtualbase_open(flags);
}

long long QSaveFile_virtualbase_writeData(void* self, const char* data, long long len) {
	return ( (MiqtVirtualQSaveFile*)(self) )->virtualbase_writeData(data, len);
}

bool QSaveFile_virtualbase_isSequential(const void* self) {
	return ( (const MiqtVirtualQSaveFile*)(self) )->virtualbase_isSequential();
}

long long QSaveFile_virtualbase_pos(const void* self) {
	return ( (const MiqtVirtualQSaveFile*)(self) )->virtualbase_pos();
}

bool QSaveFile_virtualbase_seek(void* self, long long offset) {
	return ( (MiqtVirtualQSaveFile*)(self) )->virtualbase_seek(offset);
}

bool QSaveFile_virtualbase_atEnd(const void* self) {
	return ( (const MiqtVirtualQSaveFile*)(self) )->virtualbase_atEnd();
}

long long QSaveFile_virtualbase_size(const void* self) {
	return ( (const MiqtVirtualQSaveFile*)(self) )->virtualbase_size();
}

bool QSaveFile_virtualbase_resize(void* self, long long sz) {
	return ( (MiqtVirtualQSaveFile*)(self) )->virtualbase_resize(sz);
}

int QSaveFile_virtualbase_permissions(const void* self) {
	return ( (const MiqtVirtualQSaveFile*)(self) )->virtualbase_permissions();
}

bool QSaveFile_virtualbase_setPermissions(void* self, int permissionSpec) {
	return ( (MiqtVirtualQSaveFile*)(self) )->virtualbase_setPermissions(permissionSpec);
}

long long QSaveFile_virtualbase_readData(void* self, char* data, long long maxlen) {
	return ( (MiqtVirtualQSaveFile*)(self) )->virtualbase_readData(data, maxlen);
}

long long QSaveFile_virtualbase_readLineData(void* self, char* data, long long maxlen) {
	return ( (MiqtVirtualQSaveFile*)(self) )->virtualbase_readLineData(data, maxlen);
}

bool QSaveFile_virtualbase_reset(void* self) {
	return ( (MiqtVirtualQSaveFile*)(self) )->virtualbase_reset();
}

long long QSaveFile_virtualbase_bytesAvailable(const void* self) {
	return ( (const MiqtVirtualQSaveFile*)(self) )->virtualbase_bytesAvailable();
}

long long QSaveFile_virtualbase_bytesToWrite(const void* self) {
	return ( (const MiqtVirtualQSaveFile*)(self) )->virtualbase_bytesToWrite();
}

bool QSaveFile_virtualbase_canReadLine(const void* self) {
	return ( (const MiqtVirtualQSaveFile*)(self) )->virtualbase_canReadLine();
}

bool QSaveFile_virtualbase_waitForReadyRead(void* self, int msecs) {
	return ( (MiqtVirtualQSaveFile*)(self) )->virtualbase_waitForReadyRead(msecs);
}

bool QSaveFile_virtualbase_waitForBytesWritten(void* self, int msecs) {
	return ( (MiqtVirtualQSaveFile*)(self) )->virtualbase_waitForBytesWritten(msecs);
}

bool QSaveFile_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQSaveFile*)(self) )->virtualbase_event(event);
}

bool QSaveFile_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQSaveFile*)(self) )->virtualbase_eventFilter(watched, event);
}

void QSaveFile_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQSaveFile*)(self) )->virtualbase_timerEvent(event);
}

void QSaveFile_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQSaveFile*)(self) )->virtualbase_childEvent(event);
}

void QSaveFile_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSaveFile*)(self) )->virtualbase_customEvent(event);
}

void QSaveFile_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSaveFile*)(self) )->virtualbase_connectNotify(signal);
}

void QSaveFile_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSaveFile*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QSaveFile_staticMetaObject() { return &QSaveFile::staticMetaObject; }
void QSaveFile_delete(QSaveFile* self) {
	delete self;
}

