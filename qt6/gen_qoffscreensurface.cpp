#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QOffscreenSurface>
#include <QScreen>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QSurface>
#include <QSurfaceFormat>
#include <QTimerEvent>
#include <qoffscreensurface.h>
#include "gen_qoffscreensurface.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QOffscreenSurface_screenChanged(intptr_t, QScreen*);
void miqt_exec_callback_QOffscreenSurface_screenChanged_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQOffscreenSurface final : public QOffscreenSurface {
	struct QOffscreenSurface_VTable* vtbl;
public:

	MiqtVirtualQOffscreenSurface(struct QOffscreenSurface_VTable* vtbl): QOffscreenSurface(), vtbl(vtbl) {};
	MiqtVirtualQOffscreenSurface(struct QOffscreenSurface_VTable* vtbl, QScreen* screen): QOffscreenSurface(screen), vtbl(vtbl) {};
	MiqtVirtualQOffscreenSurface(struct QOffscreenSurface_VTable* vtbl, QScreen* screen, QObject* parent): QOffscreenSurface(screen, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQOffscreenSurface() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QOffscreenSurface::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QOffscreenSurface::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QOffscreenSurface::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QOffscreenSurface::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QOffscreenSurface::qt_metacall(param1, param2, param3);
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

		return QOffscreenSurface::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QSurface::SurfaceType surfaceType() const override {
		if (vtbl->surfaceType == 0) {
			return QOffscreenSurface::surfaceType();
		}


		int callback_return_value = vtbl->surfaceType(vtbl, this);

		return static_cast<QSurface::SurfaceType>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_surfaceType() const {

		QSurface::SurfaceType _ret = QOffscreenSurface::surfaceType();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual QSurfaceFormat format() const override {
		if (vtbl->format == 0) {
			return QOffscreenSurface::format();
		}


		QSurfaceFormat* callback_return_value = vtbl->format(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSurfaceFormat* virtualbase_format() const {

		return new QSurfaceFormat(QOffscreenSurface::format());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize size() const override {
		if (vtbl->size == 0) {
			return QOffscreenSurface::size();
		}


		QSize* callback_return_value = vtbl->size(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_size() const {

		return new QSize(QOffscreenSurface::size());

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QOffscreenSurface::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QOffscreenSurface::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QOffscreenSurface::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QOffscreenSurface::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QOffscreenSurface::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QOffscreenSurface::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QOffscreenSurface::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QOffscreenSurface::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QOffscreenSurface::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QOffscreenSurface::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QOffscreenSurface::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QOffscreenSurface::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QOffscreenSurface::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QOffscreenSurface::disconnectNotify(*signal);

	}

};

QOffscreenSurface* QOffscreenSurface_new(struct QOffscreenSurface_VTable* vtbl) {
	return new MiqtVirtualQOffscreenSurface(vtbl);
}

QOffscreenSurface* QOffscreenSurface_new2(struct QOffscreenSurface_VTable* vtbl, QScreen* screen) {
	return new MiqtVirtualQOffscreenSurface(vtbl, screen);
}

QOffscreenSurface* QOffscreenSurface_new3(struct QOffscreenSurface_VTable* vtbl, QScreen* screen, QObject* parent) {
	return new MiqtVirtualQOffscreenSurface(vtbl, screen, parent);
}

void QOffscreenSurface_virtbase(QOffscreenSurface* src, QObject** outptr_QObject, QSurface** outptr_QSurface) {
	*outptr_QObject = static_cast<QObject*>(src);
	*outptr_QSurface = static_cast<QSurface*>(src);
}

QMetaObject* QOffscreenSurface_metaObject(const QOffscreenSurface* self) {
	return (QMetaObject*) self->metaObject();
}

void* QOffscreenSurface_metacast(QOffscreenSurface* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QOffscreenSurface_metacall(QOffscreenSurface* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QOffscreenSurface_tr(const char* s) {
	QString _ret = QOffscreenSurface::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QOffscreenSurface_surfaceType(const QOffscreenSurface* self) {
	QSurface::SurfaceType _ret = self->surfaceType();
	return static_cast<int>(_ret);
}

void QOffscreenSurface_create(QOffscreenSurface* self) {
	self->create();
}

void QOffscreenSurface_destroy(QOffscreenSurface* self) {
	self->destroy();
}

bool QOffscreenSurface_isValid(const QOffscreenSurface* self) {
	return self->isValid();
}

void QOffscreenSurface_setFormat(QOffscreenSurface* self, QSurfaceFormat* format) {
	self->setFormat(*format);
}

QSurfaceFormat* QOffscreenSurface_format(const QOffscreenSurface* self) {
	return new QSurfaceFormat(self->format());
}

QSurfaceFormat* QOffscreenSurface_requestedFormat(const QOffscreenSurface* self) {
	return new QSurfaceFormat(self->requestedFormat());
}

QSize* QOffscreenSurface_size(const QOffscreenSurface* self) {
	return new QSize(self->size());
}

QScreen* QOffscreenSurface_screen(const QOffscreenSurface* self) {
	return self->screen();
}

void QOffscreenSurface_setScreen(QOffscreenSurface* self, QScreen* screen) {
	self->setScreen(screen);
}

void QOffscreenSurface_screenChanged(QOffscreenSurface* self, QScreen* screen) {
	self->screenChanged(screen);
}

void QOffscreenSurface_connect_screenChanged(QOffscreenSurface* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QScreen* screen) {
			QScreen* sigval1 = screen;
			miqt_exec_callback_QOffscreenSurface_screenChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QOffscreenSurface_screenChanged_release(slot); }
	};
	MiqtVirtualQOffscreenSurface::connect(self, static_cast<void (QOffscreenSurface::*)(QScreen*)>(&QOffscreenSurface::screenChanged), self, caller{slot});
}

struct miqt_string QOffscreenSurface_tr2(const char* s, const char* c) {
	QString _ret = QOffscreenSurface::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QOffscreenSurface_tr3(const char* s, const char* c, int n) {
	QString _ret = QOffscreenSurface::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QOffscreenSurface_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQOffscreenSurface*)(self) )->virtualbase_metaObject();
}

void* QOffscreenSurface_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQOffscreenSurface*)(self) )->virtualbase_metacast(param1);
}

int QOffscreenSurface_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQOffscreenSurface*)(self) )->virtualbase_metacall(param1, param2, param3);
}

int QOffscreenSurface_virtualbase_surfaceType(const void* self) {
	return ( (const MiqtVirtualQOffscreenSurface*)(self) )->virtualbase_surfaceType();
}

QSurfaceFormat* QOffscreenSurface_virtualbase_format(const void* self) {
	return ( (const MiqtVirtualQOffscreenSurface*)(self) )->virtualbase_format();
}

QSize* QOffscreenSurface_virtualbase_size(const void* self) {
	return ( (const MiqtVirtualQOffscreenSurface*)(self) )->virtualbase_size();
}

bool QOffscreenSurface_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQOffscreenSurface*)(self) )->virtualbase_event(event);
}

bool QOffscreenSurface_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQOffscreenSurface*)(self) )->virtualbase_eventFilter(watched, event);
}

void QOffscreenSurface_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQOffscreenSurface*)(self) )->virtualbase_timerEvent(event);
}

void QOffscreenSurface_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQOffscreenSurface*)(self) )->virtualbase_childEvent(event);
}

void QOffscreenSurface_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQOffscreenSurface*)(self) )->virtualbase_customEvent(event);
}

void QOffscreenSurface_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQOffscreenSurface*)(self) )->virtualbase_connectNotify(signal);
}

void QOffscreenSurface_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQOffscreenSurface*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QOffscreenSurface_staticMetaObject() { return &QOffscreenSurface::staticMetaObject; }
void QOffscreenSurface_delete(QOffscreenSurface* self) {
	delete self;
}

