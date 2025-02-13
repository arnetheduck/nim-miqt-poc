#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QJSEngine>
#include <QList>
#include <QMap>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQmlApplicationEngine>
#include <QQmlEngine>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <QVariant>
#include <qqmlapplicationengine.h>
#include "gen_qqmlapplicationengine.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QQmlApplicationEngine_objectCreated(intptr_t, QObject*, QUrl*);
void miqt_exec_callback_QQmlApplicationEngine_objectCreated_release(intptr_t);
void miqt_exec_callback_QQmlApplicationEngine_objectCreationFailed(intptr_t, QUrl*);
void miqt_exec_callback_QQmlApplicationEngine_objectCreationFailed_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQQmlApplicationEngine final : public QQmlApplicationEngine {
	struct QQmlApplicationEngine_VTable* vtbl;
public:

	MiqtVirtualQQmlApplicationEngine(struct QQmlApplicationEngine_VTable* vtbl): QQmlApplicationEngine(), vtbl(vtbl) {};
	MiqtVirtualQQmlApplicationEngine(struct QQmlApplicationEngine_VTable* vtbl, const QUrl& url): QQmlApplicationEngine(url), vtbl(vtbl) {};
	MiqtVirtualQQmlApplicationEngine(struct QQmlApplicationEngine_VTable* vtbl, const QString& filePath): QQmlApplicationEngine(filePath), vtbl(vtbl) {};
	MiqtVirtualQQmlApplicationEngine(struct QQmlApplicationEngine_VTable* vtbl, QObject* parent): QQmlApplicationEngine(parent), vtbl(vtbl) {};
	MiqtVirtualQQmlApplicationEngine(struct QQmlApplicationEngine_VTable* vtbl, const QUrl& url, QObject* parent): QQmlApplicationEngine(url, parent), vtbl(vtbl) {};
	MiqtVirtualQQmlApplicationEngine(struct QQmlApplicationEngine_VTable* vtbl, const QString& filePath, QObject* parent): QQmlApplicationEngine(filePath, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQQmlApplicationEngine() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQmlApplicationEngine::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QQmlApplicationEngine::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQmlApplicationEngine::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QQmlApplicationEngine::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQmlApplicationEngine::qt_metacall(param1, param2, param3);
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

		return QQmlApplicationEngine::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QQmlApplicationEngine::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* param1) {

		return QQmlApplicationEngine::event(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQmlApplicationEngine::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QQmlApplicationEngine::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQmlApplicationEngine::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QQmlApplicationEngine::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQmlApplicationEngine::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QQmlApplicationEngine::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQmlApplicationEngine::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QQmlApplicationEngine::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQmlApplicationEngine::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QQmlApplicationEngine::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQmlApplicationEngine::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QQmlApplicationEngine::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend QObject* QQmlApplicationEngine_protectedbase_sender(const void* self);
	friend int QQmlApplicationEngine_protectedbase_senderSignalIndex(const void* self);
	friend int QQmlApplicationEngine_protectedbase_receivers(const void* self, const char* signal);
	friend bool QQmlApplicationEngine_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QQmlApplicationEngine* QQmlApplicationEngine_new(struct QQmlApplicationEngine_VTable* vtbl) {
	return new MiqtVirtualQQmlApplicationEngine(vtbl);
}

QQmlApplicationEngine* QQmlApplicationEngine_new2(struct QQmlApplicationEngine_VTable* vtbl, QUrl* url) {
	return new MiqtVirtualQQmlApplicationEngine(vtbl, *url);
}

QQmlApplicationEngine* QQmlApplicationEngine_new3(struct QQmlApplicationEngine_VTable* vtbl, struct miqt_string filePath) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	return new MiqtVirtualQQmlApplicationEngine(vtbl, filePath_QString);
}

QQmlApplicationEngine* QQmlApplicationEngine_new4(struct QQmlApplicationEngine_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQQmlApplicationEngine(vtbl, parent);
}

QQmlApplicationEngine* QQmlApplicationEngine_new5(struct QQmlApplicationEngine_VTable* vtbl, QUrl* url, QObject* parent) {
	return new MiqtVirtualQQmlApplicationEngine(vtbl, *url, parent);
}

QQmlApplicationEngine* QQmlApplicationEngine_new6(struct QQmlApplicationEngine_VTable* vtbl, struct miqt_string filePath, QObject* parent) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	return new MiqtVirtualQQmlApplicationEngine(vtbl, filePath_QString, parent);
}

void QQmlApplicationEngine_virtbase(QQmlApplicationEngine* src, QQmlEngine** outptr_QQmlEngine) {
	*outptr_QQmlEngine = static_cast<QQmlEngine*>(src);
}

QMetaObject* QQmlApplicationEngine_metaObject(const QQmlApplicationEngine* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQmlApplicationEngine_metacast(QQmlApplicationEngine* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQmlApplicationEngine_metacall(QQmlApplicationEngine* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQmlApplicationEngine_tr(const char* s) {
	QString _ret = QQmlApplicationEngine::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of QObject* */  QQmlApplicationEngine_rootObjects(const QQmlApplicationEngine* self) {
	QList<QObject *> _ret = self->rootObjects();
	// Convert QList<> from C++ memory to manually-managed C memory
	QObject** _arr = static_cast<QObject**>(malloc(sizeof(QObject*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QQmlApplicationEngine_load(QQmlApplicationEngine* self, QUrl* url) {
	self->load(*url);
}

void QQmlApplicationEngine_loadWithFilePath(QQmlApplicationEngine* self, struct miqt_string filePath) {
	QString filePath_QString = QString::fromUtf8(filePath.data, filePath.len);
	self->load(filePath_QString);
}

void QQmlApplicationEngine_setInitialProperties(QQmlApplicationEngine* self, struct miqt_map /* of struct miqt_string to QVariant* */  initialProperties) {
	QVariantMap initialProperties_QMap;
	struct miqt_string* initialProperties_karr = static_cast<struct miqt_string*>(initialProperties.keys);
	QVariant** initialProperties_varr = static_cast<QVariant**>(initialProperties.values);
	for(size_t i = 0; i < initialProperties.len; ++i) {
		QString initialProperties_karr_i_QString = QString::fromUtf8(initialProperties_karr[i].data, initialProperties_karr[i].len);
		initialProperties_QMap[initialProperties_karr_i_QString] = *(initialProperties_varr[i]);
	}
	self->setInitialProperties(initialProperties_QMap);
}

void QQmlApplicationEngine_setExtraFileSelectors(QQmlApplicationEngine* self, struct miqt_array /* of struct miqt_string */  extraFileSelectors) {
	QStringList extraFileSelectors_QList;
	extraFileSelectors_QList.reserve(extraFileSelectors.len);
	struct miqt_string* extraFileSelectors_arr = static_cast<struct miqt_string*>(extraFileSelectors.data);
	for(size_t i = 0; i < extraFileSelectors.len; ++i) {
		QString extraFileSelectors_arr_i_QString = QString::fromUtf8(extraFileSelectors_arr[i].data, extraFileSelectors_arr[i].len);
		extraFileSelectors_QList.push_back(extraFileSelectors_arr_i_QString);
	}
	self->setExtraFileSelectors(extraFileSelectors_QList);
}

void QQmlApplicationEngine_loadData(QQmlApplicationEngine* self, struct miqt_string data) {
	QByteArray data_QByteArray(data.data, data.len);
	self->loadData(data_QByteArray);
}

void QQmlApplicationEngine_objectCreated(QQmlApplicationEngine* self, QObject* object, QUrl* url) {
	self->objectCreated(object, *url);
}

void QQmlApplicationEngine_connect_objectCreated(QQmlApplicationEngine* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QObject* object, const QUrl& url) {
			QObject* sigval1 = object;
			const QUrl& url_ret = url;
			// Cast returned reference into pointer
			QUrl* sigval2 = const_cast<QUrl*>(&url_ret);
			miqt_exec_callback_QQmlApplicationEngine_objectCreated(slot, sigval1, sigval2);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QQmlApplicationEngine_objectCreated_release(slot); }
	};
	MiqtVirtualQQmlApplicationEngine::connect(self, static_cast<void (QQmlApplicationEngine::*)(QObject*, const QUrl&)>(&QQmlApplicationEngine::objectCreated), self, caller{slot});
}

void QQmlApplicationEngine_objectCreationFailed(QQmlApplicationEngine* self, QUrl* url) {
	self->objectCreationFailed(*url);
}

void QQmlApplicationEngine_connect_objectCreationFailed(QQmlApplicationEngine* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QUrl& url) {
			const QUrl& url_ret = url;
			// Cast returned reference into pointer
			QUrl* sigval1 = const_cast<QUrl*>(&url_ret);
			miqt_exec_callback_QQmlApplicationEngine_objectCreationFailed(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QQmlApplicationEngine_objectCreationFailed_release(slot); }
	};
	MiqtVirtualQQmlApplicationEngine::connect(self, static_cast<void (QQmlApplicationEngine::*)(const QUrl&)>(&QQmlApplicationEngine::objectCreationFailed), self, caller{slot});
}

struct miqt_string QQmlApplicationEngine_tr2(const char* s, const char* c) {
	QString _ret = QQmlApplicationEngine::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQmlApplicationEngine_tr3(const char* s, const char* c, int n) {
	QString _ret = QQmlApplicationEngine::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQmlApplicationEngine_loadData2(QQmlApplicationEngine* self, struct miqt_string data, QUrl* url) {
	QByteArray data_QByteArray(data.data, data.len);
	self->loadData(data_QByteArray, *url);
}

QMetaObject* QQmlApplicationEngine_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQQmlApplicationEngine*)(self) )->virtualbase_metaObject();
}

void* QQmlApplicationEngine_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQQmlApplicationEngine*)(self) )->virtualbase_metacast(param1);
}

int QQmlApplicationEngine_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQQmlApplicationEngine*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QQmlApplicationEngine_virtualbase_event(void* self, QEvent* param1) {
	return ( (MiqtVirtualQQmlApplicationEngine*)(self) )->virtualbase_event(param1);
}

bool QQmlApplicationEngine_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQQmlApplicationEngine*)(self) )->virtualbase_eventFilter(watched, event);
}

