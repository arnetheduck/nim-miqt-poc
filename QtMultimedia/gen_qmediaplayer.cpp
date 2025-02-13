#include <QAbstractVideoSurface>
#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QIODevice>
#include <QList>
#include <QMediaContent>
#include <QMediaObject>
#include <QMediaPlayer>
#include <QMediaPlaylist>
#include <QMediaService>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qmediaplayer.h>
#include "gen_qmediaplayer.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QMediaPlayer_mediaChanged(intptr_t, QMediaContent*);
void miqt_exec_callback_QMediaPlayer_mediaChanged_release(intptr_t);
void miqt_exec_callback_QMediaPlayer_currentMediaChanged(intptr_t, QMediaContent*);
void miqt_exec_callback_QMediaPlayer_currentMediaChanged_release(intptr_t);
void miqt_exec_callback_QMediaPlayer_stateChanged(intptr_t, int);
void miqt_exec_callback_QMediaPlayer_stateChanged_release(intptr_t);
void miqt_exec_callback_QMediaPlayer_mediaStatusChanged(intptr_t, int);
void miqt_exec_callback_QMediaPlayer_mediaStatusChanged_release(intptr_t);
void miqt_exec_callback_QMediaPlayer_durationChanged(intptr_t, long long);
void miqt_exec_callback_QMediaPlayer_durationChanged_release(intptr_t);
void miqt_exec_callback_QMediaPlayer_positionChanged(intptr_t, long long);
void miqt_exec_callback_QMediaPlayer_positionChanged_release(intptr_t);
void miqt_exec_callback_QMediaPlayer_volumeChanged(intptr_t, int);
void miqt_exec_callback_QMediaPlayer_volumeChanged_release(intptr_t);
void miqt_exec_callback_QMediaPlayer_mutedChanged(intptr_t, bool);
void miqt_exec_callback_QMediaPlayer_mutedChanged_release(intptr_t);
void miqt_exec_callback_QMediaPlayer_audioAvailableChanged(intptr_t, bool);
void miqt_exec_callback_QMediaPlayer_audioAvailableChanged_release(intptr_t);
void miqt_exec_callback_QMediaPlayer_videoAvailableChanged(intptr_t, bool);
void miqt_exec_callback_QMediaPlayer_videoAvailableChanged_release(intptr_t);
void miqt_exec_callback_QMediaPlayer_bufferStatusChanged(intptr_t, int);
void miqt_exec_callback_QMediaPlayer_bufferStatusChanged_release(intptr_t);
void miqt_exec_callback_QMediaPlayer_seekableChanged(intptr_t, bool);
void miqt_exec_callback_QMediaPlayer_seekableChanged_release(intptr_t);
void miqt_exec_callback_QMediaPlayer_playbackRateChanged(intptr_t, double);
void miqt_exec_callback_QMediaPlayer_playbackRateChanged_release(intptr_t);
void miqt_exec_callback_QMediaPlayer_audioRoleChanged(intptr_t, int);
void miqt_exec_callback_QMediaPlayer_audioRoleChanged_release(intptr_t);
void miqt_exec_callback_QMediaPlayer_customAudioRoleChanged(intptr_t, struct miqt_string);
void miqt_exec_callback_QMediaPlayer_customAudioRoleChanged_release(intptr_t);
void miqt_exec_callback_QMediaPlayer_errorWithError(intptr_t, int);
void miqt_exec_callback_QMediaPlayer_errorWithError_release(intptr_t);
void miqt_exec_callback_QMediaPlayer_networkConfigurationChanged(intptr_t, const QNetworkConfiguration*);
void miqt_exec_callback_QMediaPlayer_networkConfigurationChanged_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQMediaPlayer final : public QMediaPlayer {
	struct QMediaPlayer_VTable* vtbl;
public:

	MiqtVirtualQMediaPlayer(struct QMediaPlayer_VTable* vtbl): QMediaPlayer(), vtbl(vtbl) {};
	MiqtVirtualQMediaPlayer(struct QMediaPlayer_VTable* vtbl, QObject* parent): QMediaPlayer(parent), vtbl(vtbl) {};
	MiqtVirtualQMediaPlayer(struct QMediaPlayer_VTable* vtbl, QObject* parent, QMediaPlayer::Flags flags): QMediaPlayer(parent, flags), vtbl(vtbl) {};

	virtual ~MiqtVirtualQMediaPlayer() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMediaPlayer::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QMediaPlayer::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMediaPlayer::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QMediaPlayer::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMediaPlayer::qt_metacall(param1, param2, param3);
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

		return QMediaPlayer::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QMultimedia::AvailabilityStatus availability() const override {
		if (vtbl->availability == 0) {
			return QMediaPlayer::availability();
		}


		int callback_return_value = vtbl->availability(vtbl, this);

		return static_cast<QMultimedia::AvailabilityStatus>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_availability() const {

		QMultimedia::AvailabilityStatus _ret = QMediaPlayer::availability();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool bind(QObject* param1) override {
		if (vtbl->bind == 0) {
			return QMediaPlayer::bind(param1);
		}

		QObject* sigval1 = param1;

		bool callback_return_value = vtbl->bind(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_bind(QObject* param1) {

		return QMediaPlayer::bind(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void unbind(QObject* param1) override {
		if (vtbl->unbind == 0) {
			QMediaPlayer::unbind(param1);
			return;
		}

		QObject* sigval1 = param1;

		vtbl->unbind(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_unbind(QObject* param1) {

		QMediaPlayer::unbind(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isAvailable() const override {
		if (vtbl->isAvailable == 0) {
			return QMediaPlayer::isAvailable();
		}


		bool callback_return_value = vtbl->isAvailable(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isAvailable() const {

		return QMediaPlayer::isAvailable();

	}

	// Subclass to allow providing a Go implementation
	virtual QMediaService* service() const override {
		if (vtbl->service == 0) {
			return QMediaPlayer::service();
		}


		QMediaService* callback_return_value = vtbl->service(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMediaService* virtualbase_service() const {

		return QMediaPlayer::service();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QMediaPlayer::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QMediaPlayer::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMediaPlayer::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QMediaPlayer::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QMediaPlayer::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QMediaPlayer::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QMediaPlayer::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QMediaPlayer::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMediaPlayer::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QMediaPlayer::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMediaPlayer::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QMediaPlayer::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMediaPlayer::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QMediaPlayer::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend void QMediaPlayer_protectedbase_addPropertyWatch(void* self, struct miqt_string name);
	friend void QMediaPlayer_protectedbase_removePropertyWatch(void* self, struct miqt_string name);
	friend QObject* QMediaPlayer_protectedbase_sender(const void* self);
	friend int QMediaPlayer_protectedbase_senderSignalIndex(const void* self);
	friend int QMediaPlayer_protectedbase_receivers(const void* self, const char* signal);
	friend bool QMediaPlayer_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QMediaPlayer* QMediaPlayer_new(struct QMediaPlayer_VTable* vtbl) {
	return new MiqtVirtualQMediaPlayer(vtbl);
}

QMediaPlayer* QMediaPlayer_new2(struct QMediaPlayer_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQMediaPlayer(vtbl, parent);
}

QMediaPlayer* QMediaPlayer_new3(struct QMediaPlayer_VTable* vtbl, QObject* parent, int flags) {
	return new MiqtVirtualQMediaPlayer(vtbl, parent, static_cast<QMediaPlayer::Flags>(flags));
}

void QMediaPlayer_virtbase(QMediaPlayer* src, QMediaObject** outptr_QMediaObject) {
	*outptr_QMediaObject = static_cast<QMediaObject*>(src);
}

QMetaObject* QMediaPlayer_metaObject(const QMediaPlayer* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMediaPlayer_metacast(QMediaPlayer* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMediaPlayer_metacall(QMediaPlayer* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMediaPlayer_tr(const char* s) {
	QString _ret = QMediaPlayer::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaPlayer_trUtf8(const char* s) {
	QString _ret = QMediaPlayer::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QMediaPlayer_hasSupport(struct miqt_string mimeType) {
	QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
	QMultimedia::SupportEstimate _ret = QMediaPlayer::hasSupport(mimeType_QString);
	return static_cast<int>(_ret);
}

struct miqt_array /* of struct miqt_string */  QMediaPlayer_supportedMimeTypes() {
	QStringList _ret = QMediaPlayer::supportedMimeTypes();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QMediaPlayer_setVideoOutput(QMediaPlayer* self, QVideoWidget* videoOutput) {
	self->setVideoOutput(videoOutput);
}

void QMediaPlayer_setVideoOutputWithVideoOutput(QMediaPlayer* self, QGraphicsVideoItem* videoOutput) {
	self->setVideoOutput(videoOutput);
}

void QMediaPlayer_setVideoOutputWithSurface(QMediaPlayer* self, QAbstractVideoSurface* surface) {
	self->setVideoOutput(surface);
}

void QMediaPlayer_setVideoOutputWithSurfaces(QMediaPlayer* self, struct miqt_array /* of QAbstractVideoSurface* */  surfaces) {
	QVector<QAbstractVideoSurface *> surfaces_QList;
	surfaces_QList.reserve(surfaces.len);
	QAbstractVideoSurface** surfaces_arr = static_cast<QAbstractVideoSurface**>(surfaces.data);
	for(size_t i = 0; i < surfaces.len; ++i) {
		surfaces_QList.push_back(surfaces_arr[i]);
	}
	self->setVideoOutput(surfaces_QList);
}

QMediaContent* QMediaPlayer_media(const QMediaPlayer* self) {
	return new QMediaContent(self->media());
}

QIODevice* QMediaPlayer_mediaStream(const QMediaPlayer* self) {
	return (QIODevice*) self->mediaStream();
}

QMediaPlaylist* QMediaPlayer_playlist(const QMediaPlayer* self) {
	return self->playlist();
}

QMediaContent* QMediaPlayer_currentMedia(const QMediaPlayer* self) {
	return new QMediaContent(self->currentMedia());
}

int QMediaPlayer_state(const QMediaPlayer* self) {
	QMediaPlayer::State _ret = self->state();
	return static_cast<int>(_ret);
}

int QMediaPlayer_mediaStatus(const QMediaPlayer* self) {
	QMediaPlayer::MediaStatus _ret = self->mediaStatus();
	return static_cast<int>(_ret);
}

long long QMediaPlayer_duration(const QMediaPlayer* self) {
	qint64 _ret = self->duration();
	return static_cast<long long>(_ret);
}

long long QMediaPlayer_position(const QMediaPlayer* self) {
	qint64 _ret = self->position();
	return static_cast<long long>(_ret);
}

int QMediaPlayer_volume(const QMediaPlayer* self) {
	return self->volume();
}

bool QMediaPlayer_isMuted(const QMediaPlayer* self) {
	return self->isMuted();
}

bool QMediaPlayer_isAudioAvailable(const QMediaPlayer* self) {
	return self->isAudioAvailable();
}

bool QMediaPlayer_isVideoAvailable(const QMediaPlayer* self) {
	return self->isVideoAvailable();
}

int QMediaPlayer_bufferStatus(const QMediaPlayer* self) {
	return self->bufferStatus();
}

bool QMediaPlayer_isSeekable(const QMediaPlayer* self) {
	return self->isSeekable();
}

double QMediaPlayer_playbackRate(const QMediaPlayer* self) {
	qreal _ret = self->playbackRate();
	return static_cast<double>(_ret);
}

int QMediaPlayer_error(const QMediaPlayer* self) {
	QMediaPlayer::Error _ret = self->error();
	return static_cast<int>(_ret);
}

struct miqt_string QMediaPlayer_errorString(const QMediaPlayer* self) {
	QString _ret = self->errorString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QNetworkConfiguration QMediaPlayer_currentNetworkConfiguration(const QMediaPlayer* self) {
	return self->currentNetworkConfiguration();
}

int QMediaPlayer_availability(const QMediaPlayer* self) {
	QMultimedia::AvailabilityStatus _ret = self->availability();
	return static_cast<int>(_ret);
}

int QMediaPlayer_audioRole(const QMediaPlayer* self) {
	QAudio::Role _ret = self->audioRole();
	return static_cast<int>(_ret);
}

void QMediaPlayer_setAudioRole(QMediaPlayer* self, int audioRole) {
	self->setAudioRole(static_cast<QAudio::Role>(audioRole));
}

struct miqt_array /* of int */  QMediaPlayer_supportedAudioRoles(const QMediaPlayer* self) {
	QList<QAudio::Role> _ret = self->supportedAudioRoles();
	// Convert QList<> from C++ memory to manually-managed C memory
	int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QAudio::Role _lv_ret = _ret[i];
		_arr[i] = static_cast<int>(_lv_ret);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_string QMediaPlayer_customAudioRole(const QMediaPlayer* self) {
	QString _ret = self->customAudioRole();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMediaPlayer_setCustomAudioRole(QMediaPlayer* self, struct miqt_string audioRole) {
	QString audioRole_QString = QString::fromUtf8(audioRole.data, audioRole.len);
	self->setCustomAudioRole(audioRole_QString);
}

struct miqt_array /* of struct miqt_string */  QMediaPlayer_supportedCustomAudioRoles(const QMediaPlayer* self) {
	QStringList _ret = self->supportedCustomAudioRoles();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QMediaPlayer_play(QMediaPlayer* self) {
	self->play();
}

void QMediaPlayer_pause(QMediaPlayer* self) {
	self->pause();
}

void QMediaPlayer_stop(QMediaPlayer* self) {
	self->stop();
}

void QMediaPlayer_setPosition(QMediaPlayer* self, long long position) {
	self->setPosition(static_cast<qint64>(position));
}

void QMediaPlayer_setVolume(QMediaPlayer* self, int volume) {
	self->setVolume(static_cast<int>(volume));
}

void QMediaPlayer_setMuted(QMediaPlayer* self, bool muted) {
	self->setMuted(muted);
}

void QMediaPlayer_setPlaybackRate(QMediaPlayer* self, double rate) {
	self->setPlaybackRate(static_cast<qreal>(rate));
}

void QMediaPlayer_setMedia(QMediaPlayer* self, QMediaContent* media) {
	self->setMedia(*media);
}

void QMediaPlayer_setPlaylist(QMediaPlayer* self, QMediaPlaylist* playlist) {
	self->setPlaylist(playlist);
}

void QMediaPlayer_setNetworkConfigurations(QMediaPlayer* self, struct miqt_array /* of QNetworkConfiguration */  configurations) {
	QList<QNetworkConfiguration> configurations_QList;
	configurations_QList.reserve(configurations.len);
	QNetworkConfiguration* configurations_arr = static_cast<QNetworkConfiguration*>(configurations.data);
	for(size_t i = 0; i < configurations.len; ++i) {
		configurations_QList.push_back(configurations_arr[i]);
	}
	self->setNetworkConfigurations(configurations_QList);
}

void QMediaPlayer_mediaChanged(QMediaPlayer* self, QMediaContent* media) {
	self->mediaChanged(*media);
}

void QMediaPlayer_connect_mediaChanged(QMediaPlayer* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QMediaContent& media) {
			const QMediaContent& media_ret = media;
			// Cast returned reference into pointer
			QMediaContent* sigval1 = const_cast<QMediaContent*>(&media_ret);
			miqt_exec_callback_QMediaPlayer_mediaChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaPlayer_mediaChanged_release(slot); }
	};
	MiqtVirtualQMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(const QMediaContent&)>(&QMediaPlayer::mediaChanged), self, caller{slot});
}

void QMediaPlayer_currentMediaChanged(QMediaPlayer* self, QMediaContent* media) {
	self->currentMediaChanged(*media);
}

void QMediaPlayer_connect_currentMediaChanged(QMediaPlayer* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QMediaContent& media) {
			const QMediaContent& media_ret = media;
			// Cast returned reference into pointer
			QMediaContent* sigval1 = const_cast<QMediaContent*>(&media_ret);
			miqt_exec_callback_QMediaPlayer_currentMediaChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaPlayer_currentMediaChanged_release(slot); }
	};
	MiqtVirtualQMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(const QMediaContent&)>(&QMediaPlayer::currentMediaChanged), self, caller{slot});
}

void QMediaPlayer_stateChanged(QMediaPlayer* self, int newState) {
	self->stateChanged(static_cast<QMediaPlayer::State>(newState));
}

void QMediaPlayer_connect_stateChanged(QMediaPlayer* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QMediaPlayer::State newState) {
			QMediaPlayer::State newState_ret = newState;
			int sigval1 = static_cast<int>(newState_ret);
			miqt_exec_callback_QMediaPlayer_stateChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaPlayer_stateChanged_release(slot); }
	};
	MiqtVirtualQMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(QMediaPlayer::State)>(&QMediaPlayer::stateChanged), self, caller{slot});
}

void QMediaPlayer_mediaStatusChanged(QMediaPlayer* self, int status) {
	self->mediaStatusChanged(static_cast<QMediaPlayer::MediaStatus>(status));
}

void QMediaPlayer_connect_mediaStatusChanged(QMediaPlayer* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QMediaPlayer::MediaStatus status) {
			QMediaPlayer::MediaStatus status_ret = status;
			int sigval1 = static_cast<int>(status_ret);
			miqt_exec_callback_QMediaPlayer_mediaStatusChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaPlayer_mediaStatusChanged_release(slot); }
	};
	MiqtVirtualQMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(QMediaPlayer::MediaStatus)>(&QMediaPlayer::mediaStatusChanged), self, caller{slot});
}

void QMediaPlayer_durationChanged(QMediaPlayer* self, long long duration) {
	self->durationChanged(static_cast<qint64>(duration));
}

void QMediaPlayer_connect_durationChanged(QMediaPlayer* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(qint64 duration) {
			qint64 duration_ret = duration;
			long long sigval1 = static_cast<long long>(duration_ret);
			miqt_exec_callback_QMediaPlayer_durationChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaPlayer_durationChanged_release(slot); }
	};
	MiqtVirtualQMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(qint64)>(&QMediaPlayer::durationChanged), self, caller{slot});
}

void QMediaPlayer_positionChanged(QMediaPlayer* self, long long position) {
	self->positionChanged(static_cast<qint64>(position));
}

void QMediaPlayer_connect_positionChanged(QMediaPlayer* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(qint64 position) {
			qint64 position_ret = position;
			long long sigval1 = static_cast<long long>(position_ret);
			miqt_exec_callback_QMediaPlayer_positionChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaPlayer_positionChanged_release(slot); }
	};
	MiqtVirtualQMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(qint64)>(&QMediaPlayer::positionChanged), self, caller{slot});
}

void QMediaPlayer_volumeChanged(QMediaPlayer* self, int volume) {
	self->volumeChanged(static_cast<int>(volume));
}

void QMediaPlayer_connect_volumeChanged(QMediaPlayer* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(int volume) {
			int sigval1 = volume;
			miqt_exec_callback_QMediaPlayer_volumeChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaPlayer_volumeChanged_release(slot); }
	};
	MiqtVirtualQMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(int)>(&QMediaPlayer::volumeChanged), self, caller{slot});
}

void QMediaPlayer_mutedChanged(QMediaPlayer* self, bool muted) {
	self->mutedChanged(muted);
}

void QMediaPlayer_connect_mutedChanged(QMediaPlayer* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(bool muted) {
			bool sigval1 = muted;
			miqt_exec_callback_QMediaPlayer_mutedChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaPlayer_mutedChanged_release(slot); }
	};
	MiqtVirtualQMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(bool)>(&QMediaPlayer::mutedChanged), self, caller{slot});
}

void QMediaPlayer_audioAvailableChanged(QMediaPlayer* self, bool available) {
	self->audioAvailableChanged(available);
}

void QMediaPlayer_connect_audioAvailableChanged(QMediaPlayer* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(bool available) {
			bool sigval1 = available;
			miqt_exec_callback_QMediaPlayer_audioAvailableChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaPlayer_audioAvailableChanged_release(slot); }
	};
	MiqtVirtualQMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(bool)>(&QMediaPlayer::audioAvailableChanged), self, caller{slot});
}

void QMediaPlayer_videoAvailableChanged(QMediaPlayer* self, bool videoAvailable) {
	self->videoAvailableChanged(videoAvailable);
}

void QMediaPlayer_connect_videoAvailableChanged(QMediaPlayer* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(bool videoAvailable) {
			bool sigval1 = videoAvailable;
			miqt_exec_callback_QMediaPlayer_videoAvailableChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaPlayer_videoAvailableChanged_release(slot); }
	};
	MiqtVirtualQMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(bool)>(&QMediaPlayer::videoAvailableChanged), self, caller{slot});
}

void QMediaPlayer_bufferStatusChanged(QMediaPlayer* self, int percentFilled) {
	self->bufferStatusChanged(static_cast<int>(percentFilled));
}

void QMediaPlayer_connect_bufferStatusChanged(QMediaPlayer* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(int percentFilled) {
			int sigval1 = percentFilled;
			miqt_exec_callback_QMediaPlayer_bufferStatusChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaPlayer_bufferStatusChanged_release(slot); }
	};
	MiqtVirtualQMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(int)>(&QMediaPlayer::bufferStatusChanged), self, caller{slot});
}

