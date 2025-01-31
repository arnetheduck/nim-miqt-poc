#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRunnable>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QThread>
#include <QThreadPool>
#include <QTimerEvent>
#include <qthreadpool.h>
#include "gen_qthreadpool.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQThreadPool final : public QThreadPool {
	struct QThreadPool_VTable* vtbl;
public:

	MiqtVirtualQThreadPool(struct QThreadPool_VTable* vtbl): QThreadPool(), vtbl(vtbl) {};
	MiqtVirtualQThreadPool(struct QThreadPool_VTable* vtbl, QObject* parent): QThreadPool(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQThreadPool() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QThreadPool::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QThreadPool::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QThreadPool::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QThreadPool::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QThreadPool::qt_metacall(param1, param2, param3);
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

		return QThreadPool::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QThreadPool::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QThreadPool::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QThreadPool::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QThreadPool::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QThreadPool::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QThreadPool::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QThreadPool::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QThreadPool::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QThreadPool::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QThreadPool::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QThreadPool::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QThreadPool::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QThreadPool::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QThreadPool::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QThreadPool::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QThreadPool::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QThreadPool::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QThreadPool::isSignalConnected(*signal);

	}

};

QThreadPool* QThreadPool_new(struct QThreadPool_VTable* vtbl) {
	return new MiqtVirtualQThreadPool(vtbl);
}

QThreadPool* QThreadPool_new2(struct QThreadPool_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQThreadPool(vtbl, parent);
}

void QThreadPool_virtbase(QThreadPool* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QThreadPool_metaObject(const QThreadPool* self) {
	return (QMetaObject*) self->metaObject();
}

void* QThreadPool_metacast(QThreadPool* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QThreadPool_metacall(QThreadPool* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QThreadPool_tr(const char* s) {
	QString _ret = QThreadPool::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QThreadPool* QThreadPool_globalInstance() {
	return QThreadPool::globalInstance();
}

void QThreadPool_start(QThreadPool* self, QRunnable* runnable) {
	self->start(runnable);
}

bool QThreadPool_tryStart(QThreadPool* self, QRunnable* runnable) {
	return self->tryStart(runnable);
}

void QThreadPool_startOnReservedThread(QThreadPool* self, QRunnable* runnable) {
	self->startOnReservedThread(runnable);
}

int QThreadPool_expiryTimeout(const QThreadPool* self) {
	return self->expiryTimeout();
}

void QThreadPool_setExpiryTimeout(QThreadPool* self, int expiryTimeout) {
	self->setExpiryTimeout(static_cast<int>(expiryTimeout));
}

int QThreadPool_maxThreadCount(const QThreadPool* self) {
	return self->maxThreadCount();
}

void QThreadPool_setMaxThreadCount(QThreadPool* self, int maxThreadCount) {
	self->setMaxThreadCount(static_cast<int>(maxThreadCount));
}

int QThreadPool_activeThreadCount(const QThreadPool* self) {
	return self->activeThreadCount();
}

void QThreadPool_setStackSize(QThreadPool* self, unsigned int stackSize) {
	self->setStackSize(static_cast<uint>(stackSize));
}

unsigned int QThreadPool_stackSize(const QThreadPool* self) {
	uint _ret = self->stackSize();
	return static_cast<unsigned int>(_ret);
}

void QThreadPool_setThreadPriority(QThreadPool* self, int priority) {
	self->setThreadPriority(static_cast<QThread::Priority>(priority));
}

int QThreadPool_threadPriority(const QThreadPool* self) {
	QThread::Priority _ret = self->threadPriority();
	return static_cast<int>(_ret);
}

void QThreadPool_reserveThread(QThreadPool* self) {
	self->reserveThread();
}

void QThreadPool_releaseThread(QThreadPool* self) {
	self->releaseThread();
}

bool QThreadPool_waitForDone(QThreadPool* self) {
	return self->waitForDone();
}

void QThreadPool_clear(QThreadPool* self) {
	self->clear();
}

bool QThreadPool_contains(const QThreadPool* self, QThread* thread) {
	return self->contains(thread);
}

bool QThreadPool_tryTake(QThreadPool* self, QRunnable* runnable) {
	return self->tryTake(runnable);
}

struct miqt_string QThreadPool_tr2(const char* s, const char* c) {
	QString _ret = QThreadPool::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QThreadPool_tr3(const char* s, const char* c, int n) {
	QString _ret = QThreadPool::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QThreadPool_start2(QThreadPool* self, QRunnable* runnable, int priority) {
	self->start(runnable, static_cast<int>(priority));
}

bool QThreadPool_waitForDone1(QThreadPool* self, int msecs) {
	return self->waitForDone(static_cast<int>(msecs));
}

QMetaObject* QThreadPool_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQThreadPool*)(self) )->virtualbase_metaObject();
}

void* QThreadPool_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQThreadPool*)(self) )->virtualbase_metacast(param1);
}

int QThreadPool_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQThreadPool*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QThreadPool_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQThreadPool*)(self) )->virtualbase_event(event);
}

bool QThreadPool_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQThreadPool*)(self) )->virtualbase_eventFilter(watched, event);
}

void QThreadPool_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQThreadPool*)(self) )->virtualbase_timerEvent(event);
}

void QThreadPool_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQThreadPool*)(self) )->virtualbase_childEvent(event);
}

void QThreadPool_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQThreadPool*)(self) )->virtualbase_customEvent(event);
}

void QThreadPool_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQThreadPool*)(self) )->virtualbase_connectNotify(signal);
}

void QThreadPool_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQThreadPool*)(self) )->virtualbase_disconnectNotify(signal);
}

QObject* QThreadPool_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQThreadPool*)(self) )->protectedbase_sender();
}

int QThreadPool_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQThreadPool*)(self) )->protectedbase_senderSignalIndex();
}

int QThreadPool_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQThreadPool*)(self) )->protectedbase_receivers(signal);
}

bool QThreadPool_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQThreadPool*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QThreadPool_staticMetaObject() { return &QThreadPool::staticMetaObject; }
void QThreadPool_delete(QThreadPool* self) {
	delete self;
}

