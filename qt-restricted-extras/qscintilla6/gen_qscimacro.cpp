#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qscimacro.h>
#include "gen_qscimacro.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQsciMacro final : public QsciMacro {
	struct QsciMacro_VTable* vtbl;
public:

	MiqtVirtualQsciMacro(struct QsciMacro_VTable* vtbl, QsciScintilla* parent): QsciMacro(parent), vtbl(vtbl) {};
	MiqtVirtualQsciMacro(struct QsciMacro_VTable* vtbl, const QString& asc, QsciScintilla* parent): QsciMacro(asc, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQsciMacro() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QsciMacro::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QsciMacro::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QsciMacro::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QsciMacro::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QsciMacro::qt_metacall(param1, param2, param3);
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

		return QsciMacro::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void play() override {
		if (vtbl->play == 0) {
			QsciMacro::play();
			return;
		}


		vtbl->play(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_play() {

		QsciMacro::play();

	}

	// Subclass to allow providing a Go implementation
	virtual void startRecording() override {
		if (vtbl->startRecording == 0) {
			QsciMacro::startRecording();
			return;
		}


		vtbl->startRecording(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_startRecording() {

		QsciMacro::startRecording();

	}

	// Subclass to allow providing a Go implementation
	virtual void endRecording() override {
		if (vtbl->endRecording == 0) {
			QsciMacro::endRecording();
			return;
		}


		vtbl->endRecording(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_endRecording() {

		QsciMacro::endRecording();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QsciMacro::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QsciMacro::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QsciMacro::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QsciMacro::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QsciMacro::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QsciMacro::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QsciMacro::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QsciMacro::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QsciMacro::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QsciMacro::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QsciMacro::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QsciMacro::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QsciMacro::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QsciMacro::disconnectNotify(*signal);

	}

};

QsciMacro* QsciMacro_new(struct QsciMacro_VTable* vtbl, QsciScintilla* parent) {
	return new MiqtVirtualQsciMacro(vtbl, parent);
}

QsciMacro* QsciMacro_new2(struct QsciMacro_VTable* vtbl, struct miqt_string asc, QsciScintilla* parent) {
	QString asc_QString = QString::fromUtf8(asc.data, asc.len);
	return new MiqtVirtualQsciMacro(vtbl, asc_QString, parent);
}

void QsciMacro_virtbase(QsciMacro* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QsciMacro_metaObject(const QsciMacro* self) {
	return (QMetaObject*) self->metaObject();
}

void* QsciMacro_metacast(QsciMacro* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QsciMacro_metacall(QsciMacro* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QsciMacro_tr(const char* s) {
	QString _ret = QsciMacro::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QsciMacro_clear(QsciMacro* self) {
	self->clear();
}

bool QsciMacro_load(QsciMacro* self, struct miqt_string asc) {
	QString asc_QString = QString::fromUtf8(asc.data, asc.len);
	return self->load(asc_QString);
}

struct miqt_string QsciMacro_save(const QsciMacro* self) {
	QString _ret = self->save();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QsciMacro_play(QsciMacro* self) {
	self->play();
}

void QsciMacro_startRecording(QsciMacro* self) {
	self->startRecording();
}

void QsciMacro_endRecording(QsciMacro* self) {
	self->endRecording();
}

struct miqt_string QsciMacro_tr2(const char* s, const char* c) {
	QString _ret = QsciMacro::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QsciMacro_tr3(const char* s, const char* c, int n) {
	QString _ret = QsciMacro::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QsciMacro_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQsciMacro*)(self) )->virtualbase_metaObject();
}

void* QsciMacro_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQsciMacro*)(self) )->virtualbase_metacast(param1);
}

int QsciMacro_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQsciMacro*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QsciMacro_virtualbase_play(void* self) {
	( (MiqtVirtualQsciMacro*)(self) )->virtualbase_play();
}

void QsciMacro_virtualbase_startRecording(void* self) {
	( (MiqtVirtualQsciMacro*)(self) )->virtualbase_startRecording();
}

void QsciMacro_virtualbase_endRecording(void* self) {
	( (MiqtVirtualQsciMacro*)(self) )->virtualbase_endRecording();
}

bool QsciMacro_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQsciMacro*)(self) )->virtualbase_event(event);
}

bool QsciMacro_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQsciMacro*)(self) )->virtualbase_eventFilter(watched, event);
}

void QsciMacro_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQsciMacro*)(self) )->virtualbase_timerEvent(event);
}

void QsciMacro_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQsciMacro*)(self) )->virtualbase_childEvent(event);
}

void QsciMacro_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQsciMacro*)(self) )->virtualbase_customEvent(event);
}

void QsciMacro_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQsciMacro*)(self) )->virtualbase_connectNotify(signal);
}

void QsciMacro_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQsciMacro*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QsciMacro_staticMetaObject() { return &QsciMacro::staticMetaObject; }
void QsciMacro_delete(QsciMacro* self) {
	delete self;
}

