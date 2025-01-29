#include <QMediaControl>
#include <QMediaRecorderControl>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QUrl>
#include <qmediarecordercontrol.h>
#include "gen_qmediarecordercontrol.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QMediaRecorderControl_stateChanged(intptr_t, int);
void miqt_exec_callback_QMediaRecorderControl_stateChanged_release(intptr_t);
void miqt_exec_callback_QMediaRecorderControl_statusChanged(intptr_t, int);
void miqt_exec_callback_QMediaRecorderControl_statusChanged_release(intptr_t);
void miqt_exec_callback_QMediaRecorderControl_durationChanged(intptr_t, long long);
void miqt_exec_callback_QMediaRecorderControl_durationChanged_release(intptr_t);
void miqt_exec_callback_QMediaRecorderControl_mutedChanged(intptr_t, bool);
void miqt_exec_callback_QMediaRecorderControl_mutedChanged_release(intptr_t);
void miqt_exec_callback_QMediaRecorderControl_volumeChanged(intptr_t, double);
void miqt_exec_callback_QMediaRecorderControl_volumeChanged_release(intptr_t);
void miqt_exec_callback_QMediaRecorderControl_actualLocationChanged(intptr_t, QUrl*);
void miqt_exec_callback_QMediaRecorderControl_actualLocationChanged_release(intptr_t);
void miqt_exec_callback_QMediaRecorderControl_error(intptr_t, int, struct miqt_string);
void miqt_exec_callback_QMediaRecorderControl_error_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

void QMediaRecorderControl_virtbase(QMediaRecorderControl* src, QMediaControl** outptr_QMediaControl) {
	*outptr_QMediaControl = static_cast<QMediaControl*>(src);
}

QMetaObject* QMediaRecorderControl_metaObject(const QMediaRecorderControl* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMediaRecorderControl_metacast(QMediaRecorderControl* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMediaRecorderControl_metacall(QMediaRecorderControl* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMediaRecorderControl_tr(const char* s) {
	QString _ret = QMediaRecorderControl::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaRecorderControl_trUtf8(const char* s) {
	QString _ret = QMediaRecorderControl::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QMediaRecorderControl_outputLocation(const QMediaRecorderControl* self) {
	return new QUrl(self->outputLocation());
}

bool QMediaRecorderControl_setOutputLocation(QMediaRecorderControl* self, QUrl* location) {
	return self->setOutputLocation(*location);
}

int QMediaRecorderControl_state(const QMediaRecorderControl* self) {
	QMediaRecorder::State _ret = self->state();
	return static_cast<int>(_ret);
}

int QMediaRecorderControl_status(const QMediaRecorderControl* self) {
	QMediaRecorder::Status _ret = self->status();
	return static_cast<int>(_ret);
}

long long QMediaRecorderControl_duration(const QMediaRecorderControl* self) {
	qint64 _ret = self->duration();
	return static_cast<long long>(_ret);
}

bool QMediaRecorderControl_isMuted(const QMediaRecorderControl* self) {
	return self->isMuted();
}

double QMediaRecorderControl_volume(const QMediaRecorderControl* self) {
	qreal _ret = self->volume();
	return static_cast<double>(_ret);
}

void QMediaRecorderControl_applySettings(QMediaRecorderControl* self) {
	self->applySettings();
}

void QMediaRecorderControl_stateChanged(QMediaRecorderControl* self, int state) {
	self->stateChanged(static_cast<QMediaRecorder::State>(state));
}

void QMediaRecorderControl_connect_stateChanged(QMediaRecorderControl* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QMediaRecorder::State state) {
			QMediaRecorder::State state_ret = state;
			int sigval1 = static_cast<int>(state_ret);
			miqt_exec_callback_QMediaRecorderControl_stateChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaRecorderControl_stateChanged_release(slot); }
	};
	QMediaRecorderControl::connect(self, static_cast<void (QMediaRecorderControl::*)(QMediaRecorder::State)>(&QMediaRecorderControl::stateChanged), self, caller{slot});
}

void QMediaRecorderControl_statusChanged(QMediaRecorderControl* self, int status) {
	self->statusChanged(static_cast<QMediaRecorder::Status>(status));
}

void QMediaRecorderControl_connect_statusChanged(QMediaRecorderControl* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QMediaRecorder::Status status) {
			QMediaRecorder::Status status_ret = status;
			int sigval1 = static_cast<int>(status_ret);
			miqt_exec_callback_QMediaRecorderControl_statusChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaRecorderControl_statusChanged_release(slot); }
	};
	QMediaRecorderControl::connect(self, static_cast<void (QMediaRecorderControl::*)(QMediaRecorder::Status)>(&QMediaRecorderControl::statusChanged), self, caller{slot});
}

void QMediaRecorderControl_durationChanged(QMediaRecorderControl* self, long long position) {
	self->durationChanged(static_cast<qint64>(position));
}

void QMediaRecorderControl_connect_durationChanged(QMediaRecorderControl* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(qint64 position) {
			qint64 position_ret = position;
			long long sigval1 = static_cast<long long>(position_ret);
			miqt_exec_callback_QMediaRecorderControl_durationChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaRecorderControl_durationChanged_release(slot); }
	};
	QMediaRecorderControl::connect(self, static_cast<void (QMediaRecorderControl::*)(qint64)>(&QMediaRecorderControl::durationChanged), self, caller{slot});
}

