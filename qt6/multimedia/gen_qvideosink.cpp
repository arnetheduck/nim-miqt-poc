#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVideoFrame>
#include <QVideoSink>
#include <qvideosink.h>
#include "gen_qvideosink.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QVideoSink_videoFrameChanged(intptr_t, QVideoFrame*);
void miqt_exec_callback_QVideoSink_subtitleTextChanged(intptr_t, struct miqt_string);
void miqt_exec_callback_QVideoSink_videoSizeChanged(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQVideoSink final : public QVideoSink {
	struct QVideoSink_VTable* vtbl;
public:

	MiqtVirtualQVideoSink(struct QVideoSink_VTable* vtbl): QVideoSink(), vtbl(vtbl) {};
	MiqtVirtualQVideoSink(struct QVideoSink_VTable* vtbl, QObject* parent): QVideoSink(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQVideoSink() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QVideoSink::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QVideoSink::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QVideoSink::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QVideoSink::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QVideoSink::qt_metacall(param1, param2, param3);
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

		return QVideoSink::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QVideoSink::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QVideoSink::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QVideoSink::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QVideoSink::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QVideoSink::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QVideoSink::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QVideoSink::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QVideoSink::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QVideoSink::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QVideoSink::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QVideoSink::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QVideoSink::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QVideoSink::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QVideoSink::disconnectNotify(*signal);

	}

};

QVideoSink* QVideoSink_new(struct QVideoSink_VTable* vtbl) {
	return new MiqtVirtualQVideoSink(vtbl);
}

QVideoSink* QVideoSink_new2(struct QVideoSink_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQVideoSink(vtbl, parent);
}

void QVideoSink_virtbase(QVideoSink* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QVideoSink_metaObject(const QVideoSink* self) {
	return (QMetaObject*) self->metaObject();
}

void* QVideoSink_metacast(QVideoSink* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QVideoSink_metacall(QVideoSink* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QVideoSink_tr(const char* s) {
	QString _ret = QVideoSink::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QSize* QVideoSink_videoSize(const QVideoSink* self) {
	return new QSize(self->videoSize());
}

struct miqt_string QVideoSink_subtitleText(const QVideoSink* self) {
	QString _ret = self->subtitleText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QVideoSink_setSubtitleText(QVideoSink* self, struct miqt_string subtitle) {
	QString subtitle_QString = QString::fromUtf8(subtitle.data, subtitle.len);
	self->setSubtitleText(subtitle_QString);
}

void QVideoSink_setVideoFrame(QVideoSink* self, QVideoFrame* frame) {
	self->setVideoFrame(*frame);
}

QVideoFrame* QVideoSink_videoFrame(const QVideoSink* self) {
	return new QVideoFrame(self->videoFrame());
}

void QVideoSink_videoFrameChanged(const QVideoSink* self, QVideoFrame* frame) {
	self->videoFrameChanged(*frame);
}

void QVideoSink_connect_videoFrameChanged(QVideoSink* self, intptr_t slot) {
	MiqtVirtualQVideoSink::connect(self, static_cast<void (QVideoSink::*)(const QVideoFrame&) const>(&QVideoSink::videoFrameChanged), self, [=](const QVideoFrame& frame) {
		const QVideoFrame& frame_ret = frame;
		// Cast returned reference into pointer
		QVideoFrame* sigval1 = const_cast<QVideoFrame*>(&frame_ret);
		miqt_exec_callback_QVideoSink_videoFrameChanged(slot, sigval1);
	});
}

void QVideoSink_subtitleTextChanged(const QVideoSink* self, struct miqt_string subtitleText) {
	QString subtitleText_QString = QString::fromUtf8(subtitleText.data, subtitleText.len);
	self->subtitleTextChanged(subtitleText_QString);
}

void QVideoSink_connect_subtitleTextChanged(QVideoSink* self, intptr_t slot) {
	MiqtVirtualQVideoSink::connect(self, static_cast<void (QVideoSink::*)(const QString&) const>(&QVideoSink::subtitleTextChanged), self, [=](const QString& subtitleText) {
		const QString subtitleText_ret = subtitleText;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray subtitleText_b = subtitleText_ret.toUtf8();
		struct miqt_string subtitleText_ms;
		subtitleText_ms.len = subtitleText_b.length();
		subtitleText_ms.data = static_cast<char*>(malloc(subtitleText_ms.len));
		memcpy(subtitleText_ms.data, subtitleText_b.data(), subtitleText_ms.len);
		struct miqt_string sigval1 = subtitleText_ms;
		miqt_exec_callback_QVideoSink_subtitleTextChanged(slot, sigval1);
	});
}

void QVideoSink_videoSizeChanged(QVideoSink* self) {
	self->videoSizeChanged();
}

void QVideoSink_connect_videoSizeChanged(QVideoSink* self, intptr_t slot) {
	MiqtVirtualQVideoSink::connect(self, static_cast<void (QVideoSink::*)()>(&QVideoSink::videoSizeChanged), self, [=]() {
		miqt_exec_callback_QVideoSink_videoSizeChanged(slot);
	});
}

struct miqt_string QVideoSink_tr2(const char* s, const char* c) {
	QString _ret = QVideoSink::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVideoSink_tr3(const char* s, const char* c, int n) {
	QString _ret = QVideoSink::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QVideoSink_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQVideoSink*)(self) )->virtualbase_metaObject();
}

void* QVideoSink_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQVideoSink*)(self) )->virtualbase_metacast(param1);
}

int QVideoSink_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQVideoSink*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QVideoSink_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQVideoSink*)(self) )->virtualbase_event(event);
}

bool QVideoSink_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQVideoSink*)(self) )->virtualbase_eventFilter(watched, event);
}

void QVideoSink_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQVideoSink*)(self) )->virtualbase_timerEvent(event);
}

void QVideoSink_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQVideoSink*)(self) )->virtualbase_childEvent(event);
}

void QVideoSink_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQVideoSink*)(self) )->virtualbase_customEvent(event);
}

void QVideoSink_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQVideoSink*)(self) )->virtualbase_connectNotify(signal);
}

void QVideoSink_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQVideoSink*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QVideoSink_staticMetaObject() { return &QVideoSink::staticMetaObject; }
void QVideoSink_delete(QVideoSink* self) {
	delete self;
}

