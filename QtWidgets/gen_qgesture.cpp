#include <QChildEvent>
#include <QEvent>
#include <QGesture>
#include <QGestureEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPanGesture>
#include <QPinchGesture>
#include <QPointF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QSwipeGesture>
#include <QTapAndHoldGesture>
#include <QTapGesture>
#include <QTimerEvent>
#include <QWidget>
#include <qgesture.h>
#include "gen_qgesture.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQGesture final : public QGesture {
	struct QGesture_VTable* vtbl;
public:

	MiqtVirtualQGesture(struct QGesture_VTable* vtbl): QGesture(), vtbl(vtbl) {};
	MiqtVirtualQGesture(struct QGesture_VTable* vtbl, QObject* parent): QGesture(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGesture() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGesture::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QGesture::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGesture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QGesture::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGesture::qt_metacall(param1, param2, param3);
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

		return QGesture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGesture::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QGesture::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGesture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QGesture::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGesture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QGesture::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGesture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QGesture::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGesture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QGesture::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGesture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QGesture::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGesture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QGesture::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend QObject* QGesture_protectedbase_sender(const void* self);
	friend int QGesture_protectedbase_senderSignalIndex(const void* self);
	friend int QGesture_protectedbase_receivers(const void* self, const char* signal);
	friend bool QGesture_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QGesture* QGesture_new(struct QGesture_VTable* vtbl) {
	return new MiqtVirtualQGesture(vtbl);
}

QGesture* QGesture_new2(struct QGesture_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQGesture(vtbl, parent);
}

void QGesture_virtbase(QGesture* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QGesture_metaObject(const QGesture* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGesture_metacast(QGesture* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGesture_metacall(QGesture* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGesture_tr(const char* s) {
	QString _ret = QGesture::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QGesture_gestureType(const QGesture* self) {
	Qt::GestureType _ret = self->gestureType();
	return static_cast<int>(_ret);
}

int QGesture_state(const QGesture* self) {
	Qt::GestureState _ret = self->state();
	return static_cast<int>(_ret);
}

QPointF* QGesture_hotSpot(const QGesture* self) {
	return new QPointF(self->hotSpot());
}

void QGesture_setHotSpot(QGesture* self, QPointF* value) {
	self->setHotSpot(*value);
}

bool QGesture_hasHotSpot(const QGesture* self) {
	return self->hasHotSpot();
}

void QGesture_unsetHotSpot(QGesture* self) {
	self->unsetHotSpot();
}

void QGesture_setGestureCancelPolicy(QGesture* self, int policy) {
	self->setGestureCancelPolicy(static_cast<QGesture::GestureCancelPolicy>(policy));
}

int QGesture_gestureCancelPolicy(const QGesture* self) {
	QGesture::GestureCancelPolicy _ret = self->gestureCancelPolicy();
	return static_cast<int>(_ret);
}

struct miqt_string QGesture_tr2(const char* s, const char* c) {
	QString _ret = QGesture::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGesture_tr3(const char* s, const char* c, int n) {
	QString _ret = QGesture::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QGesture_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQGesture*)(self) )->virtualbase_metaObject();
}

void* QGesture_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQGesture*)(self) )->virtualbase_metacast(param1);
}

int QGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQGesture*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QGesture_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQGesture*)(self) )->virtualbase_event(event);
}

bool QGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQGesture*)(self) )->virtualbase_eventFilter(watched, event);
}

void QGesture_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQGesture*)(self) )->virtualbase_timerEvent(event);
}

void QGesture_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQGesture*)(self) )->virtualbase_childEvent(event);
}

void QGesture_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGesture*)(self) )->virtualbase_customEvent(event);
}

void QGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGesture*)(self) )->virtualbase_connectNotify(signal);
}

void QGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGesture*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QGesture_staticMetaObject() { return &QGesture::staticMetaObject; }
QObject* QGesture_protectedbase_sender(const void* self) {
	MiqtVirtualQGesture* self_cast = static_cast<MiqtVirtualQGesture*>( (QGesture*)(self) );
	
	return self_cast->sender();

}

