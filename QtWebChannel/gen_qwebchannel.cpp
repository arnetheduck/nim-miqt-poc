#include <QChildEvent>
#include <QEvent>
#include <QMap>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QWebChannel>
#include <QWebChannelAbstractTransport>
#include <qwebchannel.h>
#include "gen_qwebchannel.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QWebChannel_blockUpdatesChanged(intptr_t, bool);
void miqt_exec_callback_QWebChannel_blockUpdatesChanged_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQWebChannel final : public QWebChannel {
	struct QWebChannel_VTable* vtbl;
public:

	MiqtVirtualQWebChannel(struct QWebChannel_VTable* vtbl): QWebChannel(), vtbl(vtbl) {};
	MiqtVirtualQWebChannel(struct QWebChannel_VTable* vtbl, QObject* parent): QWebChannel(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQWebChannel() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWebChannel::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QWebChannel::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWebChannel::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QWebChannel::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWebChannel::qt_metacall(param1, param2, param3);
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

		return QWebChannel::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QWebChannel::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QWebChannel::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWebChannel::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QWebChannel::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWebChannel::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QWebChannel::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWebChannel::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QWebChannel::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWebChannel::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QWebChannel::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWebChannel::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QWebChannel::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWebChannel::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QWebChannel::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend QObject* QWebChannel_protectedbase_sender(const void* self);
	friend int QWebChannel_protectedbase_senderSignalIndex(const void* self);
	friend int QWebChannel_protectedbase_receivers(const void* self, const char* signal);
	friend bool QWebChannel_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QWebChannel* QWebChannel_new(struct QWebChannel_VTable* vtbl) {
	return new MiqtVirtualQWebChannel(vtbl);
}

QWebChannel* QWebChannel_new2(struct QWebChannel_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQWebChannel(vtbl, parent);
}

void QWebChannel_virtbase(QWebChannel* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebChannel_metaObject(const QWebChannel* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebChannel_metacast(QWebChannel* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebChannel_metacall(QWebChannel* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWebChannel_tr(const char* s) {
	QString _ret = QWebChannel::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebChannel_trUtf8(const char* s) {
	QString _ret = QWebChannel::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebChannel_registerObjects(QWebChannel* self, struct miqt_map /* of struct miqt_string to QObject* */  objects) {
	QHash<QString, QObject *> objects_QMap;
	objects_QMap.reserve(objects.len);
	struct miqt_string* objects_karr = static_cast<struct miqt_string*>(objects.keys);
	QObject** objects_varr = static_cast<QObject**>(objects.values);
	for(size_t i = 0; i < objects.len; ++i) {
		QString objects_karr_i_QString = QString::fromUtf8(objects_karr[i].data, objects_karr[i].len);
		objects_QMap[objects_karr_i_QString] = objects_varr[i];
	}
	self->registerObjects(objects_QMap);
}

struct miqt_map /* of struct miqt_string to QObject* */  QWebChannel_registeredObjects(const QWebChannel* self) {
	QHash<QString, QObject *> _ret = self->registeredObjects();
	// Convert QMap<> from C++ memory to manually-managed C memory
	struct miqt_string* _karr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.size()));
	QObject** _varr = static_cast<QObject**>(malloc(sizeof(QObject*) * _ret.size()));
	int _ctr = 0;
	for (auto _itr = _ret.keyValueBegin(); _itr != _ret.keyValueEnd(); ++_itr) {
		QString _hashkey_ret = _itr->first;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _hashkey_b = _hashkey_ret.toUtf8();
		struct miqt_string _hashkey_ms;
		_hashkey_ms.len = _hashkey_b.length();
		_hashkey_ms.data = static_cast<char*>(malloc(_hashkey_ms.len));
		memcpy(_hashkey_ms.data, _hashkey_b.data(), _hashkey_ms.len);
		_karr[_ctr] = _hashkey_ms;
		_varr[_ctr] = _itr->second;
		_ctr++;
	}
	struct miqt_map _out;
	_out.len = _ret.size();
	_out.keys = static_cast<void*>(_karr);
	_out.values = static_cast<void*>(_varr);
	return _out;
}

void QWebChannel_registerObject(QWebChannel* self, struct miqt_string id, QObject* object) {
	QString id_QString = QString::fromUtf8(id.data, id.len);
	self->registerObject(id_QString, object);
}

void QWebChannel_deregisterObject(QWebChannel* self, QObject* object) {
	self->deregisterObject(object);
}

bool QWebChannel_blockUpdates(const QWebChannel* self) {
	return self->blockUpdates();
}

void QWebChannel_setBlockUpdates(QWebChannel* self, bool block) {
	self->setBlockUpdates(block);
}

void QWebChannel_blockUpdatesChanged(QWebChannel* self, bool block) {
	self->blockUpdatesChanged(block);
}

void QWebChannel_connect_blockUpdatesChanged(QWebChannel* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(bool block) {
			bool sigval1 = block;
			miqt_exec_callback_QWebChannel_blockUpdatesChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QWebChannel_blockUpdatesChanged_release(slot); }
	};
	MiqtVirtualQWebChannel::connect(self, static_cast<void (QWebChannel::*)(bool)>(&QWebChannel::blockUpdatesChanged), self, caller{slot});
}

void QWebChannel_connectTo(QWebChannel* self, QWebChannelAbstractTransport* transport) {
	self->connectTo(transport);
}

void QWebChannel_disconnectFrom(QWebChannel* self, QWebChannelAbstractTransport* transport) {
	self->disconnectFrom(transport);
}

struct miqt_string QWebChannel_tr2(const char* s, const char* c) {
	QString _ret = QWebChannel::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebChannel_tr3(const char* s, const char* c, int n) {
	QString _ret = QWebChannel::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebChannel_trUtf82(const char* s, const char* c) {
	QString _ret = QWebChannel::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebChannel_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QWebChannel::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QWebChannel_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQWebChannel*)(self) )->virtualbase_metaObject();
}

void* QWebChannel_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQWebChannel*)(self) )->virtualbase_metacast(param1);
}

int QWebChannel_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQWebChannel*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QWebChannel_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQWebChannel*)(self) )->virtualbase_event(event);
}

bool QWebChannel_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQWebChannel*)(self) )->virtualbase_eventFilter(watched, event);
}

void QWebChannel_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQWebChannel*)(self) )->virtualbase_timerEvent(event);
}

void QWebChannel_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQWebChannel*)(self) )->virtualbase_childEvent(event);
}

void QWebChannel_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQWebChannel*)(self) )->virtualbase_customEvent(event);
}

void QWebChannel_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQWebChannel*)(self) )->virtualbase_connectNotify(signal);
}

void QWebChannel_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQWebChannel*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QWebChannel_staticMetaObject() { return &QWebChannel::staticMetaObject; }
QObject* QWebChannel_protectedbase_sender(const void* self) {
	MiqtVirtualQWebChannel* self_cast = static_cast<MiqtVirtualQWebChannel*>( (QWebChannel*)(self) );
	
	return self_cast->sender();

}

int QWebChannel_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQWebChannel* self_cast = static_cast<MiqtVirtualQWebChannel*>( (QWebChannel*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QWebChannel_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQWebChannel* self_cast = static_cast<MiqtVirtualQWebChannel*>( (QWebChannel*)(self) );
	
	return self_cast->receivers(signal);

}

bool QWebChannel_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQWebChannel* self_cast = static_cast<MiqtVirtualQWebChannel*>( (QWebChannel*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QWebChannel_delete(QWebChannel* self) {
	delete self;
}

