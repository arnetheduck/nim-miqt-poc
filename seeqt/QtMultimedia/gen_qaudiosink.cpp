#include <QAudioDevice>
#include <QAudioFormat>
#include <QAudioSink>
#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qaudiosink.h>
#include "gen_qaudiosink.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQAudioSink final : public QAudioSink {
	struct QAudioSink_VTable* vtbl;
public:

	MiqtVirtualQAudioSink(struct QAudioSink_VTable* vtbl): QAudioSink(), vtbl(vtbl) {};
	MiqtVirtualQAudioSink(struct QAudioSink_VTable* vtbl, const QAudioDevice& audioDeviceInfo): QAudioSink(audioDeviceInfo), vtbl(vtbl) {};
	MiqtVirtualQAudioSink(struct QAudioSink_VTable* vtbl, const QAudioFormat& format): QAudioSink(format), vtbl(vtbl) {};
	MiqtVirtualQAudioSink(struct QAudioSink_VTable* vtbl, const QAudioFormat& format, QObject* parent): QAudioSink(format, parent), vtbl(vtbl) {};
	MiqtVirtualQAudioSink(struct QAudioSink_VTable* vtbl, const QAudioDevice& audioDeviceInfo, const QAudioFormat& format): QAudioSink(audioDeviceInfo, format), vtbl(vtbl) {};
	MiqtVirtualQAudioSink(struct QAudioSink_VTable* vtbl, const QAudioDevice& audioDeviceInfo, const QAudioFormat& format, QObject* parent): QAudioSink(audioDeviceInfo, format, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQAudioSink() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAudioSink::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QAudioSink_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioSink::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QAudioSink_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioSink::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAudioSink_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioSink::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAudioSink_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioSink::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAudioSink_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioSink::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QAudioSink_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioSink::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QAudioSink_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioSink::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QAudioSink_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioSink::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QAudioSink_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioSink::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QAudioSink_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QObject* QAudioSink_protectedbase_sender(const void* self);
	friend int QAudioSink_protectedbase_senderSignalIndex(const void* self);
	friend int QAudioSink_protectedbase_receivers(const void* self, const char* signal);
	friend bool QAudioSink_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QAudioSink* QAudioSink_new(struct QAudioSink_VTable* vtbl) {
	return new MiqtVirtualQAudioSink(vtbl);
}

QAudioSink* QAudioSink_new2(struct QAudioSink_VTable* vtbl, QAudioDevice* audioDeviceInfo) {
	return new MiqtVirtualQAudioSink(vtbl, *audioDeviceInfo);
}

QAudioSink* QAudioSink_new3(struct QAudioSink_VTable* vtbl, QAudioFormat* format) {
	return new MiqtVirtualQAudioSink(vtbl, *format);
}

QAudioSink* QAudioSink_new4(struct QAudioSink_VTable* vtbl, QAudioFormat* format, QObject* parent) {
	return new MiqtVirtualQAudioSink(vtbl, *format, parent);
}

QAudioSink* QAudioSink_new5(struct QAudioSink_VTable* vtbl, QAudioDevice* audioDeviceInfo, QAudioFormat* format) {
	return new MiqtVirtualQAudioSink(vtbl, *audioDeviceInfo, *format);
}

QAudioSink* QAudioSink_new6(struct QAudioSink_VTable* vtbl, QAudioDevice* audioDeviceInfo, QAudioFormat* format, QObject* parent) {
	return new MiqtVirtualQAudioSink(vtbl, *audioDeviceInfo, *format, parent);
}

void QAudioSink_virtbase(QAudioSink* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAudioSink_metaObject(const QAudioSink* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAudioSink_metacast(QAudioSink* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAudioSink_metacall(QAudioSink* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAudioSink_tr(const char* s) {
	QString _ret = QAudioSink::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QAudioSink_isNull(const QAudioSink* self) {
	return self->isNull();
}

QAudioFormat* QAudioSink_format(const QAudioSink* self) {
	return new QAudioFormat(self->format());
}

void QAudioSink_start(QAudioSink* self, QIODevice* device) {
	self->start(device);
}

QIODevice* QAudioSink_start2(QAudioSink* self) {
	return self->start();
}

void QAudioSink_stop(QAudioSink* self) {
	self->stop();
}

void QAudioSink_reset(QAudioSink* self) {
	self->reset();
}

void QAudioSink_suspend(QAudioSink* self) {
	self->suspend();
}

void QAudioSink_resume(QAudioSink* self) {
	self->resume();
}

void QAudioSink_setBufferSize(QAudioSink* self, ptrdiff_t bytes) {
	self->setBufferSize((qsizetype)(bytes));
}

ptrdiff_t QAudioSink_bufferSize(const QAudioSink* self) {
	qsizetype _ret = self->bufferSize();
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QAudioSink_bytesFree(const QAudioSink* self) {
	qsizetype _ret = self->bytesFree();
	return static_cast<ptrdiff_t>(_ret);
}

long long QAudioSink_processedUSecs(const QAudioSink* self) {
	qint64 _ret = self->processedUSecs();
	return static_cast<long long>(_ret);
}

long long QAudioSink_elapsedUSecs(const QAudioSink* self) {
	qint64 _ret = self->elapsedUSecs();
	return static_cast<long long>(_ret);
}

int QAudioSink_error(const QAudioSink* self) {
	QAudio::Error _ret = self->error();
	return static_cast<int>(_ret);
}

int QAudioSink_state(const QAudioSink* self) {
	QAudio::State _ret = self->state();
	return static_cast<int>(_ret);
}

void QAudioSink_setVolume(QAudioSink* self, double volume) {
	self->setVolume(static_cast<qreal>(volume));
}

double QAudioSink_volume(const QAudioSink* self) {
	qreal _ret = self->volume();
	return static_cast<double>(_ret);
}

void QAudioSink_stateChanged(QAudioSink* self, int state) {
	self->stateChanged(static_cast<QAudio::State>(state));
}

void QAudioSink_connect_stateChanged(QAudioSink* self, intptr_t slot, void (*callback)(intptr_t, int), void (*release)(intptr_t)) {
	struct caller {
		intptr_t slot;
		void (*callback)(intptr_t, int);
		seeqt::release_callback release;
		void operator()(QAudio::State state) {
			QAudio::State state_ret = state;
			int sigval1 = static_cast<int>(state_ret);
			callback(slot, sigval1);
		}
		caller(caller&&) = default;
		caller& operator=(caller&&) = default;
		~caller() { release(slot); }
	};
	MiqtVirtualQAudioSink::connect(self, static_cast<void (QAudioSink::*)(QAudio::State)>(&QAudioSink::stateChanged), self, caller{slot, callback, release});
}

struct miqt_string QAudioSink_tr2(const char* s, const char* c) {
	QString _ret = QAudioSink::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioSink_tr3(const char* s, const char* c, int n) {
	QString _ret = QAudioSink::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAudioSink_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const MiqtVirtualQAudioSink*)(self) )->QAudioSink::metaObject();

}

void* QAudioSink_virtualbase_metacast(void* self, const char* param1) {

	return ( (MiqtVirtualQAudioSink*)(self) )->QAudioSink::qt_metacast(param1);

}

int QAudioSink_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (MiqtVirtualQAudioSink*)(self) )->QAudioSink::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

bool QAudioSink_virtualbase_event(void* self, QEvent* event) {

	return ( (MiqtVirtualQAudioSink*)(self) )->QAudioSink::event(event);

}

bool QAudioSink_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (MiqtVirtualQAudioSink*)(self) )->QAudioSink::eventFilter(watched, event);

}

void QAudioSink_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (MiqtVirtualQAudioSink*)(self) )->QAudioSink::timerEvent(event);

}

void QAudioSink_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (MiqtVirtualQAudioSink*)(self) )->QAudioSink::childEvent(event);

}

