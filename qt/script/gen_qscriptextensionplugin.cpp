#include <QChildEvent>
#include <QEvent>
#include <QFactoryInterface>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QScriptEngine>
#include <QScriptExtensionInterface>
#include <QScriptExtensionPlugin>
#include <QScriptValue>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qscriptextensionplugin.h>
#include "gen_qscriptextensionplugin.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQScriptExtensionPlugin final : public QScriptExtensionPlugin {
	struct QScriptExtensionPlugin_VTable* vtbl;
public:

	MiqtVirtualQScriptExtensionPlugin(struct QScriptExtensionPlugin_VTable* vtbl): QScriptExtensionPlugin(), vtbl(vtbl) {};
	MiqtVirtualQScriptExtensionPlugin(struct QScriptExtensionPlugin_VTable* vtbl, QObject* parent): QScriptExtensionPlugin(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQScriptExtensionPlugin() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QScriptExtensionPlugin::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QScriptExtensionPlugin::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QScriptExtensionPlugin::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QScriptExtensionPlugin::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QScriptExtensionPlugin::qt_metacall(param1, param2, param3);
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

		return QScriptExtensionPlugin::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QStringList keys() const override {
		if (vtbl->keys == 0) {
			return QStringList(); // Pure virtual, there is no base we can call
		}


		struct miqt_array /* of struct miqt_string */  callback_return_value = vtbl->keys(vtbl, this);
		QStringList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		struct miqt_string* callback_return_value_arr = static_cast<struct miqt_string*>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			QString callback_return_value_arr_i_QString = QString::fromUtf8(callback_return_value_arr[i].data, callback_return_value_arr[i].len);
			callback_return_value_QList.push_back(callback_return_value_arr_i_QString);
		}

		return callback_return_value_QList;
	}

	// Subclass to allow providing a Go implementation
	virtual void initialize(const QString& key, QScriptEngine* engine) override {
		if (vtbl->initialize == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString key_ret = key;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray key_b = key_ret.toUtf8();
		struct miqt_string key_ms;
		key_ms.len = key_b.length();
		key_ms.data = static_cast<char*>(malloc(key_ms.len));
		memcpy(key_ms.data, key_b.data(), key_ms.len);
		struct miqt_string sigval1 = key_ms;
		QScriptEngine* sigval2 = engine;

		vtbl->initialize(vtbl, this, sigval1, sigval2);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QScriptExtensionPlugin::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QScriptExtensionPlugin::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QScriptExtensionPlugin::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QScriptExtensionPlugin::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QScriptExtensionPlugin::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QScriptExtensionPlugin::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QScriptExtensionPlugin::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QScriptExtensionPlugin::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QScriptExtensionPlugin::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QScriptExtensionPlugin::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QScriptExtensionPlugin::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QScriptExtensionPlugin::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QScriptExtensionPlugin::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QScriptExtensionPlugin::disconnectNotify(*signal);

	}

};

QScriptExtensionPlugin* QScriptExtensionPlugin_new(struct QScriptExtensionPlugin_VTable* vtbl) {
	return new MiqtVirtualQScriptExtensionPlugin(vtbl);
}

QScriptExtensionPlugin* QScriptExtensionPlugin_new2(struct QScriptExtensionPlugin_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQScriptExtensionPlugin(vtbl, parent);
}

void QScriptExtensionPlugin_virtbase(QScriptExtensionPlugin* src, QObject** outptr_QObject, QScriptExtensionInterface** outptr_QScriptExtensionInterface) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QScriptExtensionInterface = static_cast<QScriptExtensionInterface*>(src);
}

QMetaObject* QScriptExtensionPlugin_metaObject(const QScriptExtensionPlugin* self) {
	return (QMetaObject*) self->metaObject();
}

void* QScriptExtensionPlugin_metacast(QScriptExtensionPlugin* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QScriptExtensionPlugin_metacall(QScriptExtensionPlugin* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QScriptExtensionPlugin_tr(const char* s) {
	QString _ret = QScriptExtensionPlugin::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QScriptExtensionPlugin_trUtf8(const char* s) {
	QString _ret = QScriptExtensionPlugin::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of struct miqt_string */  QScriptExtensionPlugin_keys(const QScriptExtensionPlugin* self) {
	QStringList _ret = self->keys();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QScriptExtensionPlugin_initialize(QScriptExtensionPlugin* self, struct miqt_string key, QScriptEngine* engine) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	self->initialize(key_QString, engine);
}

QScriptValue* QScriptExtensionPlugin_setupPackage(const QScriptExtensionPlugin* self, struct miqt_string key, QScriptEngine* engine) {
	QString key_QString = QString::fromUtf8(key.data, key.len);
	return new QScriptValue(self->setupPackage(key_QString, engine));
}

struct miqt_string QScriptExtensionPlugin_tr2(const char* s, const char* c) {
	QString _ret = QScriptExtensionPlugin::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QScriptExtensionPlugin_tr3(const char* s, const char* c, int n) {
	QString _ret = QScriptExtensionPlugin::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QScriptExtensionPlugin_trUtf82(const char* s, const char* c) {
	QString _ret = QScriptExtensionPlugin::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QScriptExtensionPlugin_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QScriptExtensionPlugin::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QScriptExtensionPlugin_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQScriptExtensionPlugin*)(self) )->virtualbase_metaObject();
}

void* QScriptExtensionPlugin_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQScriptExtensionPlugin*)(self) )->virtualbase_metacast(param1);
}

int QScriptExtensionPlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQScriptExtensionPlugin*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QScriptExtensionPlugin_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQScriptExtensionPlugin*)(self) )->virtualbase_event(event);
}

bool QScriptExtensionPlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQScriptExtensionPlugin*)(self) )->virtualbase_eventFilter(watched, event);
}

void QScriptExtensionPlugin_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQScriptExtensionPlugin*)(self) )->virtualbase_timerEvent(event);
}

void QScriptExtensionPlugin_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQScriptExtensionPlugin*)(self) )->virtualbase_childEvent(event);
}

void QScriptExtensionPlugin_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQScriptExtensionPlugin*)(self) )->virtualbase_customEvent(event);
}

void QScriptExtensionPlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQScriptExtensionPlugin*)(self) )->virtualbase_connectNotify(signal);
}

void QScriptExtensionPlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQScriptExtensionPlugin*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QScriptExtensionPlugin_staticMetaObject() { return &QScriptExtensionPlugin::staticMetaObject; }
void QScriptExtensionPlugin_delete(QScriptExtensionPlugin* self) {
	delete self;
}

