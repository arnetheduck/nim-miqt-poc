#include <QBrush>
#include <QChildEvent>
#include <QColor>
#include <QEvent>
#include <QGraphicsBlurEffect>
#include <QGraphicsColorizeEffect>
#include <QGraphicsDropShadowEffect>
#include <QGraphicsEffect>
#include <QGraphicsOpacityEffect>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QPainter>
#include <QPointF>
#include <QRectF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qgraphicseffect.h>
#include "gen_qgraphicseffect.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QGraphicsEffect_enabledChanged(intptr_t, bool);
void miqt_exec_callback_QGraphicsEffect_enabledChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsColorizeEffect_colorChanged(intptr_t, QColor*);
void miqt_exec_callback_QGraphicsColorizeEffect_colorChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsColorizeEffect_strengthChanged(intptr_t, double);
void miqt_exec_callback_QGraphicsColorizeEffect_strengthChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsBlurEffect_blurRadiusChanged(intptr_t, double);
void miqt_exec_callback_QGraphicsBlurEffect_blurRadiusChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsBlurEffect_blurHintsChanged(intptr_t, int);
void miqt_exec_callback_QGraphicsBlurEffect_blurHintsChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsDropShadowEffect_offsetChanged(intptr_t, QPointF*);
void miqt_exec_callback_QGraphicsDropShadowEffect_offsetChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsDropShadowEffect_blurRadiusChanged(intptr_t, double);
void miqt_exec_callback_QGraphicsDropShadowEffect_blurRadiusChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsDropShadowEffect_colorChanged(intptr_t, QColor*);
void miqt_exec_callback_QGraphicsDropShadowEffect_colorChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsOpacityEffect_opacityChanged(intptr_t, double);
void miqt_exec_callback_QGraphicsOpacityEffect_opacityChanged_release(intptr_t);
void miqt_exec_callback_QGraphicsOpacityEffect_opacityMaskChanged(intptr_t, QBrush*);
void miqt_exec_callback_QGraphicsOpacityEffect_opacityMaskChanged_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQGraphicsEffect final : public QGraphicsEffect {
	struct QGraphicsEffect_VTable* vtbl;
public:

	MiqtVirtualQGraphicsEffect(struct QGraphicsEffect_VTable* vtbl): QGraphicsEffect(), vtbl(vtbl) {};
	MiqtVirtualQGraphicsEffect(struct QGraphicsEffect_VTable* vtbl, QObject* parent): QGraphicsEffect(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGraphicsEffect() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsEffect::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QGraphicsEffect::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsEffect::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QGraphicsEffect::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsEffect::qt_metacall(param1, param2, param3);
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

		return QGraphicsEffect::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRectFor(const QRectF& sourceRect) const override {
		if (vtbl->boundingRectFor == 0) {
			return QGraphicsEffect::boundingRectFor(sourceRect);
		}

		const QRectF& sourceRect_ret = sourceRect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&sourceRect_ret);

		QRectF* callback_return_value = vtbl->boundingRectFor(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_boundingRectFor(QRectF* sourceRect) const {

		return new QRectF(QGraphicsEffect::boundingRectFor(*sourceRect));

	}

	// Subclass to allow providing a Go implementation
	virtual void draw(QPainter* painter) override {
		if (vtbl->draw == 0) {
			return; // Pure virtual, there is no base we can call
		}

		QPainter* sigval1 = painter;

		vtbl->draw(vtbl, this, sigval1);

	}

	// Subclass to allow providing a Go implementation
	virtual void sourceChanged(QGraphicsEffect::ChangeFlags flags) override {
		if (vtbl->sourceChanged == 0) {
			QGraphicsEffect::sourceChanged(flags);
			return;
		}

		QGraphicsEffect::ChangeFlags flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		vtbl->sourceChanged(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_sourceChanged(int flags) {

		QGraphicsEffect::sourceChanged(static_cast<QGraphicsEffect::ChangeFlags>(flags));

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsEffect::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QGraphicsEffect::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsEffect::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QGraphicsEffect::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsEffect::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QGraphicsEffect::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsEffect::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QGraphicsEffect::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsEffect::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QGraphicsEffect::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsEffect::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QGraphicsEffect::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsEffect::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QGraphicsEffect::disconnectNotify(*signal);

	}

};

QGraphicsEffect* QGraphicsEffect_new(struct QGraphicsEffect_VTable* vtbl) {
	return new MiqtVirtualQGraphicsEffect(vtbl);
}

QGraphicsEffect* QGraphicsEffect_new2(struct QGraphicsEffect_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQGraphicsEffect(vtbl, parent);
}

void QGraphicsEffect_virtbase(QGraphicsEffect* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QGraphicsEffect_metaObject(const QGraphicsEffect* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsEffect_metacast(QGraphicsEffect* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsEffect_metacall(QGraphicsEffect* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsEffect_tr(const char* s) {
	QString _ret = QGraphicsEffect::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsEffect_trUtf8(const char* s) {
	QString _ret = QGraphicsEffect::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QRectF* QGraphicsEffect_boundingRectFor(const QGraphicsEffect* self, QRectF* sourceRect) {
	return new QRectF(self->boundingRectFor(*sourceRect));
}

QRectF* QGraphicsEffect_boundingRect(const QGraphicsEffect* self) {
	return new QRectF(self->boundingRect());
}

bool QGraphicsEffect_isEnabled(const QGraphicsEffect* self) {
	return self->isEnabled();
}

void QGraphicsEffect_setEnabled(QGraphicsEffect* self, bool enable) {
	self->setEnabled(enable);
}

void QGraphicsEffect_update(QGraphicsEffect* self) {
	self->update();
}

void QGraphicsEffect_enabledChanged(QGraphicsEffect* self, bool enabled) {
	self->enabledChanged(enabled);
}

void QGraphicsEffect_connect_enabledChanged(QGraphicsEffect* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(bool enabled) {
			bool sigval1 = enabled;
			miqt_exec_callback_QGraphicsEffect_enabledChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsEffect_enabledChanged_release(slot); }
	};
	MiqtVirtualQGraphicsEffect::connect(self, static_cast<void (QGraphicsEffect::*)(bool)>(&QGraphicsEffect::enabledChanged), self, caller{slot});
}

struct miqt_string QGraphicsEffect_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsEffect::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsEffect_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsEffect::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsEffect_trUtf82(const char* s, const char* c) {
	QString _ret = QGraphicsEffect::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsEffect_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QGraphicsEffect::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QGraphicsEffect_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQGraphicsEffect*)(self) )->virtualbase_metaObject();
}

void* QGraphicsEffect_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQGraphicsEffect*)(self) )->virtualbase_metacast(param1);
}

int QGraphicsEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQGraphicsEffect*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QRectF* QGraphicsEffect_virtualbase_boundingRectFor(const void* self, QRectF* sourceRect) {
	return ( (const MiqtVirtualQGraphicsEffect*)(self) )->virtualbase_boundingRectFor(sourceRect);
}

void QGraphicsEffect_virtualbase_sourceChanged(void* self, int flags) {
	( (MiqtVirtualQGraphicsEffect*)(self) )->virtualbase_sourceChanged(flags);
}

bool QGraphicsEffect_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQGraphicsEffect*)(self) )->virtualbase_event(event);
}

bool QGraphicsEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsEffect*)(self) )->virtualbase_eventFilter(watched, event);
}

