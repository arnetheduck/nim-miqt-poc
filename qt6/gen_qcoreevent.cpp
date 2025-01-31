#include <QByteArray>
#include <QChildEvent>
#include <QDynamicPropertyChangeEvent>
#include <QEvent>
#include <QObject>
#include <QTimerEvent>
#include <qcoreevent.h>
#include "gen_qcoreevent.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QEvent_operatorAssign(intptr_t, QEvent*);
void miqt_exec_callback_QEvent_operatorAssign_release(intptr_t);
void miqt_exec_callback_QTimerEvent_operatorAssign(intptr_t, QTimerEvent*);
void miqt_exec_callback_QTimerEvent_operatorAssign_release(intptr_t);
void miqt_exec_callback_QChildEvent_operatorAssign(intptr_t, QChildEvent*);
void miqt_exec_callback_QChildEvent_operatorAssign_release(intptr_t);
void miqt_exec_callback_QDynamicPropertyChangeEvent_operatorAssign(intptr_t, QDynamicPropertyChangeEvent*);
void miqt_exec_callback_QDynamicPropertyChangeEvent_operatorAssign_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQEvent final : public QEvent {
	struct QEvent_VTable* vtbl;
public:

	MiqtVirtualQEvent(struct QEvent_VTable* vtbl, QEvent::Type type): QEvent(type), vtbl(vtbl) {};

	virtual ~MiqtVirtualQEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setAccepted(bool accepted) {

		QEvent::setAccepted(accepted);

	}

	// Subclass to allow providing a Go implementation
	virtual QEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QEvent::clone();
		}


		QEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QEvent* virtualbase_clone() const {

		return QEvent::clone();

	}

};

QEvent* QEvent_new(struct QEvent_VTable* vtbl, int type) {
	return new MiqtVirtualQEvent(vtbl, static_cast<QEvent::Type>(type));
}

int QEvent_type(const QEvent* self) {
	QEvent::Type _ret = self->type();
	return static_cast<int>(_ret);
}

bool QEvent_spontaneous(const QEvent* self) {
	return self->spontaneous();
}

void QEvent_setAccepted(QEvent* self, bool accepted) {
	self->setAccepted(accepted);
}

bool QEvent_isAccepted(const QEvent* self) {
	return self->isAccepted();
}

void QEvent_accept(QEvent* self) {
	self->accept();
}

void QEvent_ignore(QEvent* self) {
	self->ignore();
}

bool QEvent_isInputEvent(const QEvent* self) {
	return self->isInputEvent();
}

bool QEvent_isPointerEvent(const QEvent* self) {
	return self->isPointerEvent();
}

bool QEvent_isSinglePointEvent(const QEvent* self) {
	return self->isSinglePointEvent();
}

int QEvent_registerEventType() {
	return QEvent::registerEventType();
}

QEvent* QEvent_clone(const QEvent* self) {
	return self->clone();
}

int QEvent_registerEventType1(int hint) {
	return QEvent::registerEventType(static_cast<int>(hint));
}

void QEvent_virtualbase_setAccepted(void* self, bool accepted) {
	( (MiqtVirtualQEvent*)(self) )->virtualbase_setAccepted(accepted);
}

QEvent* QEvent_virtualbase_clone(const void* self) {
	return ( (const MiqtVirtualQEvent*)(self) )->virtualbase_clone();
}

const QMetaObject* QEvent_staticMetaObject() { return &QEvent::staticMetaObject; }
void QEvent_delete(QEvent* self) {
	delete self;
}

class MiqtVirtualQTimerEvent final : public QTimerEvent {
	struct QTimerEvent_VTable* vtbl;
public:

	MiqtVirtualQTimerEvent(struct QTimerEvent_VTable* vtbl, int timerId): QTimerEvent(timerId), vtbl(vtbl) {};

	virtual ~MiqtVirtualQTimerEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QTimerEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QTimerEvent::clone();
		}


		QTimerEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QTimerEvent* virtualbase_clone() const {

		return QTimerEvent::clone();

	}

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QTimerEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setAccepted(bool accepted) {

		QTimerEvent::setAccepted(accepted);

	}

};

QTimerEvent* QTimerEvent_new(struct QTimerEvent_VTable* vtbl, int timerId) {
	return new MiqtVirtualQTimerEvent(vtbl, static_cast<int>(timerId));
}