void QMediaRecorderControl_mutedChanged(QMediaRecorderControl* self, bool muted) {
	self->mutedChanged(muted);
}

void QMediaRecorderControl_connect_mutedChanged(QMediaRecorderControl* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(bool muted) {
			bool sigval1 = muted;
			miqt_exec_callback_QMediaRecorderControl_mutedChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaRecorderControl_mutedChanged_release(slot); }
	};
	QMediaRecorderControl::connect(self, static_cast<void (QMediaRecorderControl::*)(bool)>(&QMediaRecorderControl::mutedChanged), self, caller{slot});
}

void QMediaRecorderControl_volumeChanged(QMediaRecorderControl* self, double volume) {
	self->volumeChanged(static_cast<qreal>(volume));
}

void QMediaRecorderControl_connect_volumeChanged(QMediaRecorderControl* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(qreal volume) {
			qreal volume_ret = volume;
			double sigval1 = static_cast<double>(volume_ret);
			miqt_exec_callback_QMediaRecorderControl_volumeChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaRecorderControl_volumeChanged_release(slot); }
	};
	QMediaRecorderControl::connect(self, static_cast<void (QMediaRecorderControl::*)(qreal)>(&QMediaRecorderControl::volumeChanged), self, caller{slot});
}

void QMediaRecorderControl_actualLocationChanged(QMediaRecorderControl* self, QUrl* location) {
	self->actualLocationChanged(*location);
}

void QMediaRecorderControl_connect_actualLocationChanged(QMediaRecorderControl* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QUrl& location) {
			const QUrl& location_ret = location;
			// Cast returned reference into pointer
			QUrl* sigval1 = const_cast<QUrl*>(&location_ret);
			miqt_exec_callback_QMediaRecorderControl_actualLocationChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaRecorderControl_actualLocationChanged_release(slot); }
	};
	QMediaRecorderControl::connect(self, static_cast<void (QMediaRecorderControl::*)(const QUrl&)>(&QMediaRecorderControl::actualLocationChanged), self, caller{slot});
}

void QMediaRecorderControl_error(QMediaRecorderControl* self, int error, struct miqt_string errorString) {
	QString errorString_QString = QString::fromUtf8(errorString.data, errorString.len);
	self->error(static_cast<int>(error), errorString_QString);
}

void QMediaRecorderControl_connect_error(QMediaRecorderControl* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(int error, const QString& errorString) {
			int sigval1 = error;
			const QString errorString_ret = errorString;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray errorString_b = errorString_ret.toUtf8();
			struct miqt_string errorString_ms;
			errorString_ms.len = errorString_b.length();
			errorString_ms.data = static_cast<char*>(malloc(errorString_ms.len));
			memcpy(errorString_ms.data, errorString_b.data(), errorString_ms.len);
			struct miqt_string sigval2 = errorString_ms;
			miqt_exec_callback_QMediaRecorderControl_error(slot, sigval1, sigval2);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaRecorderControl_error_release(slot); }
	};
	QMediaRecorderControl::connect(self, static_cast<void (QMediaRecorderControl::*)(int, const QString&)>(&QMediaRecorderControl::error), self, caller{slot});
}

void QMediaRecorderControl_setState(QMediaRecorderControl* self, int state) {
	self->setState(static_cast<QMediaRecorder::State>(state));
}

void QMediaRecorderControl_setMuted(QMediaRecorderControl* self, bool muted) {
	self->setMuted(muted);
}

void QMediaRecorderControl_setVolume(QMediaRecorderControl* self, double volume) {
	self->setVolume(static_cast<qreal>(volume));
}

struct miqt_string QMediaRecorderControl_tr2(const char* s, const char* c) {
	QString _ret = QMediaRecorderControl::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaRecorderControl_tr3(const char* s, const char* c, int n) {
	QString _ret = QMediaRecorderControl::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaRecorderControl_trUtf82(const char* s, const char* c) {
	QString _ret = QMediaRecorderControl::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaRecorderControl_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QMediaRecorderControl::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

const QMetaObject* QMediaRecorderControl_staticMetaObject() { return &QMediaRecorderControl::staticMetaObject; }
void QMediaRecorderControl_delete(QMediaRecorderControl* self) {
	delete self;
}

