#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QWebEngineUrlRequestJob>
#include <QWebEngineUrlSchemeHandler>
#include <qwebengineurlschemehandler.h>
#include "gen_qwebengineurlschemehandler.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQWebEngineUrlSchemeHandler final : public QWebEngineUrlSchemeHandler {
	struct QWebEngineUrlSchemeHandler_VTable* vtbl;
public:

	MiqtVirtualQWebEngineUrlSchemeHandler(struct QWebEngineUrlSchemeHandler_VTable* vtbl): QWebEngineUrlSchemeHandler(), vtbl(vtbl) {};
	MiqtVirtualQWebEngineUrlSchemeHandler(struct QWebEngineUrlSchemeHandler_VTable* vtbl, QObject* parent): QWebEngineUrlSchemeHandler(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQWebEngineUrlSchemeHandler() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWebEngineUrlSchemeHandler::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QWebEngineUrlSchemeHandler::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWebEngineUrlSchemeHandler::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QWebEngineUrlSchemeHandler::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWebEngineUrlSchemeHandler::qt_metacall(param1, param2, param3);
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

		return QWebEngineUrlSchemeHandler::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void requestStarted(QWebEngineUrlRequestJob* param1) override {
		if (vtbl->requestStarted == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QWebEngineUrlRequestJob* sigval1 = param1;

		vtbl->requestStarted(vtbl, this, sigval1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QWebEngineUrlSchemeHandler::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QWebEngineUrlSchemeHandler::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QWebEngineUrlSchemeHandler::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QWebEngineUrlSchemeHandler::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWebEngineUrlSchemeHandler::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QWebEngineUrlSchemeHandler::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWebEngineUrlSchemeHandler::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QWebEngineUrlSchemeHandler::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWebEngineUrlSchemeHandler::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QWebEngineUrlSchemeHandler::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWebEngineUrlSchemeHandler::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QWebEngineUrlSchemeHandler::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWebEngineUrlSchemeHandler::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QWebEngineUrlSchemeHandler::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QWebEngineUrlSchemeHandler::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QWebEngineUrlSchemeHandler::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QWebEngineUrlSchemeHandler::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QWebEngineUrlSchemeHandler::isSignalConnected(*signal);

	}

};

QWebEngineUrlSchemeHandler* QWebEngineUrlSchemeHandler_new(struct QWebEngineUrlSchemeHandler_VTable* vtbl) {
	return new MiqtVirtualQWebEngineUrlSchemeHandler(vtbl);
}

QWebEngineUrlSchemeHandler* QWebEngineUrlSchemeHandler_new2(struct QWebEngineUrlSchemeHandler_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQWebEngineUrlSchemeHandler(vtbl, parent);
}

void QWebEngineUrlSchemeHandler_virtbase(QWebEngineUrlSchemeHandler* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QWebEngineUrlSchemeHandler_metaObject(const QWebEngineUrlSchemeHandler* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWebEngineUrlSchemeHandler_metacast(QWebEngineUrlSchemeHandler* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWebEngineUrlSchemeHandler_metacall(QWebEngineUrlSchemeHandler* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWebEngineUrlSchemeHandler_tr(const char* s) {
	QString _ret = QWebEngineUrlSchemeHandler::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebEngineUrlSchemeHandler_trUtf8(const char* s) {
	QString _ret = QWebEngineUrlSchemeHandler::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWebEngineUrlSchemeHandler_requestStarted(QWebEngineUrlSchemeHandler* self, QWebEngineUrlRequestJob* param1) {
	self->requestStarted(param1);
}

struct miqt_string QWebEngineUrlSchemeHandler_tr2(const char* s, const char* c) {
	QString _ret = QWebEngineUrlSchemeHandler::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebEngineUrlSchemeHandler_tr3(const char* s, const char* c, int n) {
	QString _ret = QWebEngineUrlSchemeHandler::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebEngineUrlSchemeHandler_trUtf82(const char* s, const char* c) {
	QString _ret = QWebEngineUrlSchemeHandler::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWebEngineUrlSchemeHandler_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QWebEngineUrlSchemeHandler::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QWebEngineUrlSchemeHandler_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQWebEngineUrlSchemeHandler*)(self) )->virtualbase_metaObject();
}

void* QWebEngineUrlSchemeHandler_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQWebEngineUrlSchemeHandler*)(self) )->virtualbase_metacast(param1);
}

int QWebEngineUrlSchemeHandler_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQWebEngineUrlSchemeHandler*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QWebEngineUrlSchemeHandler_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQWebEngineUrlSchemeHandler*)(self) )->virtualbase_event(event);
}

bool QWebEngineUrlSchemeHandler_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQWebEngineUrlSchemeHandler*)(self) )->virtualbase_eventFilter(watched, event);
}

void QWebEngineUrlSchemeHandler_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQWebEngineUrlSchemeHandler*)(self) )->virtualbase_timerEvent(event);
}

void QWebEngineUrlSchemeHandler_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQWebEngineUrlSchemeHandler*)(self) )->virtualbase_childEvent(event);
}

void QWebEngineUrlSchemeHandler_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQWebEngineUrlSchemeHandler*)(self) )->virtualbase_customEvent(event);
}

void QWebEngineUrlSchemeHandler_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQWebEngineUrlSchemeHandler*)(self) )->virtualbase_connectNotify(signal);
}

void QWebEngineUrlSchemeHandler_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQWebEngineUrlSchemeHandler*)(self) )->virtualbase_disconnectNotify(signal);
}

QObject* QWebEngineUrlSchemeHandler_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQWebEngineUrlSchemeHandler*)(self) )->protectedbase_sender();
}

int QWebEngineUrlSchemeHandler_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQWebEngineUrlSchemeHandler*)(self) )->protectedbase_senderSignalIndex();
}

int QWebEngineUrlSchemeHandler_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQWebEngineUrlSchemeHandler*)(self) )->protectedbase_receivers(signal);
}

bool QWebEngineUrlSchemeHandler_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQWebEngineUrlSchemeHandler*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QWebEngineUrlSchemeHandler_staticMetaObject() { return &QWebEngineUrlSchemeHandler::staticMetaObject; }
void QWebEngineUrlSchemeHandler_delete(QWebEngineUrlSchemeHandler* self) {
	delete self;
}

