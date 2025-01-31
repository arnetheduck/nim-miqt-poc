#include <QAbstractAnimation>
#include <QChildEvent>
#include <QEasingCurve>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPair>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QVariant>
#include <QVariantAnimation>
#include <qvariantanimation.h>
#include "gen_qvariantanimation.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QVariantAnimation_valueChanged(intptr_t, QVariant*);
void miqt_exec_callback_QVariantAnimation_valueChanged_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQVariantAnimation final : public QVariantAnimation {
	struct QVariantAnimation_VTable* vtbl;
public:

	MiqtVirtualQVariantAnimation(struct QVariantAnimation_VTable* vtbl): QVariantAnimation(), vtbl(vtbl) {};
	MiqtVirtualQVariantAnimation(struct QVariantAnimation_VTable* vtbl, QObject* parent): QVariantAnimation(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQVariantAnimation() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QVariantAnimation::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QVariantAnimation::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QVariantAnimation::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QVariantAnimation::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QVariantAnimation::qt_metacall(param1, param2, param3);
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

		return QVariantAnimation::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual int duration() const override {
		if (vtbl->duration == 0) {
			return QVariantAnimation::duration();
		}


		int callback_return_value = vtbl->duration(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_duration() const {

		return QVariantAnimation::duration();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QVariantAnimation::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QVariantAnimation::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void updateCurrentTime(int param1) override {
		if (vtbl->updateCurrentTime == 0) {
			QVariantAnimation::updateCurrentTime(param1);
			return;
		}

		int sigval1 = param1;

		vtbl->updateCurrentTime(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateCurrentTime(int param1) {

		QVariantAnimation::updateCurrentTime(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void updateState(QAbstractAnimation::State newState, QAbstractAnimation::State oldState) override {
		if (vtbl->updateState == 0) {
			QVariantAnimation::updateState(newState, oldState);
			return;
		}

		QAbstractAnimation::State newState_ret = newState;
		int sigval1 = static_cast<int>(newState_ret);
		QAbstractAnimation::State oldState_ret = oldState;
		int sigval2 = static_cast<int>(oldState_ret);

		vtbl->updateState(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateState(int newState, int oldState) {

		QVariantAnimation::updateState(static_cast<QAbstractAnimation::State>(newState), static_cast<QAbstractAnimation::State>(oldState));

	}

	// Subclass to allow providing a Go implementation
	virtual void updateCurrentValue(const QVariant& value) override {
		if (vtbl->updateCurrentValue == 0) {
			QVariantAnimation::updateCurrentValue(value);
			return;
		}

		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&value_ret);

		vtbl->updateCurrentValue(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateCurrentValue(QVariant* value) {

		QVariantAnimation::updateCurrentValue(*value);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant interpolated(const QVariant& from, const QVariant& to, qreal progress) const override {
		if (vtbl->interpolated == 0) {
			return QVariantAnimation::interpolated(from, to, progress);
		}

		const QVariant& from_ret = from;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&from_ret);
		const QVariant& to_ret = to;
		// Cast returned reference into pointer
		QVariant* sigval2 = const_cast<QVariant*>(&to_ret);
		qreal progress_ret = progress;
		double sigval3 = static_cast<double>(progress_ret);

		QVariant* callback_return_value = vtbl->interpolated(vtbl, this, sigval1, sigval2, sigval3);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_interpolated(QVariant* from, QVariant* to, double progress) const {

		return new QVariant(QVariantAnimation::interpolated(*from, *to, static_cast<qreal>(progress)));

	}

	// Subclass to allow providing a Go implementation
	virtual void updateDirection(QAbstractAnimation::Direction direction) override {
		if (vtbl->updateDirection == 0) {
			QVariantAnimation::updateDirection(direction);
			return;
		}

		QAbstractAnimation::Direction direction_ret = direction;
		int sigval1 = static_cast<int>(direction_ret);

		vtbl->updateDirection(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateDirection(int direction) {

		QVariantAnimation::updateDirection(static_cast<QAbstractAnimation::Direction>(direction));

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QVariantAnimation::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QVariantAnimation::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QVariantAnimation::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QVariantAnimation::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QVariantAnimation::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QVariantAnimation::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QVariantAnimation::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QVariantAnimation::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QVariantAnimation::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QVariantAnimation::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QVariantAnimation::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QVariantAnimation::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QVariantAnimation::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QVariantAnimation::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QVariantAnimation::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QVariantAnimation::isSignalConnected(*signal);

	}

};

QVariantAnimation* QVariantAnimation_new(struct QVariantAnimation_VTable* vtbl) {
	return new MiqtVirtualQVariantAnimation(vtbl);
}

QVariantAnimation* QVariantAnimation_new2(struct QVariantAnimation_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQVariantAnimation(vtbl, parent);
}

void QVariantAnimation_virtbase(QVariantAnimation* src, QAbstractAnimation** outptr_QAbstractAnimation) {
	*outptr_QAbstractAnimation = static_cast<QAbstractAnimation*>(src);
}

QMetaObject* QVariantAnimation_metaObject(const QVariantAnimation* self) {
	return (QMetaObject*) self->metaObject();
}

void* QVariantAnimation_metacast(QVariantAnimation* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QVariantAnimation_metacall(QVariantAnimation* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QVariantAnimation_tr(const char* s) {
	QString _ret = QVariantAnimation::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVariantAnimation_trUtf8(const char* s) {
	QString _ret = QVariantAnimation::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QVariant* QVariantAnimation_startValue(const QVariantAnimation* self) {
	return new QVariant(self->startValue());
}

void QVariantAnimation_setStartValue(QVariantAnimation* self, QVariant* value) {
	self->setStartValue(*value);
}

QVariant* QVariantAnimation_endValue(const QVariantAnimation* self) {
	return new QVariant(self->endValue());
}

void QVariantAnimation_setEndValue(QVariantAnimation* self, QVariant* value) {
	self->setEndValue(*value);
}

QVariant* QVariantAnimation_keyValueAt(const QVariantAnimation* self, double step) {
	return new QVariant(self->keyValueAt(static_cast<qreal>(step)));
}

void QVariantAnimation_setKeyValueAt(QVariantAnimation* self, double step, QVariant* value) {
	self->setKeyValueAt(static_cast<qreal>(step), *value);
}

struct miqt_array /* of struct miqt_map  tuple of double and QVariant*   */  QVariantAnimation_keyValues(const QVariantAnimation* self) {
	QVariantAnimation::KeyValues _ret = self->keyValues();
	// Convert QList<> from C++ memory to manually-managed C memory
	struct miqt_map /* tuple of double and QVariant* */ * _arr = static_cast<struct miqt_map /* tuple of double and QVariant* */ *>(malloc(sizeof(struct miqt_map /* tuple of double and QVariant* */ ) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		QPair<double, QVariant> _vv_ret = _ret[i];
		// Convert QPair<> from C++ memory to manually-managed C memory
		double* _vv_first_arr = static_cast<double*>(malloc(sizeof(double)));
		QVariant** _vv_second_arr = static_cast<QVariant**>(malloc(sizeof(QVariant*)));
		_vv_first_arr[0] = _vv_ret.first;
		_vv_second_arr[0] = new QVariant(_vv_ret.second);
		struct miqt_map _vv_out;
		_vv_out.len = 1;
		_vv_out.keys = static_cast<void*>(_vv_first_arr);
		_vv_out.values = static_cast<void*>(_vv_second_arr);
		_arr[i] = _vv_out;
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QVariantAnimation_setKeyValues(QVariantAnimation* self, struct miqt_array /* of struct miqt_map  tuple of double and QVariant*   */  values) {
	QVariantAnimation::KeyValues values_QList;
	values_QList.reserve(values.len);
	struct miqt_map /* tuple of double and QVariant* */ * values_arr = static_cast<struct miqt_map /* tuple of double and QVariant* */ *>(values.data);
	for(size_t i = 0; i < values.len; ++i) {
		QPair<double, QVariant> values_arr_i_QPair;
		double* values_arr_i_first_arr = static_cast<double*>(values_arr[i].keys);
		QVariant** values_arr_i_second_arr = static_cast<QVariant**>(values_arr[i].values);
		values_arr_i_QPair.first = static_cast<double>(values_arr_i_first_arr[0]);
		values_arr_i_QPair.second = *(values_arr_i_second_arr[0]);
		values_QList.push_back(values_arr_i_QPair);
	}
	self->setKeyValues(values_QList);
}

QVariant* QVariantAnimation_currentValue(const QVariantAnimation* self) {
	return new QVariant(self->currentValue());
}

int QVariantAnimation_duration(const QVariantAnimation* self) {
	return self->duration();
}

void QVariantAnimation_setDuration(QVariantAnimation* self, int msecs) {
	self->setDuration(static_cast<int>(msecs));
}

QEasingCurve* QVariantAnimation_easingCurve(const QVariantAnimation* self) {
	return new QEasingCurve(self->easingCurve());
}

void QVariantAnimation_setEasingCurve(QVariantAnimation* self, QEasingCurve* easing) {
	self->setEasingCurve(*easing);
}

void QVariantAnimation_valueChanged(QVariantAnimation* self, QVariant* value) {
	self->valueChanged(*value);
}

void QVariantAnimation_connect_valueChanged(QVariantAnimation* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QVariant& value) {
			const QVariant& value_ret = value;
			// Cast returned reference into pointer
			QVariant* sigval1 = const_cast<QVariant*>(&value_ret);
			miqt_exec_callback_QVariantAnimation_valueChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QVariantAnimation_valueChanged_release(slot); }
	};
	MiqtVirtualQVariantAnimation::connect(self, static_cast<void (QVariantAnimation::*)(const QVariant&)>(&QVariantAnimation::valueChanged), self, caller{slot});
}

struct miqt_string QVariantAnimation_tr2(const char* s, const char* c) {
	QString _ret = QVariantAnimation::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVariantAnimation_tr3(const char* s, const char* c, int n) {
	QString _ret = QVariantAnimation::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVariantAnimation_trUtf82(const char* s, const char* c) {
	QString _ret = QVariantAnimation::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QVariantAnimation_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QVariantAnimation::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QVariantAnimation_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQVariantAnimation*)(self) )->virtualbase_metaObject();
}

void* QVariantAnimation_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQVariantAnimation*)(self) )->virtualbase_metacast(param1);
}

int QVariantAnimation_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQVariantAnimation*)(self) )->virtualbase_metacall(param1, param2, param3);
}

int QVariantAnimation_virtualbase_duration(const void* self) {
	return ( (const MiqtVirtualQVariantAnimation*)(self) )->virtualbase_duration();
}

bool QVariantAnimation_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQVariantAnimation*)(self) )->virtualbase_event(event);
}

void QVariantAnimation_virtualbase_updateCurrentTime(void* self, int param1) {
	( (MiqtVirtualQVariantAnimation*)(self) )->virtualbase_updateCurrentTime(param1);
}

void QVariantAnimation_virtualbase_updateState(void* self, int newState, int oldState) {
	( (MiqtVirtualQVariantAnimation*)(self) )->virtualbase_updateState(newState, oldState);
}

void QVariantAnimation_virtualbase_updateCurrentValue(void* self, QVariant* value) {
	( (MiqtVirtualQVariantAnimation*)(self) )->virtualbase_updateCurrentValue(value);
}

QVariant* QVariantAnimation_virtualbase_interpolated(const void* self, QVariant* from, QVariant* to, double progress) {
	return ( (const MiqtVirtualQVariantAnimation*)(self) )->virtualbase_interpolated(from, to, progress);
}

void QVariantAnimation_virtualbase_updateDirection(void* self, int direction) {
	( (MiqtVirtualQVariantAnimation*)(self) )->virtualbase_updateDirection(direction);
}

bool QVariantAnimation_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQVariantAnimation*)(self) )->virtualbase_eventFilter(watched, event);
}

void QVariantAnimation_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQVariantAnimation*)(self) )->virtualbase_timerEvent(event);
}

void QVariantAnimation_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQVariantAnimation*)(self) )->virtualbase_childEvent(event);
}

void QVariantAnimation_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQVariantAnimation*)(self) )->virtualbase_customEvent(event);
}

void QVariantAnimation_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQVariantAnimation*)(self) )->virtualbase_connectNotify(signal);
}

void QVariantAnimation_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQVariantAnimation*)(self) )->virtualbase_disconnectNotify(signal);
}

QObject* QVariantAnimation_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQVariantAnimation*)(self) )->protectedbase_sender();
}

int QVariantAnimation_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQVariantAnimation*)(self) )->protectedbase_senderSignalIndex();
}

int QVariantAnimation_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQVariantAnimation*)(self) )->protectedbase_receivers(signal);
}

bool QVariantAnimation_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQVariantAnimation*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QVariantAnimation_staticMetaObject() { return &QVariantAnimation::staticMetaObject; }
void QVariantAnimation_delete(QVariantAnimation* self) {
	delete self;
}