void QTimerEvent_virtbase(QTimerEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QTimerEvent* QTimerEvent_clone(const QTimerEvent* self) {
	return self->clone();
}

int QTimerEvent_timerId(const QTimerEvent* self) {
	return self->timerId();
}

QTimerEvent* QTimerEvent_virtualbase_clone(const void* self) {
	return ( (const MiqtVirtualQTimerEvent*)(self) )->virtualbase_clone();
}

void QTimerEvent_virtualbase_setAccepted(void* self, bool accepted) {
	( (MiqtVirtualQTimerEvent*)(self) )->virtualbase_setAccepted(accepted);
}

void QTimerEvent_delete(QTimerEvent* self) {
	delete self;
}

class MiqtVirtualQChildEvent final : public QChildEvent {
	struct QChildEvent_VTable* vtbl;
public:

	MiqtVirtualQChildEvent(struct QChildEvent_VTable* vtbl, QEvent::Type type, QObject* child): QChildEvent(type, child), vtbl(vtbl) {};

	virtual ~MiqtVirtualQChildEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QChildEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QChildEvent::clone();
		}


		QChildEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QChildEvent* virtualbase_clone() const {

		return QChildEvent::clone();

	}

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QChildEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setAccepted(bool accepted) {

		QChildEvent::setAccepted(accepted);

	}

};

QChildEvent* QChildEvent_new(struct QChildEvent_VTable* vtbl, int type, QObject* child) {
	return new MiqtVirtualQChildEvent(vtbl, static_cast<QEvent::Type>(type), child);
}

void QChildEvent_virtbase(QChildEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QChildEvent* QChildEvent_clone(const QChildEvent* self) {
	return self->clone();
}

QObject* QChildEvent_child(const QChildEvent* self) {
	return self->child();
}

bool QChildEvent_added(const QChildEvent* self) {
	return self->added();
}

bool QChildEvent_polished(const QChildEvent* self) {
	return self->polished();
}

bool QChildEvent_removed(const QChildEvent* self) {
	return self->removed();
}

QChildEvent* QChildEvent_virtualbase_clone(const void* self) {
	return ( (const MiqtVirtualQChildEvent*)(self) )->virtualbase_clone();
}

void QChildEvent_virtualbase_setAccepted(void* self, bool accepted) {
	( (MiqtVirtualQChildEvent*)(self) )->virtualbase_setAccepted(accepted);
}

void QChildEvent_delete(QChildEvent* self) {
	delete self;
}

class MiqtVirtualQDynamicPropertyChangeEvent final : public QDynamicPropertyChangeEvent {
	struct QDynamicPropertyChangeEvent_VTable* vtbl;
public:

	MiqtVirtualQDynamicPropertyChangeEvent(struct QDynamicPropertyChangeEvent_VTable* vtbl, const QByteArray& name): QDynamicPropertyChangeEvent(name), vtbl(vtbl) {};

	virtual ~MiqtVirtualQDynamicPropertyChangeEvent() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QDynamicPropertyChangeEvent* clone() const override {
		if (vtbl->clone == 0) {
			return QDynamicPropertyChangeEvent::clone();
		}


		QDynamicPropertyChangeEvent* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QDynamicPropertyChangeEvent* virtualbase_clone() const {

		return QDynamicPropertyChangeEvent::clone();

	}

	// Subclass to allow providing a Go implementation
	virtual void setAccepted(bool accepted) override {
		if (vtbl->setAccepted == 0) {
			QDynamicPropertyChangeEvent::setAccepted(accepted);
			return;
		}

		bool sigval1 = accepted;

		vtbl->setAccepted(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setAccepted(bool accepted) {

		QDynamicPropertyChangeEvent::setAccepted(accepted);

	}

};

QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_new(struct QDynamicPropertyChangeEvent_VTable* vtbl, struct miqt_string name) {
	QByteArray name_QByteArray(name.data, name.len);
	return new MiqtVirtualQDynamicPropertyChangeEvent(vtbl, name_QByteArray);
}

void QDynamicPropertyChangeEvent_virtbase(QDynamicPropertyChangeEvent* src, QEvent** outptr_QEvent) {
	*outptr_QEvent = static_cast<QEvent*>(src);
}

QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_clone(const QDynamicPropertyChangeEvent* self) {
	return self->clone();
}

struct miqt_string QDynamicPropertyChangeEvent_propertyName(const QDynamicPropertyChangeEvent* self) {
	QByteArray _qb = self->propertyName();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

QDynamicPropertyChangeEvent* QDynamicPropertyChangeEvent_virtualbase_clone(const void* self) {
	return ( (const MiqtVirtualQDynamicPropertyChangeEvent*)(self) )->virtualbase_clone();
}

void QDynamicPropertyChangeEvent_virtualbase_setAccepted(void* self, bool accepted) {
	( (MiqtVirtualQDynamicPropertyChangeEvent*)(self) )->virtualbase_setAccepted(accepted);
}

void QDynamicPropertyChangeEvent_delete(QDynamicPropertyChangeEvent* self) {
	delete self;
}

