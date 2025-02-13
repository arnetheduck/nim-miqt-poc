#include <QChildEvent>
#include <QEvent>
#include <QFile>
#include <QFileDevice>
#include <QIODevice>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTemporaryFile>
#include <QTimerEvent>
#include <qtemporaryfile.h>
#include "gen_qtemporaryfile.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQTemporaryFile final : public QTemporaryFile {
	struct QTemporaryFile_VTable* vtbl;
public:

	MiqtVirtualQTemporaryFile(struct QTemporaryFile_VTable* vtbl): QTemporaryFile(), vtbl(vtbl) {};
	MiqtVirtualQTemporaryFile(struct QTemporaryFile_VTable* vtbl, const QString& templateName): QTemporaryFile(templateName), vtbl(vtbl) {};
	MiqtVirtualQTemporaryFile(struct QTemporaryFile_VTable* vtbl, QObject* parent): QTemporaryFile(parent), vtbl(vtbl) {};
	MiqtVirtualQTemporaryFile(struct QTemporaryFile_VTable* vtbl, const QString& templateName, QObject* parent): QTemporaryFile(templateName, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQTemporaryFile() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTemporaryFile::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QTemporaryFile::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTemporaryFile::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QTemporaryFile::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTemporaryFile::qt_metacall(param1, param2, param3);
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

		return QTemporaryFile::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QString fileName() const override {
		if (vtbl->fileName == 0) {
			return QTemporaryFile::fileName();
		}


		struct miqt_string callback_return_value = vtbl->fileName(vtbl, this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);

		return callback_return_value_QString;
	}

	// Wrapper to allow calling protected method
	struct miqt_string virtualbase_fileName() const {

		QString _ret = QTemporaryFile::fileName();
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
		if (vtbl->openWithFlags == 0) {
			return QTemporaryFile::open(flags);
		}

		QIODevice::OpenMode flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		bool callback_return_value = vtbl->openWithFlags(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_openWithFlags(int flags) {

		return QTemporaryFile::open(static_cast<QIODevice::OpenMode>(flags));

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QTemporaryFile::size();
		}


		long long callback_return_value = vtbl->size(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_size() const {

		qint64 _ret = QTemporaryFile::size();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool resize(qint64 sz) override {
		if (vtbl->resize == 0) {
			return QTemporaryFile::resize(sz);
		}

		qint64 sz_ret = sz;
		long long sigval1 = static_cast<long long>(sz_ret);

		bool callback_return_value = vtbl->resize(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_resize(long long sz) {

		return QTemporaryFile::resize(static_cast<qint64>(sz));

	}

	// Subclass to allow providing a Go implementation
	virtual QFileDevice::Permissions permissions() const override {
		if (vtbl->permissions == 0) {
			return QTemporaryFile::permissions();
		}


		int callback_return_value = vtbl->permissions(vtbl, this);

		return static_cast<QFileDevice::Permissions>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_permissions() const {

		QFileDevice::Permissions _ret = QTemporaryFile::permissions();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool setPermissions(QFileDevice::Permissions permissionSpec) override {
		if (vtbl->setPermissions == 0) {
			return QTemporaryFile::setPermissions(permissionSpec);
		}

		QFileDevice::Permissions permissionSpec_ret = permissionSpec;
		int sigval1 = static_cast<int>(permissionSpec_ret);

		bool callback_return_value = vtbl->setPermissions(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_setPermissions(int permissionSpec) {

		return QTemporaryFile::setPermissions(static_cast<QFileDevice::Permissions>(permissionSpec));

	}

	// Subclass to allow providing a Go implementation
	virtual void close() override {
		if (vtbl->close == 0) {
			QTemporaryFile::close();
			return;
		}


		vtbl->close(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_close() {

		QTemporaryFile::close();

	}

	// Subclass to allow providing a Go implementation
	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QTemporaryFile::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isSequential() const {

		return QTemporaryFile::isSequential();

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QTemporaryFile::pos();
		}


		long long callback_return_value = vtbl->pos(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_pos() const {

		qint64 _ret = QTemporaryFile::pos();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool seek(qint64 offset) override {
		if (vtbl->seek == 0) {
			return QTemporaryFile::seek(offset);
		}

		qint64 offset_ret = offset;
		long long sigval1 = static_cast<long long>(offset_ret);

		bool callback_return_value = vtbl->seek(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_seek(long long offset) {

		return QTemporaryFile::seek(static_cast<qint64>(offset));

	}

	// Subclass to allow providing a Go implementation
	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QTemporaryFile::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_atEnd() const {

		return QTemporaryFile::atEnd();

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 readData(char* data, qint64 maxlen) override {
		if (vtbl->readData == 0) {
			return QTemporaryFile::readData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_readData(char* data, long long maxlen) {

		qint64 _ret = QTemporaryFile::readData(data, static_cast<qint64>(maxlen));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 writeData(const char* data, qint64 len) override {
		if (vtbl->writeData == 0) {
			return QTemporaryFile::writeData(data, len);
		}

		const char* sigval1 = (const char*) data;
		qint64 len_ret = len;
		long long sigval2 = static_cast<long long>(len_ret);

		long long callback_return_value = vtbl->writeData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_writeData(const char* data, long long len) {

		qint64 _ret = QTemporaryFile::writeData(data, static_cast<qint64>(len));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QTemporaryFile::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_readLineData(char* data, long long maxlen) {

		qint64 _ret = QTemporaryFile::readLineData(data, static_cast<qint64>(maxlen));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QTemporaryFile::reset();
		}


		bool callback_return_value = vtbl->reset(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_reset() {

		return QTemporaryFile::reset();

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QTemporaryFile::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_bytesAvailable() const {

		qint64 _ret = QTemporaryFile::bytesAvailable();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QTemporaryFile::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_bytesToWrite() const {

		qint64 _ret = QTemporaryFile::bytesToWrite();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QTemporaryFile::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_canReadLine() const {

		return QTemporaryFile::canReadLine();

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QTemporaryFile::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForReadyRead(int msecs) {

		return QTemporaryFile::waitForReadyRead(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QTemporaryFile::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForBytesWritten(int msecs) {

		return QTemporaryFile::waitForBytesWritten(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTemporaryFile::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QTemporaryFile::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTemporaryFile::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QTemporaryFile::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTemporaryFile::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QTemporaryFile::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTemporaryFile::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QTemporaryFile::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTemporaryFile::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QTemporaryFile::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTemporaryFile::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QTemporaryFile::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTemporaryFile::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QTemporaryFile::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QTemporaryFile_protectedbase_setOpenMode(void* self, int openMode);
	friend void QTemporaryFile_protectedbase_setErrorString(void* self, struct miqt_string errorString);
	friend QObject* QTemporaryFile_protectedbase_sender(const void* self);
	friend int QTemporaryFile_protectedbase_senderSignalIndex(const void* self);
	friend int QTemporaryFile_protectedbase_receivers(const void* self, const char* signal);
	friend bool QTemporaryFile_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QTemporaryFile* QTemporaryFile_new(struct QTemporaryFile_VTable* vtbl) {
	return new MiqtVirtualQTemporaryFile(vtbl);
}

QTemporaryFile* QTemporaryFile_new2(struct QTemporaryFile_VTable* vtbl, struct miqt_string templateName) {
	QString templateName_QString = QString::fromUtf8(templateName.data, templateName.len);
	return new MiqtVirtualQTemporaryFile(vtbl, templateName_QString);
}

QTemporaryFile* QTemporaryFile_new3(struct QTemporaryFile_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQTemporaryFile(vtbl, parent);
}

QTemporaryFile* QTemporaryFile_new4(struct QTemporaryFile_VTable* vtbl, struct miqt_string templateName, QObject* parent) {
	QString templateName_QString = QString::fromUtf8(templateName.data, templateName.len);
	return new MiqtVirtualQTemporaryFile(vtbl, templateName_QString, parent);
}

void QTemporaryFile_virtbase(QTemporaryFile* src, QFile** outptr_QFile) {
	*outptr_QFile = static_cast<QFile*>(src);
}

QMetaObject* QTemporaryFile_metaObject(const QTemporaryFile* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTemporaryFile_metacast(QTemporaryFile* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTemporaryFile_metacall(QTemporaryFile* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTemporaryFile_tr(const char* s) {
	QString _ret = QTemporaryFile::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTemporaryFile_trUtf8(const char* s) {
	QString _ret = QTemporaryFile::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QTemporaryFile_autoRemove(const QTemporaryFile* self) {
	return self->autoRemove();
}

void QTemporaryFile_setAutoRemove(QTemporaryFile* self, bool b) {
	self->setAutoRemove(b);
}

bool QTemporaryFile_open(QTemporaryFile* self) {
	return self->open();
}

struct miqt_string QTemporaryFile_fileName(const QTemporaryFile* self) {
	QString _ret = self->fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTemporaryFile_fileTemplate(const QTemporaryFile* self) {
	QString _ret = self->fileTemplate();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTemporaryFile_setFileTemplate(QTemporaryFile* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setFileTemplate(name_QString);
}

bool QTemporaryFile_rename(QTemporaryFile* self, struct miqt_string newName) {
	QString newName_QString = QString::fromUtf8(newName.data, newName.len);
	return self->rename(newName_QString);
}

QTemporaryFile* QTemporaryFile_createLocalFile(struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return QTemporaryFile::createLocalFile(fileName_QString);
}

QTemporaryFile* QTemporaryFile_createLocalFileWithFile(QFile* file) {
	return QTemporaryFile::createLocalFile(*file);
}

QTemporaryFile* QTemporaryFile_createNativeFile(struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return QTemporaryFile::createNativeFile(fileName_QString);
}

QTemporaryFile* QTemporaryFile_createNativeFileWithFile(QFile* file) {
	return QTemporaryFile::createNativeFile(*file);
}

struct miqt_string QTemporaryFile_tr2(const char* s, const char* c) {
	QString _ret = QTemporaryFile::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTemporaryFile_tr3(const char* s, const char* c, int n) {
	QString _ret = QTemporaryFile::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTemporaryFile_trUtf82(const char* s, const char* c) {
	QString _ret = QTemporaryFile::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTemporaryFile_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QTemporaryFile::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QTemporaryFile_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQTemporaryFile*)(self) )->virtualbase_metaObject();
}

void* QTemporaryFile_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQTemporaryFile*)(self) )->virtualbase_metacast(param1);
}

int QTemporaryFile_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQTemporaryFile*)(self) )->virtualbase_metacall(param1, param2, param3);
}

struct miqt_string QTemporaryFile_virtualbase_fileName(const void* self) {
	return ( (const MiqtVirtualQTemporaryFile*)(self) )->virtualbase_fileName();
}

bool QTemporaryFile_virtualbase_openWithFlags(void* self, int flags) {
	return ( (MiqtVirtualQTemporaryFile*)(self) )->virtualbase_openWithFlags(flags);
}

long long QTemporaryFile_virtualbase_size(const void* self) {
	return ( (const MiqtVirtualQTemporaryFile*)(self) )->virtualbase_size();
}

bool QTemporaryFile_virtualbase_resize(void* self, long long sz) {
	return ( (MiqtVirtualQTemporaryFile*)(self) )->virtualbase_resize(sz);
}

int QTemporaryFile_virtualbase_permissions(const void* self) {
	return ( (const MiqtVirtualQTemporaryFile*)(self) )->virtualbase_permissions();
}

bool QTemporaryFile_virtualbase_setPermissions(void* self, int permissionSpec) {
	return ( (MiqtVirtualQTemporaryFile*)(self) )->virtualbase_setPermissions(permissionSpec);
}

void QTemporaryFile_virtualbase_close(void* self) {
	( (MiqtVirtualQTemporaryFile*)(self) )->virtualbase_close();
}

bool QTemporaryFile_virtualbase_isSequential(const void* self) {
	return ( (const MiqtVirtualQTemporaryFile*)(self) )->virtualbase_isSequential();
}

long long QTemporaryFile_virtualbase_pos(const void* self) {
	return ( (const MiqtVirtualQTemporaryFile*)(self) )->virtualbase_pos();
}

bool QTemporaryFile_virtualbase_seek(void* self, long long offset) {
	return ( (MiqtVirtualQTemporaryFile*)(self) )->virtualbase_seek(offset);
}

bool QTemporaryFile_virtualbase_atEnd(const void* self) {
	return ( (const MiqtVirtualQTemporaryFile*)(self) )->virtualbase_atEnd();
}

long long QTemporaryFile_virtualbase_readData(void* self, char* data, long long maxlen) {
	return ( (MiqtVirtualQTemporaryFile*)(self) )->virtualbase_readData(data, maxlen);
}

long long QTemporaryFile_virtualbase_writeData(void* self, const char* data, long long len) {
	return ( (MiqtVirtualQTemporaryFile*)(self) )->virtualbase_writeData(data, len);
}

long long QTemporaryFile_virtualbase_readLineData(void* self, char* data, long long maxlen) {
	return ( (MiqtVirtualQTemporaryFile*)(self) )->virtualbase_readLineData(data, maxlen);
}

bool QTemporaryFile_virtualbase_reset(void* self) {
	return ( (MiqtVirtualQTemporaryFile*)(self) )->virtualbase_reset();
}

long long QTemporaryFile_virtualbase_bytesAvailable(const void* self) {
	return ( (const MiqtVirtualQTemporaryFile*)(self) )->virtualbase_bytesAvailable();
}

long long QTemporaryFile_virtualbase_bytesToWrite(const void* self) {
	return ( (const MiqtVirtualQTemporaryFile*)(self) )->virtualbase_bytesToWrite();
}

bool QTemporaryFile_virtualbase_canReadLine(const void* self) {
	return ( (const MiqtVirtualQTemporaryFile*)(self) )->virtualbase_canReadLine();
}

bool QTemporaryFile_virtualbase_waitForReadyRead(void* self, int msecs) {
	return ( (MiqtVirtualQTemporaryFile*)(self) )->virtualbase_waitForReadyRead(msecs);
}

bool QTemporaryFile_virtualbase_waitForBytesWritten(void* self, int msecs) {
	return ( (MiqtVirtualQTemporaryFile*)(self) )->virtualbase_waitForBytesWritten(msecs);
}

bool QTemporaryFile_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQTemporaryFile*)(self) )->virtualbase_event(event);
}

bool QTemporaryFile_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQTemporaryFile*)(self) )->virtualbase_eventFilter(watched, event);
}

void QTemporaryFile_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQTemporaryFile*)(self) )->virtualbase_timerEvent(event);
}

void QTemporaryFile_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQTemporaryFile*)(self) )->virtualbase_childEvent(event);
}

void QTemporaryFile_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQTemporaryFile*)(self) )->virtualbase_customEvent(event);
}

void QTemporaryFile_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQTemporaryFile*)(self) )->virtualbase_connectNotify(signal);
}

void QTemporaryFile_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQTemporaryFile*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QTemporaryFile_staticMetaObject() { return &QTemporaryFile::staticMetaObject; }
void QTemporaryFile_protectedbase_setOpenMode(void* self, int openMode) {
	MiqtVirtualQTemporaryFile* self_cast = static_cast<MiqtVirtualQTemporaryFile*>( (QTemporaryFile*)(self) );
	
	self_cast->setOpenMode(static_cast<MiqtVirtualQTemporaryFile::OpenMode>(openMode));

}

void QTemporaryFile_protectedbase_setErrorString(void* self, struct miqt_string errorString) {
	MiqtVirtualQTemporaryFile* self_cast = static_cast<MiqtVirtualQTemporaryFile*>( (QTemporaryFile*)(self) );
			QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);

	self_cast->setErrorString(errorString_QString);

}

QObject* QTemporaryFile_protectedbase_sender(const void* self) {
	MiqtVirtualQTemporaryFile* self_cast = static_cast<MiqtVirtualQTemporaryFile*>( (QTemporaryFile*)(self) );
	
	return self_cast->sender();

}

int QTemporaryFile_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQTemporaryFile* self_cast = static_cast<MiqtVirtualQTemporaryFile*>( (QTemporaryFile*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QTemporaryFile_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQTemporaryFile* self_cast = static_cast<MiqtVirtualQTemporaryFile*>( (QTemporaryFile*)(self) );
	
	return self_cast->receivers(signal);

}

bool QTemporaryFile_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQTemporaryFile* self_cast = static_cast<MiqtVirtualQTemporaryFile*>( (QTemporaryFile*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QTemporaryFile_delete(QTemporaryFile* self) {
	delete self;
}

