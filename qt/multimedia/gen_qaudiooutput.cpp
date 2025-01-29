#include <QAudioDeviceInfo>
#include <QAudioFormat>
#include <QAudioOutput>
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
#include <qaudiooutput.h>
#include "gen_qaudiooutput.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QAudioOutput_stateChanged(intptr_t, int);
void miqt_exec_callback_QAudioOutput_stateChanged_release(intptr_t);
void miqt_exec_callback_QAudioOutput_notify(intptr_t);
void miqt_exec_callback_QAudioOutput_notify_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQAudioOutput final : public QAudioOutput {
	struct QAudioOutput_VTable* vtbl;
public:

	MiqtVirtualQAudioOutput(struct QAudioOutput_VTable* vtbl): QAudioOutput(), vtbl(vtbl) {};
	MiqtVirtualQAudioOutput(struct QAudioOutput_VTable* vtbl, const QAudioDeviceInfo& audioDeviceInfo): QAudioOutput(audioDeviceInfo), vtbl(vtbl) {};
	MiqtVirtualQAudioOutput(struct QAudioOutput_VTable* vtbl, const QAudioFormat& format): QAudioOutput(format), vtbl(vtbl) {};
	MiqtVirtualQAudioOutput(struct QAudioOutput_VTable* vtbl, const QAudioFormat& format, QObject* parent): QAudioOutput(format, parent), vtbl(vtbl) {};
	MiqtVirtualQAudioOutput(struct QAudioOutput_VTable* vtbl, const QAudioDeviceInfo& audioDeviceInfo, const QAudioFormat& format): QAudioOutput(audioDeviceInfo, format), vtbl(vtbl) {};
	MiqtVirtualQAudioOutput(struct QAudioOutput_VTable* vtbl, const QAudioDeviceInfo& audioDeviceInfo, const QAudioFormat& format, QObject* parent): QAudioOutput(audioDeviceInfo, format, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQAudioOutput() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAudioOutput::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QAudioOutput::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioOutput::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QAudioOutput::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioOutput::qt_metacall(param1, param2, param3);
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

		return QAudioOutput::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioOutput::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QAudioOutput::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioOutput::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QAudioOutput::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioOutput::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QAudioOutput::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioOutput::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QAudioOutput::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioOutput::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QAudioOutput::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioOutput::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QAudioOutput::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioOutput::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QAudioOutput::disconnectNotify(*signal);

	}

};

QAudioOutput* QAudioOutput_new(struct QAudioOutput_VTable* vtbl) {
	return new MiqtVirtualQAudioOutput(vtbl);
}

QAudioOutput* QAudioOutput_new2(struct QAudioOutput_VTable* vtbl, QAudioDeviceInfo* audioDeviceInfo) {
	return new MiqtVirtualQAudioOutput(vtbl, *audioDeviceInfo);
}

QAudioOutput* QAudioOutput_new3(struct QAudioOutput_VTable* vtbl, QAudioFormat* format) {
	return new MiqtVirtualQAudioOutput(vtbl, *format);
}

QAudioOutput* QAudioOutput_new4(struct QAudioOutput_VTable* vtbl, QAudioFormat* format, QObject* parent) {
	return new MiqtVirtualQAudioOutput(vtbl, *format, parent);
}

QAudioOutput* QAudioOutput_new5(struct QAudioOutput_VTable* vtbl, QAudioDeviceInfo* audioDeviceInfo, QAudioFormat* format) {
	return new MiqtVirtualQAudioOutput(vtbl, *audioDeviceInfo, *format);
}

QAudioOutput* QAudioOutput_new6(struct QAudioOutput_VTable* vtbl, QAudioDeviceInfo* audioDeviceInfo, QAudioFormat* format, QObject* parent) {
	return new MiqtVirtualQAudioOutput(vtbl, *audioDeviceInfo, *format, parent);
}