void QQmlApplicationEngine_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQQmlApplicationEngine*)(self) )->virtualbase_timerEvent(event);
}

void QQmlApplicationEngine_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQQmlApplicationEngine*)(self) )->virtualbase_childEvent(event);
}

void QQmlApplicationEngine_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQQmlApplicationEngine*)(self) )->virtualbase_customEvent(event);
}

void QQmlApplicationEngine_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQmlApplicationEngine*)(self) )->virtualbase_connectNotify(signal);
}

void QQmlApplicationEngine_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQmlApplicationEngine*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QQmlApplicationEngine_staticMetaObject() { return &QQmlApplicationEngine::staticMetaObject; }
QObject* QQmlApplicationEngine_protectedbase_sender(const void* self) {
	MiqtVirtualQQmlApplicationEngine* self_cast = static_cast<MiqtVirtualQQmlApplicationEngine*>( (QQmlApplicationEngine*)(self) );
	
	return self_cast->sender();

}

int QQmlApplicationEngine_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQQmlApplicationEngine* self_cast = static_cast<MiqtVirtualQQmlApplicationEngine*>( (QQmlApplicationEngine*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QQmlApplicationEngine_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQQmlApplicationEngine* self_cast = static_cast<MiqtVirtualQQmlApplicationEngine*>( (QQmlApplicationEngine*)(self) );
	
	return self_cast->receivers(signal);

}

bool QQmlApplicationEngine_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQQmlApplicationEngine* self_cast = static_cast<MiqtVirtualQQmlApplicationEngine*>( (QQmlApplicationEngine*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QQmlApplicationEngine_delete(QQmlApplicationEngine* self) {
	delete self;
}

