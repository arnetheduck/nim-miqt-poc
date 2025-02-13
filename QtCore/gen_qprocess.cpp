#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QProcess>
#include <QProcessEnvironment>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qprocess.h>
#include "gen_qprocess.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QProcess_finished(intptr_t, int);
void miqt_exec_callback_QProcess_finished_release(intptr_t);
void miqt_exec_callback_QProcess_finished2(intptr_t, int, int);
void miqt_exec_callback_QProcess_finished2_release(intptr_t);
void miqt_exec_callback_QProcess_errorWithError(intptr_t, int);
void miqt_exec_callback_QProcess_errorWithError_release(intptr_t);
void miqt_exec_callback_QProcess_errorOccurred(intptr_t, int);
void miqt_exec_callback_QProcess_errorOccurred_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

QProcessEnvironment* QProcessEnvironment_new() {
	return new QProcessEnvironment();
}

QProcessEnvironment* QProcessEnvironment_new2(QProcessEnvironment* other) {
	return new QProcessEnvironment(*other);
}

void QProcessEnvironment_operatorAssign(QProcessEnvironment* self, QProcessEnvironment* other) {
	self->operator=(*other);
}

void QProcessEnvironment_swap(QProcessEnvironment* self, QProcessEnvironment* other) {
	self->swap(*other);
}

bool QProcessEnvironment_operatorEqual(const QProcessEnvironment* self, QProcessEnvironment* other) {
	return (*self == *other);
}

bool QProcessEnvironment_operatorNotEqual(const QProcessEnvironment* self, QProcessEnvironment* other) {
	return (*self != *other);
}

bool QProcessEnvironment_isEmpty(const QProcessEnvironment* self) {
	return self->isEmpty();
}

void QProcessEnvironment_clear(QProcessEnvironment* self) {
	self->clear();
}

bool QProcessEnvironment_contains(const QProcessEnvironment* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	return self->contains(name_QString);
}

void QProcessEnvironment_insert(QProcessEnvironment* self, struct miqt_string name, struct miqt_string value) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString value_QString = QString::fromUtf8(value.data, value.len);
	self->insert(name_QString, value_QString);
}

void QProcessEnvironment_remove(QProcessEnvironment* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->remove(name_QString);
}