void QGraphicsEffect_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQGraphicsEffect*)(self) )->virtualbase_timerEvent(event);
}

void QGraphicsEffect_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQGraphicsEffect*)(self) )->virtualbase_childEvent(event);
}

void QGraphicsEffect_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGraphicsEffect*)(self) )->virtualbase_customEvent(event);
}

void QGraphicsEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsEffect*)(self) )->virtualbase_connectNotify(signal);
}

void QGraphicsEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsEffect*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QGraphicsEffect_staticMetaObject() { return &QGraphicsEffect::staticMetaObject; }
void QGraphicsEffect_delete(QGraphicsEffect* self) {
	delete self;
}

class MiqtVirtualQGraphicsColorizeEffect final : public QGraphicsColorizeEffect {
	struct QGraphicsColorizeEffect_VTable* vtbl;
public:

	MiqtVirtualQGraphicsColorizeEffect(struct QGraphicsColorizeEffect_VTable* vtbl): QGraphicsColorizeEffect(), vtbl(vtbl) {};
	MiqtVirtualQGraphicsColorizeEffect(struct QGraphicsColorizeEffect_VTable* vtbl, QObject* parent): QGraphicsColorizeEffect(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGraphicsColorizeEffect() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsColorizeEffect::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QGraphicsColorizeEffect::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsColorizeEffect::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QGraphicsColorizeEffect::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsColorizeEffect::qt_metacall(param1, param2, param3);
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

		return QGraphicsColorizeEffect::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void draw(QPainter* painter) override {
		if (vtbl->draw == 0) {
			QGraphicsColorizeEffect::draw(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->draw(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_draw(QPainter* painter) {

		QGraphicsColorizeEffect::draw(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRectFor(const QRectF& sourceRect) const override {
		if (vtbl->boundingRectFor == 0) {
			return QGraphicsColorizeEffect::boundingRectFor(sourceRect);
		}

		const QRectF& sourceRect_ret = sourceRect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&sourceRect_ret);

		QRectF* callback_return_value = vtbl->boundingRectFor(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_boundingRectFor(QRectF* sourceRect) const {

		return new QRectF(QGraphicsColorizeEffect::boundingRectFor(*sourceRect));

	}

	// Subclass to allow providing a Go implementation
	virtual void sourceChanged(QGraphicsEffect::ChangeFlags flags) override {
		if (vtbl->sourceChanged == 0) {
			QGraphicsColorizeEffect::sourceChanged(flags);
			return;
		}

		QGraphicsEffect::ChangeFlags flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		vtbl->sourceChanged(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_sourceChanged(int flags) {

		QGraphicsColorizeEffect::sourceChanged(static_cast<QGraphicsEffect::ChangeFlags>(flags));

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsColorizeEffect::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QGraphicsColorizeEffect::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsColorizeEffect::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QGraphicsColorizeEffect::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsColorizeEffect::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QGraphicsColorizeEffect::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsColorizeEffect::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QGraphicsColorizeEffect::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsColorizeEffect::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QGraphicsColorizeEffect::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsColorizeEffect::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QGraphicsColorizeEffect::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsColorizeEffect::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QGraphicsColorizeEffect::disconnectNotify(*signal);

	}

};

QGraphicsColorizeEffect* QGraphicsColorizeEffect_new(struct QGraphicsColorizeEffect_VTable* vtbl) {
	return new MiqtVirtualQGraphicsColorizeEffect(vtbl);
}

QGraphicsColorizeEffect* QGraphicsColorizeEffect_new2(struct QGraphicsColorizeEffect_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQGraphicsColorizeEffect(vtbl, parent);
}

void QGraphicsColorizeEffect_virtbase(QGraphicsColorizeEffect* src, QGraphicsEffect** outptr_QGraphicsEffect) {
	*outptr_QGraphicsEffect = static_cast<QGraphicsEffect*>(src);
}

QMetaObject* QGraphicsColorizeEffect_metaObject(const QGraphicsColorizeEffect* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsColorizeEffect_metacast(QGraphicsColorizeEffect* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsColorizeEffect_metacall(QGraphicsColorizeEffect* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsColorizeEffect_tr(const char* s) {
	QString _ret = QGraphicsColorizeEffect::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsColorizeEffect_trUtf8(const char* s) {
	QString _ret = QGraphicsColorizeEffect::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QColor* QGraphicsColorizeEffect_color(const QGraphicsColorizeEffect* self) {
	return new QColor(self->color());
}

double QGraphicsColorizeEffect_strength(const QGraphicsColorizeEffect* self) {
	qreal _ret = self->strength();
	return static_cast<double>(_ret);
}

void QGraphicsColorizeEffect_setColor(QGraphicsColorizeEffect* self, QColor* c) {
	self->setColor(*c);
}

void QGraphicsColorizeEffect_setStrength(QGraphicsColorizeEffect* self, double strength) {
	self->setStrength(static_cast<qreal>(strength));
}

void QGraphicsColorizeEffect_colorChanged(QGraphicsColorizeEffect* self, QColor* color) {
	self->colorChanged(*color);
}

void QGraphicsColorizeEffect_connect_colorChanged(QGraphicsColorizeEffect* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QColor& color) {
			const QColor& color_ret = color;
			// Cast returned reference into pointer
			QColor* sigval1 = const_cast<QColor*>(&color_ret);
			miqt_exec_callback_QGraphicsColorizeEffect_colorChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsColorizeEffect_colorChanged_release(slot); }
	};
	MiqtVirtualQGraphicsColorizeEffect::connect(self, static_cast<void (QGraphicsColorizeEffect::*)(const QColor&)>(&QGraphicsColorizeEffect::colorChanged), self, caller{slot});
}

void QGraphicsColorizeEffect_strengthChanged(QGraphicsColorizeEffect* self, double strength) {
	self->strengthChanged(static_cast<qreal>(strength));
}

void QGraphicsColorizeEffect_connect_strengthChanged(QGraphicsColorizeEffect* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(qreal strength) {
			qreal strength_ret = strength;
			double sigval1 = static_cast<double>(strength_ret);
			miqt_exec_callback_QGraphicsColorizeEffect_strengthChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsColorizeEffect_strengthChanged_release(slot); }
	};
	MiqtVirtualQGraphicsColorizeEffect::connect(self, static_cast<void (QGraphicsColorizeEffect::*)(qreal)>(&QGraphicsColorizeEffect::strengthChanged), self, caller{slot});
}

struct miqt_string QGraphicsColorizeEffect_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsColorizeEffect::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsColorizeEffect_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsColorizeEffect::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsColorizeEffect_trUtf82(const char* s, const char* c) {
	QString _ret = QGraphicsColorizeEffect::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsColorizeEffect_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QGraphicsColorizeEffect::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QGraphicsColorizeEffect_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQGraphicsColorizeEffect*)(self) )->virtualbase_metaObject();
}

void* QGraphicsColorizeEffect_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQGraphicsColorizeEffect*)(self) )->virtualbase_metacast(param1);
}

int QGraphicsColorizeEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQGraphicsColorizeEffect*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QGraphicsColorizeEffect_virtualbase_draw(void* self, QPainter* painter) {
	( (MiqtVirtualQGraphicsColorizeEffect*)(self) )->virtualbase_draw(painter);
}

QRectF* QGraphicsColorizeEffect_virtualbase_boundingRectFor(const void* self, QRectF* sourceRect) {
	return ( (const MiqtVirtualQGraphicsColorizeEffect*)(self) )->virtualbase_boundingRectFor(sourceRect);
}

void QGraphicsColorizeEffect_virtualbase_sourceChanged(void* self, int flags) {
	( (MiqtVirtualQGraphicsColorizeEffect*)(self) )->virtualbase_sourceChanged(flags);
}

bool QGraphicsColorizeEffect_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQGraphicsColorizeEffect*)(self) )->virtualbase_event(event);
}

bool QGraphicsColorizeEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsColorizeEffect*)(self) )->virtualbase_eventFilter(watched, event);
}

void QGraphicsColorizeEffect_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQGraphicsColorizeEffect*)(self) )->virtualbase_timerEvent(event);
}