void QMediaPlayer_seekableChanged(QMediaPlayer* self, bool seekable) {
	self->seekableChanged(seekable);
}

void QMediaPlayer_connect_seekableChanged(QMediaPlayer* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(bool seekable) {
			bool sigval1 = seekable;
			miqt_exec_callback_QMediaPlayer_seekableChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaPlayer_seekableChanged_release(slot); }
	};
	MiqtVirtualQMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(bool)>(&QMediaPlayer::seekableChanged), self, caller{slot});
}

void QMediaPlayer_playbackRateChanged(QMediaPlayer* self, double rate) {
	self->playbackRateChanged(static_cast<qreal>(rate));
}

void QMediaPlayer_connect_playbackRateChanged(QMediaPlayer* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(qreal rate) {
			qreal rate_ret = rate;
			double sigval1 = static_cast<double>(rate_ret);
			miqt_exec_callback_QMediaPlayer_playbackRateChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaPlayer_playbackRateChanged_release(slot); }
	};
	MiqtVirtualQMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(qreal)>(&QMediaPlayer::playbackRateChanged), self, caller{slot});
}

void QMediaPlayer_audioRoleChanged(QMediaPlayer* self, int role) {
	self->audioRoleChanged(static_cast<QAudio::Role>(role));
}

void QMediaPlayer_connect_audioRoleChanged(QMediaPlayer* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QAudio::Role role) {
			QAudio::Role role_ret = role;
			int sigval1 = static_cast<int>(role_ret);
			miqt_exec_callback_QMediaPlayer_audioRoleChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaPlayer_audioRoleChanged_release(slot); }
	};
	MiqtVirtualQMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(QAudio::Role)>(&QMediaPlayer::audioRoleChanged), self, caller{slot});
}

