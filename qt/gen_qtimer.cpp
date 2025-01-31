#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimer>
#include <QTimerEvent>
#include <qtimer.h>
#include "gen_qtimer.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQTimer final : public QTimer {
	struct QTimer_VTable* vtbl;
public:

	MiqtVirtualQTimer(struct QTimer_VTable* vtbl): QTimer(), vtbl(vtbl) {};
	MiqtVirtualQTimer(struct QTimer_VTable* vtbl, QObject* parent): QTimer(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQTimer() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTimer::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QTimer::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTimer::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QTimer::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTimer::qt_metacall(param1, param2, param3);
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

		return QTimer::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* param1) override {
		if (vtbl->timerEvent == 0) {
			QTimer::timerEvent(param1);
			return;
		}

		QTimerEvent* sigval1 = param1;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* param1) {

		QTimer::timerEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTimer::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QTimer::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTimer::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QTimer::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTimer::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QTimer::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTimer::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QTimer::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTimer::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QTimer::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTimer::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QTimer::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QTimer::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QTimer::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QTimer::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QTimer::isSignalConnected(*signal);

	}

};

QTimer* QTimer_new(struct QTimer_VTable* vtbl) {
	return new MiqtVirtualQTimer(vtbl);
}

QTimer* QTimer_new2(struct QTimer_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQTimer(vtbl, parent);
}

void QTimer_virtbase(QTimer* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QTimer_metaObject(const QTimer* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTimer_metacast(QTimer* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTimer_metacall(QTimer* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTimer_tr(const char* s) {
	QString _ret = QTimer::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTimer_trUtf8(const char* s) {
	QString _ret = QTimer::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QTimer_isActive(const QTimer* self) {
	return self->isActive();
}

int QTimer_timerId(const QTimer* self) {
	return self->timerId();
}

void QTimer_setInterval(QTimer* self, int msec) {
	self->setInterval(static_cast<int>(msec));
}

int QTimer_interval(const QTimer* self) {
	return self->interval();
}

int QTimer_remainingTime(const QTimer* self) {
	return self->remainingTime();
}

void QTimer_setTimerType(QTimer* self, int atype) {
	self->setTimerType(static_cast<Qt::TimerType>(atype));
}

int QTimer_timerType(const QTimer* self) {
	Qt::TimerType _ret = self->timerType();
	return static_cast<int>(_ret);
}

void QTimer_setSingleShot(QTimer* self, bool singleShot) {
	self->setSingleShot(singleShot);
}

bool QTimer_isSingleShot(const QTimer* self) {
	return self->isSingleShot();
}

void QTimer_start(QTimer* self, int msec) {
	self->start(static_cast<int>(msec));
}

void QTimer_start2(QTimer* self) {
	self->start();
}

void QTimer_stop(QTimer* self) {
	self->stop();
}

struct miqt_string QTimer_tr2(const char* s, const char* c) {
	QString _ret = QTimer::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTimer_tr3(const char* s, const char* c, int n) {
	QString _ret = QTimer::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTimer_trUtf82(const char* s, const char* c) {
	QString _ret = QTimer::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTimer_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QTimer::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QTimer_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQTimer*)(self) )->virtualbase_metaObject();
}

void* QTimer_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQTimer*)(self) )->virtualbase_metacast(param1);
}

int QTimer_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQTimer*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QTimer_virtualbase_timerEvent(void* self, QTimerEvent* param1) {
	( (MiqtVirtualQTimer*)(self) )->virtualbase_timerEvent(param1);
}

bool QTimer_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQTimer*)(self) )->virtualbase_event(event);
}

bool QTimer_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQTimer*)(self) )->virtualbase_eventFilter(watched, event);
}

void QTimer_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQTimer*)(self) )->virtualbase_childEvent(event);
}

void QTimer_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQTimer*)(self) )->virtualbase_customEvent(event);
}

void QTimer_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQTimer*)(self) )->virtualbase_connectNotify(signal);
}

void QTimer_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQTimer*)(self) )->virtualbase_disconnectNotify(signal);
}

QObject* QTimer_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQTimer*)(self) )->protectedbase_sender();
}

int QTimer_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQTimer*)(self) )->protectedbase_senderSignalIndex();
}

int QTimer_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQTimer*)(self) )->protectedbase_receivers(signal);
}

bool QTimer_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQTimer*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QTimer_staticMetaObject() { return &QTimer::staticMetaObject; }
void QTimer_delete(QTimer* self) {
	delete self;
}

