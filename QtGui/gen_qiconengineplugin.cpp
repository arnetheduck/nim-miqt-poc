#include <QChildEvent>
#include <QEvent>
#include <QIconEngine>
#include <QIconEnginePlugin>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qiconengineplugin.h>
#include "gen_qiconengineplugin.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQIconEnginePlugin final : public QIconEnginePlugin {
	struct QIconEnginePlugin_VTable* vtbl;
public:

	MiqtVirtualQIconEnginePlugin(struct QIconEnginePlugin_VTable* vtbl): QIconEnginePlugin(), vtbl(vtbl) {};
	MiqtVirtualQIconEnginePlugin(struct QIconEnginePlugin_VTable* vtbl, QObject* parent): QIconEnginePlugin(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQIconEnginePlugin() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QIconEnginePlugin::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QIconEnginePlugin::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QIconEnginePlugin::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QIconEnginePlugin::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QIconEnginePlugin::qt_metacall(param1, param2, param3);
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

		return QIconEnginePlugin::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QIconEngine* create(const QString& filename) override {
		if (vtbl->create == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		const QString filename_ret = filename;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray filename_b = filename_ret.toUtf8();
		struct miqt_string filename_ms;
		filename_ms.len = filename_b.length();
		filename_ms.data = static_cast<char*>(malloc(filename_ms.len));
		memcpy(filename_ms.data, filename_b.data(), filename_ms.len);
		struct miqt_string sigval1 = filename_ms;

		QIconEngine* callback_return_value = vtbl->create(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QIconEnginePlugin::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QIconEnginePlugin::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QIconEnginePlugin::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QIconEnginePlugin::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QIconEnginePlugin::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QIconEnginePlugin::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QIconEnginePlugin::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QIconEnginePlugin::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QIconEnginePlugin::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QIconEnginePlugin::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QIconEnginePlugin::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QIconEnginePlugin::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QIconEnginePlugin::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QIconEnginePlugin::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend QObject* QIconEnginePlugin_protectedbase_sender(const void* self);
	friend int QIconEnginePlugin_protectedbase_senderSignalIndex(const void* self);
	friend int QIconEnginePlugin_protectedbase_receivers(const void* self, const char* signal);
	friend bool QIconEnginePlugin_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QIconEnginePlugin* QIconEnginePlugin_new(struct QIconEnginePlugin_VTable* vtbl) {
	return new MiqtVirtualQIconEnginePlugin(vtbl);
}

QIconEnginePlugin* QIconEnginePlugin_new2(struct QIconEnginePlugin_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQIconEnginePlugin(vtbl, parent);
}

void QIconEnginePlugin_virtbase(QIconEnginePlugin* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QIconEnginePlugin_metaObject(const QIconEnginePlugin* self) {
	return (QMetaObject*) self->metaObject();
}

void* QIconEnginePlugin_metacast(QIconEnginePlugin* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QIconEnginePlugin_metacall(QIconEnginePlugin* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QIconEnginePlugin_tr(const char* s) {
	QString _ret = QIconEnginePlugin::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QIconEngine* QIconEnginePlugin_create(QIconEnginePlugin* self, struct miqt_string filename) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return self->create(filename_QString);
}

struct miqt_string QIconEnginePlugin_tr2(const char* s, const char* c) {
	QString _ret = QIconEnginePlugin::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QIconEnginePlugin_tr3(const char* s, const char* c, int n) {
	QString _ret = QIconEnginePlugin::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QIconEnginePlugin_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQIconEnginePlugin*)(self) )->virtualbase_metaObject();
}

void* QIconEnginePlugin_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQIconEnginePlugin*)(self) )->virtualbase_metacast(param1);
}

int QIconEnginePlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQIconEnginePlugin*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QIconEnginePlugin_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQIconEnginePlugin*)(self) )->virtualbase_event(event);
}

bool QIconEnginePlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQIconEnginePlugin*)(self) )->virtualbase_eventFilter(watched, event);
}

void QIconEnginePlugin_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQIconEnginePlugin*)(self) )->virtualbase_timerEvent(event);
}

void QIconEnginePlugin_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQIconEnginePlugin*)(self) )->virtualbase_childEvent(event);
}

void QIconEnginePlugin_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQIconEnginePlugin*)(self) )->virtualbase_customEvent(event);
}

void QIconEnginePlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQIconEnginePlugin*)(self) )->virtualbase_connectNotify(signal);
}

void QIconEnginePlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQIconEnginePlugin*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QIconEnginePlugin_staticMetaObject() { return &QIconEnginePlugin::staticMetaObject; }
QObject* QIconEnginePlugin_protectedbase_sender(const void* self) {
	MiqtVirtualQIconEnginePlugin* self_cast = static_cast<MiqtVirtualQIconEnginePlugin*>( (QIconEnginePlugin*)(self) );
	
	return self_cast->sender();

}

int QIconEnginePlugin_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQIconEnginePlugin* self_cast = static_cast<MiqtVirtualQIconEnginePlugin*>( (QIconEnginePlugin*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QIconEnginePlugin_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQIconEnginePlugin* self_cast = static_cast<MiqtVirtualQIconEnginePlugin*>( (QIconEnginePlugin*)(self) );
	
	return self_cast->receivers(signal);

}

bool QIconEnginePlugin_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQIconEnginePlugin* self_cast = static_cast<MiqtVirtualQIconEnginePlugin*>( (QIconEnginePlugin*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QIconEnginePlugin_delete(QIconEnginePlugin* self) {
	delete self;
}