void QMediaPlayer_customAudioRoleChanged(QMediaPlayer* self, struct miqt_string role) {
	QString role_QString = QString::fromUtf8(role.data, role.len);
	self->customAudioRoleChanged(role_QString);
}

void QMediaPlayer_connect_customAudioRoleChanged(QMediaPlayer* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QString& role) {
			const QString role_ret = role;
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray role_b = role_ret.toUtf8();
			struct miqt_string role_ms;
			role_ms.len = role_b.length();
			role_ms.data = static_cast<char*>(malloc(role_ms.len));
			memcpy(role_ms.data, role_b.data(), role_ms.len);
			struct miqt_string sigval1 = role_ms;
			miqt_exec_callback_QMediaPlayer_customAudioRoleChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaPlayer_customAudioRoleChanged_release(slot); }
	};
	MiqtVirtualQMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(const QString&)>(&QMediaPlayer::customAudioRoleChanged), self, caller{slot});
}

void QMediaPlayer_errorWithError(QMediaPlayer* self, int error) {
	self->error(static_cast<QMediaPlayer::Error>(error));
}

void QMediaPlayer_connect_errorWithError(QMediaPlayer* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QMediaPlayer::Error error) {
			QMediaPlayer::Error error_ret = error;
			int sigval1 = static_cast<int>(error_ret);
			miqt_exec_callback_QMediaPlayer_errorWithError(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaPlayer_errorWithError_release(slot); }
	};
	MiqtVirtualQMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(QMediaPlayer::Error)>(&QMediaPlayer::error), self, caller{slot});
}

