#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQmlContext>
#define WORKAROUND_INNER_CLASS_DEFINITION_QQmlContext__PropertyPair
#include <QQmlEngine>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <QVariant>
#include <qqmlcontext.h>
#include "gen_qqmlcontext.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQQmlContext final : public QQmlContext {
	struct QQmlContext_VTable* vtbl;
public:

	MiqtVirtualQQmlContext(struct QQmlContext_VTable* vtbl, QQmlEngine* parent): QQmlContext(parent), vtbl(vtbl) {};
	MiqtVirtualQQmlContext(struct QQmlContext_VTable* vtbl, QQmlContext* parent): QQmlContext(parent), vtbl(vtbl) {};
	MiqtVirtualQQmlContext(struct QQmlContext_VTable* vtbl, QQmlEngine* parent, QObject* objParent): QQmlContext(parent, objParent), vtbl(vtbl) {};
	MiqtVirtualQQmlContext(struct QQmlContext_VTable* vtbl, QQmlContext* parent, QObject* objParent): QQmlContext(parent, objParent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQQmlContext() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQmlContext::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QQmlContext::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQmlContext::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QQmlContext::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQmlContext::qt_metacall(param1, param2, param3);
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

		return QQmlContext::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QQmlContext::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QQmlContext::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQmlContext::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QQmlContext::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQmlContext::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QQmlContext::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQmlContext::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QQmlContext::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQmlContext::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QQmlContext::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQmlContext::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QQmlContext::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQmlContext::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QQmlContext::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend QObject* QQmlContext_protectedbase_sender(const void* self);
	friend int QQmlContext_protectedbase_senderSignalIndex(const void* self);
	friend int QQmlContext_protectedbase_receivers(const void* self, const char* signal);
	friend bool QQmlContext_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QQmlContext* QQmlContext_new(struct QQmlContext_VTable* vtbl, QQmlEngine* parent) {
	return new MiqtVirtualQQmlContext(vtbl, parent);
}

QQmlContext* QQmlContext_new2(struct QQmlContext_VTable* vtbl, QQmlContext* parent) {
	return new MiqtVirtualQQmlContext(vtbl, parent);
}

QQmlContext* QQmlContext_new3(struct QQmlContext_VTable* vtbl, QQmlEngine* parent, QObject* objParent) {
	return new MiqtVirtualQQmlContext(vtbl, parent, objParent);
}

QQmlContext* QQmlContext_new4(struct QQmlContext_VTable* vtbl, QQmlContext* parent, QObject* objParent) {
	return new MiqtVirtualQQmlContext(vtbl, parent, objParent);
}

void QQmlContext_virtbase(QQmlContext* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QQmlContext_metaObject(const QQmlContext* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQmlContext_metacast(QQmlContext* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQmlContext_metacall(QQmlContext* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQmlContext_tr(const char* s) {
	QString _ret = QQmlContext::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlContext_trUtf8(const char* s) {
	QString _ret = QQmlContext::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QQmlContext_isValid(const QQmlContext* self) {
	return self->isValid();
}

QQmlEngine* QQmlContext_engine(const QQmlContext* self) {
	return self->engine();
}

QQmlContext* QQmlContext_parentContext(const QQmlContext* self) {
	return self->parentContext();
}

QObject* QQmlContext_contextObject(const QQmlContext* self) {
	return self->contextObject();
}

void QQmlContext_setContextObject(QQmlContext* self, QObject* contextObject) {
	self->setContextObject(contextObject);
}

QVariant* QQmlContext_contextProperty(const QQmlContext* self, struct miqt_string param1) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	return new QVariant(self->contextProperty(param1_QString));
}

void QQmlContext_setContextProperty(QQmlContext* self, struct miqt_string param1, QObject* param2) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->setContextProperty(param1_QString, param2);
}

void QQmlContext_setContextProperty2(QQmlContext* self, struct miqt_string param1, QVariant* param2) {
	QString param1_QString = QString::fromUtf8(param1.data, param1.len);
	self->setContextProperty(param1_QString, *param2);
}

void QQmlContext_setContextProperties(QQmlContext* self, struct miqt_array /* of QQmlContext__PropertyPair* */  properties) {
	QVector<QQmlContext::PropertyPair> properties_QList;
	properties_QList.reserve(properties.len);
	QQmlContext__PropertyPair** properties_arr = static_cast<QQmlContext__PropertyPair**>(properties.data);
	for(size_t i = 0; i < properties.len; ++i) {
		properties_QList.push_back(*(properties_arr[i]));
	}
	self->setContextProperties(properties_QList);
}

struct miqt_string QQmlContext_nameForObject(const QQmlContext* self, QObject* param1) {
	QString _ret = self->nameForObject(param1);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QQmlContext_resolvedUrl(QQmlContext* self, QUrl* param1) {
	return new QUrl(self->resolvedUrl(*param1));
}

void QQmlContext_setBaseUrl(QQmlContext* self, QUrl* baseUrl) {
	self->setBaseUrl(*baseUrl);
}

QUrl* QQmlContext_baseUrl(const QQmlContext* self) {
	return new QUrl(self->baseUrl());
}

struct miqt_string QQmlContext_tr2(const char* s, const char* c) {
	QString _ret = QQmlContext::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlContext_tr3(const char* s, const char* c, int n) {
	QString _ret = QQmlContext::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlContext_trUtf82(const char* s, const char* c) {
	QString _ret = QQmlContext::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlContext_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQmlContext::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QQmlContext_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQQmlContext*)(self) )->virtualbase_metaObject();
}

void* QQmlContext_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQQmlContext*)(self) )->virtualbase_metacast(param1);
}

int QQmlContext_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQQmlContext*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QQmlContext_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQQmlContext*)(self) )->virtualbase_event(event);
}

bool QQmlContext_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQQmlContext*)(self) )->virtualbase_eventFilter(watched, event);
}

void QQmlContext_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQQmlContext*)(self) )->virtualbase_timerEvent(event);
}

void QQmlContext_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQQmlContext*)(self) )->virtualbase_childEvent(event);
}

void QQmlContext_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQQmlContext*)(self) )->virtualbase_customEvent(event);
}

void QQmlContext_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQmlContext*)(self) )->virtualbase_connectNotify(signal);
}

void QQmlContext_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQmlContext*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QQmlContext_staticMetaObject() { return &QQmlContext::staticMetaObject; }
QObject* QQmlContext_protectedbase_sender(const void* self) {
	MiqtVirtualQQmlContext* self_cast = static_cast<MiqtVirtualQQmlContext*>( (QQmlContext*)(self) );
	
	return self_cast->sender();

}

int QQmlContext_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQQmlContext* self_cast = static_cast<MiqtVirtualQQmlContext*>( (QQmlContext*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QQmlContext_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQQmlContext* self_cast = static_cast<MiqtVirtualQQmlContext*>( (QQmlContext*)(self) );
	
	return self_cast->receivers(signal);

}

bool QQmlContext_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQQmlContext* self_cast = static_cast<MiqtVirtualQQmlContext*>( (QQmlContext*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QQmlContext_delete(QQmlContext* self) {
	delete self;
}

QQmlContext__PropertyPair* QQmlContext__PropertyPair_new(QQmlContext__PropertyPair* param1) {
	return new QQmlContext::PropertyPair(*param1);
}

void QQmlContext__PropertyPair_operatorAssign(QQmlContext__PropertyPair* self, QQmlContext__PropertyPair* param1) {
	self->operator=(*param1);
}

void QQmlContext__PropertyPair_delete(QQmlContext__PropertyPair* self) {
	delete self;
}

