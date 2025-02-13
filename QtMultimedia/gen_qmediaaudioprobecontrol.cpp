#include <QAudioBuffer>
#include <QMediaAudioProbeControl>
#include <QMediaControl>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qmediaaudioprobecontrol.h>
#include "gen_qmediaaudioprobecontrol.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QMediaAudioProbeControl_audioBufferProbed(intptr_t, QAudioBuffer*);
void miqt_exec_callback_QMediaAudioProbeControl_audioBufferProbed_release(intptr_t);
void miqt_exec_callback_QMediaAudioProbeControl_flush(intptr_t);
void miqt_exec_callback_QMediaAudioProbeControl_flush_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

void QMediaAudioProbeControl_virtbase(QMediaAudioProbeControl* src, QMediaControl** outptr_QMediaControl) {
	*outptr_QMediaControl = static_cast<QMediaControl*>(src);
}

QMetaObject* QMediaAudioProbeControl_metaObject(const QMediaAudioProbeControl* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMediaAudioProbeControl_metacast(QMediaAudioProbeControl* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMediaAudioProbeControl_metacall(QMediaAudioProbeControl* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMediaAudioProbeControl_tr(const char* s) {
	QString _ret = QMediaAudioProbeControl::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaAudioProbeControl_trUtf8(const char* s) {
	QString _ret = QMediaAudioProbeControl::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMediaAudioProbeControl_audioBufferProbed(QMediaAudioProbeControl* self, QAudioBuffer* buffer) {
	self->audioBufferProbed(*buffer);
}

void QMediaAudioProbeControl_connect_audioBufferProbed(QMediaAudioProbeControl* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QAudioBuffer& buffer) {
			const QAudioBuffer& buffer_ret = buffer;
			// Cast returned reference into pointer
			QAudioBuffer* sigval1 = const_cast<QAudioBuffer*>(&buffer_ret);
			miqt_exec_callback_QMediaAudioProbeControl_audioBufferProbed(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaAudioProbeControl_audioBufferProbed_release(slot); }
	};
	QMediaAudioProbeControl::connect(self, static_cast<void (QMediaAudioProbeControl::*)(const QAudioBuffer&)>(&QMediaAudioProbeControl::audioBufferProbed), self, caller{slot});
}

void QMediaAudioProbeControl_flush(QMediaAudioProbeControl* self) {
	self->flush();
}

void QMediaAudioProbeControl_connect_flush(QMediaAudioProbeControl* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QMediaAudioProbeControl_flush(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaAudioProbeControl_flush_release(slot); }
	};
	QMediaAudioProbeControl::connect(self, static_cast<void (QMediaAudioProbeControl::*)()>(&QMediaAudioProbeControl::flush), self, caller{slot});
}

struct miqt_string QMediaAudioProbeControl_tr2(const char* s, const char* c) {
	QString _ret = QMediaAudioProbeControl::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaAudioProbeControl_tr3(const char* s, const char* c, int n) {
	QString _ret = QMediaAudioProbeControl::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaAudioProbeControl_trUtf82(const char* s, const char* c) {
	QString _ret = QMediaAudioProbeControl::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaAudioProbeControl_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QMediaAudioProbeControl::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QMediaAudioProbeControl_staticMetaObject() { return &QMediaAudioProbeControl::staticMetaObject; }
void QMediaAudioProbeControl_delete(QMediaAudioProbeControl* self) {
	delete self;
}