void QMediaPlayer_networkConfigurationChanged(QMediaPlayer* self, const QNetworkConfiguration* configuration) {
	self->networkConfigurationChanged(*configuration);
}

void QMediaPlayer_connect_networkConfigurationChanged(QMediaPlayer* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QNetworkConfiguration& configuration) {
			const QNetworkConfiguration* sigval1 = (const QNetworkConfiguration*) configuration;
			miqt_exec_callback_QMediaPlayer_networkConfigurationChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaPlayer_networkConfigurationChanged_release(slot); }
	};
	MiqtVirtualQMediaPlayer::connect(self, static_cast<void (QMediaPlayer::*)(const QNetworkConfiguration&)>(&QMediaPlayer::networkConfigurationChanged), self, caller{slot});
}

bool QMediaPlayer_bind(QMediaPlayer* self, QObject* param1) {
	return self->bind(param1);
}

void QMediaPlayer_unbind(QMediaPlayer* self, QObject* param1) {
	self->unbind(param1);
}

struct miqt_string QMediaPlayer_tr2(const char* s, const char* c) {
	QString _ret = QMediaPlayer::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaPlayer_tr3(const char* s, const char* c, int n) {
	QString _ret = QMediaPlayer::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaPlayer_trUtf82(const char* s, const char* c) {
	QString _ret = QMediaPlayer::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaPlayer_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QMediaPlayer::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QMediaPlayer_hasSupport2(struct miqt_string mimeType, struct miqt_array /* of struct miqt_string */  codecs) {
	QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
	QStringList codecs_QList;
	codecs_QList.reserve(codecs.len);
	struct miqt_string* codecs_arr = static_cast<struct miqt_string*>(codecs.data);
	for(size_t i = 0; i < codecs.len; ++i) {
		QString codecs_arr_i_QString = QString::fromUtf8(codecs_arr[i].data, codecs_arr[i].len);
		codecs_QList.push_back(codecs_arr_i_QString);
	}
	QMultimedia::SupportEstimate _ret = QMediaPlayer::hasSupport(mimeType_QString, codecs_QList);
	return static_cast<int>(_ret);
}

int QMediaPlayer_hasSupport3(struct miqt_string mimeType, struct miqt_array /* of struct miqt_string */  codecs, int flags) {
	QString mimeType_QString = QString::fromUtf8(mimeType.data, mimeType.len);
	QStringList codecs_QList;
	codecs_QList.reserve(codecs.len);
	struct miqt_string* codecs_arr = static_cast<struct miqt_string*>(codecs.data);
	for(size_t i = 0; i < codecs.len; ++i) {
		QString codecs_arr_i_QString = QString::fromUtf8(codecs_arr[i].data, codecs_arr[i].len);
		codecs_QList.push_back(codecs_arr_i_QString);
	}
	QMultimedia::SupportEstimate _ret = QMediaPlayer::hasSupport(mimeType_QString, codecs_QList, static_cast<QMediaPlayer::Flags>(flags));
	return static_cast<int>(_ret);
}

struct miqt_array /* of struct miqt_string */  QMediaPlayer_supportedMimeTypes1(int flags) {
	QStringList _ret = QMediaPlayer::supportedMimeTypes(static_cast<QMediaPlayer::Flags>(flags));
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_string* _arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QString _lv_ret = _ret[i];
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _lv_b = _lv_ret.toUtf8();
		struct miqt_string _lv_ms;
		_lv_ms.len = _lv_b.length();
		_lv_ms.data = static_cast<char*>(malloc(_lv_ms.len));
		memcpy(_lv_ms.data, _lv_b.data(), _lv_ms.len);
		_arr[i] = _lv_ms;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QMediaPlayer_setMedia2(QMediaPlayer* self, QMediaContent* media, QIODevice* stream) {
	self->setMedia(*media, stream);
}

QMetaObject* QMediaPlayer_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQMediaPlayer*)(self) )->virtualbase_metaObject();
}

void* QMediaPlayer_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQMediaPlayer*)(self) )->virtualbase_metacast(param1);
}

