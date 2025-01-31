#include <QAbstractTransition>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSignalTransition>
#include <QState>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qsignaltransition.h>
#include "gen_qsignaltransition.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQSignalTransition final : public QSignalTransition {
	struct QSignalTransition_VTable* vtbl;
public:

	MiqtVirtualQSignalTransition(struct QSignalTransition_VTable* vtbl): QSignalTransition(), vtbl(vtbl) {};
	MiqtVirtualQSignalTransition(struct QSignalTransition_VTable* vtbl, const QObject* sender, const char* signal): QSignalTransition(sender, signal), vtbl(vtbl) {};
	MiqtVirtualQSignalTransition(struct QSignalTransition_VTable* vtbl, QState* sourceState): QSignalTransition(sourceState), vtbl(vtbl) {};
	MiqtVirtualQSignalTransition(struct QSignalTransition_VTable* vtbl, const QObject* sender, const char* signal, QState* sourceState): QSignalTransition(sender, signal, sourceState), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSignalTransition() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSignalTransition::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QSignalTransition::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSignalTransition::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QSignalTransition::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSignalTransition::qt_metacall(param1, param2, param3);
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

		return QSignalTransition::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventTest(QEvent* event) override {
		if (vtbl->eventTest == 0) {
			return QSignalTransition::eventTest(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->eventTest(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventTest(QEvent* event) {

		return QSignalTransition::eventTest(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void onTransition(QEvent* event) override {
		if (vtbl->onTransition == 0) {
			QSignalTransition::onTransition(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->onTransition(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_onTransition(QEvent* event) {

		QSignalTransition::onTransition(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QSignalTransition::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* e) {

		return QSignalTransition::event(e);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSignalTransition::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QSignalTransition::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSignalTransition::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QSignalTransition::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSignalTransition::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QSignalTransition::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSignalTransition::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QSignalTransition::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSignalTransition::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QSignalTransition::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSignalTransition::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QSignalTransition::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QSignalTransition::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QSignalTransition::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QSignalTransition::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QSignalTransition::isSignalConnected(*signal);

	}

};

QSignalTransition* QSignalTransition_new(struct QSignalTransition_VTable* vtbl) {
	return new MiqtVirtualQSignalTransition(vtbl);
}

QSignalTransition* QSignalTransition_new2(struct QSignalTransition_VTable* vtbl, QObject* sender, const char* signal) {
	return new MiqtVirtualQSignalTransition(vtbl, sender, signal);
}

QSignalTransition* QSignalTransition_new3(struct QSignalTransition_VTable* vtbl, QState* sourceState) {
	return new MiqtVirtualQSignalTransition(vtbl, sourceState);
}

QSignalTransition* QSignalTransition_new4(struct QSignalTransition_VTable* vtbl, QObject* sender, const char* signal, QState* sourceState) {
	return new MiqtVirtualQSignalTransition(vtbl, sender, signal, sourceState);
}

void QSignalTransition_virtbase(QSignalTransition* src, QAbstractTransition** outptr_QAbstractTransition) {
	*outptr_QAbstractTransition = static_cast<QAbstractTransition*>(src);
}

QMetaObject* QSignalTransition_metaObject(const QSignalTransition* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSignalTransition_metacast(QSignalTransition* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSignalTransition_metacall(QSignalTransition* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSignalTransition_tr(const char* s) {
	QString _ret = QSignalTransition::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSignalTransition_trUtf8(const char* s) {
	QString _ret = QSignalTransition::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QObject* QSignalTransition_senderObject(const QSignalTransition* self) {
	return self->senderObject();
}

void QSignalTransition_setSenderObject(QSignalTransition* self, QObject* sender) {
	self->setSenderObject(sender);
}

struct miqt_string QSignalTransition_signal(const QSignalTransition* self) {
	QByteArray _qb = self->signal();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QSignalTransition_setSignal(QSignalTransition* self, struct miqt_string signal) {
	QByteArray signal_QByteArray(signal.data, signal.len);
	self->setSignal(signal_QByteArray);
}

struct miqt_string QSignalTransition_tr2(const char* s, const char* c) {
	QString _ret = QSignalTransition::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSignalTransition_tr3(const char* s, const char* c, int n) {
	QString _ret = QSignalTransition::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSignalTransition_trUtf82(const char* s, const char* c) {
	QString _ret = QSignalTransition::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSignalTransition_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSignalTransition::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSignalTransition_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQSignalTransition*)(self) )->virtualbase_metaObject();
}

void* QSignalTransition_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQSignalTransition*)(self) )->virtualbase_metacast(param1);
}

int QSignalTransition_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQSignalTransition*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QSignalTransition_virtualbase_eventTest(void* self, QEvent* event) {
	return ( (MiqtVirtualQSignalTransition*)(self) )->virtualbase_eventTest(event);
}

void QSignalTransition_virtualbase_onTransition(void* self, QEvent* event) {
	( (MiqtVirtualQSignalTransition*)(self) )->virtualbase_onTransition(event);
}

bool QSignalTransition_virtualbase_event(void* self, QEvent* e) {
	return ( (MiqtVirtualQSignalTransition*)(self) )->virtualbase_event(e);
}

bool QSignalTransition_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQSignalTransition*)(self) )->virtualbase_eventFilter(watched, event);
}

void QSignalTransition_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQSignalTransition*)(self) )->virtualbase_timerEvent(event);
}

void QSignalTransition_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQSignalTransition*)(self) )->virtualbase_childEvent(event);
}

void QSignalTransition_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSignalTransition*)(self) )->virtualbase_customEvent(event);
}

void QSignalTransition_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSignalTransition*)(self) )->virtualbase_connectNotify(signal);
}

void QSignalTransition_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSignalTransition*)(self) )->virtualbase_disconnectNotify(signal);
}

QObject* QSignalTransition_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQSignalTransition*)(self) )->protectedbase_sender();
}

int QSignalTransition_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQSignalTransition*)(self) )->protectedbase_senderSignalIndex();
}

int QSignalTransition_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQSignalTransition*)(self) )->protectedbase_receivers(signal);
}

bool QSignalTransition_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQSignalTransition*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QSignalTransition_staticMetaObject() { return &QSignalTransition::staticMetaObject; }
void QSignalTransition_delete(QSignalTransition* self) {
	delete self;
}