int QGesture_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQGesture* self_cast = static_cast<MiqtVirtualQGesture*>( (QGesture*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QGesture_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQGesture* self_cast = static_cast<MiqtVirtualQGesture*>( (QGesture*)(self) );
	
	return self_cast->receivers(signal);

}

bool QGesture_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQGesture* self_cast = static_cast<MiqtVirtualQGesture*>( (QGesture*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QGesture_delete(QGesture* self) {
	delete self;
}

class MiqtVirtualQPanGesture final : public QPanGesture {
	struct QPanGesture_VTable* vtbl;
public:

	MiqtVirtualQPanGesture(struct QPanGesture_VTable* vtbl): QPanGesture(), vtbl(vtbl) {};
	MiqtVirtualQPanGesture(struct QPanGesture_VTable* vtbl, QObject* parent): QPanGesture(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQPanGesture() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPanGesture::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QPanGesture::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPanGesture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QPanGesture::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPanGesture::qt_metacall(param1, param2, param3);
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

		return QPanGesture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPanGesture::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QPanGesture::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPanGesture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QPanGesture::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPanGesture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QPanGesture::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPanGesture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QPanGesture::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPanGesture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QPanGesture::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPanGesture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QPanGesture::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPanGesture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QPanGesture::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend QObject* QPanGesture_protectedbase_sender(const void* self);
	friend int QPanGesture_protectedbase_senderSignalIndex(const void* self);
	friend int QPanGesture_protectedbase_receivers(const void* self, const char* signal);
	friend bool QPanGesture_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QPanGesture* QPanGesture_new(struct QPanGesture_VTable* vtbl) {
	return new MiqtVirtualQPanGesture(vtbl);
}

QPanGesture* QPanGesture_new2(struct QPanGesture_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQPanGesture(vtbl, parent);
}

void QPanGesture_virtbase(QPanGesture* src, QGesture** outptr_QGesture) {
	*outptr_QGesture = static_cast<QGesture*>(src);
}

QMetaObject* QPanGesture_metaObject(const QPanGesture* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPanGesture_metacast(QPanGesture* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPanGesture_metacall(QPanGesture* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QPanGesture_tr(const char* s) {
	QString _ret = QPanGesture::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QPointF* QPanGesture_lastOffset(const QPanGesture* self) {
	return new QPointF(self->lastOffset());
}

QPointF* QPanGesture_offset(const QPanGesture* self) {
	return new QPointF(self->offset());
}

QPointF* QPanGesture_delta(const QPanGesture* self) {
	return new QPointF(self->delta());
}

double QPanGesture_acceleration(const QPanGesture* self) {
	qreal _ret = self->acceleration();
	return static_cast<double>(_ret);
}

void QPanGesture_setLastOffset(QPanGesture* self, QPointF* value) {
	self->setLastOffset(*value);
}

void QPanGesture_setOffset(QPanGesture* self, QPointF* value) {
	self->setOffset(*value);
}

void QPanGesture_setAcceleration(QPanGesture* self, double value) {
	self->setAcceleration(static_cast<qreal>(value));
}

struct miqt_string QPanGesture_tr2(const char* s, const char* c) {
	QString _ret = QPanGesture::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPanGesture_tr3(const char* s, const char* c, int n) {
	QString _ret = QPanGesture::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QPanGesture_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQPanGesture*)(self) )->virtualbase_metaObject();
}

void* QPanGesture_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQPanGesture*)(self) )->virtualbase_metacast(param1);
}

int QPanGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQPanGesture*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QPanGesture_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQPanGesture*)(self) )->virtualbase_event(event);
}

bool QPanGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQPanGesture*)(self) )->virtualbase_eventFilter(watched, event);
}

void QPanGesture_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQPanGesture*)(self) )->virtualbase_timerEvent(event);
}

void QPanGesture_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQPanGesture*)(self) )->virtualbase_childEvent(event);
}

void QPanGesture_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQPanGesture*)(self) )->virtualbase_customEvent(event);
}

void QPanGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQPanGesture*)(self) )->virtualbase_connectNotify(signal);
}

void QPanGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQPanGesture*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QPanGesture_staticMetaObject() { return &QPanGesture::staticMetaObject; }
QObject* QPanGesture_protectedbase_sender(const void* self) {
	MiqtVirtualQPanGesture* self_cast = static_cast<MiqtVirtualQPanGesture*>( (QPanGesture*)(self) );
	
	return self_cast->sender();

}