void QGraphicsColorizeEffect_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQGraphicsColorizeEffect*)(self) )->virtualbase_childEvent(event);
}

void QGraphicsColorizeEffect_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGraphicsColorizeEffect*)(self) )->virtualbase_customEvent(event);
}

void QGraphicsColorizeEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsColorizeEffect*)(self) )->virtualbase_connectNotify(signal);
}

void QGraphicsColorizeEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsColorizeEffect*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QGraphicsColorizeEffect_staticMetaObject() { return &QGraphicsColorizeEffect::staticMetaObject; }
void QGraphicsColorizeEffect_delete(QGraphicsColorizeEffect* self) {
	delete self;
}

class MiqtVirtualQGraphicsBlurEffect final : public QGraphicsBlurEffect {
	struct QGraphicsBlurEffect_VTable* vtbl;
public:

	MiqtVirtualQGraphicsBlurEffect(struct QGraphicsBlurEffect_VTable* vtbl): QGraphicsBlurEffect(), vtbl(vtbl) {};
	MiqtVirtualQGraphicsBlurEffect(struct QGraphicsBlurEffect_VTable* vtbl, QObject* parent): QGraphicsBlurEffect(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGraphicsBlurEffect() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsBlurEffect::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QGraphicsBlurEffect::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsBlurEffect::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QGraphicsBlurEffect::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsBlurEffect::qt_metacall(param1, param2, param3);
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

		return QGraphicsBlurEffect::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRectFor(const QRectF& rect) const override {
		if (vtbl->boundingRectFor == 0) {
			return QGraphicsBlurEffect::boundingRectFor(rect);
		}

		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&rect_ret);

		QRectF* callback_return_value = vtbl->boundingRectFor(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_boundingRectFor(QRectF* rect) const {

		return new QRectF(QGraphicsBlurEffect::boundingRectFor(*rect));

	}

	// Subclass to allow providing a Go implementation
	virtual void draw(QPainter* painter) override {
		if (vtbl->draw == 0) {
			QGraphicsBlurEffect::draw(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->draw(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_draw(QPainter* painter) {

		QGraphicsBlurEffect::draw(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual void sourceChanged(QGraphicsEffect::ChangeFlags flags) override {
		if (vtbl->sourceChanged == 0) {
			QGraphicsBlurEffect::sourceChanged(flags);
			return;
		}

		QGraphicsEffect::ChangeFlags flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		vtbl->sourceChanged(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_sourceChanged(int flags) {

		QGraphicsBlurEffect::sourceChanged(static_cast<QGraphicsEffect::ChangeFlags>(flags));

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsBlurEffect::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QGraphicsBlurEffect::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsBlurEffect::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QGraphicsBlurEffect::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsBlurEffect::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QGraphicsBlurEffect::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsBlurEffect::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QGraphicsBlurEffect::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsBlurEffect::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QGraphicsBlurEffect::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsBlurEffect::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QGraphicsBlurEffect::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsBlurEffect::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QGraphicsBlurEffect::disconnectNotify(*signal);

	}

};

QGraphicsBlurEffect* QGraphicsBlurEffect_new(struct QGraphicsBlurEffect_VTable* vtbl) {
	return new MiqtVirtualQGraphicsBlurEffect(vtbl);
}

QGraphicsBlurEffect* QGraphicsBlurEffect_new2(struct QGraphicsBlurEffect_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQGraphicsBlurEffect(vtbl, parent);
}

void QGraphicsBlurEffect_virtbase(QGraphicsBlurEffect* src, QGraphicsEffect** outptr_QGraphicsEffect) {
	*outptr_QGraphicsEffect = static_cast<QGraphicsEffect*>(src);
}

QMetaObject* QGraphicsBlurEffect_metaObject(const QGraphicsBlurEffect* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsBlurEffect_metacast(QGraphicsBlurEffect* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsBlurEffect_metacall(QGraphicsBlurEffect* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsBlurEffect_tr(const char* s) {
	QString _ret = QGraphicsBlurEffect::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsBlurEffect_trUtf8(const char* s) {
	QString _ret = QGraphicsBlurEffect::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QRectF* QGraphicsBlurEffect_boundingRectFor(const QGraphicsBlurEffect* self, QRectF* rect) {
	return new QRectF(self->boundingRectFor(*rect));
}

double QGraphicsBlurEffect_blurRadius(const QGraphicsBlurEffect* self) {
	qreal _ret = self->blurRadius();
	return static_cast<double>(_ret);
}

int QGraphicsBlurEffect_blurHints(const QGraphicsBlurEffect* self) {
	QGraphicsBlurEffect::BlurHints _ret = self->blurHints();
	return static_cast<int>(_ret);
}

void QGraphicsBlurEffect_setBlurRadius(QGraphicsBlurEffect* self, double blurRadius) {
	self->setBlurRadius(static_cast<qreal>(blurRadius));
}

void QGraphicsBlurEffect_setBlurHints(QGraphicsBlurEffect* self, int hints) {
	self->setBlurHints(static_cast<QGraphicsBlurEffect::BlurHints>(hints));
}

void QGraphicsBlurEffect_blurRadiusChanged(QGraphicsBlurEffect* self, double blurRadius) {
	self->blurRadiusChanged(static_cast<qreal>(blurRadius));
}

void QGraphicsBlurEffect_connect_blurRadiusChanged(QGraphicsBlurEffect* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(qreal blurRadius) {
			qreal blurRadius_ret = blurRadius;
			double sigval1 = static_cast<double>(blurRadius_ret);
			miqt_exec_callback_QGraphicsBlurEffect_blurRadiusChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsBlurEffect_blurRadiusChanged_release(slot); }
	};
	MiqtVirtualQGraphicsBlurEffect::connect(self, static_cast<void (QGraphicsBlurEffect::*)(qreal)>(&QGraphicsBlurEffect::blurRadiusChanged), self, caller{slot});
}

void QGraphicsBlurEffect_blurHintsChanged(QGraphicsBlurEffect* self, int hints) {
	self->blurHintsChanged(static_cast<QGraphicsBlurEffect::BlurHints>(hints));
}

void QGraphicsBlurEffect_connect_blurHintsChanged(QGraphicsBlurEffect* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QGraphicsBlurEffect::BlurHints hints) {
			QGraphicsBlurEffect::BlurHints hints_ret = hints;
			int sigval1 = static_cast<int>(hints_ret);
			miqt_exec_callback_QGraphicsBlurEffect_blurHintsChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsBlurEffect_blurHintsChanged_release(slot); }
	};
	MiqtVirtualQGraphicsBlurEffect::connect(self, static_cast<void (QGraphicsBlurEffect::*)(QGraphicsBlurEffect::BlurHints)>(&QGraphicsBlurEffect::blurHintsChanged), self, caller{slot});
}

struct miqt_string QGraphicsBlurEffect_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsBlurEffect::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsBlurEffect_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsBlurEffect::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsBlurEffect_trUtf82(const char* s, const char* c) {
	QString _ret = QGraphicsBlurEffect::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsBlurEffect_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QGraphicsBlurEffect::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QGraphicsBlurEffect_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQGraphicsBlurEffect*)(self) )->virtualbase_metaObject();
}

void* QGraphicsBlurEffect_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQGraphicsBlurEffect*)(self) )->virtualbase_metacast(param1);
}

int QGraphicsBlurEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQGraphicsBlurEffect*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QRectF* QGraphicsBlurEffect_virtualbase_boundingRectFor(const void* self, QRectF* rect) {
	return ( (const MiqtVirtualQGraphicsBlurEffect*)(self) )->virtualbase_boundingRectFor(rect);
}

void QGraphicsBlurEffect_virtualbase_draw(void* self, QPainter* painter) {
	( (MiqtVirtualQGraphicsBlurEffect*)(self) )->virtualbase_draw(painter);
}

void QGraphicsBlurEffect_virtualbase_sourceChanged(void* self, int flags) {
	( (MiqtVirtualQGraphicsBlurEffect*)(self) )->virtualbase_sourceChanged(flags);
}

bool QGraphicsBlurEffect_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQGraphicsBlurEffect*)(self) )->virtualbase_event(event);
}

bool QGraphicsBlurEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsBlurEffect*)(self) )->virtualbase_eventFilter(watched, event);
}

void QGraphicsBlurEffect_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQGraphicsBlurEffect*)(self) )->virtualbase_timerEvent(event);
}