int QMediaPlayer_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQMediaPlayer*)(self) )->virtualbase_metacall(param1, param2, param3);
}

int QMediaPlayer_virtualbase_availability(const void* self) {
	return ( (const MiqtVirtualQMediaPlayer*)(self) )->virtualbase_availability();
}

bool QMediaPlayer_virtualbase_bind(void* self, QObject* param1) {
	return ( (MiqtVirtualQMediaPlayer*)(self) )->virtualbase_bind(param1);
}

void QMediaPlayer_virtualbase_unbind(void* self, QObject* param1) {
	( (MiqtVirtualQMediaPlayer*)(self) )->virtualbase_unbind(param1);
}

bool QMediaPlayer_virtualbase_isAvailable(const void* self) {
	return ( (const MiqtVirtualQMediaPlayer*)(self) )->virtualbase_isAvailable();
}

QMediaService* QMediaPlayer_virtualbase_service(const void* self) {
	return ( (const MiqtVirtualQMediaPlayer*)(self) )->virtualbase_service();
}

bool QMediaPlayer_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQMediaPlayer*)(self) )->virtualbase_event(event);
}

bool QMediaPlayer_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQMediaPlayer*)(self) )->virtualbase_eventFilter(watched, event);
}

void QMediaPlayer_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQMediaPlayer*)(self) )->virtualbase_timerEvent(event);
}