int QPanGesture_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQPanGesture* self_cast = static_cast<MiqtVirtualQPanGesture*>( (QPanGesture*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QPanGesture_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQPanGesture* self_cast = static_cast<MiqtVirtualQPanGesture*>( (QPanGesture*)(self) );
	
	return self_cast->receivers(signal);

}

bool QPanGesture_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQPanGesture* self_cast = static_cast<MiqtVirtualQPanGesture*>( (QPanGesture*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QPanGesture_delete(QPanGesture* self) {
	delete self;
}

class MiqtVirtualQPinchGesture final : public QPinchGesture {
	struct QPinchGesture_VTable* vtbl;
public:

	MiqtVirtualQPinchGesture(struct QPinchGesture_VTable* vtbl): QPinchGesture(), vtbl(vtbl) {};
	MiqtVirtualQPinchGesture(struct QPinchGesture_VTable* vtbl, QObject* parent): QPinchGesture(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQPinchGesture() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPinchGesture::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QPinchGesture::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPinchGesture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QPinchGesture::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPinchGesture::qt_metacall(param1, param2, param3);
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

		return QPinchGesture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPinchGesture::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QPinchGesture::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPinchGesture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QPinchGesture::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPinchGesture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QPinchGesture::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPinchGesture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QPinchGesture::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPinchGesture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QPinchGesture::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPinchGesture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QPinchGesture::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPinchGesture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QPinchGesture::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend QObject* QPinchGesture_protectedbase_sender(const void* self);
	friend int QPinchGesture_protectedbase_senderSignalIndex(const void* self);
	friend int QPinchGesture_protectedbase_receivers(const void* self, const char* signal);
	friend bool QPinchGesture_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QPinchGesture* QPinchGesture_new(struct QPinchGesture_VTable* vtbl) {
	return new MiqtVirtualQPinchGesture(vtbl);
}

QPinchGesture* QPinchGesture_new2(struct QPinchGesture_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQPinchGesture(vtbl, parent);
}

void QPinchGesture_virtbase(QPinchGesture* src, QGesture** outptr_QGesture) {
	*outptr_QGesture = static_cast<QGesture*>(src);
}

QMetaObject* QPinchGesture_metaObject(const QPinchGesture* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPinchGesture_metacast(QPinchGesture* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPinchGesture_metacall(QPinchGesture* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QPinchGesture_tr(const char* s) {
	QString _ret = QPinchGesture::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QPinchGesture_totalChangeFlags(const QPinchGesture* self) {
	QPinchGesture::ChangeFlags _ret = self->totalChangeFlags();
	return static_cast<int>(_ret);
}

void QPinchGesture_setTotalChangeFlags(QPinchGesture* self, int value) {
	self->setTotalChangeFlags(static_cast<QPinchGesture::ChangeFlags>(value));
}

int QPinchGesture_changeFlags(const QPinchGesture* self) {
	QPinchGesture::ChangeFlags _ret = self->changeFlags();
	return static_cast<int>(_ret);
}

void QPinchGesture_setChangeFlags(QPinchGesture* self, int value) {
	self->setChangeFlags(static_cast<QPinchGesture::ChangeFlags>(value));
}

QPointF* QPinchGesture_startCenterPoint(const QPinchGesture* self) {
	return new QPointF(self->startCenterPoint());
}

QPointF* QPinchGesture_lastCenterPoint(const QPinchGesture* self) {
	return new QPointF(self->lastCenterPoint());
}

QPointF* QPinchGesture_centerPoint(const QPinchGesture* self) {
	return new QPointF(self->centerPoint());
}

void QPinchGesture_setStartCenterPoint(QPinchGesture* self, QPointF* value) {
	self->setStartCenterPoint(*value);
}

void QPinchGesture_setLastCenterPoint(QPinchGesture* self, QPointF* value) {
	self->setLastCenterPoint(*value);
}

void QPinchGesture_setCenterPoint(QPinchGesture* self, QPointF* value) {
	self->setCenterPoint(*value);
}

double QPinchGesture_totalScaleFactor(const QPinchGesture* self) {
	qreal _ret = self->totalScaleFactor();
	return static_cast<double>(_ret);
}

double QPinchGesture_lastScaleFactor(const QPinchGesture* self) {
	qreal _ret = self->lastScaleFactor();
	return static_cast<double>(_ret);
}

double QPinchGesture_scaleFactor(const QPinchGesture* self) {
	qreal _ret = self->scaleFactor();
	return static_cast<double>(_ret);
}

void QPinchGesture_setTotalScaleFactor(QPinchGesture* self, double value) {
	self->setTotalScaleFactor(static_cast<qreal>(value));
}

void QPinchGesture_setLastScaleFactor(QPinchGesture* self, double value) {
	self->setLastScaleFactor(static_cast<qreal>(value));
}

void QPinchGesture_setScaleFactor(QPinchGesture* self, double value) {
	self->setScaleFactor(static_cast<qreal>(value));
}

double QPinchGesture_totalRotationAngle(const QPinchGesture* self) {
	qreal _ret = self->totalRotationAngle();
	return static_cast<double>(_ret);
}

double QPinchGesture_lastRotationAngle(const QPinchGesture* self) {
	qreal _ret = self->lastRotationAngle();
	return static_cast<double>(_ret);
}

double QPinchGesture_rotationAngle(const QPinchGesture* self) {
	qreal _ret = self->rotationAngle();
	return static_cast<double>(_ret);
}

void QPinchGesture_setTotalRotationAngle(QPinchGesture* self, double value) {
	self->setTotalRotationAngle(static_cast<qreal>(value));
}

void QPinchGesture_setLastRotationAngle(QPinchGesture* self, double value) {
	self->setLastRotationAngle(static_cast<qreal>(value));
}

void QPinchGesture_setRotationAngle(QPinchGesture* self, double value) {
	self->setRotationAngle(static_cast<qreal>(value));
}

struct miqt_string QPinchGesture_tr2(const char* s, const char* c) {
	QString _ret = QPinchGesture::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPinchGesture_tr3(const char* s, const char* c, int n) {
	QString _ret = QPinchGesture::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QPinchGesture_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQPinchGesture*)(self) )->virtualbase_metaObject();
}

void* QPinchGesture_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQPinchGesture*)(self) )->virtualbase_metacast(param1);
}

int QPinchGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQPinchGesture*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QPinchGesture_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQPinchGesture*)(self) )->virtualbase_event(event);
}

bool QPinchGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQPinchGesture*)(self) )->virtualbase_eventFilter(watched, event);
}