void QGraphicsBlurEffect_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQGraphicsBlurEffect*)(self) )->virtualbase_childEvent(event);
}

void QGraphicsBlurEffect_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGraphicsBlurEffect*)(self) )->virtualbase_customEvent(event);
}

void QGraphicsBlurEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsBlurEffect*)(self) )->virtualbase_connectNotify(signal);
}

void QGraphicsBlurEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsBlurEffect*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QGraphicsBlurEffect_staticMetaObject() { return &QGraphicsBlurEffect::staticMetaObject; }
void QGraphicsBlurEffect_delete(QGraphicsBlurEffect* self) {
	delete self;
}

class MiqtVirtualQGraphicsDropShadowEffect final : public QGraphicsDropShadowEffect {
	struct QGraphicsDropShadowEffect_VTable* vtbl;
public:

	MiqtVirtualQGraphicsDropShadowEffect(struct QGraphicsDropShadowEffect_VTable* vtbl): QGraphicsDropShadowEffect(), vtbl(vtbl) {};
	MiqtVirtualQGraphicsDropShadowEffect(struct QGraphicsDropShadowEffect_VTable* vtbl, QObject* parent): QGraphicsDropShadowEffect(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGraphicsDropShadowEffect() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsDropShadowEffect::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QGraphicsDropShadowEffect::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsDropShadowEffect::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QGraphicsDropShadowEffect::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsDropShadowEffect::qt_metacall(param1, param2, param3);
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

		return QGraphicsDropShadowEffect::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRectFor(const QRectF& rect) const override {
		if (vtbl->boundingRectFor == 0) {
			return QGraphicsDropShadowEffect::boundingRectFor(rect);
		}

		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&rect_ret);

		QRectF* callback_return_value = vtbl->boundingRectFor(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_boundingRectFor(QRectF* rect) const {

		return new QRectF(QGraphicsDropShadowEffect::boundingRectFor(*rect));

	}

	// Subclass to allow providing a Go implementation
	virtual void draw(QPainter* painter) override {
		if (vtbl->draw == 0) {
			QGraphicsDropShadowEffect::draw(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->draw(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_draw(QPainter* painter) {

		QGraphicsDropShadowEffect::draw(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual void sourceChanged(QGraphicsEffect::ChangeFlags flags) override {
		if (vtbl->sourceChanged == 0) {
			QGraphicsDropShadowEffect::sourceChanged(flags);
			return;
		}

		QGraphicsEffect::ChangeFlags flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		vtbl->sourceChanged(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_sourceChanged(int flags) {

		QGraphicsDropShadowEffect::sourceChanged(static_cast<QGraphicsEffect::ChangeFlags>(flags));

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsDropShadowEffect::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QGraphicsDropShadowEffect::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsDropShadowEffect::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QGraphicsDropShadowEffect::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsDropShadowEffect::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QGraphicsDropShadowEffect::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsDropShadowEffect::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QGraphicsDropShadowEffect::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsDropShadowEffect::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QGraphicsDropShadowEffect::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsDropShadowEffect::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QGraphicsDropShadowEffect::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsDropShadowEffect::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QGraphicsDropShadowEffect::disconnectNotify(*signal);

	}

};

QGraphicsDropShadowEffect* QGraphicsDropShadowEffect_new(struct QGraphicsDropShadowEffect_VTable* vtbl) {
	return new MiqtVirtualQGraphicsDropShadowEffect(vtbl);
}

QGraphicsDropShadowEffect* QGraphicsDropShadowEffect_new2(struct QGraphicsDropShadowEffect_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQGraphicsDropShadowEffect(vtbl, parent);
}

void QGraphicsDropShadowEffect_virtbase(QGraphicsDropShadowEffect* src, QGraphicsEffect** outptr_QGraphicsEffect) {
	*outptr_QGraphicsEffect = static_cast<QGraphicsEffect*>(src);
}

QMetaObject* QGraphicsDropShadowEffect_metaObject(const QGraphicsDropShadowEffect* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsDropShadowEffect_metacast(QGraphicsDropShadowEffect* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsDropShadowEffect_metacall(QGraphicsDropShadowEffect* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsDropShadowEffect_tr(const char* s) {
	QString _ret = QGraphicsDropShadowEffect::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsDropShadowEffect_trUtf8(const char* s) {
	QString _ret = QGraphicsDropShadowEffect::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QRectF* QGraphicsDropShadowEffect_boundingRectFor(const QGraphicsDropShadowEffect* self, QRectF* rect) {
	return new QRectF(self->boundingRectFor(*rect));
}

QPointF* QGraphicsDropShadowEffect_offset(const QGraphicsDropShadowEffect* self) {
	return new QPointF(self->offset());
}

double QGraphicsDropShadowEffect_xOffset(const QGraphicsDropShadowEffect* self) {
	qreal _ret = self->xOffset();
	return static_cast<double>(_ret);
}

double QGraphicsDropShadowEffect_yOffset(const QGraphicsDropShadowEffect* self) {
	qreal _ret = self->yOffset();
	return static_cast<double>(_ret);
}

double QGraphicsDropShadowEffect_blurRadius(const QGraphicsDropShadowEffect* self) {
	qreal _ret = self->blurRadius();
	return static_cast<double>(_ret);
}

QColor* QGraphicsDropShadowEffect_color(const QGraphicsDropShadowEffect* self) {
	return new QColor(self->color());
}

void QGraphicsDropShadowEffect_setOffset(QGraphicsDropShadowEffect* self, QPointF* ofs) {
	self->setOffset(*ofs);
}

void QGraphicsDropShadowEffect_setOffset2(QGraphicsDropShadowEffect* self, double dx, double dy) {
	self->setOffset(static_cast<qreal>(dx), static_cast<qreal>(dy));
}

void QGraphicsDropShadowEffect_setOffsetWithQreal(QGraphicsDropShadowEffect* self, double d) {
	self->setOffset(static_cast<qreal>(d));
}

void QGraphicsDropShadowEffect_setXOffset(QGraphicsDropShadowEffect* self, double dx) {
	self->setXOffset(static_cast<qreal>(dx));
}

void QGraphicsDropShadowEffect_setYOffset(QGraphicsDropShadowEffect* self, double dy) {
	self->setYOffset(static_cast<qreal>(dy));
}

void QGraphicsDropShadowEffect_setBlurRadius(QGraphicsDropShadowEffect* self, double blurRadius) {
	self->setBlurRadius(static_cast<qreal>(blurRadius));
}

void QGraphicsDropShadowEffect_setColor(QGraphicsDropShadowEffect* self, QColor* color) {
	self->setColor(*color);
}

void QGraphicsDropShadowEffect_offsetChanged(QGraphicsDropShadowEffect* self, QPointF* offset) {
	self->offsetChanged(*offset);
}

void QGraphicsDropShadowEffect_connect_offsetChanged(QGraphicsDropShadowEffect* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QPointF& offset) {
			const QPointF& offset_ret = offset;
			// Cast returned reference into pointer
			QPointF* sigval1 = const_cast<QPointF*>(&offset_ret);
			miqt_exec_callback_QGraphicsDropShadowEffect_offsetChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsDropShadowEffect_offsetChanged_release(slot); }
	};
	MiqtVirtualQGraphicsDropShadowEffect::connect(self, static_cast<void (QGraphicsDropShadowEffect::*)(const QPointF&)>(&QGraphicsDropShadowEffect::offsetChanged), self, caller{slot});
}

void QGraphicsDropShadowEffect_blurRadiusChanged(QGraphicsDropShadowEffect* self, double blurRadius) {
	self->blurRadiusChanged(static_cast<qreal>(blurRadius));
}

void QGraphicsDropShadowEffect_connect_blurRadiusChanged(QGraphicsDropShadowEffect* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(qreal blurRadius) {
			qreal blurRadius_ret = blurRadius;
			double sigval1 = static_cast<double>(blurRadius_ret);
			miqt_exec_callback_QGraphicsDropShadowEffect_blurRadiusChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsDropShadowEffect_blurRadiusChanged_release(slot); }
	};
	MiqtVirtualQGraphicsDropShadowEffect::connect(self, static_cast<void (QGraphicsDropShadowEffect::*)(qreal)>(&QGraphicsDropShadowEffect::blurRadiusChanged), self, caller{slot});
}

void QGraphicsDropShadowEffect_colorChanged(QGraphicsDropShadowEffect* self, QColor* color) {
	self->colorChanged(*color);
}

void QGraphicsDropShadowEffect_connect_colorChanged(QGraphicsDropShadowEffect* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QColor& color) {
			const QColor& color_ret = color;
			// Cast returned reference into pointer
			QColor* sigval1 = const_cast<QColor*>(&color_ret);
			miqt_exec_callback_QGraphicsDropShadowEffect_colorChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsDropShadowEffect_colorChanged_release(slot); }
	};
	MiqtVirtualQGraphicsDropShadowEffect::connect(self, static_cast<void (QGraphicsDropShadowEffect::*)(const QColor&)>(&QGraphicsDropShadowEffect::colorChanged), self, caller{slot});
}

struct miqt_string QGraphicsDropShadowEffect_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsDropShadowEffect::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsDropShadowEffect_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsDropShadowEffect::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsDropShadowEffect_trUtf82(const char* s, const char* c) {
	QString _ret = QGraphicsDropShadowEffect::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsDropShadowEffect_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QGraphicsDropShadowEffect::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QGraphicsDropShadowEffect_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQGraphicsDropShadowEffect*)(self) )->virtualbase_metaObject();
}

void* QGraphicsDropShadowEffect_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQGraphicsDropShadowEffect*)(self) )->virtualbase_metacast(param1);
}

int QGraphicsDropShadowEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQGraphicsDropShadowEffect*)(self) )->virtualbase_metacall(param1, param2, param3);
}

QRectF* QGraphicsDropShadowEffect_virtualbase_boundingRectFor(const void* self, QRectF* rect) {
	return ( (const MiqtVirtualQGraphicsDropShadowEffect*)(self) )->virtualbase_boundingRectFor(rect);
}

void QGraphicsDropShadowEffect_virtualbase_draw(void* self, QPainter* painter) {
	( (MiqtVirtualQGraphicsDropShadowEffect*)(self) )->virtualbase_draw(painter);
}

void QGraphicsDropShadowEffect_virtualbase_sourceChanged(void* self, int flags) {
	( (MiqtVirtualQGraphicsDropShadowEffect*)(self) )->virtualbase_sourceChanged(flags);
}

bool QGraphicsDropShadowEffect_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQGraphicsDropShadowEffect*)(self) )->virtualbase_event(event);
}

