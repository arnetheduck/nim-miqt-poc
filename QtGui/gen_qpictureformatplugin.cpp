#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPicture>
#include <QPictureFormatPlugin>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qpictureformatplugin.h>
#include "gen_qpictureformatplugin.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQPictureFormatPlugin final : public QPictureFormatPlugin {
	struct QPictureFormatPlugin_VTable* vtbl;
public:

	MiqtVirtualQPictureFormatPlugin(struct QPictureFormatPlugin_VTable* vtbl): QPictureFormatPlugin(), vtbl(vtbl) {};
	MiqtVirtualQPictureFormatPlugin(struct QPictureFormatPlugin_VTable* vtbl, QObject* parent): QPictureFormatPlugin(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQPictureFormatPlugin() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QPictureFormatPlugin::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QPictureFormatPlugin::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QPictureFormatPlugin::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QPictureFormatPlugin::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QPictureFormatPlugin::qt_metacall(param1, param2, param3);
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

		return QPictureFormatPlugin::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool loadPicture(const QString& format, const QString& filename, QPicture* pic) override {
		if (vtbl->loadPicture == 0) {
			return QPictureFormatPlugin::loadPicture(format, filename, pic);
		}

		const QString format_ret = format;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray format_b = format_ret.toUtf8();
		struct miqt_string format_ms;
		format_ms.len = format_b.length();
		format_ms.data = static_cast<char*>(malloc(format_ms.len));
		memcpy(format_ms.data, format_b.data(), format_ms.len);
		struct miqt_string sigval1 = format_ms;
		const QString filename_ret = filename;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray filename_b = filename_ret.toUtf8();
		struct miqt_string filename_ms;
		filename_ms.len = filename_b.length();
		filename_ms.data = static_cast<char*>(malloc(filename_ms.len));
		memcpy(filename_ms.data, filename_b.data(), filename_ms.len);
		struct miqt_string sigval2 = filename_ms;
		QPicture* sigval3 = pic;

		bool callback_return_value = vtbl->loadPicture(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_loadPicture(struct miqt_string format, struct miqt_string filename, QPicture* pic) {
		QString format_QString = QString::fromUtf8(format.data, format.len);
		QString filename_QString = QString::fromUtf8(filename.data, filename.len);

		return QPictureFormatPlugin::loadPicture(format_QString, filename_QString, pic);

	}

	// Subclass to allow providing a Go implementation
	virtual bool savePicture(const QString& format, const QString& filename, const QPicture& pic) override {
		if (vtbl->savePicture == 0) {
			return QPictureFormatPlugin::savePicture(format, filename, pic);
		}

		const QString format_ret = format;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray format_b = format_ret.toUtf8();
		struct miqt_string format_ms;
		format_ms.len = format_b.length();
		format_ms.data = static_cast<char*>(malloc(format_ms.len));
		memcpy(format_ms.data, format_b.data(), format_ms.len);
		struct miqt_string sigval1 = format_ms;
		const QString filename_ret = filename;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray filename_b = filename_ret.toUtf8();
		struct miqt_string filename_ms;
		filename_ms.len = filename_b.length();
		filename_ms.data = static_cast<char*>(malloc(filename_ms.len));
		memcpy(filename_ms.data, filename_b.data(), filename_ms.len);
		struct miqt_string sigval2 = filename_ms;
		const QPicture& pic_ret = pic;
		// Cast returned reference into pointer
		QPicture* sigval3 = const_cast<QPicture*>(&pic_ret);

		bool callback_return_value = vtbl->savePicture(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_savePicture(struct miqt_string format, struct miqt_string filename, QPicture* pic) {
		QString format_QString = QString::fromUtf8(format.data, format.len);
		QString filename_QString = QString::fromUtf8(filename.data, filename.len);

		return QPictureFormatPlugin::savePicture(format_QString, filename_QString, *pic);

	}

	// Subclass to allow providing a Go implementation
	virtual bool installIOHandler(const QString& format) override {
		if (vtbl->installIOHandler == 0) {
			return false; // Pure virtual, there is no base we can call
		}

		const QString format_ret = format;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray format_b = format_ret.toUtf8();
		struct miqt_string format_ms;
		format_ms.len = format_b.length();
		format_ms.data = static_cast<char*>(malloc(format_ms.len));
		memcpy(format_ms.data, format_b.data(), format_ms.len);
		struct miqt_string sigval1 = format_ms;

		bool callback_return_value = vtbl->installIOHandler(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QPictureFormatPlugin::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QPictureFormatPlugin::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QPictureFormatPlugin::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QPictureFormatPlugin::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QPictureFormatPlugin::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QPictureFormatPlugin::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QPictureFormatPlugin::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QPictureFormatPlugin::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QPictureFormatPlugin::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QPictureFormatPlugin::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QPictureFormatPlugin::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QPictureFormatPlugin::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QPictureFormatPlugin::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QPictureFormatPlugin::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend QObject* QPictureFormatPlugin_protectedbase_sender(const void* self);
	friend int QPictureFormatPlugin_protectedbase_senderSignalIndex(const void* self);
	friend int QPictureFormatPlugin_protectedbase_receivers(const void* self, const char* signal);
	friend bool QPictureFormatPlugin_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QPictureFormatPlugin* QPictureFormatPlugin_new(struct QPictureFormatPlugin_VTable* vtbl) {
	return new MiqtVirtualQPictureFormatPlugin(vtbl);
}

QPictureFormatPlugin* QPictureFormatPlugin_new2(struct QPictureFormatPlugin_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQPictureFormatPlugin(vtbl, parent);
}

void QPictureFormatPlugin_virtbase(QPictureFormatPlugin* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QPictureFormatPlugin_metaObject(const QPictureFormatPlugin* self) {
	return (QMetaObject*) self->metaObject();
}

void* QPictureFormatPlugin_metacast(QPictureFormatPlugin* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QPictureFormatPlugin_metacall(QPictureFormatPlugin* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QPictureFormatPlugin_tr(const char* s) {
	QString _ret = QPictureFormatPlugin::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPictureFormatPlugin_trUtf8(const char* s) {
	QString _ret = QPictureFormatPlugin::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QPictureFormatPlugin_loadPicture(QPictureFormatPlugin* self, struct miqt_string format, struct miqt_string filename, QPicture* pic) {
	QString format_QString = QString::fromUtf8(format.data, format.len);
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return self->loadPicture(format_QString, filename_QString, pic);
}

bool QPictureFormatPlugin_savePicture(QPictureFormatPlugin* self, struct miqt_string format, struct miqt_string filename, QPicture* pic) {
	QString format_QString = QString::fromUtf8(format.data, format.len);
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return self->savePicture(format_QString, filename_QString, *pic);
}

bool QPictureFormatPlugin_installIOHandler(QPictureFormatPlugin* self, struct miqt_string format) {
	QString format_QString = QString::fromUtf8(format.data, format.len);
	return self->installIOHandler(format_QString);
}

struct miqt_string QPictureFormatPlugin_tr2(const char* s, const char* c) {
	QString _ret = QPictureFormatPlugin::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPictureFormatPlugin_tr3(const char* s, const char* c, int n) {
	QString _ret = QPictureFormatPlugin::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPictureFormatPlugin_trUtf82(const char* s, const char* c) {
	QString _ret = QPictureFormatPlugin::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QPictureFormatPlugin_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QPictureFormatPlugin::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QPictureFormatPlugin_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQPictureFormatPlugin*)(self) )->virtualbase_metaObject();
}

void* QPictureFormatPlugin_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQPictureFormatPlugin*)(self) )->virtualbase_metacast(param1);
}

int QPictureFormatPlugin_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQPictureFormatPlugin*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QPictureFormatPlugin_virtualbase_loadPicture(void* self, struct miqt_string format, struct miqt_string filename, QPicture* pic) {
	return ( (MiqtVirtualQPictureFormatPlugin*)(self) )->virtualbase_loadPicture(format, filename, pic);
}

bool QPictureFormatPlugin_virtualbase_savePicture(void* self, struct miqt_string format, struct miqt_string filename, QPicture* pic) {
	return ( (MiqtVirtualQPictureFormatPlugin*)(self) )->virtualbase_savePicture(format, filename, pic);
}

bool QPictureFormatPlugin_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQPictureFormatPlugin*)(self) )->virtualbase_event(event);
}

bool QPictureFormatPlugin_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQPictureFormatPlugin*)(self) )->virtualbase_eventFilter(watched, event);
}

void QPictureFormatPlugin_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQPictureFormatPlugin*)(self) )->virtualbase_timerEvent(event);
}