void QPinchGesture_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQPinchGesture*)(self) )->virtualbase_timerEvent(event);
}

void QPinchGesture_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQPinchGesture*)(self) )->virtualbase_childEvent(event);
}

void QPinchGesture_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQPinchGesture*)(self) )->virtualbase_customEvent(event);
}

void QPinchGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQPinchGesture*)(self) )->virtualbase_connectNotify(signal);
}

void QPinchGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQPinchGesture*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QPinchGesture_staticMetaObject() { return &QPinchGesture::staticMetaObject; }
QObject* QPinchGesture_protectedbase_sender(const void* self) {
	MiqtVirtualQPinchGesture* self_cast = static_cast<MiqtVirtualQPinchGesture*>( (QPinchGesture*)(self) );
	
	return self_cast->sender();

}

int QPinchGesture_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQPinchGesture* self_cast = static_cast<MiqtVirtualQPinchGesture*>( (QPinchGesture*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QPinchGesture_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQPinchGesture* self_cast = static_cast<MiqtVirtualQPinchGesture*>( (QPinchGesture*)(self) );
	
	return self_cast->receivers(signal);

}

bool QPinchGesture_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQPinchGesture* self_cast = static_cast<MiqtVirtualQPinchGesture*>( (QPinchGesture*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QPinchGesture_delete(QPinchGesture* self) {
	delete self;
}

class MiqtVirtualQSwipeGesture final : public QSwipeGesture {
	struct QSwipeGesture_VTable* vtbl;
public:

	MiqtVirtualQSwipeGesture(struct QSwipeGesture_VTable* vtbl): QSwipeGesture(), vtbl(vtbl) {};
	MiqtVirtualQSwipeGesture(struct QSwipeGesture_VTable* vtbl, QObject* parent): QSwipeGesture(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSwipeGesture() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSwipeGesture::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QSwipeGesture::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSwipeGesture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QSwipeGesture::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSwipeGesture::qt_metacall(param1, param2, param3);
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

		return QSwipeGesture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSwipeGesture::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QSwipeGesture::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSwipeGesture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QSwipeGesture::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSwipeGesture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QSwipeGesture::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSwipeGesture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QSwipeGesture::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSwipeGesture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QSwipeGesture::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSwipeGesture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QSwipeGesture::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSwipeGesture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QSwipeGesture::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend QObject* QSwipeGesture_protectedbase_sender(const void* self);
	friend int QSwipeGesture_protectedbase_senderSignalIndex(const void* self);
	friend int QSwipeGesture_protectedbase_receivers(const void* self, const char* signal);
	friend bool QSwipeGesture_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QSwipeGesture* QSwipeGesture_new(struct QSwipeGesture_VTable* vtbl) {
	return new MiqtVirtualQSwipeGesture(vtbl);
}

QSwipeGesture* QSwipeGesture_new2(struct QSwipeGesture_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQSwipeGesture(vtbl, parent);
}

void QSwipeGesture_virtbase(QSwipeGesture* src, QGesture** outptr_QGesture) {
	*outptr_QGesture = static_cast<QGesture*>(src);
}

QMetaObject* QSwipeGesture_metaObject(const QSwipeGesture* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSwipeGesture_metacast(QSwipeGesture* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSwipeGesture_metacall(QSwipeGesture* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSwipeGesture_tr(const char* s) {
	QString _ret = QSwipeGesture::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QSwipeGesture_horizontalDirection(const QSwipeGesture* self) {
	QSwipeGesture::SwipeDirection _ret = self->horizontalDirection();
	return static_cast<int>(_ret);
}

int QSwipeGesture_verticalDirection(const QSwipeGesture* self) {
	QSwipeGesture::SwipeDirection _ret = self->verticalDirection();
	return static_cast<int>(_ret);
}

double QSwipeGesture_swipeAngle(const QSwipeGesture* self) {
	qreal _ret = self->swipeAngle();
	return static_cast<double>(_ret);
}

void QSwipeGesture_setSwipeAngle(QSwipeGesture* self, double value) {
	self->setSwipeAngle(static_cast<qreal>(value));
}

struct miqt_string QSwipeGesture_tr2(const char* s, const char* c) {
	QString _ret = QSwipeGesture::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSwipeGesture_tr3(const char* s, const char* c, int n) {
	QString _ret = QSwipeGesture::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSwipeGesture_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQSwipeGesture*)(self) )->virtualbase_metaObject();
}

void* QSwipeGesture_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQSwipeGesture*)(self) )->virtualbase_metacast(param1);
}

int QSwipeGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQSwipeGesture*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QSwipeGesture_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQSwipeGesture*)(self) )->virtualbase_event(event);
}

bool QSwipeGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQSwipeGesture*)(self) )->virtualbase_eventFilter(watched, event);
}

