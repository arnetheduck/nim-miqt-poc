#include <QChildEvent>
#include <QEvent>
#include <QGraphicsRotation>
#include <QGraphicsScale>
#include <QGraphicsTransform>
#include <QMatrix4x4>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVector3D>
#include <qgraphicstransform.h>
#include "gen_qgraphicstransform.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QGraphicsScale_originChanged(intptr_t);
void miqt_exec_callback_QGraphicsScale_originChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsScale_xScaleChanged(intptr_t);
void miqt_exec_callback_QGraphicsScale_xScaleChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsScale_yScaleChanged(intptr_t);
void miqt_exec_callback_QGraphicsScale_yScaleChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsScale_zScaleChanged(intptr_t);
void miqt_exec_callback_QGraphicsScale_zScaleChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsScale_scaleChanged(intptr_t);
void miqt_exec_callback_QGraphicsScale_scaleChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsRotation_originChanged(intptr_t);
void miqt_exec_callback_QGraphicsRotation_originChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsRotation_angleChanged(intptr_t);
void miqt_exec_callback_QGraphicsRotation_angleChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsRotation_axisChanged(intptr_t);
void miqt_exec_callback_QGraphicsRotation_axisChanged_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQGraphicsTransform final : public QGraphicsTransform {
	struct QGraphicsTransform_VTable* vtbl;
public:

	MiqtVirtualQGraphicsTransform(struct QGraphicsTransform_VTable* vtbl): QGraphicsTransform(), vtbl(vtbl) {};
	MiqtVirtualQGraphicsTransform(struct QGraphicsTransform_VTable* vtbl, QObject* parent): QGraphicsTransform(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGraphicsTransform() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsTransform::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QGraphicsTransform::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsTransform::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QGraphicsTransform::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsTransform::qt_metacall(param1, param2, param3);
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

		return QGraphicsTransform::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void applyTo(QMatrix4x4* matrix) const override {
		if (vtbl->applyTo == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QMatrix4x4* sigval1 = matrix;

		vtbl->applyTo(vtbl, this, sigval1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsTransform::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QGraphicsTransform::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsTransform::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QGraphicsTransform::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsTransform::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QGraphicsTransform::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsTransform::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QGraphicsTransform::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsTransform::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QGraphicsTransform::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsTransform::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QGraphicsTransform::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsTransform::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QGraphicsTransform::disconnectNotify(*signal);

	}

};

QGraphicsTransform* QGraphicsTransform_new(struct QGraphicsTransform_VTable* vtbl) {
	return new MiqtVirtualQGraphicsTransform(vtbl);
}

QGraphicsTransform* QGraphicsTransform_new2(struct QGraphicsTransform_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQGraphicsTransform(vtbl, parent);
}

void QGraphicsTransform_virtbase(QGraphicsTransform* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QGraphicsTransform_metaObject(const QGraphicsTransform* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsTransform_metacast(QGraphicsTransform* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsTransform_metacall(QGraphicsTransform* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsTransform_tr(const char* s) {
	QString _ret = QGraphicsTransform::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsTransform_trUtf8(const char* s) {
	QString _ret = QGraphicsTransform::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QGraphicsTransform_applyTo(const QGraphicsTransform* self, QMatrix4x4* matrix) {
	self->applyTo(matrix);
}

struct miqt_string QGraphicsTransform_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsTransform::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsTransform_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsTransform::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsTransform_trUtf82(const char* s, const char* c) {
	QString _ret = QGraphicsTransform::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsTransform_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QGraphicsTransform::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QGraphicsTransform_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQGraphicsTransform*)(self) )->virtualbase_metaObject();
}

void* QGraphicsTransform_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQGraphicsTransform*)(self) )->virtualbase_metacast(param1);
}

int QGraphicsTransform_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQGraphicsTransform*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QGraphicsTransform_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQGraphicsTransform*)(self) )->virtualbase_event(event);
}

bool QGraphicsTransform_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsTransform*)(self) )->virtualbase_eventFilter(watched, event);
}

void QGraphicsTransform_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQGraphicsTransform*)(self) )->virtualbase_timerEvent(event);
}

void QGraphicsTransform_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQGraphicsTransform*)(self) )->virtualbase_childEvent(event);
}

void QGraphicsTransform_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGraphicsTransform*)(self) )->virtualbase_customEvent(event);
}

void QGraphicsTransform_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsTransform*)(self) )->virtualbase_connectNotify(signal);
}

