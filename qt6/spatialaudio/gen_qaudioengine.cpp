#include <QAudioDevice>
#include <QAudioEngine>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qaudioengine.h>
#include "gen_qaudioengine.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QAudioEngine_outputModeChanged(intptr_t);
void miqt_exec_callback_QAudioEngine_outputDeviceChanged(intptr_t);
void miqt_exec_callback_QAudioEngine_masterVolumeChanged(intptr_t);
void miqt_exec_callback_QAudioEngine_pausedChanged(intptr_t);
void miqt_exec_callback_QAudioEngine_distanceScaleChanged(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQAudioEngine final : public QAudioEngine {
	struct QAudioEngine_VTable* vtbl;
public:

	MiqtVirtualQAudioEngine(struct QAudioEngine_VTable* vtbl): QAudioEngine(), vtbl(vtbl) {};
	MiqtVirtualQAudioEngine(struct QAudioEngine_VTable* vtbl, QObject* parent): QAudioEngine(parent), vtbl(vtbl) {};
	MiqtVirtualQAudioEngine(struct QAudioEngine_VTable* vtbl, int sampleRate): QAudioEngine(sampleRate), vtbl(vtbl) {};
	MiqtVirtualQAudioEngine(struct QAudioEngine_VTable* vtbl, int sampleRate, QObject* parent): QAudioEngine(sampleRate, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQAudioEngine() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAudioEngine::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QAudioEngine::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAudioEngine::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QAudioEngine::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAudioEngine::qt_metacall(param1, param2, param3);
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

		return QAudioEngine::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAudioEngine::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QAudioEngine::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAudioEngine::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QAudioEngine::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAudioEngine::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QAudioEngine::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAudioEngine::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QAudioEngine::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAudioEngine::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QAudioEngine::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAudioEngine::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QAudioEngine::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAudioEngine::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QAudioEngine::disconnectNotify(*signal);

	}

};

QAudioEngine* QAudioEngine_new(struct QAudioEngine_VTable* vtbl) {
	return new MiqtVirtualQAudioEngine(vtbl);
}

QAudioEngine* QAudioEngine_new2(struct QAudioEngine_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQAudioEngine(vtbl, parent);
}

QAudioEngine* QAudioEngine_new3(struct QAudioEngine_VTable* vtbl, int sampleRate) {
	return new MiqtVirtualQAudioEngine(vtbl, static_cast<int>(sampleRate));
}

QAudioEngine* QAudioEngine_new4(struct QAudioEngine_VTable* vtbl, int sampleRate, QObject* parent) {
	return new MiqtVirtualQAudioEngine(vtbl, static_cast<int>(sampleRate), parent);
}

void QAudioEngine_virtbase(QAudioEngine* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QAudioEngine_metaObject(const QAudioEngine* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAudioEngine_metacast(QAudioEngine* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAudioEngine_metacall(QAudioEngine* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAudioEngine_tr(const char* s) {
	QString _ret = QAudioEngine::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAudioEngine_setOutputMode(QAudioEngine* self, int mode) {
	self->setOutputMode(static_cast<QAudioEngine::OutputMode>(mode));
}

int QAudioEngine_outputMode(const QAudioEngine* self) {
	QAudioEngine::OutputMode _ret = self->outputMode();
	return static_cast<int>(_ret);
}

int QAudioEngine_sampleRate(const QAudioEngine* self) {
	return self->sampleRate();
}

void QAudioEngine_setOutputDevice(QAudioEngine* self, QAudioDevice* device) {
	self->setOutputDevice(*device);
}

QAudioDevice* QAudioEngine_outputDevice(const QAudioEngine* self) {
	return new QAudioDevice(self->outputDevice());
}

void QAudioEngine_setMasterVolume(QAudioEngine* self, float volume) {
	self->setMasterVolume(static_cast<float>(volume));
}

float QAudioEngine_masterVolume(const QAudioEngine* self) {
	return self->masterVolume();
}

void QAudioEngine_setPaused(QAudioEngine* self, bool paused) {
	self->setPaused(paused);
}

bool QAudioEngine_paused(const QAudioEngine* self) {
	return self->paused();
}

void QAudioEngine_setRoomEffectsEnabled(QAudioEngine* self, bool enabled) {
	self->setRoomEffectsEnabled(enabled);
}

bool QAudioEngine_roomEffectsEnabled(const QAudioEngine* self) {
	return self->roomEffectsEnabled();
}

void QAudioEngine_setDistanceScale(QAudioEngine* self, float scale) {
	self->setDistanceScale(static_cast<float>(scale));
}

float QAudioEngine_distanceScale(const QAudioEngine* self) {
	return self->distanceScale();
}

void QAudioEngine_outputModeChanged(QAudioEngine* self) {
	self->outputModeChanged();
}

void QAudioEngine_connect_outputModeChanged(QAudioEngine* self, intptr_t slot) {
	MiqtVirtualQAudioEngine::connect(self, static_cast<void (QAudioEngine::*)()>(&QAudioEngine::outputModeChanged), self, [=]() {
		miqt_exec_callback_QAudioEngine_outputModeChanged(slot);
	});
}

void QAudioEngine_outputDeviceChanged(QAudioEngine* self) {
	self->outputDeviceChanged();
}

void QAudioEngine_connect_outputDeviceChanged(QAudioEngine* self, intptr_t slot) {
	MiqtVirtualQAudioEngine::connect(self, static_cast<void (QAudioEngine::*)()>(&QAudioEngine::outputDeviceChanged), self, [=]() {
		miqt_exec_callback_QAudioEngine_outputDeviceChanged(slot);
	});
}

void QAudioEngine_masterVolumeChanged(QAudioEngine* self) {
	self->masterVolumeChanged();
}

void QAudioEngine_connect_masterVolumeChanged(QAudioEngine* self, intptr_t slot) {
	MiqtVirtualQAudioEngine::connect(self, static_cast<void (QAudioEngine::*)()>(&QAudioEngine::masterVolumeChanged), self, [=]() {
		miqt_exec_callback_QAudioEngine_masterVolumeChanged(slot);
	});
}

void QAudioEngine_pausedChanged(QAudioEngine* self) {
	self->pausedChanged();
}

void QAudioEngine_connect_pausedChanged(QAudioEngine* self, intptr_t slot) {
	MiqtVirtualQAudioEngine::connect(self, static_cast<void (QAudioEngine::*)()>(&QAudioEngine::pausedChanged), self, [=]() {
		miqt_exec_callback_QAudioEngine_pausedChanged(slot);
	});
}

void QAudioEngine_distanceScaleChanged(QAudioEngine* self) {
	self->distanceScaleChanged();
}

void QAudioEngine_connect_distanceScaleChanged(QAudioEngine* self, intptr_t slot) {
	MiqtVirtualQAudioEngine::connect(self, static_cast<void (QAudioEngine::*)()>(&QAudioEngine::distanceScaleChanged), self, [=]() {
		miqt_exec_callback_QAudioEngine_distanceScaleChanged(slot);
	});
}

void QAudioEngine_start(QAudioEngine* self) {
	self->start();
}

void QAudioEngine_stop(QAudioEngine* self) {
	self->stop();
}

void QAudioEngine_pause(QAudioEngine* self) {
	self->pause();
}

void QAudioEngine_resume(QAudioEngine* self) {
	self->resume();
}

struct miqt_string QAudioEngine_tr2(const char* s, const char* c) {
	QString _ret = QAudioEngine::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAudioEngine_tr3(const char* s, const char* c, int n) {
	QString _ret = QAudioEngine::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAudioEngine_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQAudioEngine*)(self) )->virtualbase_metaObject();
}

void* QAudioEngine_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQAudioEngine*)(self) )->virtualbase_metacast(param1);
}

int QAudioEngine_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQAudioEngine*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QAudioEngine_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQAudioEngine*)(self) )->virtualbase_event(event);
}

bool QAudioEngine_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQAudioEngine*)(self) )->virtualbase_eventFilter(watched, event);
}

void QAudioEngine_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQAudioEngine*)(self) )->virtualbase_timerEvent(event);
}

void QAudioEngine_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQAudioEngine*)(self) )->virtualbase_childEvent(event);
}

void QAudioEngine_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQAudioEngine*)(self) )->virtualbase_customEvent(event);
}

void QAudioEngine_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQAudioEngine*)(self) )->virtualbase_connectNotify(signal);
}

void QAudioEngine_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQAudioEngine*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QAudioEngine_staticMetaObject() { return &QAudioEngine::staticMetaObject; }
void QAudioEngine_delete(QAudioEngine* self) {
	delete self;
}