struct miqt_string QProcessEnvironment_value(const QProcessEnvironment* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString _ret = self->value(name_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of struct miqt_string */  QProcessEnvironment_toStringList(const QProcessEnvironment* self) {
	QStringList _ret = self->toStringList();
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

struct miqt_array /* of struct miqt_string */  QProcessEnvironment_keys(const QProcessEnvironment* self) {
	QStringList _ret = self->keys();
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

void QProcessEnvironment_insertWithQProcessEnvironment(QProcessEnvironment* self, QProcessEnvironment* e) {
	self->insert(*e);
}

QProcessEnvironment* QProcessEnvironment_systemEnvironment() {
	return new QProcessEnvironment(QProcessEnvironment::systemEnvironment());
}

struct miqt_string QProcessEnvironment_value2(const QProcessEnvironment* self, struct miqt_string name, struct miqt_string defaultValue) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString defaultValue_QString = QString::fromUtf8(defaultValue.data, defaultValue.len);
	QString _ret = self->value(name_QString, defaultValue_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QProcessEnvironment_delete(QProcessEnvironment* self) {
	delete self;
}

class MiqtVirtualQProcess final : public QProcess {
	struct QProcess_VTable* vtbl;
public:

	MiqtVirtualQProcess(struct QProcess_VTable* vtbl): QProcess(), vtbl(vtbl) {};
	MiqtVirtualQProcess(struct QProcess_VTable* vtbl, QObject* parent): QProcess(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQProcess() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QProcess::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QProcess::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QProcess::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QProcess::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QProcess::qt_metacall(param1, param2, param3);
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

		return QProcess::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool open(QIODevice::OpenMode mode) override {
		if (vtbl->open == 0) {
			return QProcess::open(mode);
		}

		QIODevice::OpenMode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);

		bool callback_return_value = vtbl->open(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_open(int mode) {

		return QProcess::open(static_cast<QIODevice::OpenMode>(mode));

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForReadyRead(int msecs) override {
		if (vtbl->waitForReadyRead == 0) {
			return QProcess::waitForReadyRead(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForReadyRead(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForReadyRead(int msecs) {

		return QProcess::waitForReadyRead(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual bool waitForBytesWritten(int msecs) override {
		if (vtbl->waitForBytesWritten == 0) {
			return QProcess::waitForBytesWritten(msecs);
		}

		int sigval1 = msecs;

		bool callback_return_value = vtbl->waitForBytesWritten(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_waitForBytesWritten(int msecs) {

		return QProcess::waitForBytesWritten(static_cast<int>(msecs));

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesAvailable() const override {
		if (vtbl->bytesAvailable == 0) {
			return QProcess::bytesAvailable();
		}


		long long callback_return_value = vtbl->bytesAvailable(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_bytesAvailable() const {

		qint64 _ret = QProcess::bytesAvailable();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 bytesToWrite() const override {
		if (vtbl->bytesToWrite == 0) {
			return QProcess::bytesToWrite();
		}


		long long callback_return_value = vtbl->bytesToWrite(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_bytesToWrite() const {

		qint64 _ret = QProcess::bytesToWrite();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isSequential() const override {
		if (vtbl->isSequential == 0) {
			return QProcess::isSequential();
		}


		bool callback_return_value = vtbl->isSequential(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isSequential() const {

		return QProcess::isSequential();

	}

	// Subclass to allow providing a Go implementation
	virtual bool canReadLine() const override {
		if (vtbl->canReadLine == 0) {
			return QProcess::canReadLine();
		}


		bool callback_return_value = vtbl->canReadLine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_canReadLine() const {

		return QProcess::canReadLine();

	}

	// Subclass to allow providing a Go implementation
	virtual void close() override {
		if (vtbl->close == 0) {
			QProcess::close();
			return;
		}


		vtbl->close(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_close() {

		QProcess::close();

	}

	// Subclass to allow providing a Go implementation
	virtual bool atEnd() const override {
		if (vtbl->atEnd == 0) {
			return QProcess::atEnd();
		}


		bool callback_return_value = vtbl->atEnd(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_atEnd() const {

		return QProcess::atEnd();

	}

	// Subclass to allow providing a Go implementation
	virtual void setupChildProcess() override {
		if (vtbl->setupChildProcess == 0) {
			QProcess::setupChildProcess();
			return;
		}


		vtbl->setupChildProcess(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setupChildProcess() {

		QProcess::setupChildProcess();

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 readData(char* data, qint64 maxlen) override {
		if (vtbl->readData == 0) {
			return QProcess::readData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_readData(char* data, long long maxlen) {

		qint64 _ret = QProcess::readData(data, static_cast<qint64>(maxlen));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 writeData(const char* data, qint64 len) override {
		if (vtbl->writeData == 0) {
			return QProcess::writeData(data, len);
		}

		const char* sigval1 = (const char*) data;
		qint64 len_ret = len;
		long long sigval2 = static_cast<long long>(len_ret);

		long long callback_return_value = vtbl->writeData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_writeData(const char* data, long long len) {

		qint64 _ret = QProcess::writeData(data, static_cast<qint64>(len));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 pos() const override {
		if (vtbl->pos == 0) {
			return QProcess::pos();
		}


		long long callback_return_value = vtbl->pos(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_pos() const {

		qint64 _ret = QProcess::pos();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 size() const override {
		if (vtbl->size == 0) {
			return QProcess::size();
		}


		long long callback_return_value = vtbl->size(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_size() const {

		qint64 _ret = QProcess::size();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool seek(qint64 pos) override {
		if (vtbl->seek == 0) {
			return QProcess::seek(pos);
		}

		qint64 pos_ret = pos;
		long long sigval1 = static_cast<long long>(pos_ret);

		bool callback_return_value = vtbl->seek(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_seek(long long pos) {

		return QProcess::seek(static_cast<qint64>(pos));

	}

	// Subclass to allow providing a Go implementation
	virtual bool reset() override {
		if (vtbl->reset == 0) {
			return QProcess::reset();
		}


		bool callback_return_value = vtbl->reset(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_reset() {

		return QProcess::reset();

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 readLineData(char* data, qint64 maxlen) override {
		if (vtbl->readLineData == 0) {
			return QProcess::readLineData(data, maxlen);
		}

		char* sigval1 = data;
		qint64 maxlen_ret = maxlen;
		long long sigval2 = static_cast<long long>(maxlen_ret);

		long long callback_return_value = vtbl->readLineData(vtbl, this, sigval1, sigval2);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_readLineData(char* data, long long maxlen) {

		qint64 _ret = QProcess::readLineData(data, static_cast<qint64>(maxlen));
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QProcess::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QProcess::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QProcess::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QProcess::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QProcess::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QProcess::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QProcess::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QProcess::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QProcess::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QProcess::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QProcess::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QProcess::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QProcess::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QProcess::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QProcess_protectedbase_setProcessState(void* self, int state);
	friend void QProcess_protectedbase_setOpenMode(void* self, int openMode);
	friend void QProcess_protectedbase_setErrorString(void* self, struct miqt_string errorString);
	friend QObject* QProcess_protectedbase_sender(const void* self);
	friend int QProcess_protectedbase_senderSignalIndex(const void* self);
	friend int QProcess_protectedbase_receivers(const void* self, const char* signal);
	friend bool QProcess_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QProcess* QProcess_new(struct QProcess_VTable* vtbl) {
	return new MiqtVirtualQProcess(vtbl);
}

QProcess* QProcess_new2(struct QProcess_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQProcess(vtbl, parent);
}

void QProcess_virtbase(QProcess* src, QIODevice** outptr_QIODevice) {
	*outptr_QIODevice = static_cast<QIODevice*>(src);
}

QMetaObject* QProcess_metaObject(const QProcess* self) {
	return (QMetaObject*) self->metaObject();
}

void* QProcess_metacast(QProcess* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QProcess_metacall(QProcess* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QProcess_tr(const char* s) {
	QString _ret = QProcess::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QProcess_trUtf8(const char* s) {
	QString _ret = QProcess::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QProcess_start(QProcess* self, struct miqt_string program, struct miqt_array /* of struct miqt_string */  arguments) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	QStringList arguments_QList;
	arguments_QList.reserve(arguments.len);
	struct miqt_string* arguments_arr = static_cast<struct miqt_string*>(arguments.data);
	for(size_t i = 0; i < arguments.len; ++i) {
		QString arguments_arr_i_QString = QString::fromUtf8(arguments_arr[i].data, arguments_arr[i].len);
		arguments_QList.push_back(arguments_arr_i_QString);
	}
	self->start(program_QString, arguments_QList);
}

void QProcess_startWithCommand(QProcess* self, struct miqt_string command) {
	QString command_QString = QString::fromUtf8(command.data, command.len);
	self->start(command_QString);
}

void QProcess_start2(QProcess* self) {
	self->start();
}

bool QProcess_startDetached(QProcess* self) {
	return self->startDetached();
}

bool QProcess_open(QProcess* self, int mode) {
	return self->open(static_cast<QIODevice::OpenMode>(mode));
}

struct miqt_string QProcess_program(const QProcess* self) {
	QString _ret = self->program();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QProcess_setProgram(QProcess* self, struct miqt_string program) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	self->setProgram(program_QString);
}

struct miqt_array /* of struct miqt_string */  QProcess_arguments(const QProcess* self) {
	QStringList _ret = self->arguments();
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

void QProcess_setArguments(QProcess* self, struct miqt_array /* of struct miqt_string */  arguments) {
	QStringList arguments_QList;
	arguments_QList.reserve(arguments.len);
	struct miqt_string* arguments_arr = static_cast<struct miqt_string*>(arguments.data);
	for(size_t i = 0; i < arguments.len; ++i) {
		QString arguments_arr_i_QString = QString::fromUtf8(arguments_arr[i].data, arguments_arr[i].len);
		arguments_QList.push_back(arguments_arr_i_QString);
	}
	self->setArguments(arguments_QList);
}

int QProcess_readChannelMode(const QProcess* self) {
	QProcess::ProcessChannelMode _ret = self->readChannelMode();
	return static_cast<int>(_ret);
}

void QProcess_setReadChannelMode(QProcess* self, int mode) {
	self->setReadChannelMode(static_cast<QProcess::ProcessChannelMode>(mode));
}

int QProcess_processChannelMode(const QProcess* self) {
	QProcess::ProcessChannelMode _ret = self->processChannelMode();
	return static_cast<int>(_ret);
}

void QProcess_setProcessChannelMode(QProcess* self, int mode) {
	self->setProcessChannelMode(static_cast<QProcess::ProcessChannelMode>(mode));
}

int QProcess_inputChannelMode(const QProcess* self) {
	QProcess::InputChannelMode _ret = self->inputChannelMode();
	return static_cast<int>(_ret);
}

void QProcess_setInputChannelMode(QProcess* self, int mode) {
	self->setInputChannelMode(static_cast<QProcess::InputChannelMode>(mode));
}

int QProcess_readChannel(const QProcess* self) {
	QProcess::ProcessChannel _ret = self->readChannel();
	return static_cast<int>(_ret);
}

void QProcess_setReadChannel(QProcess* self, int channel) {
	self->setReadChannel(static_cast<QProcess::ProcessChannel>(channel));
}

void QProcess_closeReadChannel(QProcess* self, int channel) {
	self->closeReadChannel(static_cast<QProcess::ProcessChannel>(channel));
}

void QProcess_closeWriteChannel(QProcess* self) {
	self->closeWriteChannel();
}

void QProcess_setStandardInputFile(QProcess* self, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setStandardInputFile(fileName_QString);
}

void QProcess_setStandardOutputFile(QProcess* self, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setStandardOutputFile(fileName_QString);
}

void QProcess_setStandardErrorFile(QProcess* self, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setStandardErrorFile(fileName_QString);
}

void QProcess_setStandardOutputProcess(QProcess* self, QProcess* destination) {
	self->setStandardOutputProcess(destination);
}

struct miqt_string QProcess_workingDirectory(const QProcess* self) {
	QString _ret = self->workingDirectory();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QProcess_setWorkingDirectory(QProcess* self, struct miqt_string dir) {
	QString dir_QString = QString::fromUtf8(dir.data, dir.len);
	self->setWorkingDirectory(dir_QString);
}

void QProcess_setEnvironment(QProcess* self, struct miqt_array /* of struct miqt_string */  environment) {
	QStringList environment_QList;
	environment_QList.reserve(environment.len);
	struct miqt_string* environment_arr = static_cast<struct miqt_string*>(environment.data);
	for(size_t i = 0; i < environment.len; ++i) {
		QString environment_arr_i_QString = QString::fromUtf8(environment_arr[i].data, environment_arr[i].len);
		environment_QList.push_back(environment_arr_i_QString);
	}
	self->setEnvironment(environment_QList);
}

struct miqt_array /* of struct miqt_string */  QProcess_environment(const QProcess* self) {
	QStringList _ret = self->environment();
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

void QProcess_setProcessEnvironment(QProcess* self, QProcessEnvironment* environment) {
	self->setProcessEnvironment(*environment);
}

QProcessEnvironment* QProcess_processEnvironment(const QProcess* self) {
	return new QProcessEnvironment(self->processEnvironment());
}

int QProcess_error(const QProcess* self) {
	QProcess::ProcessError _ret = self->error();
	return static_cast<int>(_ret);
}

int QProcess_state(const QProcess* self) {
	QProcess::ProcessState _ret = self->state();
	return static_cast<int>(_ret);
}

long long QProcess_pid(const QProcess* self) {
#ifdef Q_OS_LINUX
	Q_PID _ret = self->pid();
	return static_cast<long long>(_ret);
#else
	long long _ret_invalidOS;
	return _ret_invalidOS;
#endif
}

long long QProcess_processId(const QProcess* self) {
	qint64 _ret = self->processId();
	return static_cast<long long>(_ret);
}

bool QProcess_waitForStarted(QProcess* self) {
	return self->waitForStarted();
}

bool QProcess_waitForReadyRead(QProcess* self, int msecs) {
	return self->waitForReadyRead(static_cast<int>(msecs));
}

bool QProcess_waitForBytesWritten(QProcess* self, int msecs) {
	return self->waitForBytesWritten(static_cast<int>(msecs));
}

bool QProcess_waitForFinished(QProcess* self) {
	return self->waitForFinished();
}

struct miqt_string QProcess_readAllStandardOutput(QProcess* self) {
	QByteArray _qb = self->readAllStandardOutput();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

struct miqt_string QProcess_readAllStandardError(QProcess* self) {
	QByteArray _qb = self->readAllStandardError();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

int QProcess_exitCode(const QProcess* self) {
	return self->exitCode();
}

int QProcess_exitStatus(const QProcess* self) {
	QProcess::ExitStatus _ret = self->exitStatus();
	return static_cast<int>(_ret);
}

long long QProcess_bytesAvailable(const QProcess* self) {
	qint64 _ret = self->bytesAvailable();
	return static_cast<long long>(_ret);
}

long long QProcess_bytesToWrite(const QProcess* self) {
	qint64 _ret = self->bytesToWrite();
	return static_cast<long long>(_ret);
}

bool QProcess_isSequential(const QProcess* self) {
	return self->isSequential();
}

bool QProcess_canReadLine(const QProcess* self) {
	return self->canReadLine();
}

void QProcess_close(QProcess* self) {
	self->close();
}

bool QProcess_atEnd(const QProcess* self) {
	return self->atEnd();
}

int QProcess_execute(struct miqt_string program, struct miqt_array /* of struct miqt_string */  arguments) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	QStringList arguments_QList;
	arguments_QList.reserve(arguments.len);
	struct miqt_string* arguments_arr = static_cast<struct miqt_string*>(arguments.data);
	for(size_t i = 0; i < arguments.len; ++i) {
		QString arguments_arr_i_QString = QString::fromUtf8(arguments_arr[i].data, arguments_arr[i].len);
		arguments_QList.push_back(arguments_arr_i_QString);
	}
	return QProcess::execute(program_QString, arguments_QList);
}

int QProcess_executeWithCommand(struct miqt_string command) {
	QString command_QString = QString::fromUtf8(command.data, command.len);
	return QProcess::execute(command_QString);
}

bool QProcess_startDetached2(struct miqt_string program, struct miqt_array /* of struct miqt_string */  arguments, struct miqt_string workingDirectory) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	QStringList arguments_QList;
	arguments_QList.reserve(arguments.len);
	struct miqt_string* arguments_arr = static_cast<struct miqt_string*>(arguments.data);
	for(size_t i = 0; i < arguments.len; ++i) {
		QString arguments_arr_i_QString = QString::fromUtf8(arguments_arr[i].data, arguments_arr[i].len);
		arguments_QList.push_back(arguments_arr_i_QString);
	}
	QString workingDirectory_QString = QString::fromUtf8(workingDirectory.data, workingDirectory.len);
	return QProcess::startDetached(program_QString, arguments_QList, workingDirectory_QString);
}

bool QProcess_startDetached3(struct miqt_string program, struct miqt_array /* of struct miqt_string */  arguments) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	QStringList arguments_QList;
	arguments_QList.reserve(arguments.len);
	struct miqt_string* arguments_arr = static_cast<struct miqt_string*>(arguments.data);
	for(size_t i = 0; i < arguments.len; ++i) {
		QString arguments_arr_i_QString = QString::fromUtf8(arguments_arr[i].data, arguments_arr[i].len);
		arguments_QList.push_back(arguments_arr_i_QString);
	}
	return QProcess::startDetached(program_QString, arguments_QList);
}

bool QProcess_startDetachedWithCommand(struct miqt_string command) {
	QString command_QString = QString::fromUtf8(command.data, command.len);
	return QProcess::startDetached(command_QString);
}

struct miqt_array /* of struct miqt_string */  QProcess_systemEnvironment() {
	QStringList _ret = QProcess::systemEnvironment();
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

struct miqt_string QProcess_nullDevice() {
	QString _ret = QProcess::nullDevice();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QProcess_terminate(QProcess* self) {
	self->terminate();
}

void QProcess_kill(QProcess* self) {
	self->kill();
}

void QProcess_finished(QProcess* self, int exitCode) {
	self->finished(static_cast<int>(exitCode));
}

void QProcess_connect_finished(QProcess* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(int exitCode) {
			int sigval1 = exitCode;
			miqt_exec_callback_QProcess_finished(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QProcess_finished_release(slot); }
	};
	MiqtVirtualQProcess::connect(self, static_cast<void (QProcess::*)(int)>(&QProcess::finished), self, caller{slot});
}

void QProcess_finished2(QProcess* self, int exitCode, int exitStatus) {
	self->finished(static_cast<int>(exitCode), static_cast<QProcess::ExitStatus>(exitStatus));
}

void QProcess_connect_finished2(QProcess* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(int exitCode, QProcess::ExitStatus exitStatus) {
			int sigval1 = exitCode;
			QProcess::ExitStatus exitStatus_ret = exitStatus;
			int sigval2 = static_cast<int>(exitStatus_ret);
			miqt_exec_callback_QProcess_finished2(slot, sigval1, sigval2);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QProcess_finished2_release(slot); }
	};
	MiqtVirtualQProcess::connect(self, static_cast<void (QProcess::*)(int, QProcess::ExitStatus)>(&QProcess::finished), self, caller{slot});
}

void QProcess_errorWithError(QProcess* self, int error) {
	self->error(static_cast<QProcess::ProcessError>(error));
}

void QProcess_connect_errorWithError(QProcess* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QProcess::ProcessError error) {
			QProcess::ProcessError error_ret = error;
			int sigval1 = static_cast<int>(error_ret);
			miqt_exec_callback_QProcess_errorWithError(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QProcess_errorWithError_release(slot); }
	};
	MiqtVirtualQProcess::connect(self, static_cast<void (QProcess::*)(QProcess::ProcessError)>(&QProcess::error), self, caller{slot});
}

void QProcess_errorOccurred(QProcess* self, int error) {
	self->errorOccurred(static_cast<QProcess::ProcessError>(error));
}

void QProcess_connect_errorOccurred(QProcess* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QProcess::ProcessError error) {
			QProcess::ProcessError error_ret = error;
			int sigval1 = static_cast<int>(error_ret);
			miqt_exec_callback_QProcess_errorOccurred(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QProcess_errorOccurred_release(slot); }
	};
	MiqtVirtualQProcess::connect(self, static_cast<void (QProcess::*)(QProcess::ProcessError)>(&QProcess::errorOccurred), self, caller{slot});
}

struct miqt_string QProcess_tr2(const char* s, const char* c) {
	QString _ret = QProcess::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QProcess_tr3(const char* s, const char* c, int n) {
	QString _ret = QProcess::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QProcess_trUtf82(const char* s, const char* c) {
	QString _ret = QProcess::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QProcess_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QProcess::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QProcess_start3(QProcess* self, struct miqt_string program, struct miqt_array /* of struct miqt_string */  arguments, int mode) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	QStringList arguments_QList;
	arguments_QList.reserve(arguments.len);
	struct miqt_string* arguments_arr = static_cast<struct miqt_string*>(arguments.data);
	for(size_t i = 0; i < arguments.len; ++i) {
		QString arguments_arr_i_QString = QString::fromUtf8(arguments_arr[i].data, arguments_arr[i].len);
		arguments_QList.push_back(arguments_arr_i_QString);
	}
	self->start(program_QString, arguments_QList, static_cast<QIODevice::OpenMode>(mode));
}

void QProcess_start22(QProcess* self, struct miqt_string command, int mode) {
	QString command_QString = QString::fromUtf8(command.data, command.len);
	self->start(command_QString, static_cast<QIODevice::OpenMode>(mode));
}

void QProcess_start1(QProcess* self, int mode) {
	self->start(static_cast<QIODevice::OpenMode>(mode));
}

bool QProcess_startDetached1(QProcess* self, long long* pid) {
	return self->startDetached(static_cast<qint64*>(pid));
}

void QProcess_setStandardOutputFile2(QProcess* self, struct miqt_string fileName, int mode) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setStandardOutputFile(fileName_QString, static_cast<QIODevice::OpenMode>(mode));
}

void QProcess_setStandardErrorFile2(QProcess* self, struct miqt_string fileName, int mode) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	self->setStandardErrorFile(fileName_QString, static_cast<QIODevice::OpenMode>(mode));
}

bool QProcess_waitForStarted1(QProcess* self, int msecs) {
	return self->waitForStarted(static_cast<int>(msecs));
}

bool QProcess_waitForFinished1(QProcess* self, int msecs) {
	return self->waitForFinished(static_cast<int>(msecs));
}

bool QProcess_startDetached4(struct miqt_string program, struct miqt_array /* of struct miqt_string */  arguments, struct miqt_string workingDirectory, long long* pid) {
	QString program_QString = QString::fromUtf8(program.data, program.len);
	QStringList arguments_QList;
	arguments_QList.reserve(arguments.len);
	struct miqt_string* arguments_arr = static_cast<struct miqt_string*>(arguments.data);
	for(size_t i = 0; i < arguments.len; ++i) {
		QString arguments_arr_i_QString = QString::fromUtf8(arguments_arr[i].data, arguments_arr[i].len);
		arguments_QList.push_back(arguments_arr_i_QString);
	}
	QString workingDirectory_QString = QString::fromUtf8(workingDirectory.data, workingDirectory.len);
	return QProcess::startDetached(program_QString, arguments_QList, workingDirectory_QString, static_cast<qint64*>(pid));
}

QMetaObject* QProcess_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQProcess*)(self) )->virtualbase_metaObject();
}

void* QProcess_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQProcess*)(self) )->virtualbase_metacast(param1);
}

int QProcess_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQProcess*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QProcess_virtualbase_open(void* self, int mode) {
	return ( (MiqtVirtualQProcess*)(self) )->virtualbase_open(mode);
}

bool QProcess_virtualbase_waitForReadyRead(void* self, int msecs) {
	return ( (MiqtVirtualQProcess*)(self) )->virtualbase_waitForReadyRead(msecs);
}

bool QProcess_virtualbase_waitForBytesWritten(void* self, int msecs) {
	return ( (MiqtVirtualQProcess*)(self) )->virtualbase_waitForBytesWritten(msecs);
}

long long QProcess_virtualbase_bytesAvailable(const void* self) {
	return ( (const MiqtVirtualQProcess*)(self) )->virtualbase_bytesAvailable();
}

long long QProcess_virtualbase_bytesToWrite(const void* self) {
	return ( (const MiqtVirtualQProcess*)(self) )->virtualbase_bytesToWrite();
}

bool QProcess_virtualbase_isSequential(const void* self) {
	return ( (const MiqtVirtualQProcess*)(self) )->virtualbase_isSequential();
}

bool QProcess_virtualbase_canReadLine(const void* self) {
	return ( (const MiqtVirtualQProcess*)(self) )->virtualbase_canReadLine();
}

void QProcess_virtualbase_close(void* self) {
	( (MiqtVirtualQProcess*)(self) )->virtualbase_close();
}

bool QProcess_virtualbase_atEnd(const void* self) {
	return ( (const MiqtVirtualQProcess*)(self) )->virtualbase_atEnd();
}

void QProcess_virtualbase_setupChildProcess(void* self) {
	( (MiqtVirtualQProcess*)(self) )->virtualbase_setupChildProcess();
}

long long QProcess_virtualbase_readData(void* self, char* data, long long maxlen) {
	return ( (MiqtVirtualQProcess*)(self) )->virtualbase_readData(data, maxlen);
}

long long QProcess_virtualbase_writeData(void* self, const char* data, long long len) {
	return ( (MiqtVirtualQProcess*)(self) )->virtualbase_writeData(data, len);
}

long long QProcess_virtualbase_pos(const void* self) {
	return ( (const MiqtVirtualQProcess*)(self) )->virtualbase_pos();
}

long long QProcess_virtualbase_size(const void* self) {
	return ( (const MiqtVirtualQProcess*)(self) )->virtualbase_size();
}

bool QProcess_virtualbase_seek(void* self, long long pos) {
	return ( (MiqtVirtualQProcess*)(self) )->virtualbase_seek(pos);
}

bool QProcess_virtualbase_reset(void* self) {
	return ( (MiqtVirtualQProcess*)(self) )->virtualbase_reset();
}

long long QProcess_virtualbase_readLineData(void* self, char* data, long long maxlen) {
	return ( (MiqtVirtualQProcess*)(self) )->virtualbase_readLineData(data, maxlen);
}

bool QProcess_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQProcess*)(self) )->virtualbase_event(event);
}

bool QProcess_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQProcess*)(self) )->virtualbase_eventFilter(watched, event);
}

void QProcess_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQProcess*)(self) )->virtualbase_timerEvent(event);
}

void QProcess_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQProcess*)(self) )->virtualbase_childEvent(event);
}

void QProcess_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQProcess*)(self) )->virtualbase_customEvent(event);
}

void QProcess_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQProcess*)(self) )->virtualbase_connectNotify(signal);
}

void QProcess_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQProcess*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QProcess_staticMetaObject() { return &QProcess::staticMetaObject; }
void QProcess_protectedbase_setProcessState(void* self, int state) {
	MiqtVirtualQProcess* self_cast = static_cast<MiqtVirtualQProcess*>( (QProcess*)(self) );
	
	self_cast->setProcessState(static_cast<MiqtVirtualQProcess::ProcessState>(state));

}

void QProcess_protectedbase_setOpenMode(void* self, int openMode) {
	MiqtVirtualQProcess* self_cast = static_cast<MiqtVirtualQProcess*>( (QProcess*)(self) );
	
	self_cast->setOpenMode(static_cast<MiqtVirtualQProcess::OpenMode>(openMode));

}

void QProcess_protectedbase_setErrorString(void* self, struct miqt_string errorString) {
	MiqtVirtualQProcess* self_cast = static_cast<MiqtVirtualQProcess*>( (QProcess*)(self) );
			QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);

	self_cast->setErrorString(errorString_QString);

}

QObject* QProcess_protectedbase_sender(const void* self) {
	MiqtVirtualQProcess* self_cast = static_cast<MiqtVirtualQProcess*>( (QProcess*)(self) );
	
	return self_cast->sender();

}

int QProcess_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQProcess* self_cast = static_cast<MiqtVirtualQProcess*>( (QProcess*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QProcess_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQProcess* self_cast = static_cast<MiqtVirtualQProcess*>( (QProcess*)(self) );
	
	return self_cast->receivers(signal);

}

bool QProcess_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQProcess* self_cast = static_cast<MiqtVirtualQProcess*>( (QProcess*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QProcess_delete(QProcess* self) {
	delete self;
}

