#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QFile>
#include <QFileDevice>
#include <QIODevice>
#include <QIODeviceBase>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qfile.h>
#include "gen_qfile.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQFile final : public QFile {
	struct QFile_VTable* vtbl;
public:

	MiqtVirtualQFile(struct QFile_VTable* vtbl): QFile(), vtbl(vtbl) {};
	MiqtVirtualQFile(struct QFile_VTable* vtbl, const QString& name): QFile(name), vtbl(vtbl) {};
	MiqtVirtualQFile(struct QFile_VTable* vtbl, QObject* parent): QFile(parent), vtbl(vtbl) {};
	MiqtVirtualQFile(struct QFile_VTable* vtbl, const QString& name, QObject* parent): QFile(name, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQFile() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QFile::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QFile::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QFile::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QFile::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QFile::qt_metacall(param1, param2, param3);
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

		return QFile::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QString fileName() const override {
		if (vtbl->fileName == 0) {
			return QFile::fileName();
		}


		struct miqt_string callback_return_value = vtbl->fileName(vtbl, this);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);

		return callback_return_value_QString;
	}

	// Wrapper to allow calling protected method
	struct miqt_string virtualbase_fileName() const {

		QString _ret = QFile::fileName();
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _b = _ret.toUtf8();
		struct miqt_string _ms;
		_ms.len = _b.length();
		_ms.data = static_cast<char*>(malloc(_ms.len));
		memcpy(_ms.data, _b.data(), _ms.len);
		return _ms;

	}

	// Subclass to allow providing a Go implementation
	virtual bool open(QIODeviceBase::OpenMode flags) override {
		if (vtbl->open == 0) {
			return QFile::open(flags);
		}

		QIODeviceBase::OpenMode flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		bool callback_return_value = vtbl->open(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_open(int flags) {

		return QFile::open(static_cast<QIODeviceBase::OpenMode>(flags));

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QFile::size();
		}


		long long callback_return_value = vtbl->size(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_size() const {

		qint64 _ret = QFile::size();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool resize(qint64 sz) override {
		if (vtbl->resize == 0) {
			return QFile::resize(sz);
		}

		qint64 sz_ret = sz;
		long long sigval1 = static_cast<long long>(sz_ret);

		bool callback_return_value = vtbl->resize(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_resize(long long sz) {

		return QFile::resize(static_cast<qint64>(sz));

	}

	// Subclass to allow providing a Go implementation
	virtual QFileDevice::Permissions permissions() const override {
		if (vtbl->permissions == 0) {
			return QFile::permissions();
		}


		int callback_return_value = vtbl->permissions(vtbl, this);

		return static_cast<QFileDevice::Permissions>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_permissions() const {

		QFileDevice::Permissions _ret = QFile::permissions();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool setPermissions(QFileDevice::Permissions permissionSpec) override {
		if (vtbl->setPermissions == 0) {
			return QFile::setPermissions(permissionSpec);
		}

		QFileDevice::Permissions permissionSpec_ret = permissionSpec;
		int sigval1 = static_cast<int>(permissionSpec_ret);

		bool callback_return_value = vtbl->setPermissions(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_setPermissions(int permissionSpec) {

		return QFile::setPermissions(static_cast<QFileDevice::Permissions>(permissionSpec));

	}

	// Subclass to allow providing a Go implementation
	virtual void close() override {
		if (vtbl->close == 0) {
			QFile::close();
			return;
		}


		vtbl->close(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_close() {

		QFile::close();

	}

	// Subclass to allow providing a Go implementation
	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QFile::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isSequential() const {

		return QFile::isSequential();

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QFile::pos();
		}


		long long callback_return_value = vtbl->pos(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_pos() const {

		qint64 _ret = QFile::pos();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool seek(qint64 offset) override {
		if (vtbl->seek == 0) {
			return QFile::seek(offset);
		}

		qint64 offset_ret = offset;
		long long sigval1 = static_cast<long long>(offset_ret);

		bool callback_return_value = vtbl->seek(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_seek(long long offset) {

		return QFile::seek(static_cast<qint64>(offset));

	}

	// Subclass to allow providing a Go implementation
	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QFile::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_atEnd() const {

		return QFile::atEnd();

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 readData(char* data, qint64 maxlen) override {
		if (vtbl->readData == 0) {
			return QFile::readData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_readData(char* data, long long maxlen) {

		qint64 _ret = QFile::readData(data, static_cast<qint64>(maxlen));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 writeData(const char* data, qint64 len) override {
		if (vtbl->writeData == 0) {
			return QFile::writeData(data, len);
		}

		const char* sigval1 = (const char*) data;
		qint64 len_ret = len;
		long long sigval2 = static_cast<long long>(len_ret);

		long long callback_return_value = vtbl->writeData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_writeData(const char* data, long long len) {

		qint64 _ret = QFile::writeData(data, static_cast<qint64>(len));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QFile::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_readLineData(char* data, long long maxlen) {

		qint64 _ret = QFile::readLineData(data, static_cast<qint64>(maxlen));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QFile::reset();
		}


		bool callback_return_value = vtbl->reset(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_reset() {

		return QFile::reset();

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QFile::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_bytesAvailable() const {

		qint64 _ret = QFile::bytesAvailable();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QFile::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_bytesToWrite() const {

		qint64 _ret = QFile::bytesToWrite();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QFile::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_canReadLine() const {

		return QFile::canReadLine();

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QFile::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForReadyRead(int msecs) {

		return QFile::waitForReadyRead(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QFile::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForBytesWritten(int msecs) {

		return QFile::waitForBytesWritten(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 skipData(qint64 maxSize) override {
		if (vtbl->skipData == 0) {
			return QFile::skipData(maxSize);
		}

		qint64 maxSize_ret = maxSize;
		long long sigval1 = static_cast<long long>(maxSize_ret);

		long long callback_return_value = vtbl->skipData(vtbl, this, sigval1);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_skipData(long long maxSize) {

		qint64 _ret = QFile::skipData(static_cast<qint64>(maxSize));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QFile::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QFile::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QFile::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QFile::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QFile::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QFile::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QFile::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QFile::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QFile::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QFile::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QFile::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QFile::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QFile::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QFile::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QFile_protectedbase_setOpenMode(void* self, int openMode);
	friend void QFile_protectedbase_setErrorString(void* self, struct miqt_string errorString);
	friend QObject* QFile_protectedbase_sender(const void* self);
	friend int QFile_protectedbase_senderSignalIndex(const void* self);
	friend int QFile_protectedbase_receivers(const void* self, const char* signal);
	friend bool QFile_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QFile* QFile_new(struct QFile_VTable* vtbl) {
	return new MiqtVirtualQFile(vtbl);
}

QFile* QFile_new2(struct QFile_VTable* vtbl, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return new MiqtVirtualQFile(vtbl, name_QString);
}

QFile* QFile_new3(struct QFile_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQFile(vtbl, parent);
}

QFile* QFile_new4(struct QFile_VTable* vtbl, struct miqt_string name, QObject* parent) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return new MiqtVirtualQFile(vtbl, name_QString, parent);
}

void QFile_virtbase(QFile* src, QFileDevice** outptr_QFileDevice) {
	*outptr_QFileDevice = static_cast<QFileDevice*>(src);
}

QMetaObject* QFile_metaObject(const QFile* self) {
	return (QMetaObject*) self->metaObject();
}

void* QFile_metacast(QFile* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QFile_metacall(QFile* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QFile_tr(const char* s) {
	QString _ret = QFile::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFile_fileName(const QFile* self) {
	QString _ret = self->fileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QFile_setFileName(QFile* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setFileName(name_QString);
}

struct miqt_string QFile_encodeName(struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	QByteArray _qb = QFile::encodeName(fileName_QString);
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct miqt_string QFile_decodeName(struct miqt_string localFileName) {
	QByteArray localFileName_QByteArray(localFileName.data, localFileName.len);
	QString _ret = QFile::decodeName(localFileName_QByteArray);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFile_decodeNameWithLocalFileName(const char* localFileName) {
	QString _ret = QFile::decodeName(localFileName);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QFile_exists(const QFile* self) {
	return self->exists();
}

bool QFile_existsWithFileName(struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return QFile::exists(fileName_QString);
}

struct miqt_string QFile_symLinkTarget(const QFile* self) {
	QString _ret = self->symLinkTarget();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFile_symLinkTargetWithFileName(struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	QString _ret = QFile::symLinkTarget(fileName_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QFile_remove(QFile* self) {
	return self->remove();
}

bool QFile_removeWithFileName(struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return QFile::remove(fileName_QString);
}

bool QFile_moveToTrash(QFile* self) {
	return self->moveToTrash();
}

bool QFile_moveToTrashWithFileName(struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return QFile::moveToTrash(fileName_QString);
}

bool QFile_rename(QFile* self, struct miqt_string newName) {
	QString newName_QString = QString::fromUtf8(newName.data, newName.len);
	return self->rename(newName_QString);
}

bool QFile_rename2(struct miqt_string oldName, struct miqt_string newName) {
	QString oldName_QString = QString::fromUtf8(oldName.data, oldName.len);
	QString newName_QString = QString::fromUtf8(newName.data, newName.len);
	return QFile::rename(oldName_QString, newName_QString);
}

bool QFile_link(QFile* self, struct miqt_string newName) {
	QString newName_QString = QString::fromUtf8(newName.data, newName.len);
	return self->link(newName_QString);
}

bool QFile_link2(struct miqt_string fileName, struct miqt_string newName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	QString newName_QString = QString::fromUtf8(newName.data, newName.len);
	return QFile::link(fileName_QString, newName_QString);
}

bool QFile_copy(QFile* self, struct miqt_string newName) {
	QString newName_QString = QString::fromUtf8(newName.data, newName.len);
	return self->copy(newName_QString);
}

bool QFile_copy2(struct miqt_string fileName, struct miqt_string newName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	QString newName_QString = QString::fromUtf8(newName.data, newName.len);
	return QFile::copy(fileName_QString, newName_QString);
}

bool QFile_open(QFile* self, int flags) {
	return self->open(static_cast<QIODeviceBase::OpenMode>(flags));
}

bool QFile_open2(QFile* self, int flags, int permissions) {
	return self->open(static_cast<QIODeviceBase::OpenMode>(flags), static_cast<QFileDevice::Permissions>(permissions));
}

bool QFile_open4(QFile* self, int fd, int ioFlags) {
	return self->open(static_cast<int>(fd), static_cast<QIODeviceBase::OpenMode>(ioFlags));
}

long long QFile_size(const QFile* self) {
	qint64 _ret = self->size();
	return static_cast<long long>(_ret);
}

bool QFile_resize(QFile* self, long long sz) {
	return self->resize(static_cast<qint64>(sz));
}

bool QFile_resize2(struct miqt_string filename, long long sz) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return QFile::resize(filename_QString, static_cast<qint64>(sz));
}

int QFile_permissions(const QFile* self) {
	QFileDevice::Permissions _ret = self->permissions();
	return static_cast<int>(_ret);
}

int QFile_permissionsWithFilename(struct miqt_string filename) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	QFileDevice::Permissions _ret = QFile::permissions(filename_QString);
	return static_cast<int>(_ret);
}

bool QFile_setPermissions(QFile* self, int permissionSpec) {
	return self->setPermissions(static_cast<QFileDevice::Permissions>(permissionSpec));
}

bool QFile_setPermissions2(struct miqt_string filename, int permissionSpec) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return QFile::setPermissions(filename_QString, static_cast<QFileDevice::Permissions>(permissionSpec));
}

struct miqt_string QFile_tr2(const char* s, const char* c) {
	QString _ret = QFile::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFile_tr3(const char* s, const char* c, int n) {
	QString _ret = QFile::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QFile_open33(QFile* self, int fd, int ioFlags, int handleFlags) {
	return self->open(static_cast<int>(fd), static_cast<QIODeviceBase::OpenMode>(ioFlags), static_cast<QFileDevice::FileHandleFlags>(handleFlags));
}

QMetaObject* QFile_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQFile*)(self) )->virtualbase_metaObject();
}

void* QFile_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQFile*)(self) )->virtualbase_metacast(param1);
}

int QFile_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQFile*)(self) )->virtualbase_metacall(param1, param2, param3);
}

struct miqt_string QFile_virtualbase_fileName(const void* self) {
	return ( (const MiqtVirtualQFile*)(self) )->virtualbase_fileName();
}

bool QFile_virtualbase_open(void* self, int flags) {
	return ( (MiqtVirtualQFile*)(self) )->virtualbase_open(flags);
}

long long QFile_virtualbase_size(const void* self) {
	return ( (const MiqtVirtualQFile*)(self) )->virtualbase_size();
}

bool QFile_virtualbase_resize(void* self, long long sz) {
	return ( (MiqtVirtualQFile*)(self) )->virtualbase_resize(sz);
}

int QFile_virtualbase_permissions(const void* self) {
	return ( (const MiqtVirtualQFile*)(self) )->virtualbase_permissions();
}

bool QFile_virtualbase_setPermissions(void* self, int permissionSpec) {
	return ( (MiqtVirtualQFile*)(self) )->virtualbase_setPermissions(permissionSpec);
}

void QFile_virtualbase_close(void* self) {
	( (MiqtVirtualQFile*)(self) )->virtualbase_close();
}

bool QFile_virtualbase_isSequential(const void* self) {
	return ( (const MiqtVirtualQFile*)(self) )->virtualbase_isSequential();
}

long long QFile_virtualbase_pos(const void* self) {
	return ( (const MiqtVirtualQFile*)(self) )->virtualbase_pos();
}

bool QFile_virtualbase_seek(void* self, long long offset) {
	return ( (MiqtVirtualQFile*)(self) )->virtualbase_seek(offset);
}

bool QFile_virtualbase_atEnd(const void* self) {
	return ( (const MiqtVirtualQFile*)(self) )->virtualbase_atEnd();
}

long long QFile_virtualbase_readData(void* self, char* data, long long maxlen) {
	return ( (MiqtVirtualQFile*)(self) )->virtualbase_readData(data, maxlen);
}

long long QFile_virtualbase_writeData(void* self, const char* data, long long len) {
	return ( (MiqtVirtualQFile*)(self) )->virtualbase_writeData(data, len);
}

long long QFile_virtualbase_readLineData(void* self, char* data, long long maxlen) {
	return ( (MiqtVirtualQFile*)(self) )->virtualbase_readLineData(data, maxlen);
}

bool QFile_virtualbase_reset(void* self) {
	return ( (MiqtVirtualQFile*)(self) )->virtualbase_reset();
}

long long QFile_virtualbase_bytesAvailable(const void* self) {
	return ( (const MiqtVirtualQFile*)(self) )->virtualbase_bytesAvailable();
}

long long QFile_virtualbase_bytesToWrite(const void* self) {
	return ( (const MiqtVirtualQFile*)(self) )->virtualbase_bytesToWrite();
}

bool QFile_virtualbase_canReadLine(const void* self) {
	return ( (const MiqtVirtualQFile*)(self) )->virtualbase_canReadLine();
}

bool QFile_virtualbase_waitForReadyRead(void* self, int msecs) {
	return ( (MiqtVirtualQFile*)(self) )->virtualbase_waitForReadyRead(msecs);
}

bool QFile_virtualbase_waitForBytesWritten(void* self, int msecs) {
	return ( (MiqtVirtualQFile*)(self) )->virtualbase_waitForBytesWritten(msecs);
}

long long QFile_virtualbase_skipData(void* self, long long maxSize) {
	return ( (MiqtVirtualQFile*)(self) )->virtualbase_skipData(maxSize);
}

bool QFile_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQFile*)(self) )->virtualbase_event(event);
}

bool QFile_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQFile*)(self) )->virtualbase_eventFilter(watched, event);
}

void QFile_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQFile*)(self) )->virtualbase_timerEvent(event);
}

void QFile_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQFile*)(self) )->virtualbase_childEvent(event);
}

void QFile_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQFile*)(self) )->virtualbase_customEvent(event);
}

void QFile_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQFile*)(self) )->virtualbase_connectNotify(signal);
}

void QFile_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQFile*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QFile_staticMetaObject() { return &QFile::staticMetaObject; }
void QFile_protectedbase_setOpenMode(void* self, int openMode) {
	MiqtVirtualQFile* self_cast = static_cast<MiqtVirtualQFile*>( (QFile*)(self) );
	
	self_cast->setOpenMode(static_cast<MiqtVirtualQFile::OpenMode>(openMode));

}

void QFile_protectedbase_setErrorString(void* self, struct miqt_string errorString) {
	MiqtVirtualQFile* self_cast = static_cast<MiqtVirtualQFile*>( (QFile*)(self) );
			QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);

	self_cast->setErrorString(errorString_QString);

}

QObject* QFile_protectedbase_sender(const void* self) {
	MiqtVirtualQFile* self_cast = static_cast<MiqtVirtualQFile*>( (QFile*)(self) );
	
	return self_cast->sender();

}

int QFile_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQFile* self_cast = static_cast<MiqtVirtualQFile*>( (QFile*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QFile_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQFile* self_cast = static_cast<MiqtVirtualQFile*>( (QFile*)(self) );
	
	return self_cast->receivers(signal);

}

bool QFile_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQFile* self_cast = static_cast<MiqtVirtualQFile*>( (QFile*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QFile_delete(QFile* self) {
	delete self;
}

