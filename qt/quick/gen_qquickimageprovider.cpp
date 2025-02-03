#include <QChildEvent>
#include <QEvent>
#include <QImage>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPixmap>
#include <QQmlImageProviderBase>
#include <QQuickAsyncImageProvider>
#include <QQuickImageProvider>
#include <QQuickImageResponse>
#include <QQuickTextureFactory>
#include <QQuickWindow>
#include <QSGTexture>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qquickimageprovider.h>
#include "gen_qquickimageprovider.h"

#ifdef __cplusplus
extern "C" {
#endif

int miqt_exec_callback_QQuickTextureFactory_metacall(QQuickTextureFactory*, intptr_t, int, int, void**);
QSGTexture* miqt_exec_callback_QQuickTextureFactory_createTexture(const QQuickTextureFactory*, intptr_t, QQuickWindow*);
QSize* miqt_exec_callback_QQuickTextureFactory_textureSize(const QQuickTextureFactory*, intptr_t);
int miqt_exec_callback_QQuickTextureFactory_textureByteCount(const QQuickTextureFactory*, intptr_t);
QImage* miqt_exec_callback_QQuickTextureFactory_image(const QQuickTextureFactory*, intptr_t);
bool miqt_exec_callback_QQuickTextureFactory_event(QQuickTextureFactory*, intptr_t, QEvent*);
bool miqt_exec_callback_QQuickTextureFactory_eventFilter(QQuickTextureFactory*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QQuickTextureFactory_timerEvent(QQuickTextureFactory*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QQuickTextureFactory_childEvent(QQuickTextureFactory*, intptr_t, QChildEvent*);
void miqt_exec_callback_QQuickTextureFactory_customEvent(QQuickTextureFactory*, intptr_t, QEvent*);
void miqt_exec_callback_QQuickTextureFactory_connectNotify(QQuickTextureFactory*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QQuickTextureFactory_disconnectNotify(QQuickTextureFactory*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QQuickImageResponse_finished(intptr_t);
int miqt_exec_callback_QQuickImageResponse_metacall(QQuickImageResponse*, intptr_t, int, int, void**);
QQuickTextureFactory* miqt_exec_callback_QQuickImageResponse_textureFactory(const QQuickImageResponse*, intptr_t);
struct miqt_string miqt_exec_callback_QQuickImageResponse_errorString(const QQuickImageResponse*, intptr_t);
void miqt_exec_callback_QQuickImageResponse_cancel(QQuickImageResponse*, intptr_t);
bool miqt_exec_callback_QQuickImageResponse_event(QQuickImageResponse*, intptr_t, QEvent*);
bool miqt_exec_callback_QQuickImageResponse_eventFilter(QQuickImageResponse*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QQuickImageResponse_timerEvent(QQuickImageResponse*, intptr_t, QTimerEvent*);
void miqt_exec_callback_QQuickImageResponse_childEvent(QQuickImageResponse*, intptr_t, QChildEvent*);
void miqt_exec_callback_QQuickImageResponse_customEvent(QQuickImageResponse*, intptr_t, QEvent*);
void miqt_exec_callback_QQuickImageResponse_connectNotify(QQuickImageResponse*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QQuickImageResponse_disconnectNotify(QQuickImageResponse*, intptr_t, QMetaMethod*);
int miqt_exec_callback_QQuickImageProvider_imageType(const QQuickImageProvider*, intptr_t);
int miqt_exec_callback_QQuickImageProvider_flags(const QQuickImageProvider*, intptr_t);
QImage* miqt_exec_callback_QQuickImageProvider_requestImage(QQuickImageProvider*, intptr_t, struct miqt_string, QSize*, QSize*);
QPixmap* miqt_exec_callback_QQuickImageProvider_requestPixmap(QQuickImageProvider*, intptr_t, struct miqt_string, QSize*, QSize*);
QQuickTextureFactory* miqt_exec_callback_QQuickImageProvider_requestTexture(QQuickImageProvider*, intptr_t, struct miqt_string, QSize*, QSize*);
QQuickImageResponse* miqt_exec_callback_QQuickAsyncImageProvider_requestImageResponse(QQuickAsyncImageProvider*, intptr_t, struct miqt_string, QSize*);
int miqt_exec_callback_QQuickAsyncImageProvider_imageType(const QQuickAsyncImageProvider*, intptr_t);
int miqt_exec_callback_QQuickAsyncImageProvider_flags(const QQuickAsyncImageProvider*, intptr_t);
QImage* miqt_exec_callback_QQuickAsyncImageProvider_requestImage(QQuickAsyncImageProvider*, intptr_t, struct miqt_string, QSize*, QSize*);
QPixmap* miqt_exec_callback_QQuickAsyncImageProvider_requestPixmap(QQuickAsyncImageProvider*, intptr_t, struct miqt_string, QSize*, QSize*);
QQuickTextureFactory* miqt_exec_callback_QQuickAsyncImageProvider_requestTexture(QQuickAsyncImageProvider*, intptr_t, struct miqt_string, QSize*, QSize*);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQQuickTextureFactory final : public QQuickTextureFactory {
public:

	MiqtVirtualQQuickTextureFactory(): QQuickTextureFactory() {};

	virtual ~MiqtVirtualQQuickTextureFactory() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QQuickTextureFactory::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QQuickTextureFactory_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metacall(int param1, int param2, void** param3) {

		return QQuickTextureFactory::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__createTexture = 0;

	// Subclass to allow providing a Go implementation
	virtual QSGTexture* createTexture(QQuickWindow* window) const override {
		if (handle__createTexture == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}
		
		QQuickWindow* sigval1 = window;

		QSGTexture* callback_return_value = miqt_exec_callback_QQuickTextureFactory_createTexture(this, handle__createTexture, sigval1);

		return callback_return_value;
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__textureSize = 0;

	// Subclass to allow providing a Go implementation
	virtual QSize textureSize() const override {
		if (handle__textureSize == 0) {
			return QSize(); // Pure virtual, there is no base we can call
		}
		

		QSize* callback_return_value = miqt_exec_callback_QQuickTextureFactory_textureSize(this, handle__textureSize);

		return *callback_return_value;
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__textureByteCount = 0;

	// Subclass to allow providing a Go implementation
	virtual int textureByteCount() const override {
		if (handle__textureByteCount == 0) {
			return 0; // Pure virtual, there is no base we can call
		}
		

		int callback_return_value = miqt_exec_callback_QQuickTextureFactory_textureByteCount(this, handle__textureByteCount);

		return static_cast<int>(callback_return_value);
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__image = 0;

	// Subclass to allow providing a Go implementation
	virtual QImage image() const override {
		if (handle__image == 0) {
			return QQuickTextureFactory::image();
		}
		

		QImage* callback_return_value = miqt_exec_callback_QQuickTextureFactory_image(this, handle__image);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QImage* virtualbase_image() const {

		return new QImage(QQuickTextureFactory::image());

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QQuickTextureFactory::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QQuickTextureFactory_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QQuickTextureFactory::event(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QQuickTextureFactory::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QQuickTextureFactory_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QQuickTextureFactory::eventFilter(watched, event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QQuickTextureFactory::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QQuickTextureFactory_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QQuickTextureFactory::timerEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QQuickTextureFactory::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QQuickTextureFactory_childEvent(this, handle__childEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QQuickTextureFactory::childEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QQuickTextureFactory::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QQuickTextureFactory_customEvent(this, handle__customEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QQuickTextureFactory::customEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QQuickTextureFactory::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQuickTextureFactory_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QQuickTextureFactory::connectNotify(*signal);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QQuickTextureFactory::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQuickTextureFactory_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QQuickTextureFactory::disconnectNotify(*signal);

	}

};

QQuickTextureFactory* QQuickTextureFactory_new() {
	return new MiqtVirtualQQuickTextureFactory();
}

void QQuickTextureFactory_virtbase(QQuickTextureFactory* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QQuickTextureFactory_metaObject(const QQuickTextureFactory* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickTextureFactory_metacast(QQuickTextureFactory* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQuickTextureFactory_metacall(QQuickTextureFactory* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQuickTextureFactory_tr(const char* s) {
	QString _ret = QQuickTextureFactory::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickTextureFactory_trUtf8(const char* s) {
	QString _ret = QQuickTextureFactory::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSGTexture* QQuickTextureFactory_createTexture(const QQuickTextureFactory* self, QQuickWindow* window) {
	return self->createTexture(window);
}

QSize* QQuickTextureFactory_textureSize(const QQuickTextureFactory* self) {
	return new QSize(self->textureSize());
}

int QQuickTextureFactory_textureByteCount(const QQuickTextureFactory* self) {
	return self->textureByteCount();
}

QImage* QQuickTextureFactory_image(const QQuickTextureFactory* self) {
	return new QImage(self->image());
}

QQuickTextureFactory* QQuickTextureFactory_textureFactoryForImage(QImage* image) {
	return QQuickTextureFactory::textureFactoryForImage(*image);
}

struct miqt_string QQuickTextureFactory_tr2(const char* s, const char* c) {
	QString _ret = QQuickTextureFactory::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickTextureFactory_tr3(const char* s, const char* c, int n) {
	QString _ret = QQuickTextureFactory::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickTextureFactory_trUtf82(const char* s, const char* c) {
	QString _ret = QQuickTextureFactory::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickTextureFactory_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQuickTextureFactory::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QQuickTextureFactory_override_virtual_metacall(void* self, intptr_t slot) {
	MiqtVirtualQQuickTextureFactory* self_cast = dynamic_cast<MiqtVirtualQQuickTextureFactory*>( (QQuickTextureFactory*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QQuickTextureFactory_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQQuickTextureFactory*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QQuickTextureFactory_override_virtual_createTexture(void* self, intptr_t slot) {
	MiqtVirtualQQuickTextureFactory* self_cast = dynamic_cast<MiqtVirtualQQuickTextureFactory*>( (QQuickTextureFactory*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__createTexture = slot;
	return true;
}

bool QQuickTextureFactory_override_virtual_textureSize(void* self, intptr_t slot) {
	MiqtVirtualQQuickTextureFactory* self_cast = dynamic_cast<MiqtVirtualQQuickTextureFactory*>( (QQuickTextureFactory*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__textureSize = slot;
	return true;
}

bool QQuickTextureFactory_override_virtual_textureByteCount(void* self, intptr_t slot) {
	MiqtVirtualQQuickTextureFactory* self_cast = dynamic_cast<MiqtVirtualQQuickTextureFactory*>( (QQuickTextureFactory*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__textureByteCount = slot;
	return true;
}

bool QQuickTextureFactory_override_virtual_image(void* self, intptr_t slot) {
	MiqtVirtualQQuickTextureFactory* self_cast = dynamic_cast<MiqtVirtualQQuickTextureFactory*>( (QQuickTextureFactory*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__image = slot;
	return true;
}

QImage* QQuickTextureFactory_virtualbase_image(const void* self) {
	return ( (const MiqtVirtualQQuickTextureFactory*)(self) )->virtualbase_image();
}

bool QQuickTextureFactory_override_virtual_event(void* self, intptr_t slot) {
	MiqtVirtualQQuickTextureFactory* self_cast = dynamic_cast<MiqtVirtualQQuickTextureFactory*>( (QQuickTextureFactory*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QQuickTextureFactory_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQQuickTextureFactory*)(self) )->virtualbase_event(event);
}

bool QQuickTextureFactory_override_virtual_eventFilter(void* self, intptr_t slot) {
	MiqtVirtualQQuickTextureFactory* self_cast = dynamic_cast<MiqtVirtualQQuickTextureFactory*>( (QQuickTextureFactory*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QQuickTextureFactory_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQQuickTextureFactory*)(self) )->virtualbase_eventFilter(watched, event);
}

bool QQuickTextureFactory_override_virtual_timerEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickTextureFactory* self_cast = dynamic_cast<MiqtVirtualQQuickTextureFactory*>( (QQuickTextureFactory*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QQuickTextureFactory_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQQuickTextureFactory*)(self) )->virtualbase_timerEvent(event);
}

bool QQuickTextureFactory_override_virtual_childEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickTextureFactory* self_cast = dynamic_cast<MiqtVirtualQQuickTextureFactory*>( (QQuickTextureFactory*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QQuickTextureFactory_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQQuickTextureFactory*)(self) )->virtualbase_childEvent(event);
}

bool QQuickTextureFactory_override_virtual_customEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickTextureFactory* self_cast = dynamic_cast<MiqtVirtualQQuickTextureFactory*>( (QQuickTextureFactory*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QQuickTextureFactory_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQQuickTextureFactory*)(self) )->virtualbase_customEvent(event);
}

bool QQuickTextureFactory_override_virtual_connectNotify(void* self, intptr_t slot) {
	MiqtVirtualQQuickTextureFactory* self_cast = dynamic_cast<MiqtVirtualQQuickTextureFactory*>( (QQuickTextureFactory*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QQuickTextureFactory_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickTextureFactory*)(self) )->virtualbase_connectNotify(signal);
}

bool QQuickTextureFactory_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	MiqtVirtualQQuickTextureFactory* self_cast = dynamic_cast<MiqtVirtualQQuickTextureFactory*>( (QQuickTextureFactory*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QQuickTextureFactory_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickTextureFactory*)(self) )->virtualbase_disconnectNotify(signal);
}

void QQuickTextureFactory_delete(QQuickTextureFactory* self) {
	delete self;
}

class MiqtVirtualQQuickImageResponse final : public QQuickImageResponse {
public:

	MiqtVirtualQQuickImageResponse(): QQuickImageResponse() {};

	virtual ~MiqtVirtualQQuickImageResponse() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__metacall = 0;

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (handle__metacall == 0) {
			return QQuickImageResponse::qt_metacall(param1, param2, param3);
		}
		
		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = miqt_exec_callback_QQuickImageResponse_metacall(this, handle__metacall, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metacall(int param1, int param2, void** param3) {

		return QQuickImageResponse::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__textureFactory = 0;

	// Subclass to allow providing a Go implementation
	virtual QQuickTextureFactory* textureFactory() const override {
		if (handle__textureFactory == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}
		

		QQuickTextureFactory* callback_return_value = miqt_exec_callback_QQuickImageResponse_textureFactory(this, handle__textureFactory);

		return callback_return_value;
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__errorString = 0;

	// Subclass to allow providing a Go implementation
	virtual QString errorString() const override {
		if (handle__errorString == 0) {
			return QQuickImageResponse::errorString();
		}
		

		struct miqt_string callback_return_value = miqt_exec_callback_QQuickImageResponse_errorString(this, handle__errorString);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);

		return callback_return_value_QString;
	}

	// Wrapper to allow calling protected method
	struct miqt_string virtualbase_errorString() const {

		QString _ret = QQuickImageResponse::errorString();
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _b = _ret.toUtf8();
		struct miqt_string _ms;
		_ms.len = _b.length();
		_ms.data = static_cast<char*>(malloc(_ms.len));
		memcpy(_ms.data, _b.data(), _ms.len);
		return _ms;

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__cancel = 0;

	// Subclass to allow providing a Go implementation
	virtual void cancel() override {
		if (handle__cancel == 0) {
			QQuickImageResponse::cancel();
			return;
		}
		

		miqt_exec_callback_QQuickImageResponse_cancel(this, handle__cancel);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_cancel() {

		QQuickImageResponse::cancel();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QQuickImageResponse::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QQuickImageResponse_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QQuickImageResponse::event(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QQuickImageResponse::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QQuickImageResponse_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QQuickImageResponse::eventFilter(watched, event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (handle__timerEvent == 0) {
			QQuickImageResponse::timerEvent(event);
			return;
		}
		
		QTimerEvent* sigval1 = event;

		miqt_exec_callback_QQuickImageResponse_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QQuickImageResponse::timerEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QQuickImageResponse::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QQuickImageResponse_childEvent(this, handle__childEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QQuickImageResponse::childEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QQuickImageResponse::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QQuickImageResponse_customEvent(this, handle__customEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QQuickImageResponse::customEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QQuickImageResponse::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQuickImageResponse_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QQuickImageResponse::connectNotify(*signal);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QQuickImageResponse::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQuickImageResponse_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QQuickImageResponse::disconnectNotify(*signal);

	}

};

QQuickImageResponse* QQuickImageResponse_new() {
	return new MiqtVirtualQQuickImageResponse();
}

void QQuickImageResponse_virtbase(QQuickImageResponse* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QQuickImageResponse_metaObject(const QQuickImageResponse* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickImageResponse_metacast(QQuickImageResponse* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QQuickImageResponse_metacall(QQuickImageResponse* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QQuickImageResponse_tr(const char* s) {
	QString _ret = QQuickImageResponse::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickImageResponse_trUtf8(const char* s) {
	QString _ret = QQuickImageResponse::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QQuickTextureFactory* QQuickImageResponse_textureFactory(const QQuickImageResponse* self) {
	return self->textureFactory();
}

struct miqt_string QQuickImageResponse_errorString(const QQuickImageResponse* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QQuickImageResponse_cancel(QQuickImageResponse* self) {
	self->cancel();
}

void QQuickImageResponse_finished(QQuickImageResponse* self) {
	self->finished();
}

void QQuickImageResponse_connect_finished(QQuickImageResponse* self, intptr_t slot) {
	MiqtVirtualQQuickImageResponse::connect(self, static_cast<void (QQuickImageResponse::*)()>(&QQuickImageResponse::finished), self, [=]() {
		miqt_exec_callback_QQuickImageResponse_finished(slot);
	});
}

struct miqt_string QQuickImageResponse_tr2(const char* s, const char* c) {
	QString _ret = QQuickImageResponse::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickImageResponse_tr3(const char* s, const char* c, int n) {
	QString _ret = QQuickImageResponse::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickImageResponse_trUtf82(const char* s, const char* c) {
	QString _ret = QQuickImageResponse::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickImageResponse_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQuickImageResponse::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QQuickImageResponse_override_virtual_metacall(void* self, intptr_t slot) {
	MiqtVirtualQQuickImageResponse* self_cast = dynamic_cast<MiqtVirtualQQuickImageResponse*>( (QQuickImageResponse*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__metacall = slot;
	return true;
}

int QQuickImageResponse_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQQuickImageResponse*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QQuickImageResponse_override_virtual_textureFactory(void* self, intptr_t slot) {
	MiqtVirtualQQuickImageResponse* self_cast = dynamic_cast<MiqtVirtualQQuickImageResponse*>( (QQuickImageResponse*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__textureFactory = slot;
	return true;
}

bool QQuickImageResponse_override_virtual_errorString(void* self, intptr_t slot) {
	MiqtVirtualQQuickImageResponse* self_cast = dynamic_cast<MiqtVirtualQQuickImageResponse*>( (QQuickImageResponse*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__errorString = slot;
	return true;
}

struct miqt_string QQuickImageResponse_virtualbase_errorString(const void* self) {
	return ( (const MiqtVirtualQQuickImageResponse*)(self) )->virtualbase_errorString();
}

bool QQuickImageResponse_override_virtual_cancel(void* self, intptr_t slot) {
	MiqtVirtualQQuickImageResponse* self_cast = dynamic_cast<MiqtVirtualQQuickImageResponse*>( (QQuickImageResponse*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__cancel = slot;
	return true;
}

void QQuickImageResponse_virtualbase_cancel(void* self) {
	( (MiqtVirtualQQuickImageResponse*)(self) )->virtualbase_cancel();
}

bool QQuickImageResponse_override_virtual_event(void* self, intptr_t slot) {
	MiqtVirtualQQuickImageResponse* self_cast = dynamic_cast<MiqtVirtualQQuickImageResponse*>( (QQuickImageResponse*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QQuickImageResponse_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQQuickImageResponse*)(self) )->virtualbase_event(event);
}

bool QQuickImageResponse_override_virtual_eventFilter(void* self, intptr_t slot) {
	MiqtVirtualQQuickImageResponse* self_cast = dynamic_cast<MiqtVirtualQQuickImageResponse*>( (QQuickImageResponse*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QQuickImageResponse_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQQuickImageResponse*)(self) )->virtualbase_eventFilter(watched, event);
}

bool QQuickImageResponse_override_virtual_timerEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickImageResponse* self_cast = dynamic_cast<MiqtVirtualQQuickImageResponse*>( (QQuickImageResponse*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QQuickImageResponse_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQQuickImageResponse*)(self) )->virtualbase_timerEvent(event);
}

bool QQuickImageResponse_override_virtual_childEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickImageResponse* self_cast = dynamic_cast<MiqtVirtualQQuickImageResponse*>( (QQuickImageResponse*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QQuickImageResponse_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQQuickImageResponse*)(self) )->virtualbase_childEvent(event);
}

bool QQuickImageResponse_override_virtual_customEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickImageResponse* self_cast = dynamic_cast<MiqtVirtualQQuickImageResponse*>( (QQuickImageResponse*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QQuickImageResponse_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQQuickImageResponse*)(self) )->virtualbase_customEvent(event);
}

bool QQuickImageResponse_override_virtual_connectNotify(void* self, intptr_t slot) {
	MiqtVirtualQQuickImageResponse* self_cast = dynamic_cast<MiqtVirtualQQuickImageResponse*>( (QQuickImageResponse*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QQuickImageResponse_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickImageResponse*)(self) )->virtualbase_connectNotify(signal);
}

bool QQuickImageResponse_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	MiqtVirtualQQuickImageResponse* self_cast = dynamic_cast<MiqtVirtualQQuickImageResponse*>( (QQuickImageResponse*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QQuickImageResponse_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickImageResponse*)(self) )->virtualbase_disconnectNotify(signal);
}

void QQuickImageResponse_delete(QQuickImageResponse* self) {
	delete self;
}

class MiqtVirtualQQuickImageProvider final : public QQuickImageProvider {
public:

	MiqtVirtualQQuickImageProvider(QQmlImageProviderBase::ImageType type): QQuickImageProvider(type) {};
	MiqtVirtualQQuickImageProvider(const QQuickImageProvider& param1): QQuickImageProvider(param1) {};
	MiqtVirtualQQuickImageProvider(QQmlImageProviderBase::ImageType type, QQmlImageProviderBase::Flags flags): QQuickImageProvider(type, flags) {};

	virtual ~MiqtVirtualQQuickImageProvider() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__imageType = 0;

	// Subclass to allow providing a Go implementation
	virtual QQmlImageProviderBase::ImageType imageType() const override {
		if (handle__imageType == 0) {
			return QQuickImageProvider::imageType();
		}
		

		int callback_return_value = miqt_exec_callback_QQuickImageProvider_imageType(this, handle__imageType);

		return static_cast<QQmlImageProviderBase::ImageType>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_imageType() const {

		QQmlImageProviderBase::ImageType _ret = QQuickImageProvider::imageType();
		return static_cast<int>(_ret);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__flags = 0;

	// Subclass to allow providing a Go implementation
	virtual QQmlImageProviderBase::Flags flags() const override {
		if (handle__flags == 0) {
			return QQuickImageProvider::flags();
		}
		

		int callback_return_value = miqt_exec_callback_QQuickImageProvider_flags(this, handle__flags);

		return static_cast<QQmlImageProviderBase::Flags>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_flags() const {

		QQmlImageProviderBase::Flags _ret = QQuickImageProvider::flags();
		return static_cast<int>(_ret);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__requestImage = 0;

	// Subclass to allow providing a Go implementation
	virtual QImage requestImage(const QString& id, QSize* size, const QSize& requestedSize) override {
		if (handle__requestImage == 0) {
			return QQuickImageProvider::requestImage(id, size, requestedSize);
		}
		
		const QString id_ret = id;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray id_b = id_ret.toUtf8();
		struct miqt_string id_ms;
		id_ms.len = id_b.length();
		id_ms.data = static_cast<char*>(malloc(id_ms.len));
		memcpy(id_ms.data, id_b.data(), id_ms.len);
		struct miqt_string sigval1 = id_ms;
		QSize* sigval2 = size;
		const QSize& requestedSize_ret = requestedSize;
		// Cast returned reference into pointer
		QSize* sigval3 = const_cast<QSize*>(&requestedSize_ret);

		QImage* callback_return_value = miqt_exec_callback_QQuickImageProvider_requestImage(this, handle__requestImage, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QImage* virtualbase_requestImage(struct miqt_string id, QSize* size, QSize* requestedSize) {
		QString id_QString = QString::fromUtf8(id.data, id.len);

		return new QImage(QQuickImageProvider::requestImage(id_QString, size, *requestedSize));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__requestPixmap = 0;

	// Subclass to allow providing a Go implementation
	virtual QPixmap requestPixmap(const QString& id, QSize* size, const QSize& requestedSize) override {
		if (handle__requestPixmap == 0) {
			return QQuickImageProvider::requestPixmap(id, size, requestedSize);
		}
		
		const QString id_ret = id;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray id_b = id_ret.toUtf8();
		struct miqt_string id_ms;
		id_ms.len = id_b.length();
		id_ms.data = static_cast<char*>(malloc(id_ms.len));
		memcpy(id_ms.data, id_b.data(), id_ms.len);
		struct miqt_string sigval1 = id_ms;
		QSize* sigval2 = size;
		const QSize& requestedSize_ret = requestedSize;
		// Cast returned reference into pointer
		QSize* sigval3 = const_cast<QSize*>(&requestedSize_ret);

		QPixmap* callback_return_value = miqt_exec_callback_QQuickImageProvider_requestPixmap(this, handle__requestPixmap, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPixmap* virtualbase_requestPixmap(struct miqt_string id, QSize* size, QSize* requestedSize) {
		QString id_QString = QString::fromUtf8(id.data, id.len);

		return new QPixmap(QQuickImageProvider::requestPixmap(id_QString, size, *requestedSize));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__requestTexture = 0;

	// Subclass to allow providing a Go implementation
	virtual QQuickTextureFactory* requestTexture(const QString& id, QSize* size, const QSize& requestedSize) override {
		if (handle__requestTexture == 0) {
			return QQuickImageProvider::requestTexture(id, size, requestedSize);
		}
		
		const QString id_ret = id;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray id_b = id_ret.toUtf8();
		struct miqt_string id_ms;
		id_ms.len = id_b.length();
		id_ms.data = static_cast<char*>(malloc(id_ms.len));
		memcpy(id_ms.data, id_b.data(), id_ms.len);
		struct miqt_string sigval1 = id_ms;
		QSize* sigval2 = size;
		const QSize& requestedSize_ret = requestedSize;
		// Cast returned reference into pointer
		QSize* sigval3 = const_cast<QSize*>(&requestedSize_ret);

		QQuickTextureFactory* callback_return_value = miqt_exec_callback_QQuickImageProvider_requestTexture(this, handle__requestTexture, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QQuickTextureFactory* virtualbase_requestTexture(struct miqt_string id, QSize* size, QSize* requestedSize) {
		QString id_QString = QString::fromUtf8(id.data, id.len);

		return QQuickImageProvider::requestTexture(id_QString, size, *requestedSize);

	}

};

QQuickImageProvider* QQuickImageProvider_new(int type) {
	return new MiqtVirtualQQuickImageProvider(static_cast<QQmlImageProviderBase::ImageType>(type));
}

QQuickImageProvider* QQuickImageProvider_new2(QQuickImageProvider* param1) {
	return new MiqtVirtualQQuickImageProvider(*param1);
}

QQuickImageProvider* QQuickImageProvider_new3(int type, int flags) {
	return new MiqtVirtualQQuickImageProvider(static_cast<QQmlImageProviderBase::ImageType>(type), static_cast<QQmlImageProviderBase::Flags>(flags));
}

void QQuickImageProvider_virtbase(QQuickImageProvider* src, QQmlImageProviderBase** outptr_QQmlImageProviderBase) {
	*outptr_QQmlImageProviderBase = static_cast<QQmlImageProviderBase*>(src);
}

int QQuickImageProvider_imageType(const QQuickImageProvider* self) {
	QQmlImageProviderBase::ImageType _ret = self->imageType();
	return static_cast<int>(_ret);
}

int QQuickImageProvider_flags(const QQuickImageProvider* self) {
	QQmlImageProviderBase::Flags _ret = self->flags();
	return static_cast<int>(_ret);
}

QImage* QQuickImageProvider_requestImage(QQuickImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize) {
	QString id_QString = QString::fromUtf8(id.data, id.len);
	return new QImage(self->requestImage(id_QString, size, *requestedSize));
}

QPixmap* QQuickImageProvider_requestPixmap(QQuickImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize) {
	QString id_QString = QString::fromUtf8(id.data, id.len);
	return new QPixmap(self->requestPixmap(id_QString, size, *requestedSize));
}

QQuickTextureFactory* QQuickImageProvider_requestTexture(QQuickImageProvider* self, struct miqt_string id, QSize* size, QSize* requestedSize) {
	QString id_QString = QString::fromUtf8(id.data, id.len);
	return self->requestTexture(id_QString, size, *requestedSize);
}

bool QQuickImageProvider_override_virtual_imageType(void* self, intptr_t slot) {
	MiqtVirtualQQuickImageProvider* self_cast = dynamic_cast<MiqtVirtualQQuickImageProvider*>( (QQuickImageProvider*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__imageType = slot;
	return true;
}

int QQuickImageProvider_virtualbase_imageType(const void* self) {
	return ( (const MiqtVirtualQQuickImageProvider*)(self) )->virtualbase_imageType();
}

bool QQuickImageProvider_override_virtual_flags(void* self, intptr_t slot) {
	MiqtVirtualQQuickImageProvider* self_cast = dynamic_cast<MiqtVirtualQQuickImageProvider*>( (QQuickImageProvider*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__flags = slot;
	return true;
}

int QQuickImageProvider_virtualbase_flags(const void* self) {
	return ( (const MiqtVirtualQQuickImageProvider*)(self) )->virtualbase_flags();
}

bool QQuickImageProvider_override_virtual_requestImage(void* self, intptr_t slot) {
	MiqtVirtualQQuickImageProvider* self_cast = dynamic_cast<MiqtVirtualQQuickImageProvider*>( (QQuickImageProvider*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__requestImage = slot;
	return true;
}

QImage* QQuickImageProvider_virtualbase_requestImage(void* self, struct miqt_string id, QSize* size, QSize* requestedSize) {
	return ( (MiqtVirtualQQuickImageProvider*)(self) )->virtualbase_requestImage(id, size, requestedSize);
}

bool QQuickImageProvider_override_virtual_requestPixmap(void* self, intptr_t slot) {
	MiqtVirtualQQuickImageProvider* self_cast = dynamic_cast<MiqtVirtualQQuickImageProvider*>( (QQuickImageProvider*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__requestPixmap = slot;
	return true;
}

QPixmap* QQuickImageProvider_virtualbase_requestPixmap(void* self, struct miqt_string id, QSize* size, QSize* requestedSize) {
	return ( (MiqtVirtualQQuickImageProvider*)(self) )->virtualbase_requestPixmap(id, size, requestedSize);
}

bool QQuickImageProvider_override_virtual_requestTexture(void* self, intptr_t slot) {
	MiqtVirtualQQuickImageProvider* self_cast = dynamic_cast<MiqtVirtualQQuickImageProvider*>( (QQuickImageProvider*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__requestTexture = slot;
	return true;
}

QQuickTextureFactory* QQuickImageProvider_virtualbase_requestTexture(void* self, struct miqt_string id, QSize* size, QSize* requestedSize) {
	return ( (MiqtVirtualQQuickImageProvider*)(self) )->virtualbase_requestTexture(id, size, requestedSize);
}

void QQuickImageProvider_delete(QQuickImageProvider* self) {
	delete self;
}

class MiqtVirtualQQuickAsyncImageProvider final : public QQuickAsyncImageProvider {
public:

	MiqtVirtualQQuickAsyncImageProvider(): QQuickAsyncImageProvider() {};
	MiqtVirtualQQuickAsyncImageProvider(const QQuickAsyncImageProvider& param1): QQuickAsyncImageProvider(param1) {};

	virtual ~MiqtVirtualQQuickAsyncImageProvider() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__requestImageResponse = 0;

	// Subclass to allow providing a Go implementation
	virtual QQuickImageResponse* requestImageResponse(const QString& id, const QSize& requestedSize) override {
		if (handle__requestImageResponse == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}
		
		const QString id_ret = id;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray id_b = id_ret.toUtf8();
		struct miqt_string id_ms;
		id_ms.len = id_b.length();
		id_ms.data = static_cast<char*>(malloc(id_ms.len));
		memcpy(id_ms.data, id_b.data(), id_ms.len);
		struct miqt_string sigval1 = id_ms;
		const QSize& requestedSize_ret = requestedSize;
		// Cast returned reference into pointer
		QSize* sigval2 = const_cast<QSize*>(&requestedSize_ret);

		QQuickImageResponse* callback_return_value = miqt_exec_callback_QQuickAsyncImageProvider_requestImageResponse(this, handle__requestImageResponse, sigval1, sigval2);

		return callback_return_value;
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__imageType = 0;

	// Subclass to allow providing a Go implementation
	virtual QQmlImageProviderBase::ImageType imageType() const override {
		if (handle__imageType == 0) {
			return QQuickAsyncImageProvider::imageType();
		}
		

		int callback_return_value = miqt_exec_callback_QQuickAsyncImageProvider_imageType(this, handle__imageType);

		return static_cast<QQmlImageProviderBase::ImageType>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_imageType() const {

		QQmlImageProviderBase::ImageType _ret = QQuickAsyncImageProvider::imageType();
		return static_cast<int>(_ret);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__flags = 0;

	// Subclass to allow providing a Go implementation
	virtual QQmlImageProviderBase::Flags flags() const override {
		if (handle__flags == 0) {
			return QQuickAsyncImageProvider::flags();
		}
		

		int callback_return_value = miqt_exec_callback_QQuickAsyncImageProvider_flags(this, handle__flags);

		return static_cast<QQmlImageProviderBase::Flags>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_flags() const {

		QQmlImageProviderBase::Flags _ret = QQuickAsyncImageProvider::flags();
		return static_cast<int>(_ret);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__requestImage = 0;

	// Subclass to allow providing a Go implementation
	virtual QImage requestImage(const QString& id, QSize* size, const QSize& requestedSize) override {
		if (handle__requestImage == 0) {
			return QQuickAsyncImageProvider::requestImage(id, size, requestedSize);
		}
		
		const QString id_ret = id;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray id_b = id_ret.toUtf8();
		struct miqt_string id_ms;
		id_ms.len = id_b.length();
		id_ms.data = static_cast<char*>(malloc(id_ms.len));
		memcpy(id_ms.data, id_b.data(), id_ms.len);
		struct miqt_string sigval1 = id_ms;
		QSize* sigval2 = size;
		const QSize& requestedSize_ret = requestedSize;
		// Cast returned reference into pointer
		QSize* sigval3 = const_cast<QSize*>(&requestedSize_ret);

		QImage* callback_return_value = miqt_exec_callback_QQuickAsyncImageProvider_requestImage(this, handle__requestImage, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QImage* virtualbase_requestImage(struct miqt_string id, QSize* size, QSize* requestedSize) {
		QString id_QString = QString::fromUtf8(id.data, id.len);

		return new QImage(QQuickAsyncImageProvider::requestImage(id_QString, size, *requestedSize));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__requestPixmap = 0;

	// Subclass to allow providing a Go implementation
	virtual QPixmap requestPixmap(const QString& id, QSize* size, const QSize& requestedSize) override {
		if (handle__requestPixmap == 0) {
			return QQuickAsyncImageProvider::requestPixmap(id, size, requestedSize);
		}
		
		const QString id_ret = id;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray id_b = id_ret.toUtf8();
		struct miqt_string id_ms;
		id_ms.len = id_b.length();
		id_ms.data = static_cast<char*>(malloc(id_ms.len));
		memcpy(id_ms.data, id_b.data(), id_ms.len);
		struct miqt_string sigval1 = id_ms;
		QSize* sigval2 = size;
		const QSize& requestedSize_ret = requestedSize;
		// Cast returned reference into pointer
		QSize* sigval3 = const_cast<QSize*>(&requestedSize_ret);

		QPixmap* callback_return_value = miqt_exec_callback_QQuickAsyncImageProvider_requestPixmap(this, handle__requestPixmap, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPixmap* virtualbase_requestPixmap(struct miqt_string id, QSize* size, QSize* requestedSize) {
		QString id_QString = QString::fromUtf8(id.data, id.len);

		return new QPixmap(QQuickAsyncImageProvider::requestPixmap(id_QString, size, *requestedSize));

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__requestTexture = 0;

	// Subclass to allow providing a Go implementation
	virtual QQuickTextureFactory* requestTexture(const QString& id, QSize* size, const QSize& requestedSize) override {
		if (handle__requestTexture == 0) {
			return QQuickAsyncImageProvider::requestTexture(id, size, requestedSize);
		}
		
		const QString id_ret = id;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray id_b = id_ret.toUtf8();
		struct miqt_string id_ms;
		id_ms.len = id_b.length();
		id_ms.data = static_cast<char*>(malloc(id_ms.len));
		memcpy(id_ms.data, id_b.data(), id_ms.len);
		struct miqt_string sigval1 = id_ms;
		QSize* sigval2 = size;
		const QSize& requestedSize_ret = requestedSize;
		// Cast returned reference into pointer
		QSize* sigval3 = const_cast<QSize*>(&requestedSize_ret);

		QQuickTextureFactory* callback_return_value = miqt_exec_callback_QQuickAsyncImageProvider_requestTexture(this, handle__requestTexture, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QQuickTextureFactory* virtualbase_requestTexture(struct miqt_string id, QSize* size, QSize* requestedSize) {
		QString id_QString = QString::fromUtf8(id.data, id.len);

		return QQuickAsyncImageProvider::requestTexture(id_QString, size, *requestedSize);

	}

};

QQuickAsyncImageProvider* QQuickAsyncImageProvider_new() {
	return new MiqtVirtualQQuickAsyncImageProvider();
}

QQuickAsyncImageProvider* QQuickAsyncImageProvider_new2(QQuickAsyncImageProvider* param1) {
	return new MiqtVirtualQQuickAsyncImageProvider(*param1);
}

void QQuickAsyncImageProvider_virtbase(QQuickAsyncImageProvider* src, QQuickImageProvider** outptr_QQuickImageProvider) {
	*outptr_QQuickImageProvider = static_cast<QQuickImageProvider*>(src);
}

QQuickImageResponse* QQuickAsyncImageProvider_requestImageResponse(QQuickAsyncImageProvider* self, struct miqt_string id, QSize* requestedSize) {
	QString id_QString = QString::fromUtf8(id.data, id.len);
	return self->requestImageResponse(id_QString, *requestedSize);
}

bool QQuickAsyncImageProvider_override_virtual_requestImageResponse(void* self, intptr_t slot) {
	MiqtVirtualQQuickAsyncImageProvider* self_cast = dynamic_cast<MiqtVirtualQQuickAsyncImageProvider*>( (QQuickAsyncImageProvider*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__requestImageResponse = slot;
	return true;
}

bool QQuickAsyncImageProvider_override_virtual_imageType(void* self, intptr_t slot) {
	MiqtVirtualQQuickAsyncImageProvider* self_cast = dynamic_cast<MiqtVirtualQQuickAsyncImageProvider*>( (QQuickAsyncImageProvider*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__imageType = slot;
	return true;
}

int QQuickAsyncImageProvider_virtualbase_imageType(const void* self) {
	return ( (const MiqtVirtualQQuickAsyncImageProvider*)(self) )->virtualbase_imageType();
}

bool QQuickAsyncImageProvider_override_virtual_flags(void* self, intptr_t slot) {
	MiqtVirtualQQuickAsyncImageProvider* self_cast = dynamic_cast<MiqtVirtualQQuickAsyncImageProvider*>( (QQuickAsyncImageProvider*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__flags = slot;
	return true;
}

int QQuickAsyncImageProvider_virtualbase_flags(const void* self) {
	return ( (const MiqtVirtualQQuickAsyncImageProvider*)(self) )->virtualbase_flags();
}

bool QQuickAsyncImageProvider_override_virtual_requestImage(void* self, intptr_t slot) {
	MiqtVirtualQQuickAsyncImageProvider* self_cast = dynamic_cast<MiqtVirtualQQuickAsyncImageProvider*>( (QQuickAsyncImageProvider*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__requestImage = slot;
	return true;
}

QImage* QQuickAsyncImageProvider_virtualbase_requestImage(void* self, struct miqt_string id, QSize* size, QSize* requestedSize) {
	return ( (MiqtVirtualQQuickAsyncImageProvider*)(self) )->virtualbase_requestImage(id, size, requestedSize);
}

bool QQuickAsyncImageProvider_override_virtual_requestPixmap(void* self, intptr_t slot) {
	MiqtVirtualQQuickAsyncImageProvider* self_cast = dynamic_cast<MiqtVirtualQQuickAsyncImageProvider*>( (QQuickAsyncImageProvider*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__requestPixmap = slot;
	return true;
}

QPixmap* QQuickAsyncImageProvider_virtualbase_requestPixmap(void* self, struct miqt_string id, QSize* size, QSize* requestedSize) {
	return ( (MiqtVirtualQQuickAsyncImageProvider*)(self) )->virtualbase_requestPixmap(id, size, requestedSize);
}

bool QQuickAsyncImageProvider_override_virtual_requestTexture(void* self, intptr_t slot) {
	MiqtVirtualQQuickAsyncImageProvider* self_cast = dynamic_cast<MiqtVirtualQQuickAsyncImageProvider*>( (QQuickAsyncImageProvider*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__requestTexture = slot;
	return true;
}

QQuickTextureFactory* QQuickAsyncImageProvider_virtualbase_requestTexture(void* self, struct miqt_string id, QSize* size, QSize* requestedSize) {
	return ( (MiqtVirtualQQuickAsyncImageProvider*)(self) )->virtualbase_requestTexture(id, size, requestedSize);
}

void QQuickAsyncImageProvider_delete(QQuickAsyncImageProvider* self) {
	delete self;
}

