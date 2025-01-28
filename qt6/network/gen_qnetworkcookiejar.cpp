#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QNetworkCookie>
#include <QNetworkCookieJar>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <qnetworkcookiejar.h>
#include "gen_qnetworkcookiejar.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQNetworkCookieJar final : public QNetworkCookieJar {
	struct QNetworkCookieJar_VTable* vtbl;
public:

	MiqtVirtualQNetworkCookieJar(struct QNetworkCookieJar_VTable* vtbl): QNetworkCookieJar(), vtbl(vtbl) {};
	MiqtVirtualQNetworkCookieJar(struct QNetworkCookieJar_VTable* vtbl, QObject* parent): QNetworkCookieJar(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQNetworkCookieJar() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QNetworkCookieJar::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QNetworkCookieJar::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QNetworkCookieJar::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QNetworkCookieJar::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QNetworkCookieJar::qt_metacall(param1, param2, param3);
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

		return QNetworkCookieJar::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QList<QNetworkCookie> cookiesForUrl(const QUrl& url) const override {
		if (vtbl->cookiesForUrl == 0) {
			return QNetworkCookieJar::cookiesForUrl(url);
		}

		const QUrl& url_ret = url;
		// Cast returned reference into pointer
		QUrl* sigval1 = const_cast<QUrl*>(&url_ret);

		struct miqt_array /* of QNetworkCookie* */  callback_return_value = vtbl->cookiesForUrl(vtbl, this, sigval1);
		QList<QNetworkCookie> callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		QNetworkCookie** callback_return_value_arr = static_cast<QNetworkCookie**>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(*(callback_return_value_arr[i]));
		}

		return callback_return_value_QList;
	}

	// Wrapper to allow calling protected method
	struct miqt_array /* of QNetworkCookie* */  virtualbase_cookiesForUrl(QUrl* url) const {

		QList<QNetworkCookie> _ret = QNetworkCookieJar::cookiesForUrl(*url);
		// Convert QList<> from C++ memory to manually-managed C memory
		QNetworkCookie** _arr = static_cast<QNetworkCookie**>(malloc(sizeof(QNetworkCookie*) * _ret.length()));
		for (size_t i = 0, e = _ret.length(); i < e; ++i) {
			_arr[i] = new QNetworkCookie(_ret[i]);
		}
		struct miqt_array _out;
		_out.len = _ret.length();
		_out.data = static_cast<void*>(_arr);
		return _out;

	}

	// Subclass to allow providing a Go implementation
	virtual bool setCookiesFromUrl(const QList<QNetworkCookie>& cookieList, const QUrl& url) override {
		if (vtbl->setCookiesFromUrl == 0) {
			return QNetworkCookieJar::setCookiesFromUrl(cookieList, url);
		}

		const QList<QNetworkCookie>& cookieList_ret = cookieList;
		// Convert QList<> from C++ memory to manually-managed C memory
		QNetworkCookie** cookieList_arr = static_cast<QNetworkCookie**>(malloc(sizeof(QNetworkCookie*) * cookieList_ret.length()));
		for (size_t i = 0, e = cookieList_ret.length(); i < e; ++i) {
			cookieList_arr[i] = new QNetworkCookie(cookieList_ret[i]);
		}
		struct miqt_array cookieList_out;
		cookieList_out.len = cookieList_ret.length();
		cookieList_out.data = static_cast<void*>(cookieList_arr);
		struct miqt_array /* of QNetworkCookie* */  sigval1 = cookieList_out;
		const QUrl& url_ret = url;
		// Cast returned reference into pointer
		QUrl* sigval2 = const_cast<QUrl*>(&url_ret);

		bool callback_return_value = vtbl->setCookiesFromUrl(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_setCookiesFromUrl(struct miqt_array /* of QNetworkCookie* */  cookieList, QUrl* url) {
		QList<QNetworkCookie> cookieList_QList;
		cookieList_QList.reserve(cookieList.len);
		QNetworkCookie** cookieList_arr = static_cast<QNetworkCookie**>(cookieList.data);
		for(size_t i = 0; i < cookieList.len; ++i) {
			cookieList_QList.push_back(*(cookieList_arr[i]));
		}

		return QNetworkCookieJar::setCookiesFromUrl(cookieList_QList, *url);

	}

	// Subclass to allow providing a Go implementation
	virtual bool insertCookie(const QNetworkCookie& cookie) override {
		if (vtbl->insertCookie == 0) {
			return QNetworkCookieJar::insertCookie(cookie);
		}

		const QNetworkCookie& cookie_ret = cookie;
		// Cast returned reference into pointer
		QNetworkCookie* sigval1 = const_cast<QNetworkCookie*>(&cookie_ret);

		bool callback_return_value = vtbl->insertCookie(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_insertCookie(QNetworkCookie* cookie) {

		return QNetworkCookieJar::insertCookie(*cookie);

	}

	// Subclass to allow providing a Go implementation
	virtual bool updateCookie(const QNetworkCookie& cookie) override {
		if (vtbl->updateCookie == 0) {
			return QNetworkCookieJar::updateCookie(cookie);
		}

		const QNetworkCookie& cookie_ret = cookie;
		// Cast returned reference into pointer
		QNetworkCookie* sigval1 = const_cast<QNetworkCookie*>(&cookie_ret);

		bool callback_return_value = vtbl->updateCookie(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_updateCookie(QNetworkCookie* cookie) {

		return QNetworkCookieJar::updateCookie(*cookie);

	}

	// Subclass to allow providing a Go implementation
	virtual bool deleteCookie(const QNetworkCookie& cookie) override {
		if (vtbl->deleteCookie == 0) {
			return QNetworkCookieJar::deleteCookie(cookie);
		}

		const QNetworkCookie& cookie_ret = cookie;
		// Cast returned reference into pointer
		QNetworkCookie* sigval1 = const_cast<QNetworkCookie*>(&cookie_ret);

		bool callback_return_value = vtbl->deleteCookie(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_deleteCookie(QNetworkCookie* cookie) {

		return QNetworkCookieJar::deleteCookie(*cookie);

	}

	// Subclass to allow providing a Go implementation
	virtual bool validateCookie(const QNetworkCookie& cookie, const QUrl& url) const override {
		if (vtbl->validateCookie == 0) {
			return QNetworkCookieJar::validateCookie(cookie, url);
		}

		const QNetworkCookie& cookie_ret = cookie;
		// Cast returned reference into pointer
		QNetworkCookie* sigval1 = const_cast<QNetworkCookie*>(&cookie_ret);
		const QUrl& url_ret = url;
		// Cast returned reference into pointer
		QUrl* sigval2 = const_cast<QUrl*>(&url_ret);

		bool callback_return_value = vtbl->validateCookie(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_validateCookie(QNetworkCookie* cookie, QUrl* url) const {

		return QNetworkCookieJar::validateCookie(*cookie, *url);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QNetworkCookieJar::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QNetworkCookieJar::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QNetworkCookieJar::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QNetworkCookieJar::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QNetworkCookieJar::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QNetworkCookieJar::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QNetworkCookieJar::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QNetworkCookieJar::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QNetworkCookieJar::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QNetworkCookieJar::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QNetworkCookieJar::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QNetworkCookieJar::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QNetworkCookieJar::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QNetworkCookieJar::disconnectNotify(*signal);

	}

};

QNetworkCookieJar* QNetworkCookieJar_new(struct QNetworkCookieJar_VTable* vtbl) {
	return new MiqtVirtualQNetworkCookieJar(vtbl);
}

QNetworkCookieJar* QNetworkCookieJar_new2(struct QNetworkCookieJar_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQNetworkCookieJar(vtbl, parent);
}

void QNetworkCookieJar_virtbase(QNetworkCookieJar* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QNetworkCookieJar_metaObject(const QNetworkCookieJar* self) {
	return (QMetaObject*) self->metaObject();
}

void* QNetworkCookieJar_metacast(QNetworkCookieJar* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QNetworkCookieJar_metacall(QNetworkCookieJar* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QNetworkCookieJar_tr(const char* s) {
	QString _ret = QNetworkCookieJar::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of QNetworkCookie* */  QNetworkCookieJar_cookiesForUrl(const QNetworkCookieJar* self, QUrl* url) {
	QList<QNetworkCookie> _ret = self->cookiesForUrl(*url);
	// Convert QList<> from C++ memory to manually-managed C memory
	QNetworkCookie** _arr = static_cast<QNetworkCookie**>(malloc(sizeof(QNetworkCookie*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QNetworkCookie(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QNetworkCookieJar_setCookiesFromUrl(QNetworkCookieJar* self, struct miqt_array /* of QNetworkCookie* */  cookieList, QUrl* url) {
	QList<QNetworkCookie> cookieList_QList;
	cookieList_QList.reserve(cookieList.len);
	QNetworkCookie** cookieList_arr = static_cast<QNetworkCookie**>(cookieList.data);
	for(size_t i = 0; i < cookieList.len; ++i) {
		cookieList_QList.push_back(*(cookieList_arr[i]));
	}
	return self->setCookiesFromUrl(cookieList_QList, *url);
}

bool QNetworkCookieJar_insertCookie(QNetworkCookieJar* self, QNetworkCookie* cookie) {
	return self->insertCookie(*cookie);
}

bool QNetworkCookieJar_updateCookie(QNetworkCookieJar* self, QNetworkCookie* cookie) {
	return self->updateCookie(*cookie);
}

bool QNetworkCookieJar_deleteCookie(QNetworkCookieJar* self, QNetworkCookie* cookie) {
	return self->deleteCookie(*cookie);
}

struct miqt_string QNetworkCookieJar_tr2(const char* s, const char* c) {
	QString _ret = QNetworkCookieJar::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QNetworkCookieJar_tr3(const char* s, const char* c, int n) {
	QString _ret = QNetworkCookieJar::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QNetworkCookieJar_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQNetworkCookieJar*)(self) )->virtualbase_metaObject();
}

void* QNetworkCookieJar_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQNetworkCookieJar*)(self) )->virtualbase_metacast(param1);
}

int QNetworkCookieJar_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQNetworkCookieJar*)(self) )->virtualbase_metacall(param1, param2, param3);
}

struct miqt_array /* of QNetworkCookie* */  QNetworkCookieJar_virtualbase_cookiesForUrl(const void* self, QUrl* url) {
	return ( (const MiqtVirtualQNetworkCookieJar*)(self) )->virtualbase_cookiesForUrl(url);
}

bool QNetworkCookieJar_virtualbase_setCookiesFromUrl(void* self, struct miqt_array /* of QNetworkCookie* */  cookieList, QUrl* url) {
	return ( (MiqtVirtualQNetworkCookieJar*)(self) )->virtualbase_setCookiesFromUrl(cookieList, url);
}

bool QNetworkCookieJar_virtualbase_insertCookie(void* self, QNetworkCookie* cookie) {
	return ( (MiqtVirtualQNetworkCookieJar*)(self) )->virtualbase_insertCookie(cookie);
}

bool QNetworkCookieJar_virtualbase_updateCookie(void* self, QNetworkCookie* cookie) {
	return ( (MiqtVirtualQNetworkCookieJar*)(self) )->virtualbase_updateCookie(cookie);
}

bool QNetworkCookieJar_virtualbase_deleteCookie(void* self, QNetworkCookie* cookie) {
	return ( (MiqtVirtualQNetworkCookieJar*)(self) )->virtualbase_deleteCookie(cookie);
}

bool QNetworkCookieJar_virtualbase_validateCookie(const void* self, QNetworkCookie* cookie, QUrl* url) {
	return ( (const MiqtVirtualQNetworkCookieJar*)(self) )->virtualbase_validateCookie(cookie, url);
}

bool QNetworkCookieJar_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQNetworkCookieJar*)(self) )->virtualbase_event(event);
}

bool QNetworkCookieJar_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQNetworkCookieJar*)(self) )->virtualbase_eventFilter(watched, event);
}

void QNetworkCookieJar_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQNetworkCookieJar*)(self) )->virtualbase_timerEvent(event);
}

void QNetworkCookieJar_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQNetworkCookieJar*)(self) )->virtualbase_childEvent(event);
}

void QNetworkCookieJar_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQNetworkCookieJar*)(self) )->virtualbase_customEvent(event);
}

void QNetworkCookieJar_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQNetworkCookieJar*)(self) )->virtualbase_connectNotify(signal);
}

void QNetworkCookieJar_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQNetworkCookieJar*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QNetworkCookieJar_staticMetaObject() { return &QNetworkCookieJar::staticMetaObject; }
void QNetworkCookieJar_delete(QNetworkCookieJar* self) {
	delete self;
}

