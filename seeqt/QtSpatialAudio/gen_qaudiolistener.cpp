#include <QAudioEngine>
#include <QAudioListener>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QObject>
#include <QQuaternion>
#include <QTimerEvent>
#include <QVector3D>
#include <qaudiolistener.h>
#include "gen_qaudiolistener.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQAudioListener final : public QAudioListener {
	struct QAudioListener_VTable* vtbl;
public:

	MiqtVirtualQAudioListener(struct QAudioListener_VTable* vtbl, QAudioEngine* engine): QAudioListener(engine), vtbl(vtbl) {};

	virtual ~MiqtVirtualQAudioListener() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioListener::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAudioListener_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioListener::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAudioListener_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioListener::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAudioListener_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioListener::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QAudioListener_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioListener::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QAudioListener_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioListener::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QAudioListener_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioListener::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QAudioListener_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioListener::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QAudioListener_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAudioListener_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QAudioListener_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QAudioListener_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QAudioListener_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QAudioListener* QAudioListener_new(struct QAudioListener_VTable* vtbl, QAudioEngine* engine) {
	return new MiqtVirtualQAudioListener(vtbl, engine);
}

void QAudioListener_virtbase(QAudioListener* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

void QAudioListener_setPosition(QAudioListener* self, QVector3D* pos) {
	self->setPosition(*pos);
}

QVector3D* QAudioListener_position(const QAudioListener* self) {
	return new QVector3D(self->position());
}

void QAudioListener_setRotation(QAudioListener* self, QQuaternion* q) {
	self->setRotation(*q);
}

QQuaternion* QAudioListener_rotation(const QAudioListener* self) {
	return new QQuaternion(self->rotation());
}

QAudioEngine* QAudioListener_engine(const QAudioListener* self) {
	return self->engine();
}

int QAudioListener_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (MiqtVirtualQAudioListener*)(self) )->QAudioListener::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QAudioListener_virtualbase_event(void* self, QEvent* event) {

	return ( (MiqtVirtualQAudioListener*)(self) )->QAudioListener::event(event);

}

bool QAudioListener_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (MiqtVirtualQAudioListener*)(self) )->QAudioListener::eventFilter(watched, event);

}

void QAudioListener_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (MiqtVirtualQAudioListener*)(self) )->QAudioListener::timerEvent(event);

}

void QAudioListener_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (MiqtVirtualQAudioListener*)(self) )->QAudioListener::childEvent(event);

}

void QAudioListener_virtualbase_customEvent(void* self, QEvent* event) {

	( (MiqtVirtualQAudioListener*)(self) )->QAudioListener::customEvent(event);

}

void QAudioListener_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (MiqtVirtualQAudioListener*)(self) )->QAudioListener::connectNotify(*signal);

}

void QAudioListener_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (MiqtVirtualQAudioListener*)(self) )->QAudioListener::disconnectNotify(*signal);

}

QObject* QAudioListener_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQAudioListener* self_cast = dynamic_cast<MiqtVirtualQAudioListener*>( (QAudioListener*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QAudioListener_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQAudioListener* self_cast = dynamic_cast<MiqtVirtualQAudioListener*>( (QAudioListener*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QAudioListener_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	MiqtVirtualQAudioListener* self_cast = dynamic_cast<MiqtVirtualQAudioListener*>( (QAudioListener*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QAudioListener_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	MiqtVirtualQAudioListener* self_cast = dynamic_cast<MiqtVirtualQAudioListener*>( (QAudioListener*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QAudioListener_delete(QAudioListener* self) {
	delete self;
}

