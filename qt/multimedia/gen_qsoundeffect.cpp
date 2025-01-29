#include <QAudioDeviceInfo>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QSoundEffect>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <qsoundeffect.h>
#include "gen_qsoundeffect.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QSoundEffect_sourceChanged(intptr_t);
void miqt_exec_callback_QSoundEffect_sourceChanged_release(intptr_t);
void miqt_exec_callback_QSoundEffect_loopCountChanged(intptr_t);
void miqt_exec_callback_QSoundEffect_loopCountChanged_release(intptr_t);
void miqt_exec_callback_QSoundEffect_loopsRemainingChanged(intptr_t);
void miqt_exec_callback_QSoundEffect_loopsRemainingChanged_release(intptr_t);
void miqt_exec_callback_QSoundEffect_volumeChanged(intptr_t);
void miqt_exec_callback_QSoundEffect_volumeChanged_release(intptr_t);
void miqt_exec_callback_QSoundEffect_mutedChanged(intptr_t);
void miqt_exec_callback_QSoundEffect_mutedChanged_release(intptr_t);
void miqt_exec_callback_QSoundEffect_loadedChanged(intptr_t);
void miqt_exec_callback_QSoundEffect_loadedChanged_release(intptr_t);
void miqt_exec_callback_QSoundEffect_playingChanged(intptr_t);
void miqt_exec_callback_QSoundEffect_playingChanged_release(intptr_t);
void miqt_exec_callback_QSoundEffect_statusChanged(intptr_t);
void miqt_exec_callback_QSoundEffect_statusChanged_release(intptr_t);
void miqt_exec_callback_QSoundEffect_categoryChanged(intptr_t);
void miqt_exec_callback_QSoundEffect_categoryChanged_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQSoundEffect final : public QSoundEffect {
	struct QSoundEffect_VTable* vtbl;
public:

	MiqtVirtualQSoundEffect(struct QSoundEffect_VTable* vtbl): QSoundEffect(), vtbl(vtbl) {};
	MiqtVirtualQSoundEffect(struct QSoundEffect_VTable* vtbl, const QAudioDeviceInfo& audioDevice): QSoundEffect(audioDevice), vtbl(vtbl) {};
	MiqtVirtualQSoundEffect(struct QSoundEffect_VTable* vtbl, QObject* parent): QSoundEffect(parent), vtbl(vtbl) {};
	MiqtVirtualQSoundEffect(struct QSoundEffect_VTable* vtbl, const QAudioDeviceInfo& audioDevice, QObject* parent): QSoundEffect(audioDevice, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSoundEffect() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSoundEffect::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QSoundEffect::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSoundEffect::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QSoundEffect::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSoundEffect::qt_metacall(param1, param2, param3);
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

		return QSoundEffect::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSoundEffect::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QSoundEffect::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSoundEffect::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QSoundEffect::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSoundEffect::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QSoundEffect::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSoundEffect::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QSoundEffect::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSoundEffect::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QSoundEffect::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSoundEffect::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QSoundEffect::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSoundEffect::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QSoundEffect::disconnectNotify(*signal);

	}

};

QSoundEffect* QSoundEffect_new(struct QSoundEffect_VTable* vtbl) {
	return new MiqtVirtualQSoundEffect(vtbl);
}

QSoundEffect* QSoundEffect_new2(struct QSoundEffect_VTable* vtbl, QAudioDeviceInfo* audioDevice) {
	return new MiqtVirtualQSoundEffect(vtbl, *audioDevice);
}

QSoundEffect* QSoundEffect_new3(struct QSoundEffect_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQSoundEffect(vtbl, parent);
}

QSoundEffect* QSoundEffect_new4(struct QSoundEffect_VTable* vtbl, QAudioDeviceInfo* audioDevice, QObject* parent) {
	return new MiqtVirtualQSoundEffect(vtbl, *audioDevice, parent);
}

void QSoundEffect_virtbase(QSoundEffect* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QSoundEffect_metaObject(const QSoundEffect* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSoundEffect_metacast(QSoundEffect* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSoundEffect_metacall(QSoundEffect* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSoundEffect_tr(const char* s) {
	QString _ret = QSoundEffect::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSoundEffect_trUtf8(const char* s) {
	QString _ret = QSoundEffect::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of struct miqt_string */  QSoundEffect_supportedMimeTypes() {
	QStringList _ret = QSoundEffect::supportedMimeTypes();
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

QUrl* QSoundEffect_source(const QSoundEffect* self) {
	return new QUrl(self->source());
}

void QSoundEffect_setSource(QSoundEffect* self, QUrl* url) {
	self->setSource(*url);
}

int QSoundEffect_loopCount(const QSoundEffect* self) {
	return self->loopCount();
}

int QSoundEffect_loopsRemaining(const QSoundEffect* self) {
	return self->loopsRemaining();
}

void QSoundEffect_setLoopCount(QSoundEffect* self, int loopCount) {
	self->setLoopCount(static_cast<int>(loopCount));
}

double QSoundEffect_volume(const QSoundEffect* self) {
	qreal _ret = self->volume();
	return static_cast<double>(_ret);
}

void QSoundEffect_setVolume(QSoundEffect* self, double volume) {
	self->setVolume(static_cast<qreal>(volume));
}

bool QSoundEffect_isMuted(const QSoundEffect* self) {
	return self->isMuted();
}

void QSoundEffect_setMuted(QSoundEffect* self, bool muted) {
	self->setMuted(muted);
}

bool QSoundEffect_isLoaded(const QSoundEffect* self) {
	return self->isLoaded();
}

bool QSoundEffect_isPlaying(const QSoundEffect* self) {
	return self->isPlaying();
}

int QSoundEffect_status(const QSoundEffect* self) {
	QSoundEffect::Status _ret = self->status();
	return static_cast<int>(_ret);
}

struct miqt_string QSoundEffect_category(const QSoundEffect* self) {
	QString _ret = self->category();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSoundEffect_setCategory(QSoundEffect* self, struct miqt_string category) {
	QString category_QString = QString::fromUtf8(category.data, category.len);
	self->setCategory(category_QString);
}

void QSoundEffect_sourceChanged(QSoundEffect* self) {
	self->sourceChanged();
}

void QSoundEffect_connect_sourceChanged(QSoundEffect* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QSoundEffect_sourceChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QSoundEffect_sourceChanged_release(slot); }
	};
	MiqtVirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::sourceChanged), self, caller{slot});
}

void QSoundEffect_loopCountChanged(QSoundEffect* self) {
	self->loopCountChanged();
}

void QSoundEffect_connect_loopCountChanged(QSoundEffect* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QSoundEffect_loopCountChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QSoundEffect_loopCountChanged_release(slot); }
	};
	MiqtVirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::loopCountChanged), self, caller{slot});
}

