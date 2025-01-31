#include <QAbstractAnimation>
#include <QAnimationGroup>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QParallelAnimationGroup>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qparallelanimationgroup.h>
#include "gen_qparallelanimationgroup.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQParallelAnimationGroup final : public QParallelAnimationGroup {
	struct QParallelAnimationGroup_VTable* vtbl;
public:

	MiqtVirtualQParallelAnimationGroup(struct QParallelAnimationGroup_VTable* vtbl): QParallelAnimationGroup(), vtbl(vtbl) {};
	MiqtVirtualQParallelAnimationGroup(struct QParallelAnimationGroup_VTable* vtbl, QObject* parent): QParallelAnimationGroup(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQParallelAnimationGroup() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QParallelAnimationGroup::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QParallelAnimationGroup::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QParallelAnimationGroup::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QParallelAnimationGroup::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QParallelAnimationGroup::qt_metacall(param1, param2, param3);
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

		return QParallelAnimationGroup::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual int duration() const override {
		if (vtbl->duration == 0) {
			return QParallelAnimationGroup::duration();
		}


		int callback_return_value = vtbl->duration(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_duration() const {

		return QParallelAnimationGroup::duration();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QParallelAnimationGroup::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QParallelAnimationGroup::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void updateCurrentTime(int currentTime) override {
		if (vtbl->updateCurrentTime == 0) {
			QParallelAnimationGroup::updateCurrentTime(currentTime);
			return;
		}

		int sigval1 = currentTime;

		vtbl->updateCurrentTime(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateCurrentTime(int currentTime) {

		QParallelAnimationGroup::updateCurrentTime(static_cast<int>(currentTime));

	}

	// Subclass to allow providing a Go implementation
	virtual void updateState(QAbstractAnimation::State newState, QAbstractAnimation::State oldState) override {
		if (vtbl->updateState == 0) {
			QParallelAnimationGroup::updateState(newState, oldState);
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

		QParallelAnimationGroup::updateState(static_cast<QAbstractAnimation::State>(newState), static_cast<QAbstractAnimation::State>(oldState));

	}

	// Subclass to allow providing a Go implementation
	virtual void updateDirection(QAbstractAnimation::Direction direction) override {
		if (vtbl->updateDirection == 0) {
			QParallelAnimationGroup::updateDirection(direction);
			return;
		}

		QAbstractAnimation::Direction direction_ret = direction;
		int sigval1 = static_cast<int>(direction_ret);

		vtbl->updateDirection(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateDirection(int direction) {

		QParallelAnimationGroup::updateDirection(static_cast<QAbstractAnimation::Direction>(direction));

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QParallelAnimationGroup::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QParallelAnimationGroup::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QParallelAnimationGroup::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QParallelAnimationGroup::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QParallelAnimationGroup::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QParallelAnimationGroup::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QParallelAnimationGroup::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QParallelAnimationGroup::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QParallelAnimationGroup::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QParallelAnimationGroup::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QParallelAnimationGroup::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QParallelAnimationGroup::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QParallelAnimationGroup::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QParallelAnimationGroup::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QParallelAnimationGroup::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QParallelAnimationGroup::isSignalConnected(*signal);

	}

};

QParallelAnimationGroup* QParallelAnimationGroup_new(struct QParallelAnimationGroup_VTable* vtbl) {
	return new MiqtVirtualQParallelAnimationGroup(vtbl);
}

QParallelAnimationGroup* QParallelAnimationGroup_new2(struct QParallelAnimationGroup_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQParallelAnimationGroup(vtbl, parent);
}

void QParallelAnimationGroup_virtbase(QParallelAnimationGroup* src, QAnimationGroup** outptr_QAnimationGroup) {
	*outptr_QAnimationGroup = static_cast<QAnimationGroup*>(src);
}

QMetaObject* QParallelAnimationGroup_metaObject(const QParallelAnimationGroup* self) {
	return (QMetaObject*) self->metaObject();
}

void* QParallelAnimationGroup_metacast(QParallelAnimationGroup* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QParallelAnimationGroup_metacall(QParallelAnimationGroup* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QParallelAnimationGroup_tr(const char* s) {
	QString _ret = QParallelAnimationGroup::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QParallelAnimationGroup_trUtf8(const char* s) {
	QString _ret = QParallelAnimationGroup::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QParallelAnimationGroup_duration(const QParallelAnimationGroup* self) {
	return self->duration();
}

struct miqt_string QParallelAnimationGroup_tr2(const char* s, const char* c) {
	QString _ret = QParallelAnimationGroup::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QParallelAnimationGroup_tr3(const char* s, const char* c, int n) {
	QString _ret = QParallelAnimationGroup::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QParallelAnimationGroup_trUtf82(const char* s, const char* c) {
	QString _ret = QParallelAnimationGroup::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QParallelAnimationGroup_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QParallelAnimationGroup::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QParallelAnimationGroup_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQParallelAnimationGroup*)(self) )->virtualbase_metaObject();
}

void* QParallelAnimationGroup_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQParallelAnimationGroup*)(self) )->virtualbase_metacast(param1);
}

int QParallelAnimationGroup_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQParallelAnimationGroup*)(self) )->virtualbase_metacall(param1, param2, param3);
}

int QParallelAnimationGroup_virtualbase_duration(const void* self) {
	return ( (const MiqtVirtualQParallelAnimationGroup*)(self) )->virtualbase_duration();
}

bool QParallelAnimationGroup_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQParallelAnimationGroup*)(self) )->virtualbase_event(event);
}

void QParallelAnimationGroup_virtualbase_updateCurrentTime(void* self, int currentTime) {
	( (MiqtVirtualQParallelAnimationGroup*)(self) )->virtualbase_updateCurrentTime(currentTime);
}

void QParallelAnimationGroup_virtualbase_updateState(void* self, int newState, int oldState) {
	( (MiqtVirtualQParallelAnimationGroup*)(self) )->virtualbase_updateState(newState, oldState);
}

void QParallelAnimationGroup_virtualbase_updateDirection(void* self, int direction) {
	( (MiqtVirtualQParallelAnimationGroup*)(self) )->virtualbase_updateDirection(direction);
}

bool QParallelAnimationGroup_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQParallelAnimationGroup*)(self) )->virtualbase_eventFilter(watched, event);
}

void QParallelAnimationGroup_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQParallelAnimationGroup*)(self) )->virtualbase_timerEvent(event);
}

void QParallelAnimationGroup_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQParallelAnimationGroup*)(self) )->virtualbase_childEvent(event);
}

void QParallelAnimationGroup_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQParallelAnimationGroup*)(self) )->virtualbase_customEvent(event);
}

void QParallelAnimationGroup_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQParallelAnimationGroup*)(self) )->virtualbase_connectNotify(signal);
}

void QParallelAnimationGroup_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQParallelAnimationGroup*)(self) )->virtualbase_disconnectNotify(signal);
}

QObject* QParallelAnimationGroup_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQParallelAnimationGroup*)(self) )->protectedbase_sender();
}

int QParallelAnimationGroup_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQParallelAnimationGroup*)(self) )->protectedbase_senderSignalIndex();
}

int QParallelAnimationGroup_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQParallelAnimationGroup*)(self) )->protectedbase_receivers(signal);
}

bool QParallelAnimationGroup_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQParallelAnimationGroup*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QParallelAnimationGroup_staticMetaObject() { return &QParallelAnimationGroup::staticMetaObject; }
void QParallelAnimationGroup_delete(QParallelAnimationGroup* self) {
	delete self;
}