void QGraphicsTransform_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsTransform*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QGraphicsTransform_staticMetaObject() { return &QGraphicsTransform::staticMetaObject; }
void QGraphicsTransform_delete(QGraphicsTransform* self) {
	delete self;
}

class MiqtVirtualQGraphicsScale final : public QGraphicsScale {
	struct QGraphicsScale_VTable* vtbl;
public:

	MiqtVirtualQGraphicsScale(struct QGraphicsScale_VTable* vtbl): QGraphicsScale(), vtbl(vtbl) {};
	MiqtVirtualQGraphicsScale(struct QGraphicsScale_VTable* vtbl, QObject* parent): QGraphicsScale(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGraphicsScale() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsScale::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QGraphicsScale::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsScale::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QGraphicsScale::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsScale::qt_metacall(param1, param2, param3);
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

		return QGraphicsScale::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void applyTo(QMatrix4x4* matrix) const override {
		if (vtbl->applyTo == 0) {
			QGraphicsScale::applyTo(matrix);
			return;
		}

		QMatrix4x4* sigval1 = matrix;

		vtbl->applyTo(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_applyTo(QMatrix4x4* matrix) const {

		QGraphicsScale::applyTo(matrix);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsScale::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QGraphicsScale::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsScale::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QGraphicsScale::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsScale::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QGraphicsScale::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsScale::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QGraphicsScale::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsScale::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QGraphicsScale::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsScale::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QGraphicsScale::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsScale::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QGraphicsScale::disconnectNotify(*signal);

	}

};

QGraphicsScale* QGraphicsScale_new(struct QGraphicsScale_VTable* vtbl) {
	return new MiqtVirtualQGraphicsScale(vtbl);
}

QGraphicsScale* QGraphicsScale_new2(struct QGraphicsScale_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQGraphicsScale(vtbl, parent);
}

void QGraphicsScale_virtbase(QGraphicsScale* src, QGraphicsTransform** outptr_QGraphicsTransform) {
	*outptr_QGraphicsTransform = static_cast<QGraphicsTransform*>(src);
}

QMetaObject* QGraphicsScale_metaObject(const QGraphicsScale* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsScale_metacast(QGraphicsScale* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsScale_metacall(QGraphicsScale* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsScale_tr(const char* s) {
	QString _ret = QGraphicsScale::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsScale_trUtf8(const char* s) {
	QString _ret = QGraphicsScale::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QVector3D* QGraphicsScale_origin(const QGraphicsScale* self) {
	return new QVector3D(self->origin());
}

void QGraphicsScale_setOrigin(QGraphicsScale* self, QVector3D* point) {
	self->setOrigin(*point);
}

double QGraphicsScale_xScale(const QGraphicsScale* self) {
	qreal _ret = self->xScale();
	return static_cast<double>(_ret);
}

void QGraphicsScale_setXScale(QGraphicsScale* self, double xScale) {
	self->setXScale(static_cast<qreal>(xScale));
}

double QGraphicsScale_yScale(const QGraphicsScale* self) {
	qreal _ret = self->yScale();
	return static_cast<double>(_ret);
}

void QGraphicsScale_setYScale(QGraphicsScale* self, double yScale) {
	self->setYScale(static_cast<qreal>(yScale));
}

double QGraphicsScale_zScale(const QGraphicsScale* self) {
	qreal _ret = self->zScale();
	return static_cast<double>(_ret);
}

void QGraphicsScale_setZScale(QGraphicsScale* self, double zScale) {
	self->setZScale(static_cast<qreal>(zScale));
}

void QGraphicsScale_applyTo(const QGraphicsScale* self, QMatrix4x4* matrix) {
	self->applyTo(matrix);
}

void QGraphicsScale_originChanged(QGraphicsScale* self) {
	self->originChanged();
}

void QGraphicsScale_connect_originChanged(QGraphicsScale* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsScale_originChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsScale_originChanged_release(slot); }
	};
	MiqtVirtualQGraphicsScale::connect(self, static_cast<void (QGraphicsScale::*)()>(&QGraphicsScale::originChanged), self, caller{slot});
}

void QGraphicsScale_xScaleChanged(QGraphicsScale* self) {
	self->xScaleChanged();
}

void QGraphicsScale_connect_xScaleChanged(QGraphicsScale* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsScale_xScaleChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsScale_xScaleChanged_release(slot); }
	};
	MiqtVirtualQGraphicsScale::connect(self, static_cast<void (QGraphicsScale::*)()>(&QGraphicsScale::xScaleChanged), self, caller{slot});
}

void QGraphicsScale_yScaleChanged(QGraphicsScale* self) {
	self->yScaleChanged();
}

void QGraphicsScale_connect_yScaleChanged(QGraphicsScale* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsScale_yScaleChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsScale_yScaleChanged_release(slot); }
	};
	MiqtVirtualQGraphicsScale::connect(self, static_cast<void (QGraphicsScale::*)()>(&QGraphicsScale::yScaleChanged), self, caller{slot});
}

void QGraphicsScale_zScaleChanged(QGraphicsScale* self) {
	self->zScaleChanged();
}

void QGraphicsScale_connect_zScaleChanged(QGraphicsScale* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsScale_zScaleChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsScale_zScaleChanged_release(slot); }
	};
	MiqtVirtualQGraphicsScale::connect(self, static_cast<void (QGraphicsScale::*)()>(&QGraphicsScale::zScaleChanged), self, caller{slot});
}

