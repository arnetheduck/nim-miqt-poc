#include <QAudioDevice>
#include <QCameraDevice>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMediaDevices>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qmediadevices.h>
#include "gen_qmediadevices.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QMediaDevices_audioInputsChanged(intptr_t);
void miqt_exec_callback_QMediaDevices_audioInputsChanged_release(intptr_t);
void miqt_exec_callback_QMediaDevices_audioOutputsChanged(intptr_t);
void miqt_exec_callback_QMediaDevices_audioOutputsChanged_release(intptr_t);
void miqt_exec_callback_QMediaDevices_videoInputsChanged(intptr_t);
void miqt_exec_callback_QMediaDevices_videoInputsChanged_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQMediaDevices final : public QMediaDevices {
	struct QMediaDevices_VTable* vtbl;
public:

	MiqtVirtualQMediaDevices(struct QMediaDevices_VTable* vtbl): QMediaDevices(), vtbl(vtbl) {};
	MiqtVirtualQMediaDevices(struct QMediaDevices_VTable* vtbl, QObject* parent): QMediaDevices(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQMediaDevices() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMediaDevices::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QMediaDevices::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMediaDevices::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QMediaDevices::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMediaDevices::qt_metacall(param1, param2, param3);
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

		return QMediaDevices::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QMediaDevices::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QMediaDevices::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMediaDevices::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QMediaDevices::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QMediaDevices::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QMediaDevices::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QMediaDevices::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QMediaDevices::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMediaDevices::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QMediaDevices::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMediaDevices::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QMediaDevices::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMediaDevices::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QMediaDevices::disconnectNotify(*signal);

	}

};

QMediaDevices* QMediaDevices_new(struct QMediaDevices_VTable* vtbl) {
	return new MiqtVirtualQMediaDevices(vtbl);
}

QMediaDevices* QMediaDevices_new2(struct QMediaDevices_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQMediaDevices(vtbl, parent);
}

void QMediaDevices_virtbase(QMediaDevices* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QMediaDevices_metaObject(const QMediaDevices* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMediaDevices_metacast(QMediaDevices* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMediaDevices_metacall(QMediaDevices* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMediaDevices_tr(const char* s) {
	QString _ret = QMediaDevices::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of QAudioDevice* */  QMediaDevices_audioInputs() {
	QList<QAudioDevice> _ret = QMediaDevices::audioInputs();
	// Convert QList<> from C++ memory to manually-managed C memory
	QAudioDevice** _arr = static_cast<QAudioDevice**>(malloc(sizeof(QAudioDevice*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QAudioDevice(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QAudioDevice* */  QMediaDevices_audioOutputs() {
	QList<QAudioDevice> _ret = QMediaDevices::audioOutputs();
	// Convert QList<> from C++ memory to manually-managed C memory
	QAudioDevice** _arr = static_cast<QAudioDevice**>(malloc(sizeof(QAudioDevice*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QAudioDevice(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QCameraDevice* */  QMediaDevices_videoInputs() {
	QList<QCameraDevice> _ret = QMediaDevices::videoInputs();
	// Convert QList<> from C++ memory to manually-managed C memory
	QCameraDevice** _arr = static_cast<QCameraDevice**>(malloc(sizeof(QCameraDevice*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QCameraDevice(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

QAudioDevice* QMediaDevices_defaultAudioInput() {
	return new QAudioDevice(QMediaDevices::defaultAudioInput());
}

QAudioDevice* QMediaDevices_defaultAudioOutput() {
	return new QAudioDevice(QMediaDevices::defaultAudioOutput());
}

QCameraDevice* QMediaDevices_defaultVideoInput() {
	return new QCameraDevice(QMediaDevices::defaultVideoInput());
}

void QMediaDevices_audioInputsChanged(QMediaDevices* self) {
	self->audioInputsChanged();
}

void QMediaDevices_connect_audioInputsChanged(QMediaDevices* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QMediaDevices_audioInputsChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaDevices_audioInputsChanged_release(slot); }
	};
	MiqtVirtualQMediaDevices::connect(self, static_cast<void (QMediaDevices::*)()>(&QMediaDevices::audioInputsChanged), self, caller{slot});
}

void QMediaDevices_audioOutputsChanged(QMediaDevices* self) {
	self->audioOutputsChanged();
}

void QMediaDevices_connect_audioOutputsChanged(QMediaDevices* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QMediaDevices_audioOutputsChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaDevices_audioOutputsChanged_release(slot); }
	};
	MiqtVirtualQMediaDevices::connect(self, static_cast<void (QMediaDevices::*)()>(&QMediaDevices::audioOutputsChanged), self, caller{slot});
}

void QMediaDevices_videoInputsChanged(QMediaDevices* self) {
	self->videoInputsChanged();
}

void QMediaDevices_connect_videoInputsChanged(QMediaDevices* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QMediaDevices_videoInputsChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QMediaDevices_videoInputsChanged_release(slot); }
	};
	MiqtVirtualQMediaDevices::connect(self, static_cast<void (QMediaDevices::*)()>(&QMediaDevices::videoInputsChanged), self, caller{slot});
}

struct miqt_string QMediaDevices_tr2(const char* s, const char* c) {
	QString _ret = QMediaDevices::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMediaDevices_tr3(const char* s, const char* c, int n) {
	QString _ret = QMediaDevices::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QMediaDevices_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQMediaDevices*)(self) )->virtualbase_metaObject();
}

void* QMediaDevices_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQMediaDevices*)(self) )->virtualbase_metacast(param1);
}

int QMediaDevices_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQMediaDevices*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QMediaDevices_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQMediaDevices*)(self) )->virtualbase_event(event);
}

bool QMediaDevices_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQMediaDevices*)(self) )->virtualbase_eventFilter(watched, event);
}

void QMediaDevices_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQMediaDevices*)(self) )->virtualbase_timerEvent(event);
}

void QMediaDevices_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQMediaDevices*)(self) )->virtualbase_childEvent(event);
}

void QMediaDevices_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQMediaDevices*)(self) )->virtualbase_customEvent(event);
}

void QMediaDevices_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQMediaDevices*)(self) )->virtualbase_connectNotify(signal);
}

void QMediaDevices_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQMediaDevices*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QMediaDevices_staticMetaObject() { return &QMediaDevices::staticMetaObject; }
void QMediaDevices_delete(QMediaDevices* self) {
	delete self;
}

