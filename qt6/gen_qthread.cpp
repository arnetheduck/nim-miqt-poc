#include <QAbstractEventDispatcher>
#include <QChildEvent>
#include <QDeadlineTimer>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QTimerEvent>
#include <qthread.h>
#include "gen_qthread.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQThread final : public QThread {
	struct QThread_VTable* vtbl;
public:

	MiqtVirtualQThread(struct QThread_VTable* vtbl): QThread(), vtbl(vtbl) {};
	MiqtVirtualQThread(struct QThread_VTable* vtbl, QObject* parent): QThread(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQThread() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QThread::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QThread::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QThread::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QThread::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QThread::qt_metacall(param1, param2, param3);
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

		return QThread::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QThread::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QThread::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void run() override {
		if (vtbl->run == 0) {
			QThread::run();
			return;
		}


		vtbl->run(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_run() {

		QThread::run();

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QThread::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QThread::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QThread::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QThread::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QThread::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QThread::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QThread::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QThread::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QThread::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QThread::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QThread::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QThread::disconnectNotify(*signal);

	}

};

QThread* QThread_new(struct QThread_VTable* vtbl) {
	return new MiqtVirtualQThread(vtbl);
}

QThread* QThread_new2(struct QThread_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQThread(vtbl, parent);
}

void QThread_virtbase(QThread* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QThread_metaObject(const QThread* self) {
	return (QMetaObject*) self->metaObject();
}

void* QThread_metacast(QThread* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QThread_metacall(QThread* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QThread_tr(const char* s) {
	QString _ret = QThread::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void* QThread_currentThreadId() {
	Qt::HANDLE _ret = QThread::currentThreadId();
	return static_cast<void*>(_ret);
}

QThread* QThread_currentThread() {
	return QThread::currentThread();
}

int QThread_idealThreadCount() {
	return QThread::idealThreadCount();
}

void QThread_yieldCurrentThread() {
	QThread::yieldCurrentThread();
}

void QThread_setPriority(QThread* self, int priority) {
	self->setPriority(static_cast<QThread::Priority>(priority));
}

int QThread_priority(const QThread* self) {
	QThread::Priority _ret = self->priority();
	return static_cast<int>(_ret);
}

bool QThread_isFinished(const QThread* self) {
	return self->isFinished();
}

bool QThread_isRunning(const QThread* self) {
	return self->isRunning();
}

void QThread_requestInterruption(QThread* self) {
	self->requestInterruption();
}

bool QThread_isInterruptionRequested(const QThread* self) {
	return self->isInterruptionRequested();
}

void QThread_setStackSize(QThread* self, unsigned int stackSize) {
	self->setStackSize(static_cast<uint>(stackSize));
}

unsigned int QThread_stackSize(const QThread* self) {
	uint _ret = self->stackSize();
	return static_cast<unsigned int>(_ret);
}

QAbstractEventDispatcher* QThread_eventDispatcher(const QThread* self) {
	return self->eventDispatcher();
}

void QThread_setEventDispatcher(QThread* self, QAbstractEventDispatcher* eventDispatcher) {
	self->setEventDispatcher(eventDispatcher);
}

bool QThread_event(QThread* self, QEvent* event) {
	return self->event(event);
}

int QThread_loopLevel(const QThread* self) {
	return self->loopLevel();
}

void QThread_start(QThread* self) {
	self->start();
}

void QThread_terminate(QThread* self) {
	self->terminate();
}

void QThread_exit(QThread* self) {
	self->exit();
}

void QThread_quit(QThread* self) {
	self->quit();
}

bool QThread_wait(QThread* self) {
	return self->wait();
}

bool QThread_waitWithTime(QThread* self, unsigned long time) {
	return self->wait(static_cast<unsigned long>(time));
}

void QThread_sleep(unsigned long param1) {
	QThread::sleep(static_cast<unsigned long>(param1));
}

void QThread_msleep(unsigned long param1) {
	QThread::msleep(static_cast<unsigned long>(param1));
}

void QThread_usleep(unsigned long param1) {
	QThread::usleep(static_cast<unsigned long>(param1));
}

struct miqt_string QThread_tr2(const char* s, const char* c) {
	QString _ret = QThread::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QThread_tr3(const char* s, const char* c, int n) {
	QString _ret = QThread::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QThread_start1(QThread* self, int param1) {
	self->start(static_cast<QThread::Priority>(param1));
}

void QThread_exit1(QThread* self, int retcode) {
	self->exit(static_cast<int>(retcode));
}

bool QThread_wait1(QThread* self, QDeadlineTimer* deadline) {
	return self->wait(*deadline);
}

QMetaObject* QThread_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQThread*)(self) )->virtualbase_metaObject();
}

void* QThread_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQThread*)(self) )->virtualbase_metacast(param1);
}

int QThread_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQThread*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QThread_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQThread*)(self) )->virtualbase_event(event);
}

void QThread_virtualbase_run(void* self) {
	( (MiqtVirtualQThread*)(self) )->virtualbase_run();
}

bool QThread_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQThread*)(self) )->virtualbase_eventFilter(watched, event);
}

void QThread_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQThread*)(self) )->virtualbase_timerEvent(event);
}

void QThread_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQThread*)(self) )->virtualbase_childEvent(event);
}

void QThread_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQThread*)(self) )->virtualbase_customEvent(event);
}

void QThread_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQThread*)(self) )->virtualbase_connectNotify(signal);
}

void QThread_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQThread*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QThread_staticMetaObject() { return &QThread::staticMetaObject; }
void QThread_delete(QThread* self) {
	delete self;
}

