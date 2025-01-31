#include <QChildEvent>
#include <QEvent>
#include <QGenericPlugin>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qgenericplugin.h>
#include "gen_qgenericplugin.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQGenericPlugin final : public QGenericPlugin {
	struct QGenericPlugin_VTable* vtbl;
public:

	MiqtVirtualQGenericPlugin(struct QGenericPlugin_VTable* vtbl): QGenericPlugin(), vtbl(vtbl) {};
	MiqtVirtualQGenericPlugin(struct QGenericPlugin_VTable* vtbl, QObject* parent): QGenericPlugin(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGenericPlugin() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGenericPlugin::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QGenericPlugin::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGenericPlugin::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QGenericPlugin::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGenericPlugin::qt_metacall(param1, param2, param3);
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

		return QGenericPlugin::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QObject* create(const QString& name, const QString& spec) override {
		if (vtbl->create == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct miqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct miqt_string sigval1 = name_ms;
		const QString spec_ret = spec;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray spec_b = spec_ret.toUtf8();
		struct miqt_string spec_ms;
		spec_ms.len = spec_b.length();
		spec_ms.data = static_cast<char*>(malloc(spec_ms.len));
		memcpy(spec_ms.data, spec_b.data(), spec_ms.len);
		struct miqt_string sigval2 = spec_ms;

		QObject* callback_return_value = vtbl->create(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGenericPlugin::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QGenericPlugin::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGenericPlugin::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QGenericPlugin::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGenericPlugin::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QGenericPlugin::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGenericPlugin::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QGenericPlugin::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGenericPlugin::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QGenericPlugin::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGenericPlugin::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QGenericPlugin::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGenericPlugin::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QGenericPlugin::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QGenericPlugin::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QGenericPlugin::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QGenericPlugin::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QGenericPlugin::isSignalConnected(*signal);

	}

};

QGenericPlugin* QGenericPlugin_new(struct QGenericPlugin_VTable* vtbl) {
	return new MiqtVirtualQGenericPlugin(vtbl);
}

QGenericPlugin* QGenericPlugin_new2(struct QGenericPlugin_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQGenericPlugin(vtbl, parent);
}

void QGenericPlugin_virtbase(QGenericPlugin* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QGenericPlugin_metaObject(const QGenericPlugin* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGenericPlugin_metacast(QGenericPlugin* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGenericPlugin_metacall(QGenericPlugin* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGenericPlugin_tr(const char* s) {
	QString _ret = QGenericPlugin::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QObject* QGenericPlugin_create(QGenericPlugin* self, struct miqt_string name, struct miqt_string spec) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	QString spec_QString = QString::fromUtf8(spec.data, spec.len);
	return self->create(name_QString, spec_QString);
}

struct miqt_string QGenericPlugin_tr2(const char* s, const char* c) {
	QString _ret = QGenericPlugin::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGenericPlugin_tr3(const char* s, const char* c, int n) {
	QString _ret = QGenericPlugin::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QGenericPlugin_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQGenericPlugin*)(self) )->virtualbase_metaObject();
}

void* QGenericPlugin_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQGenericPlugin*)(self) )->virtualbase_metacast(param1);
}

int QGenericPlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQGenericPlugin*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QGenericPlugin_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQGenericPlugin*)(self) )->virtualbase_event(event);
}

bool QGenericPlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQGenericPlugin*)(self) )->virtualbase_eventFilter(watched, event);
}

void QGenericPlugin_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQGenericPlugin*)(self) )->virtualbase_timerEvent(event);
}

void QGenericPlugin_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQGenericPlugin*)(self) )->virtualbase_childEvent(event);
}

void QGenericPlugin_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGenericPlugin*)(self) )->virtualbase_customEvent(event);
}

void QGenericPlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGenericPlugin*)(self) )->virtualbase_connectNotify(signal);
}

void QGenericPlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGenericPlugin*)(self) )->virtualbase_disconnectNotify(signal);
}

QObject* QGenericPlugin_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQGenericPlugin*)(self) )->protectedbase_sender();
}

int QGenericPlugin_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQGenericPlugin*)(self) )->protectedbase_senderSignalIndex();
}

int QGenericPlugin_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQGenericPlugin*)(self) )->protectedbase_receivers(signal);
}

bool QGenericPlugin_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQGenericPlugin*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QGenericPlugin_staticMetaObject() { return &QGenericPlugin::staticMetaObject; }
void QGenericPlugin_delete(QGenericPlugin* self) {
	delete self;
}