void QSoundEffect_loopsRemainingChanged(QSoundEffect* self) {
	self->loopsRemainingChanged();
}

void QSoundEffect_connect_loopsRemainingChanged(QSoundEffect* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QSoundEffect_loopsRemainingChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QSoundEffect_loopsRemainingChanged_release(slot); }
	};
	MiqtVirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::loopsRemainingChanged), self, caller{slot});
}

void QSoundEffect_volumeChanged(QSoundEffect* self) {
	self->volumeChanged();
}

void QSoundEffect_connect_volumeChanged(QSoundEffect* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QSoundEffect_volumeChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QSoundEffect_volumeChanged_release(slot); }
	};
	MiqtVirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::volumeChanged), self, caller{slot});
}

void QSoundEffect_mutedChanged(QSoundEffect* self) {
	self->mutedChanged();
}

void QSoundEffect_connect_mutedChanged(QSoundEffect* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QSoundEffect_mutedChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QSoundEffect_mutedChanged_release(slot); }
	};
	MiqtVirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::mutedChanged), self, caller{slot});
}

void QSoundEffect_loadedChanged(QSoundEffect* self) {
	self->loadedChanged();
}

void QSoundEffect_connect_loadedChanged(QSoundEffect* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QSoundEffect_loadedChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QSoundEffect_loadedChanged_release(slot); }
	};
	MiqtVirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::loadedChanged), self, caller{slot});
}

void QSoundEffect_playingChanged(QSoundEffect* self) {
	self->playingChanged();
}

void QSoundEffect_connect_playingChanged(QSoundEffect* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QSoundEffect_playingChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QSoundEffect_playingChanged_release(slot); }
	};
	MiqtVirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::playingChanged), self, caller{slot});
}

void QSoundEffect_statusChanged(QSoundEffect* self) {
	self->statusChanged();
}

void QSoundEffect_connect_statusChanged(QSoundEffect* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QSoundEffect_statusChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QSoundEffect_statusChanged_release(slot); }
	};
	MiqtVirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::statusChanged), self, caller{slot});
}

void QSoundEffect_categoryChanged(QSoundEffect* self) {
	self->categoryChanged();
}

void QSoundEffect_connect_categoryChanged(QSoundEffect* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QSoundEffect_categoryChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QSoundEffect_categoryChanged_release(slot); }
	};
	MiqtVirtualQSoundEffect::connect(self, static_cast<void (QSoundEffect::*)()>(&QSoundEffect::categoryChanged), self, caller{slot});
}

void QSoundEffect_play(QSoundEffect* self) {
	self->play();
}

void QSoundEffect_stop(QSoundEffect* self) {
	self->stop();
}

struct miqt_string QSoundEffect_tr2(const char* s, const char* c) {
	QString _ret = QSoundEffect::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSoundEffect_tr3(const char* s, const char* c, int n) {
	QString _ret = QSoundEffect::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSoundEffect_trUtf82(const char* s, const char* c) {
	QString _ret = QSoundEffect::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSoundEffect_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QSoundEffect::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSoundEffect_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQSoundEffect*)(self) )->virtualbase_metaObject();
}

void* QSoundEffect_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQSoundEffect*)(self) )->virtualbase_metacast(param1);
}

int QSoundEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQSoundEffect*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QSoundEffect_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQSoundEffect*)(self) )->virtualbase_event(event);
}

bool QSoundEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQSoundEffect*)(self) )->virtualbase_eventFilter(watched, event);
}

void QSoundEffect_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQSoundEffect*)(self) )->virtualbase_timerEvent(event);
}

void QSoundEffect_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQSoundEffect*)(self) )->virtualbase_childEvent(event);
}

void QSoundEffect_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSoundEffect*)(self) )->virtualbase_customEvent(event);
}

void QSoundEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSoundEffect*)(self) )->virtualbase_connectNotify(signal);
}

void QSoundEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSoundEffect*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QSoundEffect_staticMetaObject() { return &QSoundEffect::staticMetaObject; }
void QSoundEffect_delete(QSoundEffect* self) {
	delete self;
}

