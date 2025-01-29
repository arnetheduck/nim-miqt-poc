#include <QAudioDevice>
#include <QAudioFormat>
#include <QAudioSource>
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
#include <qaudiosource.h>
#include "gen_qaudiosource.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QAudioSource_stateChanged(intptr_t, int);
void miqt_exec_callback_QAudioSource_stateChanged_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQAudioSource final : public QAudioSource {
	struct QAudioSource_VTable* vtbl;
public:

	MiqtVirtualQAudioSource(struct QAudioSource_VTable* vtbl): QAudioSource(), vtbl(vtbl) {};
	MiqtVirtualQAudioSource(struct QAudioSource_VTable* vtbl, const QAudioDevice& audioDeviceInfo): QAudioSource(audioDeviceInfo), vtbl(vtbl) {};
	MiqtVirtualQAudioSource(struct QAudioSource_VTable* vtbl, const QAudioFormat& format): QAudioSource(format), vtbl(vtbl) {};
	MiqtVirtualQAudioSource(struct QAudioSource_VTable* vtbl, const QAudioFormat& format, QObject* parent): QAudioSource(format, parent), vtbl(vtbl) {};
	MiqtVirtualQAudioSource(struct QAudioSource_VTable* vtbl, const QAudioDevice& audioDeviceInfo, const QAudioFormat& format): QAudioSource(audioDeviceInfo, format), vtbl(vtbl) {};
	MiqtVirtualQAudioSource(struct QAudioSource_VTable* vtbl, const QAudioDevice& audioDeviceInfo, const QAudioFormat& format, QObject* parent): QAudioSource(audioDeviceInfo, format, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQAudioSource() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAudioSource::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QAudioSource::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioSource::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QAudioSource::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioSource::qt_metacall(param1, param2, param3);
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

		return QAudioSource::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioSource::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QAudioSource::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioSource::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QAudioSource::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioSource::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QAudioSource::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioSource::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QAudioSource::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioSource::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QAudioSource::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioSource::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QAudioSource::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioSource::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QAudioSource::disconnectNotify(*signal);

	}

};

QAudioSource* QAudioSource_new(struct QAudioSource_VTable* vtbl) {
	return new MiqtVirtualQAudioSource(vtbl);
}

QAudioSource* QAudioSource_new2(struct QAudioSource_VTable* vtbl, QAudioDevice* audioDeviceInfo) {
	return new MiqtVirtualQAudioSource(vtbl, *audioDeviceInfo);
}

QAudioSource* QAudioSource_new3(struct QAudioSource_VTable* vtbl, QAudioFormat* format) {
	return new MiqtVirtualQAudioSource(vtbl, *format);
}

QAudioSource* QAudioSource_new4(struct QAudioSource_VTable* vtbl, QAudioFormat* format, QObject* parent) {
	return new MiqtVirtualQAudioSource(vtbl, *format, parent);
}

QAudioSource* QAudioSource_new5(struct QAudioSource_VTable* vtbl, QAudioDevice* audioDeviceInfo, QAudioFormat* format) {
	return new MiqtVirtualQAudioSource(vtbl, *audioDeviceInfo, *format);
}

QAudioSource* QAudioSource_new6(struct QAudioSource_VTable* vtbl, QAudioDevice* audioDeviceInfo, QAudioFormat* format, QObject* parent) {
	return new MiqtVirtualQAudioSource(vtbl, *audioDeviceInfo, *format, parent);
}

void QAudioSource_virtbase(QAudioSource* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAudioSource_metaObject(const QAudioSource* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAudioSource_metacast(QAudioSource* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAudioSource_metacall(QAudioSource* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAudioSource_tr(const char* s) {
	QString _ret = QAudioSource::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QAudioSource_isNull(const QAudioSource* self) {
	return self->isNull();
}

QAudioFormat* QAudioSource_format(const QAudioSource* self) {
	return new QAudioFormat(self->format());
}

void QAudioSource_start(QAudioSource* self, QIODevice* device) {
	self->start(device);
}

QIODevice* QAudioSource_start2(QAudioSource* self) {
	return self->start();
}

void QAudioSource_stop(QAudioSource* self) {
	self->stop();
}

void QAudioSource_reset(QAudioSource* self) {
	self->reset();
}

void QAudioSource_suspend(QAudioSource* self) {
	self->suspend();
}

void QAudioSource_resume(QAudioSource* self) {
	self->resume();
}

void QAudioSource_setBufferSize(QAudioSource* self, ptrdiff_t bytes) {
	self->setBufferSize((qsizetype)(bytes));
}

ptrdiff_t QAudioSource_bufferSize(const QAudioSource* self) {
	qsizetype _ret = self->bufferSize();
	return static_cast<ptrdiff_t>(_ret);
}

ptrdiff_t QAudioSource_bytesAvailable(const QAudioSource* self) {
	qsizetype _ret = self->bytesAvailable();
	return static_cast<ptrdiff_t>(_ret);
}

void QAudioSource_setVolume(QAudioSource* self, double volume) {
	self->setVolume(static_cast<qreal>(volume));
}

double QAudioSource_volume(const QAudioSource* self) {
	qreal _ret = self->volume();
	return static_cast<double>(_ret);
}

long long QAudioSource_processedUSecs(const QAudioSource* self) {
	qint64 _ret = self->processedUSecs();
	return static_cast<long long>(_ret);
}

long long QAudioSource_elapsedUSecs(const QAudioSource* self) {
	qint64 _ret = self->elapsedUSecs();
	return static_cast<long long>(_ret);
}

int QAudioSource_error(const QAudioSource* self) {
	QAudio::Error _ret = self->error();
	return static_cast<int>(_ret);
}

int QAudioSource_state(const QAudioSource* self) {
	QAudio::State _ret = self->state();
	return static_cast<int>(_ret);
}

void QAudioSource_stateChanged(QAudioSource* self, int state) {
	self->stateChanged(static_cast<QAudio::State>(state));
}

void QAudioSource_connect_stateChanged(QAudioSource* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QAudio::State state) {
			QAudio::State state_ret = state;
			int sigval1 = static_cast<int>(state_ret);
			miqt_exec_callback_QAudioSource_stateChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QAudioSource_stateChanged_release(slot); }
	};
	MiqtVirtualQAudioSource::connect(self, static_cast<void (QAudioSource::*)(QAudio::State)>(&QAudioSource::stateChanged), self, caller{slot});
}

struct miqt_string QAudioSource_tr2(const char* s, const char* c) {
	QString _ret = QAudioSource::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioSource_tr3(const char* s, const char* c, int n) {
	QString _ret = QAudioSource::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAudioSource_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQAudioSource*)(self) )->virtualbase_metaObject();
}

void* QAudioSource_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQAudioSource*)(self) )->virtualbase_metacast(param1);
}

int QAudioSource_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQAudioSource*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QAudioSource_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQAudioSource*)(self) )->virtualbase_event(event);
}

bool QAudioSource_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQAudioSource*)(self) )->virtualbase_eventFilter(watched, event);
}

void QAudioSource_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQAudioSource*)(self) )->virtualbase_timerEvent(event);
}

void QAudioSource_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQAudioSource*)(self) )->virtualbase_childEvent(event);
}

void QAudioSource_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQAudioSource*)(self) )->virtualbase_customEvent(event);
}

void QAudioSource_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQAudioSource*)(self) )->virtualbase_connectNotify(signal);
}

void QAudioSource_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQAudioSource*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QAudioSource_staticMetaObject() { return &QAudioSource::staticMetaObject; }
void QAudioSource_delete(QAudioSource* self) {
	delete self;
}