void QSwipeGesture_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQSwipeGesture*)(self) )->virtualbase_timerEvent(event);
}

void QSwipeGesture_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQSwipeGesture*)(self) )->virtualbase_childEvent(event);
}

void QSwipeGesture_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSwipeGesture*)(self) )->virtualbase_customEvent(event);
}

void QSwipeGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSwipeGesture*)(self) )->virtualbase_connectNotify(signal);
}

void QSwipeGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSwipeGesture*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QSwipeGesture_staticMetaObject() { return &QSwipeGesture::staticMetaObject; }
QObject* QSwipeGesture_protectedbase_sender(const void* self) {
	MiqtVirtualQSwipeGesture* self_cast = static_cast<MiqtVirtualQSwipeGesture*>( (QSwipeGesture*)(self) );
	
	return self_cast->sender();

}

int QSwipeGesture_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQSwipeGesture* self_cast = static_cast<MiqtVirtualQSwipeGesture*>( (QSwipeGesture*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QSwipeGesture_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQSwipeGesture* self_cast = static_cast<MiqtVirtualQSwipeGesture*>( (QSwipeGesture*)(self) );
	
	return self_cast->receivers(signal);

}

bool QSwipeGesture_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQSwipeGesture* self_cast = static_cast<MiqtVirtualQSwipeGesture*>( (QSwipeGesture*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QSwipeGesture_delete(QSwipeGesture* self) {
	delete self;
}

class MiqtVirtualQTapGesture final : public QTapGesture {
	struct QTapGesture_VTable* vtbl;
public:

	MiqtVirtualQTapGesture(struct QTapGesture_VTable* vtbl): QTapGesture(), vtbl(vtbl) {};
	MiqtVirtualQTapGesture(struct QTapGesture_VTable* vtbl, QObject* parent): QTapGesture(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQTapGesture() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTapGesture::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QTapGesture::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTapGesture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QTapGesture::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTapGesture::qt_metacall(param1, param2, param3);
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

		return QTapGesture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTapGesture::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QTapGesture::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTapGesture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QTapGesture::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTapGesture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QTapGesture::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTapGesture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QTapGesture::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTapGesture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QTapGesture::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTapGesture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QTapGesture::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTapGesture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QTapGesture::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend QObject* QTapGesture_protectedbase_sender(const void* self);
	friend int QTapGesture_protectedbase_senderSignalIndex(const void* self);
	friend int QTapGesture_protectedbase_receivers(const void* self, const char* signal);
	friend bool QTapGesture_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QTapGesture* QTapGesture_new(struct QTapGesture_VTable* vtbl) {
	return new MiqtVirtualQTapGesture(vtbl);
}

QTapGesture* QTapGesture_new2(struct QTapGesture_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQTapGesture(vtbl, parent);
}

void QTapGesture_virtbase(QTapGesture* src, QGesture** outptr_QGesture) {
	*outptr_QGesture = static_cast<QGesture*>(src);
}

QMetaObject* QTapGesture_metaObject(const QTapGesture* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTapGesture_metacast(QTapGesture* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTapGesture_metacall(QTapGesture* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTapGesture_tr(const char* s) {
	QString _ret = QTapGesture::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QPointF* QTapGesture_position(const QTapGesture* self) {
	return new QPointF(self->position());
}

void QTapGesture_setPosition(QTapGesture* self, QPointF* pos) {
	self->setPosition(*pos);
}

struct miqt_string QTapGesture_tr2(const char* s, const char* c) {
	QString _ret = QTapGesture::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTapGesture_tr3(const char* s, const char* c, int n) {
	QString _ret = QTapGesture::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QTapGesture_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQTapGesture*)(self) )->virtualbase_metaObject();
}

void* QTapGesture_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQTapGesture*)(self) )->virtualbase_metacast(param1);
}

int QTapGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQTapGesture*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QTapGesture_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQTapGesture*)(self) )->virtualbase_event(event);
}

bool QTapGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQTapGesture*)(self) )->virtualbase_eventFilter(watched, event);
}

