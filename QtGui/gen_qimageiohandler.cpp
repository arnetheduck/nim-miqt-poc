#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QImage>
#include <QImageIOHandler>
#include <QImageIOPlugin>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QRect>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <qimageiohandler.h>
#include "gen_qimageiohandler.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQImageIOHandler final : public QImageIOHandler {
	struct QImageIOHandler_VTable* vtbl;
public:

	MiqtVirtualQImageIOHandler(struct QImageIOHandler_VTable* vtbl): QImageIOHandler(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQImageIOHandler() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual bool canRead() const override {
		if (vtbl->canRead == 0) {
			return false; // Pure virtual, there is no base we can call
		}


		bool callback_return_value = vtbl->canRead(vtbl, this);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual bool read(QImage* image) override {
		if (vtbl->read == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		QImage* sigval1 = image;

		bool callback_return_value = vtbl->read(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual bool write(const QImage& image) override {
		if (vtbl->write == 0) {
			return QImageIOHandler::write(image);
		}

		const QImage& image_ret = image;
		// Cast returned reference into pointer
		QImage* sigval1 = const_cast<QImage*>(&image_ret);

		bool callback_return_value = vtbl->write(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_write(QImage* image) {

		return QImageIOHandler::write(*image);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant option(QImageIOHandler::ImageOption option) const override {
		if (vtbl->option == 0) {
			return QImageIOHandler::option(option);
		}

		QImageIOHandler::ImageOption option_ret = option;
		int sigval1 = static_cast<int>(option_ret);

		QVariant* callback_return_value = vtbl->option(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_option(int option) const {

		return new QVariant(QImageIOHandler::option(static_cast<QImageIOHandler::ImageOption>(option)));

	}

	// Subclass to allow providing a Go implementation
	virtual void setOption(QImageIOHandler::ImageOption option, const QVariant& value) override {
		if (vtbl->setOption == 0) {
			QImageIOHandler::setOption(option, value);
			return;
		}

		QImageIOHandler::ImageOption option_ret = option;
		int sigval1 = static_cast<int>(option_ret);
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&value_ret);

		vtbl->setOption(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setOption(int option, QVariant* value) {

		QImageIOHandler::setOption(static_cast<QImageIOHandler::ImageOption>(option), *value);

	}

	// Subclass to allow providing a Go implementation
	virtual bool supportsOption(QImageIOHandler::ImageOption option) const override {
		if (vtbl->supportsOption == 0) {
			return QImageIOHandler::supportsOption(option);
		}

		QImageIOHandler::ImageOption option_ret = option;
		int sigval1 = static_cast<int>(option_ret);

		bool callback_return_value = vtbl->supportsOption(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_supportsOption(int option) const {

		return QImageIOHandler::supportsOption(static_cast<QImageIOHandler::ImageOption>(option));

	}

	// Subclass to allow providing a Go implementation
	virtual bool jumpToNextImage() override {
		if (vtbl->jumpToNextImage == 0) {
			return QImageIOHandler::jumpToNextImage();
		}


		bool callback_return_value = vtbl->jumpToNextImage(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_jumpToNextImage() {

		return QImageIOHandler::jumpToNextImage();

	}

	// Subclass to allow providing a Go implementation
	virtual bool jumpToImage(int imageNumber) override {
		if (vtbl->jumpToImage == 0) {
			return QImageIOHandler::jumpToImage(imageNumber);
		}

		int sigval1 = imageNumber;

		bool callback_return_value = vtbl->jumpToImage(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_jumpToImage(int imageNumber) {

		return QImageIOHandler::jumpToImage(static_cast<int>(imageNumber));

	}

	// Subclass to allow providing a Go implementation
	virtual int loopCount() const override {
		if (vtbl->loopCount == 0) {
			return QImageIOHandler::loopCount();
		}


		int callback_return_value = vtbl->loopCount(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_loopCount() const {

		return QImageIOHandler::loopCount();

	}

	// Subclass to allow providing a Go implementation
	virtual int imageCount() const override {
		if (vtbl->imageCount == 0) {
			return QImageIOHandler::imageCount();
		}


		int callback_return_value = vtbl->imageCount(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_imageCount() const {

		return QImageIOHandler::imageCount();

	}

	// Subclass to allow providing a Go implementation
	virtual int nextImageDelay() const override {
		if (vtbl->nextImageDelay == 0) {
			return QImageIOHandler::nextImageDelay();
		}


		int callback_return_value = vtbl->nextImageDelay(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_nextImageDelay() const {

		return QImageIOHandler::nextImageDelay();

	}

	// Subclass to allow providing a Go implementation
	virtual int currentImageNumber() const override {
		if (vtbl->currentImageNumber == 0) {
			return QImageIOHandler::currentImageNumber();
		}


		int callback_return_value = vtbl->currentImageNumber(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_currentImageNumber() const {

		return QImageIOHandler::currentImageNumber();

	}

	// Subclass to allow providing a Go implementation
	virtual QRect currentImageRect() const override {
		if (vtbl->currentImageRect == 0) {
			return QImageIOHandler::currentImageRect();
		}


		QRect* callback_return_value = vtbl->currentImageRect(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRect* virtualbase_currentImageRect() const {

		return new QRect(QImageIOHandler::currentImageRect());

	}

};

QImageIOHandler* QImageIOHandler_new(struct QImageIOHandler_VTable* vtbl) {
	return new MiqtVirtualQImageIOHandler(vtbl);
}

void QImageIOHandler_setDevice(QImageIOHandler* self, QIODevice* device) {
	self->setDevice(device);
}

QIODevice* QImageIOHandler_device(const QImageIOHandler* self) {
	return self->device();
}

void QImageIOHandler_setFormat(QImageIOHandler* self, struct miqt_string format) {
	QByteArray format_QByteArray(format.data, format.len);
	self->setFormat(format_QByteArray);
}

void QImageIOHandler_setFormatWithFormat(const QImageIOHandler* self, struct miqt_string format) {
	QByteArray format_QByteArray(format.data, format.len);
	self->setFormat(format_QByteArray);
}

struct miqt_string QImageIOHandler_format(const QImageIOHandler* self) {
	QByteArray _qb = self->format();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

bool QImageIOHandler_canRead(const QImageIOHandler* self) {
	return self->canRead();
}

bool QImageIOHandler_read(QImageIOHandler* self, QImage* image) {
	return self->read(image);
}

bool QImageIOHandler_write(QImageIOHandler* self, QImage* image) {
	return self->write(*image);
}

QVariant* QImageIOHandler_option(const QImageIOHandler* self, int option) {
	return new QVariant(self->option(static_cast<QImageIOHandler::ImageOption>(option)));
}

void QImageIOHandler_setOption(QImageIOHandler* self, int option, QVariant* value) {
	self->setOption(static_cast<QImageIOHandler::ImageOption>(option), *value);
}

bool QImageIOHandler_supportsOption(const QImageIOHandler* self, int option) {
	return self->supportsOption(static_cast<QImageIOHandler::ImageOption>(option));
}

bool QImageIOHandler_jumpToNextImage(QImageIOHandler* self) {
	return self->jumpToNextImage();
}

bool QImageIOHandler_jumpToImage(QImageIOHandler* self, int imageNumber) {
	return self->jumpToImage(static_cast<int>(imageNumber));
}

int QImageIOHandler_loopCount(const QImageIOHandler* self) {
	return self->loopCount();
}

int QImageIOHandler_imageCount(const QImageIOHandler* self) {
	return self->imageCount();
}

int QImageIOHandler_nextImageDelay(const QImageIOHandler* self) {
	return self->nextImageDelay();
}

int QImageIOHandler_currentImageNumber(const QImageIOHandler* self) {
	return self->currentImageNumber();
}

QRect* QImageIOHandler_currentImageRect(const QImageIOHandler* self) {
	return new QRect(self->currentImageRect());
}

bool QImageIOHandler_allocateImage(QSize* size, int format, QImage* image) {
	return QImageIOHandler::allocateImage(*size, static_cast<QImage::Format>(format), image);
}

bool QImageIOHandler_virtualbase_write(void* self, QImage* image) {
	return ( (MiqtVirtualQImageIOHandler*)(self) )->virtualbase_write(image);
}

QVariant* QImageIOHandler_virtualbase_option(const void* self, int option) {
	return ( (const MiqtVirtualQImageIOHandler*)(self) )->virtualbase_option(option);
}

void QImageIOHandler_virtualbase_setOption(void* self, int option, QVariant* value) {
	( (MiqtVirtualQImageIOHandler*)(self) )->virtualbase_setOption(option, value);
}

bool QImageIOHandler_virtualbase_supportsOption(const void* self, int option) {
	return ( (const MiqtVirtualQImageIOHandler*)(self) )->virtualbase_supportsOption(option);
}

bool QImageIOHandler_virtualbase_jumpToNextImage(void* self) {
	return ( (MiqtVirtualQImageIOHandler*)(self) )->virtualbase_jumpToNextImage();
}

bool QImageIOHandler_virtualbase_jumpToImage(void* self, int imageNumber) {
	return ( (MiqtVirtualQImageIOHandler*)(self) )->virtualbase_jumpToImage(imageNumber);
}

int QImageIOHandler_virtualbase_loopCount(const void* self) {
	return ( (const MiqtVirtualQImageIOHandler*)(self) )->virtualbase_loopCount();
}

int QImageIOHandler_virtualbase_imageCount(const void* self) {
	return ( (const MiqtVirtualQImageIOHandler*)(self) )->virtualbase_imageCount();
}

int QImageIOHandler_virtualbase_nextImageDelay(const void* self) {
	return ( (const MiqtVirtualQImageIOHandler*)(self) )->virtualbase_nextImageDelay();
}

int QImageIOHandler_virtualbase_currentImageNumber(const void* self) {
	return ( (const MiqtVirtualQImageIOHandler*)(self) )->virtualbase_currentImageNumber();
}

QRect* QImageIOHandler_virtualbase_currentImageRect(const void* self) {
	return ( (const MiqtVirtualQImageIOHandler*)(self) )->virtualbase_currentImageRect();
}

void QImageIOHandler_delete(QImageIOHandler* self) {
	delete self;
}

class MiqtVirtualQImageIOPlugin final : public QImageIOPlugin {
	struct QImageIOPlugin_VTable* vtbl;
public:

	MiqtVirtualQImageIOPlugin(struct QImageIOPlugin_VTable* vtbl): QImageIOPlugin(), vtbl(vtbl) {};
	MiqtVirtualQImageIOPlugin(struct QImageIOPlugin_VTable* vtbl, QObject* parent): QImageIOPlugin(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQImageIOPlugin() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QImageIOPlugin::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QImageIOPlugin::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QImageIOPlugin::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QImageIOPlugin::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QImageIOPlugin::qt_metacall(param1, param2, param3);
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

		return QImageIOPlugin::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QImageIOPlugin::Capabilities capabilities(QIODevice* device, const QByteArray& format) const override {
		if (vtbl->capabilities == 0) {
			return QImageIOPlugin::Capabilities(); // Pure virtual, there is no base we can call
		}

		QIODevice* sigval1 = device;
		const QByteArray format_qb = format;
		struct miqt_string format_ms;
		format_ms.len = format_qb.length();
		format_ms.data = static_cast<char*>(malloc(format_ms.len));
		memcpy(format_ms.data, format_qb.data(), format_ms.len);
		struct miqt_string sigval2 = format_ms;

		int callback_return_value = vtbl->capabilities(vtbl, this, sigval1, sigval2);

		return static_cast<QImageIOPlugin::Capabilities>(callback_return_value);
	}

	// Subclass to allow providing a Go implementation
	virtual QImageIOHandler* create(QIODevice* device, const QByteArray& format) const override {
		if (vtbl->create == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QIODevice* sigval1 = device;
		const QByteArray format_qb = format;
		struct miqt_string format_ms;
		format_ms.len = format_qb.length();
		format_ms.data = static_cast<char*>(malloc(format_ms.len));
		memcpy(format_ms.data, format_qb.data(), format_ms.len);
		struct miqt_string sigval2 = format_ms;

		QImageIOHandler* callback_return_value = vtbl->create(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QImageIOPlugin::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QImageIOPlugin::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QImageIOPlugin::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QImageIOPlugin::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QImageIOPlugin::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QImageIOPlugin::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QImageIOPlugin::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QImageIOPlugin::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QImageIOPlugin::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QImageIOPlugin::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QImageIOPlugin::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QImageIOPlugin::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QImageIOPlugin::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QImageIOPlugin::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend QObject* QImageIOPlugin_protectedbase_sender(const void* self);
	friend int QImageIOPlugin_protectedbase_senderSignalIndex(const void* self);
	friend int QImageIOPlugin_protectedbase_receivers(const void* self, const char* signal);
	friend bool QImageIOPlugin_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QImageIOPlugin* QImageIOPlugin_new(struct QImageIOPlugin_VTable* vtbl) {
	return new MiqtVirtualQImageIOPlugin(vtbl);
}

QImageIOPlugin* QImageIOPlugin_new2(struct QImageIOPlugin_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQImageIOPlugin(vtbl, parent);
}

void QImageIOPlugin_virtbase(QImageIOPlugin* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QImageIOPlugin_metaObject(const QImageIOPlugin* self) {
	return (QMetaObject*) self->metaObject();
}

void* QImageIOPlugin_metacast(QImageIOPlugin* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QImageIOPlugin_metacall(QImageIOPlugin* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QImageIOPlugin_tr(const char* s) {
	QString _ret = QImageIOPlugin::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QImageIOPlugin_capabilities(const QImageIOPlugin* self, QIODevice* device, struct miqt_string format) {
	QByteArray format_QByteArray(format.data, format.len);
	QImageIOPlugin::Capabilities _ret = self->capabilities(device, format_QByteArray);
	return static_cast<int>(_ret);
}

QImageIOHandler* QImageIOPlugin_create(const QImageIOPlugin* self, QIODevice* device, struct miqt_string format) {
	QByteArray format_QByteArray(format.data, format.len);
	return self->create(device, format_QByteArray);
}

struct miqt_string QImageIOPlugin_tr2(const char* s, const char* c) {
	QString _ret = QImageIOPlugin::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QImageIOPlugin_tr3(const char* s, const char* c, int n) {
	QString _ret = QImageIOPlugin::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QImageIOPlugin_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQImageIOPlugin*)(self) )->virtualbase_metaObject();
}

void* QImageIOPlugin_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQImageIOPlugin*)(self) )->virtualbase_metacast(param1);
}

int QImageIOPlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQImageIOPlugin*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QImageIOPlugin_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQImageIOPlugin*)(self) )->virtualbase_event(event);
}

bool QImageIOPlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQImageIOPlugin*)(self) )->virtualbase_eventFilter(watched, event);
}

void QImageIOPlugin_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQImageIOPlugin*)(self) )->virtualbase_timerEvent(event);
}

void QImageIOPlugin_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQImageIOPlugin*)(self) )->virtualbase_childEvent(event);
}

void QImageIOPlugin_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQImageIOPlugin*)(self) )->virtualbase_customEvent(event);
}

void QImageIOPlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQImageIOPlugin*)(self) )->virtualbase_connectNotify(signal);
}

void QImageIOPlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQImageIOPlugin*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QImageIOPlugin_staticMetaObject() { return &QImageIOPlugin::staticMetaObject; }
QObject* QImageIOPlugin_protectedbase_sender(const void* self) {
	MiqtVirtualQImageIOPlugin* self_cast = static_cast<MiqtVirtualQImageIOPlugin*>( (QImageIOPlugin*)(self) );
	
	return self_cast->sender();

}

int QImageIOPlugin_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQImageIOPlugin* self_cast = static_cast<MiqtVirtualQImageIOPlugin*>( (QImageIOPlugin*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QImageIOPlugin_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQImageIOPlugin* self_cast = static_cast<MiqtVirtualQImageIOPlugin*>( (QImageIOPlugin*)(self) );
	
	return self_cast->receivers(signal);

}

bool QImageIOPlugin_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQImageIOPlugin* self_cast = static_cast<MiqtVirtualQImageIOPlugin*>( (QImageIOPlugin*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QImageIOPlugin_delete(QImageIOPlugin* self) {
	delete self;
}

