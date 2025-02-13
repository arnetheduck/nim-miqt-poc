#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRectF>
#include <QSGDynamicTexture>
#include <QSGTexture>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qsgtexture.h>
#include "gen_qsgtexture.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQSGTexture final : public QSGTexture {
	struct QSGTexture_VTable* vtbl;
public:

	MiqtVirtualQSGTexture(struct QSGTexture_VTable* vtbl): QSGTexture(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSGTexture() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSGTexture::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QSGTexture::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSGTexture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QSGTexture::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSGTexture::qt_metacall(param1, param2, param3);
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

		return QSGTexture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual qint64 comparisonKey() const override {
		if (vtbl->comparisonKey == 0) {
			return 0; // Pure virtual, there is no base we can call
		}


		long long callback_return_value = vtbl->comparisonKey(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Subclass to allow providing a Go implementation
	virtual QRhiTexture* rhiTexture() const override {
		if (vtbl->rhiTexture == 0) {
			return QSGTexture::rhiTexture();
		}


		QRhiTexture* callback_return_value = vtbl->rhiTexture(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRhiTexture* virtualbase_rhiTexture() const {

		return QSGTexture::rhiTexture();

	}

	// Subclass to allow providing a Go implementation
	virtual QSize textureSize() const override {
		if (vtbl->textureSize == 0) {
			return QSize(); // Pure virtual, there is no base we can call
		}


		QSize* callback_return_value = vtbl->textureSize(vtbl, this);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual bool hasAlphaChannel() const override {
		if (vtbl->hasAlphaChannel == 0) {
			return false; // Pure virtual, there is no base we can call
		}


		bool callback_return_value = vtbl->hasAlphaChannel(vtbl, this);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual bool hasMipmaps() const override {
		if (vtbl->hasMipmaps == 0) {
			return false; // Pure virtual, there is no base we can call
		}


		bool callback_return_value = vtbl->hasMipmaps(vtbl, this);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual QRectF normalizedTextureSubRect() const override {
		if (vtbl->normalizedTextureSubRect == 0) {
			return QSGTexture::normalizedTextureSubRect();
		}


		QRectF* callback_return_value = vtbl->normalizedTextureSubRect(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_normalizedTextureSubRect() const {

		return new QRectF(QSGTexture::normalizedTextureSubRect());

	}

	// Subclass to allow providing a Go implementation
	virtual bool isAtlasTexture() const override {
		if (vtbl->isAtlasTexture == 0) {
			return QSGTexture::isAtlasTexture();
		}


		bool callback_return_value = vtbl->isAtlasTexture(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isAtlasTexture() const {

		return QSGTexture::isAtlasTexture();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSGTexture::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QSGTexture::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSGTexture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QSGTexture::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSGTexture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QSGTexture::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSGTexture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QSGTexture::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSGTexture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QSGTexture::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSGTexture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QSGTexture::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSGTexture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QSGTexture::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void* QSGTexture_protectedbase_resolveInterface(const void* self, const char* name, int revision);
	friend QObject* QSGTexture_protectedbase_sender(const void* self);
	friend int QSGTexture_protectedbase_senderSignalIndex(const void* self);
	friend int QSGTexture_protectedbase_receivers(const void* self, const char* signal);
	friend bool QSGTexture_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QSGTexture* QSGTexture_new(struct QSGTexture_VTable* vtbl) {
	return new MiqtVirtualQSGTexture(vtbl);
}

void QSGTexture_virtbase(QSGTexture* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QSGTexture_metaObject(const QSGTexture* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSGTexture_metacast(QSGTexture* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSGTexture_metacall(QSGTexture* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSGTexture_tr(const char* s) {
	QString _ret = QSGTexture::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

long long QSGTexture_comparisonKey(const QSGTexture* self) {
	qint64 _ret = self->comparisonKey();
	return static_cast<long long>(_ret);
}

QRhiTexture* QSGTexture_rhiTexture(const QSGTexture* self) {
	return self->rhiTexture();
}

QSize* QSGTexture_textureSize(const QSGTexture* self) {
	return new QSize(self->textureSize());
}

bool QSGTexture_hasAlphaChannel(const QSGTexture* self) {
	return self->hasAlphaChannel();
}

bool QSGTexture_hasMipmaps(const QSGTexture* self) {
	return self->hasMipmaps();
}

QRectF* QSGTexture_normalizedTextureSubRect(const QSGTexture* self) {
	return new QRectF(self->normalizedTextureSubRect());
}

bool QSGTexture_isAtlasTexture(const QSGTexture* self) {
	return self->isAtlasTexture();
}

void QSGTexture_setMipmapFiltering(QSGTexture* self, int filter) {
	self->setMipmapFiltering(static_cast<QSGTexture::Filtering>(filter));
}

int QSGTexture_mipmapFiltering(const QSGTexture* self) {
	QSGTexture::Filtering _ret = self->mipmapFiltering();
	return static_cast<int>(_ret);
}

void QSGTexture_setFiltering(QSGTexture* self, int filter) {
	self->setFiltering(static_cast<QSGTexture::Filtering>(filter));
}

int QSGTexture_filtering(const QSGTexture* self) {
	QSGTexture::Filtering _ret = self->filtering();
	return static_cast<int>(_ret);
}

void QSGTexture_setAnisotropyLevel(QSGTexture* self, int level) {
	self->setAnisotropyLevel(static_cast<QSGTexture::AnisotropyLevel>(level));
}

int QSGTexture_anisotropyLevel(const QSGTexture* self) {
	QSGTexture::AnisotropyLevel _ret = self->anisotropyLevel();
	return static_cast<int>(_ret);
}

void QSGTexture_setHorizontalWrapMode(QSGTexture* self, int hwrap) {
	self->setHorizontalWrapMode(static_cast<QSGTexture::WrapMode>(hwrap));
}

int QSGTexture_horizontalWrapMode(const QSGTexture* self) {
	QSGTexture::WrapMode _ret = self->horizontalWrapMode();
	return static_cast<int>(_ret);
}

void QSGTexture_setVerticalWrapMode(QSGTexture* self, int vwrap) {
	self->setVerticalWrapMode(static_cast<QSGTexture::WrapMode>(vwrap));
}

int QSGTexture_verticalWrapMode(const QSGTexture* self) {
	QSGTexture::WrapMode _ret = self->verticalWrapMode();
	return static_cast<int>(_ret);
}

QRectF* QSGTexture_convertToNormalizedSourceRect(const QSGTexture* self, QRectF* rect) {
	return new QRectF(self->convertToNormalizedSourceRect(*rect));
}

struct miqt_string QSGTexture_tr2(const char* s, const char* c) {
	QString _ret = QSGTexture::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSGTexture_tr3(const char* s, const char* c, int n) {
	QString _ret = QSGTexture::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSGTexture_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQSGTexture*)(self) )->virtualbase_metaObject();
}

void* QSGTexture_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQSGTexture*)(self) )->virtualbase_metacast(param1);
}

int QSGTexture_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQSGTexture*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QRhiTexture* QSGTexture_virtualbase_rhiTexture(const void* self) {
	return ( (const MiqtVirtualQSGTexture*)(self) )->virtualbase_rhiTexture();
}

QRectF* QSGTexture_virtualbase_normalizedTextureSubRect(const void* self) {
	return ( (const MiqtVirtualQSGTexture*)(self) )->virtualbase_normalizedTextureSubRect();
}

bool QSGTexture_virtualbase_isAtlasTexture(const void* self) {
	return ( (const MiqtVirtualQSGTexture*)(self) )->virtualbase_isAtlasTexture();
}

bool QSGTexture_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQSGTexture*)(self) )->virtualbase_event(event);
}

bool QSGTexture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQSGTexture*)(self) )->virtualbase_eventFilter(watched, event);
}

void QSGTexture_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQSGTexture*)(self) )->virtualbase_timerEvent(event);
}

void QSGTexture_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQSGTexture*)(self) )->virtualbase_childEvent(event);
}

void QSGTexture_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSGTexture*)(self) )->virtualbase_customEvent(event);
}