void QTapGesture_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQTapGesture*)(self) )->virtualbase_timerEvent(event);
}

void QTapGesture_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQTapGesture*)(self) )->virtualbase_childEvent(event);
}

void QTapGesture_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQTapGesture*)(self) )->virtualbase_customEvent(event);
}

void QTapGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQTapGesture*)(self) )->virtualbase_connectNotify(signal);
}

void QTapGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQTapGesture*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QTapGesture_staticMetaObject() { return &QTapGesture::staticMetaObject; }
QObject* QTapGesture_protectedbase_sender(const void* self) {
	MiqtVirtualQTapGesture* self_cast = static_cast<MiqtVirtualQTapGesture*>( (QTapGesture*)(self) );
	
	return self_cast->sender();

}

int QTapGesture_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQTapGesture* self_cast = static_cast<MiqtVirtualQTapGesture*>( (QTapGesture*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QTapGesture_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQTapGesture* self_cast = static_cast<MiqtVirtualQTapGesture*>( (QTapGesture*)(self) );
	
	return self_cast->receivers(signal);

}

bool QTapGesture_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQTapGesture* self_cast = static_cast<MiqtVirtualQTapGesture*>( (QTapGesture*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QTapGesture_delete(QTapGesture* self) {
	delete self;
}

class MiqtVirtualQTapAndHoldGesture final : public QTapAndHoldGesture {
	struct QTapAndHoldGesture_VTable* vtbl;
public:

	MiqtVirtualQTapAndHoldGesture(struct QTapAndHoldGesture_VTable* vtbl): QTapAndHoldGesture(), vtbl(vtbl) {};
	MiqtVirtualQTapAndHoldGesture(struct QTapAndHoldGesture_VTable* vtbl, QObject* parent): QTapAndHoldGesture(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQTapAndHoldGesture() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTapAndHoldGesture::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QTapAndHoldGesture::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTapAndHoldGesture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QTapAndHoldGesture::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTapAndHoldGesture::qt_metacall(param1, param2, param3);
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

		return QTapAndHoldGesture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTapAndHoldGesture::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QTapAndHoldGesture::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTapAndHoldGesture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QTapAndHoldGesture::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTapAndHoldGesture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QTapAndHoldGesture::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTapAndHoldGesture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QTapAndHoldGesture::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTapAndHoldGesture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QTapAndHoldGesture::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTapAndHoldGesture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QTapAndHoldGesture::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTapAndHoldGesture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QTapAndHoldGesture::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend QObject* QTapAndHoldGesture_protectedbase_sender(const void* self);
	friend int QTapAndHoldGesture_protectedbase_senderSignalIndex(const void* self);
	friend int QTapAndHoldGesture_protectedbase_receivers(const void* self, const char* signal);
	friend bool QTapAndHoldGesture_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QTapAndHoldGesture* QTapAndHoldGesture_new(struct QTapAndHoldGesture_VTable* vtbl) {
	return new MiqtVirtualQTapAndHoldGesture(vtbl);
}

QTapAndHoldGesture* QTapAndHoldGesture_new2(struct QTapAndHoldGesture_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQTapAndHoldGesture(vtbl, parent);
}

void QTapAndHoldGesture_virtbase(QTapAndHoldGesture* src, QGesture** outptr_QGesture) {
	*outptr_QGesture = static_cast<QGesture*>(src);
}

QMetaObject* QTapAndHoldGesture_metaObject(const QTapAndHoldGesture* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTapAndHoldGesture_metacast(QTapAndHoldGesture* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTapAndHoldGesture_metacall(QTapAndHoldGesture* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTapAndHoldGesture_tr(const char* s) {
	QString _ret = QTapAndHoldGesture::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QPointF* QTapAndHoldGesture_position(const QTapAndHoldGesture* self) {
	return new QPointF(self->position());
}

void QTapAndHoldGesture_setPosition(QTapAndHoldGesture* self, QPointF* pos) {
	self->setPosition(*pos);
}

void QTapAndHoldGesture_setTimeout(int msecs) {
	QTapAndHoldGesture::setTimeout(static_cast<int>(msecs));
}

int QTapAndHoldGesture_timeout() {
	return QTapAndHoldGesture::timeout();
}

struct miqt_string QTapAndHoldGesture_tr2(const char* s, const char* c) {
	QString _ret = QTapAndHoldGesture::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTapAndHoldGesture_tr3(const char* s, const char* c, int n) {
	QString _ret = QTapAndHoldGesture::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QTapAndHoldGesture_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQTapAndHoldGesture*)(self) )->virtualbase_metaObject();
}

void* QTapAndHoldGesture_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQTapAndHoldGesture*)(self) )->virtualbase_metacast(param1);
}

int QTapAndHoldGesture_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQTapAndHoldGesture*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QTapAndHoldGesture_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQTapAndHoldGesture*)(self) )->virtualbase_event(event);
}

bool QTapAndHoldGesture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQTapAndHoldGesture*)(self) )->virtualbase_eventFilter(watched, event);
}

