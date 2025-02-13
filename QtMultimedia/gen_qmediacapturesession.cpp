#include <QAudioInput>
#include <QAudioOutput>
#include <QCamera>
#include <QChildEvent>
#include <QEvent>
#include <QImageCapture>
#include <QMediaCaptureSession>
#include <QMediaRecorder>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVideoSink>
#include <qmediacapturesession.h>
#include "gen_qmediacapturesession.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QMediaCaptureSession_audioInputChanged(intptr_t);
void miqt_exec_callback_QMediaCaptureSession_audioInputChanged_release(intptr_t);
void miqt_exec_callback_QMediaCaptureSession_cameraChanged(intptr_t);
void miqt_exec_callback_QMediaCaptureSession_cameraChanged_release(intptr_t);
void miqt_exec_callback_QMediaCaptureSession_imageCaptureChanged(intptr_t);
void miqt_exec_callback_QMediaCaptureSession_imageCaptureChanged_release(intptr_t);
void miqt_exec_callback_QMediaCaptureSession_recorderChanged(intptr_t);
void miqt_exec_callback_QMediaCaptureSession_recorderChanged_release(intptr_t);
void miqt_exec_callback_QMediaCaptureSession_videoOutputChanged(intptr_t);
void miqt_exec_callback_QMediaCaptureSession_videoOutputChanged_release(intptr_t);
void miqt_exec_callback_QMediaCaptureSession_audioOutputChanged(intptr_t);
void miqt_exec_callback_QMediaCaptureSession_audioOutputChanged_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQMediaCaptureSession final : public QMediaCaptureSession {
	struct QMediaCaptureSession_VTable* vtbl;
public:

	MiqtVirtualQMediaCaptureSession(struct QMediaCaptureSession_VTable* vtbl): QMediaCaptureSession(), vtbl(vtbl) {};
	MiqtVirtualQMediaCaptureSession(struct QMediaCaptureSession_VTable* vtbl, QObject* parent): QMediaCaptureSession(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQMediaCaptureSession() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMediaCaptureSession::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QMediaCaptureSession::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMediaCaptureSession::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QMediaCaptureSession::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMediaCaptureSession::qt_metacall(param1, param2, param3);
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

		return QMediaCaptureSession::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QMediaCaptureSession::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QMediaCaptureSession::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMediaCaptureSession::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QMediaCaptureSession::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QMediaCaptureSession::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QMediaCaptureSession::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QMediaCaptureSession::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QMediaCaptureSession::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMediaCaptureSession::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QMediaCaptureSession::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMediaCaptureSession::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QMediaCaptureSession::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMediaCaptureSession::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QMediaCaptureSession::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend QObject* QMediaCaptureSession_protectedbase_sender(const void* self);
	friend int QMediaCaptureSession_protectedbase_senderSignalIndex(const void* self);
	friend int QMediaCaptureSession_protectedbase_receivers(const void* self, const char* signal);
	friend bool QMediaCaptureSession_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QMediaCaptureSession* QMediaCaptureSession_new(struct QMediaCaptureSession_VTable* vtbl) {
	return new MiqtVirtualQMediaCaptureSession(vtbl);
}

QMediaCaptureSession* QMediaCaptureSession_new2(struct QMediaCaptureSession_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQMediaCaptureSession(vtbl, parent);
}

void QMediaCaptureSession_virtbase(QMediaCaptureSession* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QMediaCaptureSession_metaObject(const QMediaCaptureSession* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMediaCaptureSession_metacast(QMediaCaptureSession* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMediaCaptureSession_metacall(QMediaCaptureSession* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMediaCaptureSession_tr(const char* s) {
	QString _ret = QMediaCaptureSession::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QAudioInput* QMediaCaptureSession_audioInput(const QMediaCaptureSession* self) {
	return self->audioInput();
}

void QMediaCaptureSession_setAudioInput(QMediaCaptureSession* self, QAudioInput* input) {
	self->setAudioInput(input);
}

QCamera* QMediaCaptureSession_camera(const QMediaCaptureSession* self) {
	return self->camera();
}

void QMediaCaptureSession_setCamera(QMediaCaptureSession* self, QCamera* camera) {
	self->setCamera(camera);
}

QImageCapture* QMediaCaptureSession_imageCapture(QMediaCaptureSession* self) {
	return self->imageCapture();
}

void QMediaCaptureSession_setImageCapture(QMediaCaptureSession* self, QImageCapture* imageCapture) {
	self->setImageCapture(imageCapture);
}

QMediaRecorder* QMediaCaptureSession_recorder(QMediaCaptureSession* self) {
	return self->recorder();
}

void QMediaCaptureSession_setRecorder(QMediaCaptureSession* self, QMediaRecorder* recorder) {
	self->setRecorder(recorder);
}

void QMediaCaptureSession_setVideoOutput(QMediaCaptureSession* self, QObject* output) {
	self->setVideoOutput(output);
}

QObject* QMediaCaptureSession_videoOutput(const QMediaCaptureSession* self) {
	return self->videoOutput();
}

void QMediaCaptureSession_setVideoSink(QMediaCaptureSession* self, QVideoSink* sink) {
	self->setVideoSink(sink);
}

QVideoSink* QMediaCaptureSession_videoSink(const QMediaCaptureSession* self) {
	return self->videoSink();
}

void QMediaCaptureSession_setAudioOutput(QMediaCaptureSession* self, QAudioOutput* output) {
	self->setAudioOutput(output);
}

QAudioOutput* QMediaCaptureSession_audioOutput(const QMediaCaptureSession* self) {
	return self->audioOutput();
}

void QMediaCaptureSession_audioInputChanged(QMediaCaptureSession* self) {
	self->audioInputChanged();
}

void QMediaCaptureSession_connect_audioInputChanged(QMediaCaptureSession* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QMediaCaptureSession_audioInputChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaCaptureSession_audioInputChanged_release(slot); }
	};
	MiqtVirtualQMediaCaptureSession::connect(self, static_cast<void (QMediaCaptureSession::*)()>(&QMediaCaptureSession::audioInputChanged), self, caller{slot});
}

void QMediaCaptureSession_cameraChanged(QMediaCaptureSession* self) {
	self->cameraChanged();
}

void QMediaCaptureSession_connect_cameraChanged(QMediaCaptureSession* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QMediaCaptureSession_cameraChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaCaptureSession_cameraChanged_release(slot); }
	};
	MiqtVirtualQMediaCaptureSession::connect(self, static_cast<void (QMediaCaptureSession::*)()>(&QMediaCaptureSession::cameraChanged), self, caller{slot});
}

void QMediaCaptureSession_imageCaptureChanged(QMediaCaptureSession* self) {
	self->imageCaptureChanged();
}

void QMediaCaptureSession_connect_imageCaptureChanged(QMediaCaptureSession* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QMediaCaptureSession_imageCaptureChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaCaptureSession_imageCaptureChanged_release(slot); }
	};
	MiqtVirtualQMediaCaptureSession::connect(self, static_cast<void (QMediaCaptureSession::*)()>(&QMediaCaptureSession::imageCaptureChanged), self, caller{slot});
}

void QMediaCaptureSession_recorderChanged(QMediaCaptureSession* self) {
	self->recorderChanged();
}

void QMediaCaptureSession_connect_recorderChanged(QMediaCaptureSession* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QMediaCaptureSession_recorderChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaCaptureSession_recorderChanged_release(slot); }
	};
	MiqtVirtualQMediaCaptureSession::connect(self, static_cast<void (QMediaCaptureSession::*)()>(&QMediaCaptureSession::recorderChanged), self, caller{slot});
}