void QPictureFormatPlugin_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQPictureFormatPlugin*)(self) )->virtualbase_childEvent(event);
}

void QPictureFormatPlugin_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQPictureFormatPlugin*)(self) )->virtualbase_customEvent(event);
}

void QPictureFormatPlugin_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQPictureFormatPlugin*)(self) )->virtualbase_connectNotify(signal);
}

void QPictureFormatPlugin_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQPictureFormatPlugin*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QPictureFormatPlugin_staticMetaObject() { return &QPictureFormatPlugin::staticMetaObject; }
QObject* QPictureFormatPlugin_protectedbase_sender(const void* self) {
	MiqtVirtualQPictureFormatPlugin* self_cast = static_cast<MiqtVirtualQPictureFormatPlugin*>( (QPictureFormatPlugin*)(self) );
	
	return self_cast->sender();

}

int QPictureFormatPlugin_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQPictureFormatPlugin* self_cast = static_cast<MiqtVirtualQPictureFormatPlugin*>( (QPictureFormatPlugin*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QPictureFormatPlugin_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQPictureFormatPlugin* self_cast = static_cast<MiqtVirtualQPictureFormatPlugin*>( (QPictureFormatPlugin*)(self) );
	
	return self_cast->receivers(signal);

}

bool QPictureFormatPlugin_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQPictureFormatPlugin* self_cast = static_cast<MiqtVirtualQPictureFormatPlugin*>( (QPictureFormatPlugin*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QPictureFormatPlugin_delete(QPictureFormatPlugin* self) {
	delete self;
}

