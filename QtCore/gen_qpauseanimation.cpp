#include <QAbstractAnimation>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPauseAnimation>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qpauseanimation.h>
#include "gen_qpauseanimation.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQPauseAnimation final : public QPauseAnimation {
	struct QPauseAnimation_VTable* vtbl;
public:

	MiqtVirtualQPauseAnimation(struct QPauseAnimation_VTable* vtbl): QPauseAnimation(), vtbl(vtbl) {};
	MiqtVirtualQPauseAnimation(struct QPauseAnimation_VTable* vtbl, int msecs): QPauseAnimation(msecs), vtbl(vtbl) {};
	MiqtVirtualQPauseAnimation(struct QPauseAnimation_VTable* vtbl, QObject* parent): QPauseAnimation(parent), vtbl(vtbl) {};
	MiqtVirtualQPauseAnimation(struct QPauseAnimation_VTable* vtbl, int msecs, QObject* parent): QPauseAnimation(msecs, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQPauseAnimation() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPauseAnimation::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QPauseAnimation::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPauseAnimation::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QPauseAnimation::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPauseAnimation::qt_metacall(param1, param2, param3);
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

		return QPauseAnimation::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual int duration() const override {
		if (vtbl->duration == 0) {
			return QPauseAnimation::duration();
		}


		int callback_return_value = vtbl->duration(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_duration() const {

		return QPauseAnimation::duration();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QPauseAnimation::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* e) {

		return QPauseAnimation::event(e);

	}

	// Subclass to allow providing a Go implementation
	virtual void updateCurrentTime(int param1) override {
		if (vtbl->updateCurrentTime == 0) {
			QPauseAnimation::updateCurrentTime(param1);
			return;
		}

		int sigval1 = param1;

		vtbl->updateCurrentTime(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateCurrentTime(int param1) {

		QPauseAnimation::updateCurrentTime(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void updateState(QAbstractAnimation::State newState, QAbstractAnimation::State oldState) override {
		if (vtbl->updateState == 0) {
			QPauseAnimation::updateState(newState, oldState);
			return;
		}

		QAbstractAnimation::State newState_ret = newState;
		int sigval1 = static_cast<int>(newState_ret);
		QAbstractAnimation::State oldState_ret = oldState;
		int sigval2 = static_cast<int>(oldState_ret);

		vtbl->updateState(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateState(int newState, int oldState) {

		QPauseAnimation::updateState(static_cast<QAbstractAnimation::State>(newState), static_cast<QAbstractAnimation::State>(oldState));

	}

	// Subclass to allow providing a Go implementation
	virtual void updateDirection(QAbstractAnimation::Direction direction) override {
		if (vtbl->updateDirection == 0) {
			QPauseAnimation::updateDirection(direction);
			return;
		}

		QAbstractAnimation::Direction direction_ret = direction;
		int sigval1 = static_cast<int>(direction_ret);

		vtbl->updateDirection(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateDirection(int direction) {

		QPauseAnimation::updateDirection(static_cast<QAbstractAnimation::Direction>(direction));

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPauseAnimation::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QPauseAnimation::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPauseAnimation::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QPauseAnimation::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPauseAnimation::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QPauseAnimation::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPauseAnimation::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QPauseAnimation::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPauseAnimation::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QPauseAnimation::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPauseAnimation::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QPauseAnimation::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend QObject* QPauseAnimation_protectedbase_sender(const void* self);
	friend int QPauseAnimation_protectedbase_senderSignalIndex(const void* self);
	friend int QPauseAnimation_protectedbase_receivers(const void* self, const char* signal);
	friend bool QPauseAnimation_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QPauseAnimation* QPauseAnimation_new(struct QPauseAnimation_VTable* vtbl) {
	return new MiqtVirtualQPauseAnimation(vtbl);
}

QPauseAnimation* QPauseAnimation_new2(struct QPauseAnimation_VTable* vtbl, int msecs) {
	return new MiqtVirtualQPauseAnimation(vtbl, static_cast<int>(msecs));
}

QPauseAnimation* QPauseAnimation_new3(struct QPauseAnimation_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQPauseAnimation(vtbl, parent);
}

QPauseAnimation* QPauseAnimation_new4(struct QPauseAnimation_VTable* vtbl, int msecs, QObject* parent) {
	return new MiqtVirtualQPauseAnimation(vtbl, static_cast<int>(msecs), parent);
}

void QPauseAnimation_virtbase(QPauseAnimation* src, QAbstractAnimation** outptr_QAbstractAnimation) {
	*outptr_QAbstractAnimation = static_cast<QAbstractAnimation*>(src);
}

QMetaObject* QPauseAnimation_metaObject(const QPauseAnimation* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPauseAnimation_metacast(QPauseAnimation* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPauseAnimation_metacall(QPauseAnimation* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QPauseAnimation_tr(const char* s) {
	QString _ret = QPauseAnimation::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QPauseAnimation_duration(const QPauseAnimation* self) {
	return self->duration();
}

void QPauseAnimation_setDuration(QPauseAnimation* self, int msecs) {
	self->setDuration(static_cast<int>(msecs));
}

struct miqt_string QPauseAnimation_tr2(const char* s, const char* c) {
	QString _ret = QPauseAnimation::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPauseAnimation_tr3(const char* s, const char* c, int n) {
	QString _ret = QPauseAnimation::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QPauseAnimation_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQPauseAnimation*)(self) )->virtualbase_metaObject();
}

void* QPauseAnimation_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQPauseAnimation*)(self) )->virtualbase_metacast(param1);
}

int QPauseAnimation_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQPauseAnimation*)(self) )->virtualbase_metacall(param1, param2, param3);
}

int QPauseAnimation_virtualbase_duration(const void* self) {
	return ( (const MiqtVirtualQPauseAnimation*)(self) )->virtualbase_duration();
}

bool QPauseAnimation_virtualbase_event(void* self, QEvent* e) {
	return ( (MiqtVirtualQPauseAnimation*)(self) )->virtualbase_event(e);
}

void QPauseAnimation_virtualbase_updateCurrentTime(void* self, int param1) {
	( (MiqtVirtualQPauseAnimation*)(self) )->virtualbase_updateCurrentTime(param1);
}

void QPauseAnimation_virtualbase_updateState(void* self, int newState, int oldState) {
	( (MiqtVirtualQPauseAnimation*)(self) )->virtualbase_updateState(newState, oldState);
}

void QPauseAnimation_virtualbase_updateDirection(void* self, int direction) {
	( (MiqtVirtualQPauseAnimation*)(self) )->virtualbase_updateDirection(direction);
}

bool QPauseAnimation_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQPauseAnimation*)(self) )->virtualbase_eventFilter(watched, event);
}

void QPauseAnimation_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQPauseAnimation*)(self) )->virtualbase_timerEvent(event);
}

void QPauseAnimation_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQPauseAnimation*)(self) )->virtualbase_childEvent(event);
}

void QPauseAnimation_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQPauseAnimation*)(self) )->virtualbase_customEvent(event);
}

void QPauseAnimation_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQPauseAnimation*)(self) )->virtualbase_connectNotify(signal);
}

void QPauseAnimation_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQPauseAnimation*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QPauseAnimation_staticMetaObject() { return &QPauseAnimation::staticMetaObject; }
QObject* QPauseAnimation_protectedbase_sender(const void* self) {
	MiqtVirtualQPauseAnimation* self_cast = static_cast<MiqtVirtualQPauseAnimation*>( (QPauseAnimation*)(self) );
	
	return self_cast->sender();

}

int QPauseAnimation_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQPauseAnimation* self_cast = static_cast<MiqtVirtualQPauseAnimation*>( (QPauseAnimation*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QPauseAnimation_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQPauseAnimation* self_cast = static_cast<MiqtVirtualQPauseAnimation*>( (QPauseAnimation*)(self) );
	
	return self_cast->receivers(signal);

}

bool QPauseAnimation_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQPauseAnimation* self_cast = static_cast<MiqtVirtualQPauseAnimation*>( (QPauseAnimation*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QPauseAnimation_delete(QPauseAnimation* self) {
	delete self;
}

