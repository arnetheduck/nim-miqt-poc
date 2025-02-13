#include <QAbstractAnimation>
#include <QAnimationDriver>
#include <QAnimationGroup>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qabstractanimation.h>
#include "gen_qabstractanimation.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QAbstractAnimation_finished(intptr_t);
void miqt_exec_callback_QAbstractAnimation_finished_release(intptr_t);
void miqt_exec_callback_QAbstractAnimation_stateChanged(intptr_t, int, int);
void miqt_exec_callback_QAbstractAnimation_stateChanged_release(intptr_t);
void miqt_exec_callback_QAbstractAnimation_currentLoopChanged(intptr_t, int);
void miqt_exec_callback_QAbstractAnimation_currentLoopChanged_release(intptr_t);
void miqt_exec_callback_QAbstractAnimation_directionChanged(intptr_t, int);
void miqt_exec_callback_QAbstractAnimation_directionChanged_release(intptr_t);
void miqt_exec_callback_QAnimationDriver_started(intptr_t);
void miqt_exec_callback_QAnimationDriver_started_release(intptr_t);
void miqt_exec_callback_QAnimationDriver_stopped(intptr_t);
void miqt_exec_callback_QAnimationDriver_stopped_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQAbstractAnimation final : public QAbstractAnimation {
	struct QAbstractAnimation_VTable* vtbl;
public:

	MiqtVirtualQAbstractAnimation(struct QAbstractAnimation_VTable* vtbl): QAbstractAnimation(), vtbl(vtbl) {};
	MiqtVirtualQAbstractAnimation(struct QAbstractAnimation_VTable* vtbl, QObject* parent): QAbstractAnimation(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQAbstractAnimation() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractAnimation::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QAbstractAnimation::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractAnimation::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QAbstractAnimation::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractAnimation::qt_metacall(param1, param2, param3);
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

		return QAbstractAnimation::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual int duration() const override {
		if (vtbl->duration == 0) {
			return 0; // Pure virtual, there is no base we can call
		}


		int callback_return_value = vtbl->duration(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAbstractAnimation::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QAbstractAnimation::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void updateCurrentTime(int currentTime) override {
		if (vtbl->updateCurrentTime == 0) {
			return; // Pure virtual, there is no base we can call
		}

		int sigval1 = currentTime;

		vtbl->updateCurrentTime(vtbl, this, sigval1);

	}

	// Subclass to allow providing a Go implementation
	virtual void updateState(QAbstractAnimation::State newState, QAbstractAnimation::State oldState) override {
		if (vtbl->updateState == 0) {
			QAbstractAnimation::updateState(newState, oldState);
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

		QAbstractAnimation::updateState(static_cast<QAbstractAnimation::State>(newState), static_cast<QAbstractAnimation::State>(oldState));

	}

	// Subclass to allow providing a Go implementation
	virtual void updateDirection(QAbstractAnimation::Direction direction) override {
		if (vtbl->updateDirection == 0) {
			QAbstractAnimation::updateDirection(direction);
			return;
		}

		QAbstractAnimation::Direction direction_ret = direction;
		int sigval1 = static_cast<int>(direction_ret);

		vtbl->updateDirection(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateDirection(int direction) {

		QAbstractAnimation::updateDirection(static_cast<QAbstractAnimation::Direction>(direction));

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractAnimation::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QAbstractAnimation::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAbstractAnimation::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QAbstractAnimation::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractAnimation::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QAbstractAnimation::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractAnimation::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QAbstractAnimation::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractAnimation::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QAbstractAnimation::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractAnimation::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QAbstractAnimation::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend QObject* QAbstractAnimation_protectedbase_sender(const void* self);
	friend int QAbstractAnimation_protectedbase_senderSignalIndex(const void* self);
	friend int QAbstractAnimation_protectedbase_receivers(const void* self, const char* signal);
	friend bool QAbstractAnimation_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QAbstractAnimation* QAbstractAnimation_new(struct QAbstractAnimation_VTable* vtbl) {
	return new MiqtVirtualQAbstractAnimation(vtbl);
}

QAbstractAnimation* QAbstractAnimation_new2(struct QAbstractAnimation_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQAbstractAnimation(vtbl, parent);
}

void QAbstractAnimation_virtbase(QAbstractAnimation* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAbstractAnimation_metaObject(const QAbstractAnimation* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractAnimation_metacast(QAbstractAnimation* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractAnimation_metacall(QAbstractAnimation* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAbstractAnimation_tr(const char* s) {
	QString _ret = QAbstractAnimation::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractAnimation_trUtf8(const char* s) {
	QString _ret = QAbstractAnimation::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QAbstractAnimation_state(const QAbstractAnimation* self) {
	QAbstractAnimation::State _ret = self->state();
	return static_cast<int>(_ret);
}

QAnimationGroup* QAbstractAnimation_group(const QAbstractAnimation* self) {
	return self->group();
}

int QAbstractAnimation_direction(const QAbstractAnimation* self) {
	QAbstractAnimation::Direction _ret = self->direction();
	return static_cast<int>(_ret);
}

void QAbstractAnimation_setDirection(QAbstractAnimation* self, int direction) {
	self->setDirection(static_cast<QAbstractAnimation::Direction>(direction));
}

int QAbstractAnimation_currentTime(const QAbstractAnimation* self) {
	return self->currentTime();
}

int QAbstractAnimation_currentLoopTime(const QAbstractAnimation* self) {
	return self->currentLoopTime();
}

int QAbstractAnimation_loopCount(const QAbstractAnimation* self) {
	return self->loopCount();
}

void QAbstractAnimation_setLoopCount(QAbstractAnimation* self, int loopCount) {
	self->setLoopCount(static_cast<int>(loopCount));
}

int QAbstractAnimation_currentLoop(const QAbstractAnimation* self) {
	return self->currentLoop();
}

int QAbstractAnimation_duration(const QAbstractAnimation* self) {
	return self->duration();
}

int QAbstractAnimation_totalDuration(const QAbstractAnimation* self) {
	return self->totalDuration();
}

void QAbstractAnimation_finished(QAbstractAnimation* self) {
	self->finished();
}

void QAbstractAnimation_connect_finished(QAbstractAnimation* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QAbstractAnimation_finished(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QAbstractAnimation_finished_release(slot); }
	};
	MiqtVirtualQAbstractAnimation::connect(self, static_cast<void (QAbstractAnimation::*)()>(&QAbstractAnimation::finished), self, caller{slot});
}

void QAbstractAnimation_stateChanged(QAbstractAnimation* self, int newState, int oldState) {
	self->stateChanged(static_cast<QAbstractAnimation::State>(newState), static_cast<QAbstractAnimation::State>(oldState));
}

void QAbstractAnimation_connect_stateChanged(QAbstractAnimation* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QAbstractAnimation::State newState, QAbstractAnimation::State oldState) {
			QAbstractAnimation::State newState_ret = newState;
			int sigval1 = static_cast<int>(newState_ret);
			QAbstractAnimation::State oldState_ret = oldState;
			int sigval2 = static_cast<int>(oldState_ret);
			miqt_exec_callback_QAbstractAnimation_stateChanged(slot, sigval1, sigval2);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QAbstractAnimation_stateChanged_release(slot); }
	};
	MiqtVirtualQAbstractAnimation::connect(self, static_cast<void (QAbstractAnimation::*)(QAbstractAnimation::State, QAbstractAnimation::State)>(&QAbstractAnimation::stateChanged), self, caller{slot});
}

void QAbstractAnimation_currentLoopChanged(QAbstractAnimation* self, int currentLoop) {
	self->currentLoopChanged(static_cast<int>(currentLoop));
}

void QAbstractAnimation_connect_currentLoopChanged(QAbstractAnimation* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(int currentLoop) {
			int sigval1 = currentLoop;
			miqt_exec_callback_QAbstractAnimation_currentLoopChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QAbstractAnimation_currentLoopChanged_release(slot); }
	};
	MiqtVirtualQAbstractAnimation::connect(self, static_cast<void (QAbstractAnimation::*)(int)>(&QAbstractAnimation::currentLoopChanged), self, caller{slot});
}

void QAbstractAnimation_directionChanged(QAbstractAnimation* self, int param1) {
	self->directionChanged(static_cast<QAbstractAnimation::Direction>(param1));
}

void QAbstractAnimation_connect_directionChanged(QAbstractAnimation* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QAbstractAnimation::Direction param1) {
			QAbstractAnimation::Direction param1_ret = param1;
			int sigval1 = static_cast<int>(param1_ret);
			miqt_exec_callback_QAbstractAnimation_directionChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QAbstractAnimation_directionChanged_release(slot); }
	};
	MiqtVirtualQAbstractAnimation::connect(self, static_cast<void (QAbstractAnimation::*)(QAbstractAnimation::Direction)>(&QAbstractAnimation::directionChanged), self, caller{slot});
}

void QAbstractAnimation_start(QAbstractAnimation* self) {
	self->start();
}

void QAbstractAnimation_pause(QAbstractAnimation* self) {
	self->pause();
}

void QAbstractAnimation_resume(QAbstractAnimation* self) {
	self->resume();
}

void QAbstractAnimation_setPaused(QAbstractAnimation* self, bool paused) {
	self->setPaused(paused);
}

void QAbstractAnimation_stop(QAbstractAnimation* self) {
	self->stop();
}

void QAbstractAnimation_setCurrentTime(QAbstractAnimation* self, int msecs) {
	self->setCurrentTime(static_cast<int>(msecs));
}

struct miqt_string QAbstractAnimation_tr2(const char* s, const char* c) {
	QString _ret = QAbstractAnimation::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractAnimation_tr3(const char* s, const char* c, int n) {
	QString _ret = QAbstractAnimation::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractAnimation_trUtf82(const char* s, const char* c) {
	QString _ret = QAbstractAnimation::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractAnimation_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAbstractAnimation::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractAnimation_start1(QAbstractAnimation* self, int policy) {
	self->start(static_cast<QAbstractAnimation::DeletionPolicy>(policy));
}

QMetaObject* QAbstractAnimation_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQAbstractAnimation*)(self) )->virtualbase_metaObject();
}

void* QAbstractAnimation_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQAbstractAnimation*)(self) )->virtualbase_metacast(param1);
}

int QAbstractAnimation_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQAbstractAnimation*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QAbstractAnimation_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQAbstractAnimation*)(self) )->virtualbase_event(event);
}

void QAbstractAnimation_virtualbase_updateState(void* self, int newState, int oldState) {
	( (MiqtVirtualQAbstractAnimation*)(self) )->virtualbase_updateState(newState, oldState);
}

void QAbstractAnimation_virtualbase_updateDirection(void* self, int direction) {
	( (MiqtVirtualQAbstractAnimation*)(self) )->virtualbase_updateDirection(direction);
}

bool QAbstractAnimation_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQAbstractAnimation*)(self) )->virtualbase_eventFilter(watched, event);
}

