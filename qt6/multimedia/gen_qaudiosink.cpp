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

void miqt_exec_callback_QAudioSink_stateChanged(intptr_t, int);
void miqt_exec_callback_QAudioSink_stateChanged_release(intptr_t);
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

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QAudioSink::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioSink::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QAudioSink::qt_metacast(param1);

	}

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

	// Wrapper to allow calling protected method
	int virtualbase_metacall(int param1, int param2, void** param3) {

		return QAudioSink::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioSink::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QAudioSink::event(event);

	}

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

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QAudioSink::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioSink::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QAudioSink::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioSink::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QAudioSink::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioSink::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QAudioSink::customEvent(event);

	}

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

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QAudioSink::connectNotify(*signal);

	}

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

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QAudioSink::disconnectNotify(*signal);

	}

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

void QAudioSink_connect_stateChanged(QAudioSink* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QAudio::State state) {
			QAudio::State state_ret = state;
			int sigval1 = static_cast<int>(state_ret);
			miqt_exec_callback_QAudioSink_stateChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QAudioSink_stateChanged_release(slot); }
	};
	MiqtVirtualQAudioSink::connect(self, static_cast<void (QAudioSink::*)(QAudio::State)>(&QAudioSink::stateChanged), self, caller{slot});
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
	return ( (const MiqtVirtualQAudioSink*)(self) )->virtualbase_metaObject();
}

void* QAudioSink_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQAudioSink*)(self) )->virtualbase_metacast(param1);
}

int QAudioSink_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQAudioSink*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QAudioSink_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQAudioSink*)(self) )->virtualbase_event(event);
}

bool QAudioSink_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQAudioSink*)(self) )->virtualbase_eventFilter(watched, event);
}

void QAudioSink_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQAudioSink*)(self) )->virtualbase_timerEvent(event);
}

void QAudioSink_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQAudioSink*)(self) )->virtualbase_childEvent(event);
}

void QAudioSink_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQAudioSink*)(self) )->virtualbase_customEvent(event);
}

void QAudioSink_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQAudioSink*)(self) )->virtualbase_connectNotify(signal);
}

void QAudioSink_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQAudioSink*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QAudioSink_staticMetaObject() { return &QAudioSink::staticMetaObject; }
void QAudioSink_delete(QAudioSink* self) {
	delete self;
}