void QMediaPlayer_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQMediaPlayer*)(self) )->virtualbase_childEvent(event);
}

void QMediaPlayer_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQMediaPlayer*)(self) )->virtualbase_customEvent(event);
}

void QMediaPlayer_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQMediaPlayer*)(self) )->virtualbase_connectNotify(signal);
}

void QMediaPlayer_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQMediaPlayer*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QMediaPlayer_staticMetaObject() { return &QMediaPlayer::staticMetaObject; }
void QMediaPlayer_protectedbase_addPropertyWatch(void* self, struct miqt_string name) {
	MiqtVirtualQMediaPlayer* self_cast = static_cast<MiqtVirtualQMediaPlayer*>( (QMediaPlayer*)(self) );
			QByteArray name_QByteArray(name.data, name.len);

	self_cast->addPropertyWatch(name_QByteArray);

}

void QMediaPlayer_protectedbase_removePropertyWatch(void* self, struct miqt_string name) {
	MiqtVirtualQMediaPlayer* self_cast = static_cast<MiqtVirtualQMediaPlayer*>( (QMediaPlayer*)(self) );
			QByteArray name_QByteArray(name.data, name.len);

	self_cast->removePropertyWatch(name_QByteArray);

}

QObject* QMediaPlayer_protectedbase_sender(const void* self) {
	MiqtVirtualQMediaPlayer* self_cast = static_cast<MiqtVirtualQMediaPlayer*>( (QMediaPlayer*)(self) );
	
	return self_cast->sender();

}

int QMediaPlayer_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQMediaPlayer* self_cast = static_cast<MiqtVirtualQMediaPlayer*>( (QMediaPlayer*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QMediaPlayer_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQMediaPlayer* self_cast = static_cast<MiqtVirtualQMediaPlayer*>( (QMediaPlayer*)(self) );
	
	return self_cast->receivers(signal);

}

bool QMediaPlayer_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQMediaPlayer* self_cast = static_cast<MiqtVirtualQMediaPlayer*>( (QMediaPlayer*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QMediaPlayer_delete(QMediaPlayer* self) {
	delete self;
}