void QAbstractAnimation_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQAbstractAnimation*)(self) )->virtualbase_timerEvent(event);
}

void QAbstractAnimation_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQAbstractAnimation*)(self) )->virtualbase_childEvent(event);
}

void QAbstractAnimation_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQAbstractAnimation*)(self) )->virtualbase_customEvent(event);
}

void QAbstractAnimation_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQAbstractAnimation*)(self) )->virtualbase_connectNotify(signal);
}

void QAbstractAnimation_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQAbstractAnimation*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QAbstractAnimation_staticMetaObject() { return &QAbstractAnimation::staticMetaObject; }
QObject* QAbstractAnimation_protectedbase_sender(const void* self) {
	MiqtVirtualQAbstractAnimation* self_cast = static_cast<MiqtVirtualQAbstractAnimation*>( (QAbstractAnimation*)(self) );
	
	return self_cast->sender();

}

int QAbstractAnimation_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQAbstractAnimation* self_cast = static_cast<MiqtVirtualQAbstractAnimation*>( (QAbstractAnimation*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QAbstractAnimation_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQAbstractAnimation* self_cast = static_cast<MiqtVirtualQAbstractAnimation*>( (QAbstractAnimation*)(self) );
	
	return self_cast->receivers(signal);

}

bool QAbstractAnimation_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQAbstractAnimation* self_cast = static_cast<MiqtVirtualQAbstractAnimation*>( (QAbstractAnimation*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QAbstractAnimation_delete(QAbstractAnimation* self) {
	delete self;
}

class MiqtVirtualQAnimationDriver final : public QAnimationDriver {
	struct QAnimationDriver_VTable* vtbl;
public:

	MiqtVirtualQAnimationDriver(struct QAnimationDriver_VTable* vtbl): QAnimationDriver(), vtbl(vtbl) {};
	MiqtVirtualQAnimationDriver(struct QAnimationDriver_VTable* vtbl, QObject* parent): QAnimationDriver(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQAnimationDriver() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAnimationDriver::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QAnimationDriver::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAnimationDriver::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QAnimationDriver::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAnimationDriver::qt_metacall(param1, param2, param3);
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

		return QAnimationDriver::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void advance() override {
		if (vtbl->advance == 0) {
			QAnimationDriver::advance();
			return;
		}


		vtbl->advance(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_advance() {

		QAnimationDriver::advance();

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 elapsed() const override {
		if (vtbl->elapsed == 0) {
			return QAnimationDriver::elapsed();
		}


		long long callback_return_value = vtbl->elapsed(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	long long virtualbase_elapsed() const {

		qint64 _ret = QAnimationDriver::elapsed();
		return static_cast<long long>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual void start() override {
		if (vtbl->start == 0) {
			QAnimationDriver::start();
			return;
		}


		vtbl->start(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_start() {

		QAnimationDriver::start();

	}

	// Subclass to allow providing a Go implementation
	virtual void stop() override {
		if (vtbl->stop == 0) {
			QAnimationDriver::stop();
			return;
		}


		vtbl->stop(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_stop() {

		QAnimationDriver::stop();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAnimationDriver::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QAnimationDriver::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAnimationDriver::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QAnimationDriver::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAnimationDriver::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QAnimationDriver::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAnimationDriver::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QAnimationDriver::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAnimationDriver::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QAnimationDriver::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAnimationDriver::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QAnimationDriver::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAnimationDriver::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QAnimationDriver::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QAnimationDriver_protectedbase_advanceAnimation(void* self);
	friend void QAnimationDriver_protectedbase_advanceAnimation1(void* self, long long timeStep);
	friend QObject* QAnimationDriver_protectedbase_sender(const void* self);
	friend int QAnimationDriver_protectedbase_senderSignalIndex(const void* self);
	friend int QAnimationDriver_protectedbase_receivers(const void* self, const char* signal);
	friend bool QAnimationDriver_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QAnimationDriver* QAnimationDriver_new(struct QAnimationDriver_VTable* vtbl) {
	return new MiqtVirtualQAnimationDriver(vtbl);
}

QAnimationDriver* QAnimationDriver_new2(struct QAnimationDriver_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQAnimationDriver(vtbl, parent);
}

void QAnimationDriver_virtbase(QAnimationDriver* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAnimationDriver_metaObject(const QAnimationDriver* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAnimationDriver_metacast(QAnimationDriver* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAnimationDriver_metacall(QAnimationDriver* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAnimationDriver_tr(const char* s) {
	QString _ret = QAnimationDriver::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAnimationDriver_trUtf8(const char* s) {
	QString _ret = QAnimationDriver::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAnimationDriver_advance(QAnimationDriver* self) {
	self->advance();
}

void QAnimationDriver_install(QAnimationDriver* self) {
	self->install();
}

void QAnimationDriver_uninstall(QAnimationDriver* self) {
	self->uninstall();
}

bool QAnimationDriver_isRunning(const QAnimationDriver* self) {
	return self->isRunning();
}

long long QAnimationDriver_elapsed(const QAnimationDriver* self) {
	qint64 _ret = self->elapsed();
	return static_cast<long long>(_ret);
}

void QAnimationDriver_setStartTime(QAnimationDriver* self, long long startTime) {
	self->setStartTime(static_cast<qint64>(startTime));
}

long long QAnimationDriver_startTime(const QAnimationDriver* self) {
	qint64 _ret = self->startTime();
	return static_cast<long long>(_ret);
}

void QAnimationDriver_started(QAnimationDriver* self) {
	self->started();
}

void QAnimationDriver_connect_started(QAnimationDriver* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QAnimationDriver_started(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QAnimationDriver_started_release(slot); }
	};
	MiqtVirtualQAnimationDriver::connect(self, static_cast<void (QAnimationDriver::*)()>(&QAnimationDriver::started), self, caller{slot});
}

void QAnimationDriver_stopped(QAnimationDriver* self) {
	self->stopped();
}

void QAnimationDriver_connect_stopped(QAnimationDriver* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QAnimationDriver_stopped(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QAnimationDriver_stopped_release(slot); }
	};
	MiqtVirtualQAnimationDriver::connect(self, static_cast<void (QAnimationDriver::*)()>(&QAnimationDriver::stopped), self, caller{slot});
}

struct miqt_string QAnimationDriver_tr2(const char* s, const char* c) {
	QString _ret = QAnimationDriver::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAnimationDriver_tr3(const char* s, const char* c, int n) {
	QString _ret = QAnimationDriver::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAnimationDriver_trUtf82(const char* s, const char* c) {
	QString _ret = QAnimationDriver::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAnimationDriver_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAnimationDriver::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAnimationDriver_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQAnimationDriver*)(self) )->virtualbase_metaObject();
}

void* QAnimationDriver_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQAnimationDriver*)(self) )->virtualbase_metacast(param1);
}

int QAnimationDriver_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQAnimationDriver*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QAnimationDriver_virtualbase_advance(void* self) {
	( (MiqtVirtualQAnimationDriver*)(self) )->virtualbase_advance();
}

long long QAnimationDriver_virtualbase_elapsed(const void* self) {
	return ( (const MiqtVirtualQAnimationDriver*)(self) )->virtualbase_elapsed();
}

void QAnimationDriver_virtualbase_start(void* self) {
	( (MiqtVirtualQAnimationDriver*)(self) )->virtualbase_start();
}

void QAnimationDriver_virtualbase_stop(void* self) {
	( (MiqtVirtualQAnimationDriver*)(self) )->virtualbase_stop();
}

bool QAnimationDriver_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQAnimationDriver*)(self) )->virtualbase_event(event);
}

bool QAnimationDriver_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQAnimationDriver*)(self) )->virtualbase_eventFilter(watched, event);
}

void QAnimationDriver_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQAnimationDriver*)(self) )->virtualbase_timerEvent(event);
}

void QAnimationDriver_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQAnimationDriver*)(self) )->virtualbase_childEvent(event);
}

void QAnimationDriver_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQAnimationDriver*)(self) )->virtualbase_customEvent(event);
}

void QAnimationDriver_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQAnimationDriver*)(self) )->virtualbase_connectNotify(signal);
}