void QAudioOutput_virtbase(QAudioOutput* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAudioOutput_metaObject(const QAudioOutput* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAudioOutput_metacast(QAudioOutput* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAudioOutput_metacall(QAudioOutput* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAudioOutput_tr(const char* s) {
	QString _ret = QAudioOutput::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioOutput_trUtf8(const char* s) {
	QString _ret = QAudioOutput::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAudioFormat* QAudioOutput_format(const QAudioOutput* self) {
	return new QAudioFormat(self->format());
}

void QAudioOutput_start(QAudioOutput* self, QIODevice* device) {
	self->start(device);
}

QIODevice* QAudioOutput_start2(QAudioOutput* self) {
	return self->start();
}

void QAudioOutput_stop(QAudioOutput* self) {
	self->stop();
}

void QAudioOutput_reset(QAudioOutput* self) {
	self->reset();
}

void QAudioOutput_suspend(QAudioOutput* self) {
	self->suspend();
}

void QAudioOutput_resume(QAudioOutput* self) {
	self->resume();
}

void QAudioOutput_setBufferSize(QAudioOutput* self, int bytes) {
	self->setBufferSize(static_cast<int>(bytes));
}

int QAudioOutput_bufferSize(const QAudioOutput* self) {
	return self->bufferSize();
}

int QAudioOutput_bytesFree(const QAudioOutput* self) {
	return self->bytesFree();
}

int QAudioOutput_periodSize(const QAudioOutput* self) {
	return self->periodSize();
}

void QAudioOutput_setNotifyInterval(QAudioOutput* self, int milliSeconds) {
	self->setNotifyInterval(static_cast<int>(milliSeconds));
}

int QAudioOutput_notifyInterval(const QAudioOutput* self) {
	return self->notifyInterval();
}

long long QAudioOutput_processedUSecs(const QAudioOutput* self) {
	qint64 _ret = self->processedUSecs();
	return static_cast<long long>(_ret);
}

long long QAudioOutput_elapsedUSecs(const QAudioOutput* self) {
	qint64 _ret = self->elapsedUSecs();
	return static_cast<long long>(_ret);
}

int QAudioOutput_error(const QAudioOutput* self) {
	QAudio::Error _ret = self->error();
	return static_cast<int>(_ret);
}

int QAudioOutput_state(const QAudioOutput* self) {
	QAudio::State _ret = self->state();
	return static_cast<int>(_ret);
}

void QAudioOutput_setVolume(QAudioOutput* self, double volume) {
	self->setVolume(static_cast<qreal>(volume));
}

double QAudioOutput_volume(const QAudioOutput* self) {
	qreal _ret = self->volume();
	return static_cast<double>(_ret);
}

struct miqt_string QAudioOutput_category(const QAudioOutput* self) {
	QString _ret = self->category();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAudioOutput_setCategory(QAudioOutput* self, struct miqt_string category) {
	QString category_QString = QString::fromUtf8(category.data, category.len);
	self->setCategory(category_QString);
}

void QAudioOutput_stateChanged(QAudioOutput* self, int state) {
	self->stateChanged(static_cast<QAudio::State>(state));
}

void QAudioOutput_connect_stateChanged(QAudioOutput* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QAudio::State state) {
			QAudio::State state_ret = state;
			int sigval1 = static_cast<int>(state_ret);
			miqt_exec_callback_QAudioOutput_stateChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QAudioOutput_stateChanged_release(slot); }
	};
	MiqtVirtualQAudioOutput::connect(self, static_cast<void (QAudioOutput::*)(QAudio::State)>(&QAudioOutput::stateChanged), self, caller{slot});
}

void QAudioOutput_notify(QAudioOutput* self) {
	self->notify();
}

void QAudioOutput_connect_notify(QAudioOutput* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QAudioOutput_notify(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QAudioOutput_notify_release(slot); }
	};
	MiqtVirtualQAudioOutput::connect(self, static_cast<void (QAudioOutput::*)()>(&QAudioOutput::notify), self, caller{slot});
}

struct miqt_string QAudioOutput_tr2(const char* s, const char* c) {
	QString _ret = QAudioOutput::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioOutput_tr3(const char* s, const char* c, int n) {
	QString _ret = QAudioOutput::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioOutput_trUtf82(const char* s, const char* c) {
	QString _ret = QAudioOutput::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioOutput_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QAudioOutput::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAudioOutput_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQAudioOutput*)(self) )->virtualbase_metaObject();
}

void* QAudioOutput_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQAudioOutput*)(self) )->virtualbase_metacast(param1);
}

int QAudioOutput_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQAudioOutput*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QAudioOutput_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQAudioOutput*)(self) )->virtualbase_event(event);
}

bool QAudioOutput_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQAudioOutput*)(self) )->virtualbase_eventFilter(watched, event);
}

void QAudioOutput_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQAudioOutput*)(self) )->virtualbase_timerEvent(event);
}

void QAudioOutput_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQAudioOutput*)(self) )->virtualbase_childEvent(event);
}

void QAudioOutput_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQAudioOutput*)(self) )->virtualbase_customEvent(event);
}

void QAudioOutput_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQAudioOutput*)(self) )->virtualbase_connectNotify(signal);
}

void QAudioOutput_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQAudioOutput*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QAudioOutput_staticMetaObject() { return &QAudioOutput::staticMetaObject; }
void QAudioOutput_delete(QAudioOutput* self) {
	delete self;
}