void QMediaCaptureSession_videoOutputChanged(QMediaCaptureSession* self) {
	self->videoOutputChanged();
}

void QMediaCaptureSession_connect_videoOutputChanged(QMediaCaptureSession* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QMediaCaptureSession_videoOutputChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaCaptureSession_videoOutputChanged_release(slot); }
	};
	MiqtVirtualQMediaCaptureSession::connect(self, static_cast<void (QMediaCaptureSession::*)()>(&QMediaCaptureSession::videoOutputChanged), self, caller{slot});
}

void QMediaCaptureSession_audioOutputChanged(QMediaCaptureSession* self) {
	self->audioOutputChanged();
}

void QMediaCaptureSession_connect_audioOutputChanged(QMediaCaptureSession* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QMediaCaptureSession_audioOutputChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaCaptureSession_audioOutputChanged_release(slot); }
	};
	MiqtVirtualQMediaCaptureSession::connect(self, static_cast<void (QMediaCaptureSession::*)()>(&QMediaCaptureSession::audioOutputChanged), self, caller{slot});
}

struct miqt_string QMediaCaptureSession_tr2(const char* s, const char* c) {
	QString _ret = QMediaCaptureSession::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaCaptureSession_tr3(const char* s, const char* c, int n) {
	QString _ret = QMediaCaptureSession::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QMediaCaptureSession_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQMediaCaptureSession*)(self) )->virtualbase_metaObject();
}

void* QMediaCaptureSession_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQMediaCaptureSession*)(self) )->virtualbase_metacast(param1);
}

int QMediaCaptureSession_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQMediaCaptureSession*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QMediaCaptureSession_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQMediaCaptureSession*)(self) )->virtualbase_event(event);
}

bool QMediaCaptureSession_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQMediaCaptureSession*)(self) )->virtualbase_eventFilter(watched, event);
}

void QMediaCaptureSession_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQMediaCaptureSession*)(self) )->virtualbase_timerEvent(event);
}

void QMediaCaptureSession_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQMediaCaptureSession*)(self) )->virtualbase_childEvent(event);
}

void QMediaCaptureSession_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQMediaCaptureSession*)(self) )->virtualbase_customEvent(event);
}

void QMediaCaptureSession_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQMediaCaptureSession*)(self) )->virtualbase_connectNotify(signal);
}

void QMediaCaptureSession_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQMediaCaptureSession*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QMediaCaptureSession_staticMetaObject() { return &QMediaCaptureSession::staticMetaObject; }
QObject* QMediaCaptureSession_protectedbase_sender(const void* self) {
	MiqtVirtualQMediaCaptureSession* self_cast = static_cast<MiqtVirtualQMediaCaptureSession*>( (QMediaCaptureSession*)(self) );
	
	return self_cast->sender();

}

int QMediaCaptureSession_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQMediaCaptureSession* self_cast = static_cast<MiqtVirtualQMediaCaptureSession*>( (QMediaCaptureSession*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QMediaCaptureSession_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQMediaCaptureSession* self_cast = static_cast<MiqtVirtualQMediaCaptureSession*>( (QMediaCaptureSession*)(self) );
	
	return self_cast->receivers(signal);

}

bool QMediaCaptureSession_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQMediaCaptureSession* self_cast = static_cast<MiqtVirtualQMediaCaptureSession*>( (QMediaCaptureSession*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QMediaCaptureSession_delete(QMediaCaptureSession* self) {
	delete self;
}