void QAnimationDriver_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQAnimationDriver*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QAnimationDriver_staticMetaObject() { return &QAnimationDriver::staticMetaObject; }
void QAnimationDriver_protectedbase_advanceAnimation(void* self) {
	MiqtVirtualQAnimationDriver* self_cast = static_cast<MiqtVirtualQAnimationDriver*>( (QAnimationDriver*)(self) );
	
	self_cast->advanceAnimation();

}

void QAnimationDriver_protectedbase_advanceAnimation1(void* self, long long timeStep) {
	MiqtVirtualQAnimationDriver* self_cast = static_cast<MiqtVirtualQAnimationDriver*>( (QAnimationDriver*)(self) );
	
	self_cast->advanceAnimation(static_cast<qint64>(timeStep));

}

QObject* QAnimationDriver_protectedbase_sender(const void* self) {
	MiqtVirtualQAnimationDriver* self_cast = static_cast<MiqtVirtualQAnimationDriver*>( (QAnimationDriver*)(self) );
	
	return self_cast->sender();

}

int QAnimationDriver_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQAnimationDriver* self_cast = static_cast<MiqtVirtualQAnimationDriver*>( (QAnimationDriver*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QAnimationDriver_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQAnimationDriver* self_cast = static_cast<MiqtVirtualQAnimationDriver*>( (QAnimationDriver*)(self) );
	
	return self_cast->receivers(signal);

}

bool QAnimationDriver_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQAnimationDriver* self_cast = static_cast<MiqtVirtualQAnimationDriver*>( (QAnimationDriver*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QAnimationDriver_delete(QAnimationDriver* self) {
	delete self;
}