void QSGTexture_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSGTexture*)(self) )->virtualbase_connectNotify(signal);
}

void QSGTexture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSGTexture*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QSGTexture_staticMetaObject() { return &QSGTexture::staticMetaObject; }
void* QSGTexture_protectedbase_resolveInterface(const void* self, const char* name, int revision) {
	MiqtVirtualQSGTexture* self_cast = static_cast<MiqtVirtualQSGTexture*>( (QSGTexture*)(self) );
	
	return self_cast->resolveInterface(name, static_cast<int>(revision));

}

QObject* QSGTexture_protectedbase_sender(const void* self) {
	MiqtVirtualQSGTexture* self_cast = static_cast<MiqtVirtualQSGTexture*>( (QSGTexture*)(self) );
	
	return self_cast->sender();

}

int QSGTexture_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQSGTexture* self_cast = static_cast<MiqtVirtualQSGTexture*>( (QSGTexture*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QSGTexture_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQSGTexture* self_cast = static_cast<MiqtVirtualQSGTexture*>( (QSGTexture*)(self) );
	
	return self_cast->receivers(signal);

}

bool QSGTexture_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQSGTexture* self_cast = static_cast<MiqtVirtualQSGTexture*>( (QSGTexture*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QSGTexture_delete(QSGTexture* self) {
	delete self;
}

class MiqtVirtualQSGDynamicTexture final : public QSGDynamicTexture {
	struct QSGDynamicTexture_VTable* vtbl;
public:

	MiqtVirtualQSGDynamicTexture(struct QSGDynamicTexture_VTable* vtbl): QSGDynamicTexture(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSGDynamicTexture() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSGDynamicTexture::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QSGDynamicTexture::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSGDynamicTexture::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QSGDynamicTexture::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSGDynamicTexture::qt_metacall(param1, param2, param3);
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

		return QSGDynamicTexture::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool updateTexture() override {
		if (vtbl->updateTexture == 0) {
			return false; // Pure virtual, there is no base we can call
		}


		bool callback_return_value = vtbl->updateTexture(vtbl, this);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual qint64 comparisonKey() const override {
		if (vtbl->comparisonKey == 0) {
			return 0; // Pure virtual, there is no base we can call
		}


		long long callback_return_value = vtbl->comparisonKey(vtbl, this);

		return static_cast<qint64>(callback_return_value);
	}

	// Subclass to allow providing a Go implementation
	virtual QRhiTexture* rhiTexture() const override {
		if (vtbl->rhiTexture == 0) {
			return QSGDynamicTexture::rhiTexture();
		}


		QRhiTexture* callback_return_value = vtbl->rhiTexture(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRhiTexture* virtualbase_rhiTexture() const {

		return QSGDynamicTexture::rhiTexture();

	}

	// Subclass to allow providing a Go implementation
	virtual QSize textureSize() const override {
		if (vtbl->textureSize == 0) {
			return QSize(); // Pure virtual, there is no base we can call
		}


		QSize* callback_return_value = vtbl->textureSize(vtbl, this);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual bool hasAlphaChannel() const override {
		if (vtbl->hasAlphaChannel == 0) {
			return false; // Pure virtual, there is no base we can call
		}


		bool callback_return_value = vtbl->hasAlphaChannel(vtbl, this);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual bool hasMipmaps() const override {
		if (vtbl->hasMipmaps == 0) {
			return false; // Pure virtual, there is no base we can call
		}


		bool callback_return_value = vtbl->hasMipmaps(vtbl, this);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual QRectF normalizedTextureSubRect() const override {
		if (vtbl->normalizedTextureSubRect == 0) {
			return QSGDynamicTexture::normalizedTextureSubRect();
		}


		QRectF* callback_return_value = vtbl->normalizedTextureSubRect(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_normalizedTextureSubRect() const {

		return new QRectF(QSGDynamicTexture::normalizedTextureSubRect());

	}

	// Subclass to allow providing a Go implementation
	virtual bool isAtlasTexture() const override {
		if (vtbl->isAtlasTexture == 0) {
			return QSGDynamicTexture::isAtlasTexture();
		}


		bool callback_return_value = vtbl->isAtlasTexture(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isAtlasTexture() const {

		return QSGDynamicTexture::isAtlasTexture();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSGDynamicTexture::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QSGDynamicTexture::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSGDynamicTexture::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QSGDynamicTexture::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSGDynamicTexture::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QSGDynamicTexture::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSGDynamicTexture::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QSGDynamicTexture::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSGDynamicTexture::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QSGDynamicTexture::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSGDynamicTexture::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QSGDynamicTexture::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSGDynamicTexture::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QSGDynamicTexture::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void* QSGDynamicTexture_protectedbase_resolveInterface(const void* self, const char* name, int revision);
	friend QObject* QSGDynamicTexture_protectedbase_sender(const void* self);
	friend int QSGDynamicTexture_protectedbase_senderSignalIndex(const void* self);
	friend int QSGDynamicTexture_protectedbase_receivers(const void* self, const char* signal);
	friend bool QSGDynamicTexture_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QSGDynamicTexture* QSGDynamicTexture_new(struct QSGDynamicTexture_VTable* vtbl) {
	return new MiqtVirtualQSGDynamicTexture(vtbl);
}

void QSGDynamicTexture_virtbase(QSGDynamicTexture* src, QSGTexture** outptr_QSGTexture) {
	*outptr_QSGTexture = static_cast<QSGTexture*>(src);
}

QMetaObject* QSGDynamicTexture_metaObject(const QSGDynamicTexture* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSGDynamicTexture_metacast(QSGDynamicTexture* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSGDynamicTexture_metacall(QSGDynamicTexture* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSGDynamicTexture_tr(const char* s) {
	QString _ret = QSGDynamicTexture::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QSGDynamicTexture_updateTexture(QSGDynamicTexture* self) {
	return self->updateTexture();
}

struct miqt_string QSGDynamicTexture_tr2(const char* s, const char* c) {
	QString _ret = QSGDynamicTexture::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSGDynamicTexture_tr3(const char* s, const char* c, int n) {
	QString _ret = QSGDynamicTexture::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSGDynamicTexture_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQSGDynamicTexture*)(self) )->virtualbase_metaObject();
}

void* QSGDynamicTexture_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQSGDynamicTexture*)(self) )->virtualbase_metacast(param1);
}

int QSGDynamicTexture_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQSGDynamicTexture*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QRhiTexture* QSGDynamicTexture_virtualbase_rhiTexture(const void* self) {
	return ( (const MiqtVirtualQSGDynamicTexture*)(self) )->virtualbase_rhiTexture();
}

QRectF* QSGDynamicTexture_virtualbase_normalizedTextureSubRect(const void* self) {
	return ( (const MiqtVirtualQSGDynamicTexture*)(self) )->virtualbase_normalizedTextureSubRect();
}

bool QSGDynamicTexture_virtualbase_isAtlasTexture(const void* self) {
	return ( (const MiqtVirtualQSGDynamicTexture*)(self) )->virtualbase_isAtlasTexture();
}

bool QSGDynamicTexture_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQSGDynamicTexture*)(self) )->virtualbase_event(event);
}

bool QSGDynamicTexture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQSGDynamicTexture*)(self) )->virtualbase_eventFilter(watched, event);
}

void QSGDynamicTexture_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQSGDynamicTexture*)(self) )->virtualbase_timerEvent(event);
}

void QSGDynamicTexture_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQSGDynamicTexture*)(self) )->virtualbase_childEvent(event);
}

void QSGDynamicTexture_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSGDynamicTexture*)(self) )->virtualbase_customEvent(event);
}

void QSGDynamicTexture_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSGDynamicTexture*)(self) )->virtualbase_connectNotify(signal);
}

void QSGDynamicTexture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSGDynamicTexture*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QSGDynamicTexture_staticMetaObject() { return &QSGDynamicTexture::staticMetaObject; }
void* QSGDynamicTexture_protectedbase_resolveInterface(const void* self, const char* name, int revision) {
	MiqtVirtualQSGDynamicTexture* self_cast = static_cast<MiqtVirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	
	return self_cast->resolveInterface(name, static_cast<int>(revision));

}

QObject* QSGDynamicTexture_protectedbase_sender(const void* self) {
	MiqtVirtualQSGDynamicTexture* self_cast = static_cast<MiqtVirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	
	return self_cast->sender();

}

int QSGDynamicTexture_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQSGDynamicTexture* self_cast = static_cast<MiqtVirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QSGDynamicTexture_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQSGDynamicTexture* self_cast = static_cast<MiqtVirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	
	return self_cast->receivers(signal);

}

bool QSGDynamicTexture_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQSGDynamicTexture* self_cast = static_cast<MiqtVirtualQSGDynamicTexture*>( (QSGDynamicTexture*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QSGDynamicTexture_delete(QSGDynamicTexture* self) {
	delete self;
}

