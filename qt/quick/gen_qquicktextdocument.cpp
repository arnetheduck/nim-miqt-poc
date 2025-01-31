#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQuickItem>
#include <QQuickTextDocument>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTextDocument>
#include <QTimerEvent>
#include <qquicktextdocument.h>
#include "gen_qquicktextdocument.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQQuickTextDocument final : public QQuickTextDocument {
	struct QQuickTextDocument_VTable* vtbl;
public:

	MiqtVirtualQQuickTextDocument(struct QQuickTextDocument_VTable* vtbl, QQuickItem* parent): QQuickTextDocument(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQQuickTextDocument() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QQuickTextDocument::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QQuickTextDocument::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QQuickTextDocument::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QQuickTextDocument::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QQuickTextDocument::qt_metacall(param1, param2, param3);
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

		return QQuickTextDocument::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QQuickTextDocument::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QQuickTextDocument::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QQuickTextDocument::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QQuickTextDocument::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QQuickTextDocument::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QQuickTextDocument::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QQuickTextDocument::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QQuickTextDocument::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QQuickTextDocument::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QQuickTextDocument::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QQuickTextDocument::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QQuickTextDocument::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QQuickTextDocument::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QQuickTextDocument::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QQuickTextDocument::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QQuickTextDocument::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QQuickTextDocument::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QQuickTextDocument::isSignalConnected(*signal);

	}

};

QQuickTextDocument* QQuickTextDocument_new(struct QQuickTextDocument_VTable* vtbl, QQuickItem* parent) {
	return new MiqtVirtualQQuickTextDocument(vtbl, parent);
}

void QQuickTextDocument_virtbase(QQuickTextDocument* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QQuickTextDocument_metaObject(const QQuickTextDocument* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickTextDocument_metacast(QQuickTextDocument* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQuickTextDocument_metacall(QQuickTextDocument* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQuickTextDocument_tr(const char* s) {
	QString _ret = QQuickTextDocument::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickTextDocument_trUtf8(const char* s) {
	QString _ret = QQuickTextDocument::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QTextDocument* QQuickTextDocument_textDocument(const QQuickTextDocument* self) {
	return self->textDocument();
}

struct miqt_string QQuickTextDocument_tr2(const char* s, const char* c) {
	QString _ret = QQuickTextDocument::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickTextDocument_tr3(const char* s, const char* c, int n) {
	QString _ret = QQuickTextDocument::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickTextDocument_trUtf82(const char* s, const char* c) {
	QString _ret = QQuickTextDocument::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickTextDocument_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQuickTextDocument::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QQuickTextDocument_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQQuickTextDocument*)(self) )->virtualbase_metaObject();
}

void* QQuickTextDocument_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQQuickTextDocument*)(self) )->virtualbase_metacast(param1);
}

int QQuickTextDocument_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQQuickTextDocument*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QQuickTextDocument_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQQuickTextDocument*)(self) )->virtualbase_event(event);
}

bool QQuickTextDocument_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQQuickTextDocument*)(self) )->virtualbase_eventFilter(watched, event);
}

void QQuickTextDocument_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQQuickTextDocument*)(self) )->virtualbase_timerEvent(event);
}

void QQuickTextDocument_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQQuickTextDocument*)(self) )->virtualbase_childEvent(event);
}

void QQuickTextDocument_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQQuickTextDocument*)(self) )->virtualbase_customEvent(event);
}

void QQuickTextDocument_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickTextDocument*)(self) )->virtualbase_connectNotify(signal);
}

void QQuickTextDocument_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickTextDocument*)(self) )->virtualbase_disconnectNotify(signal);
}

QObject* QQuickTextDocument_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQQuickTextDocument*)(self) )->protectedbase_sender();
}

int QQuickTextDocument_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQQuickTextDocument*)(self) )->protectedbase_senderSignalIndex();
}

int QQuickTextDocument_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQQuickTextDocument*)(self) )->protectedbase_receivers(signal);
}

bool QQuickTextDocument_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQQuickTextDocument*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QQuickTextDocument_staticMetaObject() { return &QQuickTextDocument::staticMetaObject; }
void QQuickTextDocument_delete(QQuickTextDocument* self) {
	delete self;
}