void QTapAndHoldGesture_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQTapAndHoldGesture*)(self) )->virtualbase_timerEvent(event);
}

void QTapAndHoldGesture_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQTapAndHoldGesture*)(self) )->virtualbase_childEvent(event);
}

void QTapAndHoldGesture_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQTapAndHoldGesture*)(self) )->virtualbase_customEvent(event);
}

void QTapAndHoldGesture_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQTapAndHoldGesture*)(self) )->virtualbase_connectNotify(signal);
}

void QTapAndHoldGesture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQTapAndHoldGesture*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QTapAndHoldGesture_staticMetaObject() { return &QTapAndHoldGesture::staticMetaObject; }
QObject* QTapAndHoldGesture_protectedbase_sender(const void* self) {
	MiqtVirtualQTapAndHoldGesture* self_cast = static_cast<MiqtVirtualQTapAndHoldGesture*>( (QTapAndHoldGesture*)(self) );
	
	return self_cast->sender();

}

int QTapAndHoldGesture_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQTapAndHoldGesture* self_cast = static_cast<MiqtVirtualQTapAndHoldGesture*>( (QTapAndHoldGesture*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QTapAndHoldGesture_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQTapAndHoldGesture* self_cast = static_cast<MiqtVirtualQTapAndHoldGesture*>( (QTapAndHoldGesture*)(self) );
	
	return self_cast->receivers(signal);

}

bool QTapAndHoldGesture_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQTapAndHoldGesture* self_cast = static_cast<MiqtVirtualQTapAndHoldGesture*>( (QTapAndHoldGesture*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QTapAndHoldGesture_delete(QTapAndHoldGesture* self) {
	delete self;
}

class MiqtVirtualQGestureEvent final : public QGestureEvent {
	struct QGestureEvent_VTable* vtbl;
public:

	MiqtVirtualQGestureEvent(struct QGestureEvent_VTable* vtbl, const QList<QGesture *>& gestures): QGestureEvent(gestures), vtbl(vtbl) {};
	MiqtVirtualQGestureEvent(struct QGestureEvent_VTable* vtbl, const QGestureEvent& param1): QGestureEvent(param1), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGestureEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QGestureEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setAccepted(bool accepted) {

		QGestureEvent::setAccepted(accepted);

	}

	// Subclass to allow providing a Go implementation
	virtual QEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QGestureEvent::clone();
		}


		QEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QEvent* virtualbase_clone() const {

		return QGestureEvent::clone();

	}

};

QGestureEvent* QGestureEvent_new(struct QGestureEvent_VTable* vtbl, struct miqt_array /* of QGesture* */  gestures) {
	QList<QGesture *> gestures_QList;
	gestures_QList.reserve(gestures.len);
	QGesture** gestures_arr = static_cast<QGesture**>(gestures.data);
	for(size_t i = 0; i < gestures.len; ++i) {
		gestures_QList.push_back(gestures_arr[i]);
	}
	return new MiqtVirtualQGestureEvent(vtbl, gestures_QList);
}

QGestureEvent* QGestureEvent_new2(struct QGestureEvent_VTable* vtbl, QGestureEvent* param1) {
	return new MiqtVirtualQGestureEvent(vtbl, *param1);
}

void QGestureEvent_virtbase(QGestureEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

struct miqt_array /* of QGesture* */  QGestureEvent_gestures(const QGestureEvent* self) {
	QList<QGesture *> _ret = self->gestures();
	// Convert QList<> from C++ memory to manually-managed C memory
	QGesture** _arr = static_cast<QGesture**>(malloc(sizeof(QGesture*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QGesture* QGestureEvent_gesture(const QGestureEvent* self, int type) {
	return self->gesture(static_cast<Qt::GestureType>(type));
}

struct miqt_array /* of QGesture* */  QGestureEvent_activeGestures(const QGestureEvent* self) {
	QList<QGesture *> _ret = self->activeGestures();
	// Convert QList<> from C++ memory to manually-managed C memory
	QGesture** _arr = static_cast<QGesture**>(malloc(sizeof(QGesture*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QGesture* */  QGestureEvent_canceledGestures(const QGestureEvent* self) {
	QList<QGesture *> _ret = self->canceledGestures();
	// Convert QList<> from C++ memory to manually-managed C memory
	QGesture** _arr = static_cast<QGesture**>(malloc(sizeof(QGesture*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QGestureEvent_setAccepted(QGestureEvent* self, QGesture* param1, bool param2) {
	self->setAccepted(param1, param2);
}

void QGestureEvent_accept(QGestureEvent* self, QGesture* param1) {
	self->accept(param1);
}

void QGestureEvent_ignore(QGestureEvent* self, QGesture* param1) {
	self->ignore(param1);
}

bool QGestureEvent_isAccepted(const QGestureEvent* self, QGesture* param1) {
	return self->isAccepted(param1);
}

void QGestureEvent_setAccepted2(QGestureEvent* self, int param1, bool param2) {
	self->setAccepted(static_cast<Qt::GestureType>(param1), param2);
}

void QGestureEvent_acceptWithQtGestureType(QGestureEvent* self, int param1) {
	self->accept(static_cast<Qt::GestureType>(param1));
}

void QGestureEvent_ignoreWithQtGestureType(QGestureEvent* self, int param1) {
	self->ignore(static_cast<Qt::GestureType>(param1));
}

bool QGestureEvent_isAcceptedWithQtGestureType(const QGestureEvent* self, int param1) {
	return self->isAccepted(static_cast<Qt::GestureType>(param1));
}

void QGestureEvent_setWidget(QGestureEvent* self, QWidget* widget) {
	self->setWidget(widget);
}

QWidget* QGestureEvent_widget(const QGestureEvent* self) {
	return self->widget();
}

QPointF* QGestureEvent_mapToGraphicsScene(const QGestureEvent* self, QPointF* gesturePoint) {
	return new QPointF(self->mapToGraphicsScene(*gesturePoint));
}

void QGestureEvent_virtualbase_setAccepted(void* self, bool accepted) {
	( (MiqtVirtualQGestureEvent*)(self) )->virtualbase_setAccepted(accepted);
}

QEvent* QGestureEvent_virtualbase_clone(const void* self) {
	return ( (const MiqtVirtualQGestureEvent*)(self) )->virtualbase_clone();
}

void QGestureEvent_delete(QGestureEvent* self) {
	delete self;
}

