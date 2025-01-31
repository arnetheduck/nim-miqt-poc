#include <QAbstractState>
#include <QAbstractTransition>
#include <QChildEvent>
#include <QEvent>
#include <QHistoryState>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QState>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qhistorystate.h>
#include "gen_qhistorystate.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQHistoryState final : public QHistoryState {
	struct QHistoryState_VTable* vtbl;
public:

	MiqtVirtualQHistoryState(struct QHistoryState_VTable* vtbl): QHistoryState(), vtbl(vtbl) {};
	MiqtVirtualQHistoryState(struct QHistoryState_VTable* vtbl, QHistoryState::HistoryType type): QHistoryState(type), vtbl(vtbl) {};
	MiqtVirtualQHistoryState(struct QHistoryState_VTable* vtbl, QState* parent): QHistoryState(parent), vtbl(vtbl) {};
	MiqtVirtualQHistoryState(struct QHistoryState_VTable* vtbl, QHistoryState::HistoryType type, QState* parent): QHistoryState(type, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQHistoryState() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QHistoryState::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QHistoryState::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QHistoryState::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QHistoryState::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QHistoryState::qt_metacall(param1, param2, param3);
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

		return QHistoryState::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void onEntry(QEvent* event) override {
		if (vtbl->onEntry == 0) {
			QHistoryState::onEntry(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->onEntry(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_onEntry(QEvent* event) {

		QHistoryState::onEntry(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void onExit(QEvent* event) override {
		if (vtbl->onExit == 0) {
			QHistoryState::onExit(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->onExit(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_onExit(QEvent* event) {

		QHistoryState::onExit(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QHistoryState::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* e) {

		return QHistoryState::event(e);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QHistoryState::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QHistoryState::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QHistoryState::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QHistoryState::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QHistoryState::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QHistoryState::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QHistoryState::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QHistoryState::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QHistoryState::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QHistoryState::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QHistoryState::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QHistoryState::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QHistoryState::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QHistoryState::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QHistoryState::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QHistoryState::isSignalConnected(*signal);

	}

};

QHistoryState* QHistoryState_new(struct QHistoryState_VTable* vtbl) {
	return new MiqtVirtualQHistoryState(vtbl);
}

QHistoryState* QHistoryState_new2(struct QHistoryState_VTable* vtbl, int type) {
	return new MiqtVirtualQHistoryState(vtbl, static_cast<QHistoryState::HistoryType>(type));
}

QHistoryState* QHistoryState_new3(struct QHistoryState_VTable* vtbl, QState* parent) {
	return new MiqtVirtualQHistoryState(vtbl, parent);
}

QHistoryState* QHistoryState_new4(struct QHistoryState_VTable* vtbl, int type, QState* parent) {
	return new MiqtVirtualQHistoryState(vtbl, static_cast<QHistoryState::HistoryType>(type), parent);
}

void QHistoryState_virtbase(QHistoryState* src, QAbstractState** outptr_QAbstractState) {
	*outptr_QAbstractState = static_cast<QAbstractState*>(src);
}

QMetaObject* QHistoryState_metaObject(const QHistoryState* self) {
	return (QMetaObject*) self->metaObject();
}

void* QHistoryState_metacast(QHistoryState* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QHistoryState_metacall(QHistoryState* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QHistoryState_tr(const char* s) {
	QString _ret = QHistoryState::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHistoryState_trUtf8(const char* s) {
	QString _ret = QHistoryState::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAbstractTransition* QHistoryState_defaultTransition(const QHistoryState* self) {
	return self->defaultTransition();
}

void QHistoryState_setDefaultTransition(QHistoryState* self, QAbstractTransition* transition) {
	self->setDefaultTransition(transition);
}

QAbstractState* QHistoryState_defaultState(const QHistoryState* self) {
	return self->defaultState();
}

void QHistoryState_setDefaultState(QHistoryState* self, QAbstractState* state) {
	self->setDefaultState(state);
}

int QHistoryState_historyType(const QHistoryState* self) {
	QHistoryState::HistoryType _ret = self->historyType();
	return static_cast<int>(_ret);
}

void QHistoryState_setHistoryType(QHistoryState* self, int type) {
	self->setHistoryType(static_cast<QHistoryState::HistoryType>(type));
}

struct miqt_string QHistoryState_tr2(const char* s, const char* c) {
	QString _ret = QHistoryState::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHistoryState_tr3(const char* s, const char* c, int n) {
	QString _ret = QHistoryState::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHistoryState_trUtf82(const char* s, const char* c) {
	QString _ret = QHistoryState::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QHistoryState_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QHistoryState::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QHistoryState_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQHistoryState*)(self) )->virtualbase_metaObject();
}

void* QHistoryState_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQHistoryState*)(self) )->virtualbase_metacast(param1);
}

int QHistoryState_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQHistoryState*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QHistoryState_virtualbase_onEntry(void* self, QEvent* event) {
	( (MiqtVirtualQHistoryState*)(self) )->virtualbase_onEntry(event);
}

void QHistoryState_virtualbase_onExit(void* self, QEvent* event) {
	( (MiqtVirtualQHistoryState*)(self) )->virtualbase_onExit(event);
}

bool QHistoryState_virtualbase_event(void* self, QEvent* e) {
	return ( (MiqtVirtualQHistoryState*)(self) )->virtualbase_event(e);
}

bool QHistoryState_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQHistoryState*)(self) )->virtualbase_eventFilter(watched, event);
}

void QHistoryState_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQHistoryState*)(self) )->virtualbase_timerEvent(event);
}

void QHistoryState_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQHistoryState*)(self) )->virtualbase_childEvent(event);
}

void QHistoryState_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQHistoryState*)(self) )->virtualbase_customEvent(event);
}

void QHistoryState_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQHistoryState*)(self) )->virtualbase_connectNotify(signal);
}

void QHistoryState_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQHistoryState*)(self) )->virtualbase_disconnectNotify(signal);
}

QObject* QHistoryState_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQHistoryState*)(self) )->protectedbase_sender();
}

int QHistoryState_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQHistoryState*)(self) )->protectedbase_senderSignalIndex();
}

int QHistoryState_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQHistoryState*)(self) )->protectedbase_receivers(signal);
}

bool QHistoryState_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQHistoryState*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QHistoryState_staticMetaObject() { return &QHistoryState::staticMetaObject; }
void QHistoryState_delete(QHistoryState* self) {
	delete self;
}