void QGraphicsScale_scaleChanged(QGraphicsScale* self) {
	self->scaleChanged();
}

void QGraphicsScale_connect_scaleChanged(QGraphicsScale* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsScale_scaleChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsScale_scaleChanged_release(slot); }
	};
	MiqtVirtualQGraphicsScale::connect(self, static_cast<void (QGraphicsScale::*)()>(&QGraphicsScale::scaleChanged), self, caller{slot});
}

struct miqt_string QGraphicsScale_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsScale::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsScale_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsScale::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsScale_trUtf82(const char* s, const char* c) {
	QString _ret = QGraphicsScale::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsScale_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QGraphicsScale::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QGraphicsScale_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQGraphicsScale*)(self) )->virtualbase_metaObject();
}

void* QGraphicsScale_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQGraphicsScale*)(self) )->virtualbase_metacast(param1);
}

int QGraphicsScale_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQGraphicsScale*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QGraphicsScale_virtualbase_applyTo(const void* self, QMatrix4x4* matrix) {
	( (const MiqtVirtualQGraphicsScale*)(self) )->virtualbase_applyTo(matrix);
}

bool QGraphicsScale_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQGraphicsScale*)(self) )->virtualbase_event(event);
}

bool QGraphicsScale_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsScale*)(self) )->virtualbase_eventFilter(watched, event);
}

void QGraphicsScale_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQGraphicsScale*)(self) )->virtualbase_timerEvent(event);
}

void QGraphicsScale_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQGraphicsScale*)(self) )->virtualbase_childEvent(event);
}

void QGraphicsScale_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGraphicsScale*)(self) )->virtualbase_customEvent(event);
}

void QGraphicsScale_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsScale*)(self) )->virtualbase_connectNotify(signal);
}

void QGraphicsScale_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsScale*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QGraphicsScale_staticMetaObject() { return &QGraphicsScale::staticMetaObject; }
void QGraphicsScale_delete(QGraphicsScale* self) {
	delete self;
}

class MiqtVirtualQGraphicsRotation final : public QGraphicsRotation {
	struct QGraphicsRotation_VTable* vtbl;
public:

	MiqtVirtualQGraphicsRotation(struct QGraphicsRotation_VTable* vtbl): QGraphicsRotation(), vtbl(vtbl) {};
	MiqtVirtualQGraphicsRotation(struct QGraphicsRotation_VTable* vtbl, QObject* parent): QGraphicsRotation(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGraphicsRotation() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsRotation::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QGraphicsRotation::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsRotation::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QGraphicsRotation::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsRotation::qt_metacall(param1, param2, param3);
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

		return QGraphicsRotation::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void applyTo(QMatrix4x4* matrix) const override {
		if (vtbl->applyTo == 0) {
			QGraphicsRotation::applyTo(matrix);
			return;
		}

		QMatrix4x4* sigval1 = matrix;

		vtbl->applyTo(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_applyTo(QMatrix4x4* matrix) const {

		QGraphicsRotation::applyTo(matrix);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsRotation::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QGraphicsRotation::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsRotation::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QGraphicsRotation::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsRotation::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QGraphicsRotation::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsRotation::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QGraphicsRotation::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsRotation::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QGraphicsRotation::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsRotation::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QGraphicsRotation::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsRotation::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QGraphicsRotation::disconnectNotify(*signal);

	}

};

QGraphicsRotation* QGraphicsRotation_new(struct QGraphicsRotation_VTable* vtbl) {
	return new MiqtVirtualQGraphicsRotation(vtbl);
}

QGraphicsRotation* QGraphicsRotation_new2(struct QGraphicsRotation_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQGraphicsRotation(vtbl, parent);
}

void QGraphicsRotation_virtbase(QGraphicsRotation* src, QGraphicsTransform** outptr_QGraphicsTransform) {
	*outptr_QGraphicsTransform = static_cast<QGraphicsTransform*>(src);
}

QMetaObject* QGraphicsRotation_metaObject(const QGraphicsRotation* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsRotation_metacast(QGraphicsRotation* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsRotation_metacall(QGraphicsRotation* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsRotation_tr(const char* s) {
	QString _ret = QGraphicsRotation::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsRotation_trUtf8(const char* s) {
	QString _ret = QGraphicsRotation::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QVector3D* QGraphicsRotation_origin(const QGraphicsRotation* self) {
	return new QVector3D(self->origin());
}

void QGraphicsRotation_setOrigin(QGraphicsRotation* self, QVector3D* point) {
	self->setOrigin(*point);
}

double QGraphicsRotation_angle(const QGraphicsRotation* self) {
	qreal _ret = self->angle();
	return static_cast<double>(_ret);
}

void QGraphicsRotation_setAngle(QGraphicsRotation* self, double angle) {
	self->setAngle(static_cast<qreal>(angle));
}

QVector3D* QGraphicsRotation_axis(const QGraphicsRotation* self) {
	return new QVector3D(self->axis());
}

void QGraphicsRotation_setAxis(QGraphicsRotation* self, QVector3D* axis) {
	self->setAxis(*axis);
}

void QGraphicsRotation_setAxisWithAxis(QGraphicsRotation* self, int axis) {
	self->setAxis(static_cast<Qt::Axis>(axis));
}

void QGraphicsRotation_applyTo(const QGraphicsRotation* self, QMatrix4x4* matrix) {
	self->applyTo(matrix);
}

void QGraphicsRotation_originChanged(QGraphicsRotation* self) {
	self->originChanged();
}

void QGraphicsRotation_connect_originChanged(QGraphicsRotation* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsRotation_originChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsRotation_originChanged_release(slot); }
	};
	MiqtVirtualQGraphicsRotation::connect(self, static_cast<void (QGraphicsRotation::*)()>(&QGraphicsRotation::originChanged), self, caller{slot});
}

void QGraphicsRotation_angleChanged(QGraphicsRotation* self) {
	self->angleChanged();
}

void QGraphicsRotation_connect_angleChanged(QGraphicsRotation* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsRotation_angleChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsRotation_angleChanged_release(slot); }
	};
	MiqtVirtualQGraphicsRotation::connect(self, static_cast<void (QGraphicsRotation::*)()>(&QGraphicsRotation::angleChanged), self, caller{slot});
}

void QGraphicsRotation_axisChanged(QGraphicsRotation* self) {
	self->axisChanged();
}

void QGraphicsRotation_connect_axisChanged(QGraphicsRotation* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QGraphicsRotation_axisChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsRotation_axisChanged_release(slot); }
	};
	MiqtVirtualQGraphicsRotation::connect(self, static_cast<void (QGraphicsRotation::*)()>(&QGraphicsRotation::axisChanged), self, caller{slot});
}

struct miqt_string QGraphicsRotation_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsRotation::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsRotation_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsRotation::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsRotation_trUtf82(const char* s, const char* c) {
	QString _ret = QGraphicsRotation::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsRotation_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QGraphicsRotation::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QGraphicsRotation_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQGraphicsRotation*)(self) )->virtualbase_metaObject();
}

void* QGraphicsRotation_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQGraphicsRotation*)(self) )->virtualbase_metacast(param1);
}

int QGraphicsRotation_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQGraphicsRotation*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QGraphicsRotation_virtualbase_applyTo(const void* self, QMatrix4x4* matrix) {
	( (const MiqtVirtualQGraphicsRotation*)(self) )->virtualbase_applyTo(matrix);
}

bool QGraphicsRotation_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQGraphicsRotation*)(self) )->virtualbase_event(event);
}

bool QGraphicsRotation_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsRotation*)(self) )->virtualbase_eventFilter(watched, event);
}

void QGraphicsRotation_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQGraphicsRotation*)(self) )->virtualbase_timerEvent(event);
}

void QGraphicsRotation_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQGraphicsRotation*)(self) )->virtualbase_childEvent(event);
}

void QGraphicsRotation_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGraphicsRotation*)(self) )->virtualbase_customEvent(event);
}

void QGraphicsRotation_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsRotation*)(self) )->virtualbase_connectNotify(signal);
}

void QGraphicsRotation_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsRotation*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QGraphicsRotation_staticMetaObject() { return &QGraphicsRotation::staticMetaObject; }
void QGraphicsRotation_delete(QGraphicsRotation* self) {
	delete self;
}