void QAudioSink_virtualbase_customEvent(void* self, QEvent* event) {

	( (MiqtVirtualQAudioSink*)(self) )->QAudioSink::customEvent(event);

}

void QAudioSink_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (MiqtVirtualQAudioSink*)(self) )->QAudioSink::connectNotify(*signal);

}

void QAudioSink_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (MiqtVirtualQAudioSink*)(self) )->QAudioSink::disconnectNotify(*signal);

}

const QMetaObject* QAudioSink_staticMetaObject() { return &QAudioSink::staticMetaObject; }
QObject* QAudioSink_protectedbase_sender(const void* self) {
	MiqtVirtualQAudioSink* self_cast = static_cast<MiqtVirtualQAudioSink*>( (QAudioSink*)(self) );
	
	return self_cast->sender();

}

int QAudioSink_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQAudioSink* self_cast = static_cast<MiqtVirtualQAudioSink*>( (QAudioSink*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QAudioSink_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQAudioSink* self_cast = static_cast<MiqtVirtualQAudioSink*>( (QAudioSink*)(self) );
	
	return self_cast->receivers(signal);

}

bool QAudioSink_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQAudioSink* self_cast = static_cast<MiqtVirtualQAudioSink*>( (QAudioSink*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QAudioSink_delete(QAudioSink* self) {
	delete self;
}