bool QGraphicsDropShadowEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsDropShadowEffect*)(self) )->virtualbase_eventFilter(watched, event);
}

void QGraphicsDropShadowEffect_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQGraphicsDropShadowEffect*)(self) )->virtualbase_timerEvent(event);
}

void QGraphicsDropShadowEffect_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQGraphicsDropShadowEffect*)(self) )->virtualbase_childEvent(event);
}

void QGraphicsDropShadowEffect_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGraphicsDropShadowEffect*)(self) )->virtualbase_customEvent(event);
}

void QGraphicsDropShadowEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsDropShadowEffect*)(self) )->virtualbase_connectNotify(signal);
}

void QGraphicsDropShadowEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsDropShadowEffect*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QGraphicsDropShadowEffect_staticMetaObject() { return &QGraphicsDropShadowEffect::staticMetaObject; }
void QGraphicsDropShadowEffect_delete(QGraphicsDropShadowEffect* self) {
	delete self;
}

class MiqtVirtualQGraphicsOpacityEffect final : public QGraphicsOpacityEffect {
	struct QGraphicsOpacityEffect_VTable* vtbl;
public:

	MiqtVirtualQGraphicsOpacityEffect(struct QGraphicsOpacityEffect_VTable* vtbl): QGraphicsOpacityEffect(), vtbl(vtbl) {};
	MiqtVirtualQGraphicsOpacityEffect(struct QGraphicsOpacityEffect_VTable* vtbl, QObject* parent): QGraphicsOpacityEffect(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGraphicsOpacityEffect() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QGraphicsOpacityEffect::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QGraphicsOpacityEffect::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QGraphicsOpacityEffect::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QGraphicsOpacityEffect::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QGraphicsOpacityEffect::qt_metacall(param1, param2, param3);
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

		return QGraphicsOpacityEffect::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void draw(QPainter* painter) override {
		if (vtbl->draw == 0) {
			QGraphicsOpacityEffect::draw(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->draw(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_draw(QPainter* painter) {

		QGraphicsOpacityEffect::draw(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QRectF boundingRectFor(const QRectF& sourceRect) const override {
		if (vtbl->boundingRectFor == 0) {
			return QGraphicsOpacityEffect::boundingRectFor(sourceRect);
		}

		const QRectF& sourceRect_ret = sourceRect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&sourceRect_ret);

		QRectF* callback_return_value = vtbl->boundingRectFor(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_boundingRectFor(QRectF* sourceRect) const {

		return new QRectF(QGraphicsOpacityEffect::boundingRectFor(*sourceRect));

	}

	// Subclass to allow providing a Go implementation
	virtual void sourceChanged(QGraphicsEffect::ChangeFlags flags) override {
		if (vtbl->sourceChanged == 0) {
			QGraphicsOpacityEffect::sourceChanged(flags);
			return;
		}

		QGraphicsEffect::ChangeFlags flags_ret = flags;
		int sigval1 = static_cast<int>(flags_ret);

		vtbl->sourceChanged(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_sourceChanged(int flags) {

		QGraphicsOpacityEffect::sourceChanged(static_cast<QGraphicsEffect::ChangeFlags>(flags));

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QGraphicsOpacityEffect::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QGraphicsOpacityEffect::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QGraphicsOpacityEffect::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QGraphicsOpacityEffect::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QGraphicsOpacityEffect::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QGraphicsOpacityEffect::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QGraphicsOpacityEffect::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QGraphicsOpacityEffect::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QGraphicsOpacityEffect::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QGraphicsOpacityEffect::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QGraphicsOpacityEffect::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QGraphicsOpacityEffect::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QGraphicsOpacityEffect::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QGraphicsOpacityEffect::disconnectNotify(*signal);

	}

};

QGraphicsOpacityEffect* QGraphicsOpacityEffect_new(struct QGraphicsOpacityEffect_VTable* vtbl) {
	return new MiqtVirtualQGraphicsOpacityEffect(vtbl);
}

QGraphicsOpacityEffect* QGraphicsOpacityEffect_new2(struct QGraphicsOpacityEffect_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQGraphicsOpacityEffect(vtbl, parent);
}

void QGraphicsOpacityEffect_virtbase(QGraphicsOpacityEffect* src, QGraphicsEffect** outptr_QGraphicsEffect) {
	*outptr_QGraphicsEffect = static_cast<QGraphicsEffect*>(src);
}

QMetaObject* QGraphicsOpacityEffect_metaObject(const QGraphicsOpacityEffect* self) {
	return (QMetaObject*) self->metaObject();
}

void* QGraphicsOpacityEffect_metacast(QGraphicsOpacityEffect* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QGraphicsOpacityEffect_metacall(QGraphicsOpacityEffect* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QGraphicsOpacityEffect_tr(const char* s) {
	QString _ret = QGraphicsOpacityEffect::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsOpacityEffect_trUtf8(const char* s) {
	QString _ret = QGraphicsOpacityEffect::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

double QGraphicsOpacityEffect_opacity(const QGraphicsOpacityEffect* self) {
	qreal _ret = self->opacity();
	return static_cast<double>(_ret);
}

QBrush* QGraphicsOpacityEffect_opacityMask(const QGraphicsOpacityEffect* self) {
	return new QBrush(self->opacityMask());
}

void QGraphicsOpacityEffect_setOpacity(QGraphicsOpacityEffect* self, double opacity) {
	self->setOpacity(static_cast<qreal>(opacity));
}

void QGraphicsOpacityEffect_setOpacityMask(QGraphicsOpacityEffect* self, QBrush* mask) {
	self->setOpacityMask(*mask);
}

void QGraphicsOpacityEffect_opacityChanged(QGraphicsOpacityEffect* self, double opacity) {
	self->opacityChanged(static_cast<qreal>(opacity));
}

void QGraphicsOpacityEffect_connect_opacityChanged(QGraphicsOpacityEffect* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(qreal opacity) {
			qreal opacity_ret = opacity;
			double sigval1 = static_cast<double>(opacity_ret);
			miqt_exec_callback_QGraphicsOpacityEffect_opacityChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsOpacityEffect_opacityChanged_release(slot); }
	};
	MiqtVirtualQGraphicsOpacityEffect::connect(self, static_cast<void (QGraphicsOpacityEffect::*)(qreal)>(&QGraphicsOpacityEffect::opacityChanged), self, caller{slot});
}

void QGraphicsOpacityEffect_opacityMaskChanged(QGraphicsOpacityEffect* self, QBrush* mask) {
	self->opacityMaskChanged(*mask);
}

void QGraphicsOpacityEffect_connect_opacityMaskChanged(QGraphicsOpacityEffect* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(const QBrush& mask) {
			const QBrush& mask_ret = mask;
			// Cast returned reference into pointer
			QBrush* sigval1 = const_cast<QBrush*>(&mask_ret);
			miqt_exec_callback_QGraphicsOpacityEffect_opacityMaskChanged(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QGraphicsOpacityEffect_opacityMaskChanged_release(slot); }
	};
	MiqtVirtualQGraphicsOpacityEffect::connect(self, static_cast<void (QGraphicsOpacityEffect::*)(const QBrush&)>(&QGraphicsOpacityEffect::opacityMaskChanged), self, caller{slot});
}

struct miqt_string QGraphicsOpacityEffect_tr2(const char* s, const char* c) {
	QString _ret = QGraphicsOpacityEffect::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsOpacityEffect_tr3(const char* s, const char* c, int n) {
	QString _ret = QGraphicsOpacityEffect::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsOpacityEffect_trUtf82(const char* s, const char* c) {
	QString _ret = QGraphicsOpacityEffect::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QGraphicsOpacityEffect_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QGraphicsOpacityEffect::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QGraphicsOpacityEffect_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQGraphicsOpacityEffect*)(self) )->virtualbase_metaObject();
}

void* QGraphicsOpacityEffect_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQGraphicsOpacityEffect*)(self) )->virtualbase_metacast(param1);
}

int QGraphicsOpacityEffect_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQGraphicsOpacityEffect*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QGraphicsOpacityEffect_virtualbase_draw(void* self, QPainter* painter) {
	( (MiqtVirtualQGraphicsOpacityEffect*)(self) )->virtualbase_draw(painter);
}

QRectF* QGraphicsOpacityEffect_virtualbase_boundingRectFor(const void* self, QRectF* sourceRect) {
	return ( (const MiqtVirtualQGraphicsOpacityEffect*)(self) )->virtualbase_boundingRectFor(sourceRect);
}

void QGraphicsOpacityEffect_virtualbase_sourceChanged(void* self, int flags) {
	( (MiqtVirtualQGraphicsOpacityEffect*)(self) )->virtualbase_sourceChanged(flags);
}

bool QGraphicsOpacityEffect_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQGraphicsOpacityEffect*)(self) )->virtualbase_event(event);
}

bool QGraphicsOpacityEffect_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQGraphicsOpacityEffect*)(self) )->virtualbase_eventFilter(watched, event);
}

void QGraphicsOpacityEffect_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQGraphicsOpacityEffect*)(self) )->virtualbase_timerEvent(event);
}

void QGraphicsOpacityEffect_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQGraphicsOpacityEffect*)(self) )->virtualbase_childEvent(event);
}

void QGraphicsOpacityEffect_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQGraphicsOpacityEffect*)(self) )->virtualbase_customEvent(event);
}

void QGraphicsOpacityEffect_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsOpacityEffect*)(self) )->virtualbase_connectNotify(signal);
}

void QGraphicsOpacityEffect_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQGraphicsOpacityEffect*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QGraphicsOpacityEffect_staticMetaObject() { return &QGraphicsOpacityEffect::staticMetaObject; }
void QGraphicsOpacityEffect_delete(QGraphicsOpacityEffect* self) {
	delete self;
}

