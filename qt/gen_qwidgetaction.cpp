#include <QAction>
#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QWidget>
#include <QWidgetAction>
#include <qwidgetaction.h>
#include "gen_qwidgetaction.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQWidgetAction final : public QWidgetAction {
	struct QWidgetAction_VTable* vtbl;
public:

	MiqtVirtualQWidgetAction(struct QWidgetAction_VTable* vtbl, QObject* parent): QWidgetAction(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQWidgetAction() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QWidgetAction::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QWidgetAction::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QWidgetAction::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QWidgetAction::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QWidgetAction::qt_metacall(param1, param2, param3);
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

		return QWidgetAction::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* param1) override {
		if (vtbl->event == 0) {
			return QWidgetAction::event(param1);
		}

		QEvent* sigval1 = param1;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* param1) {

		return QWidgetAction::event(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* param1, QEvent* param2) override {
		if (vtbl->eventFilter == 0) {
			return QWidgetAction::eventFilter(param1, param2);
		}

		QObject* sigval1 = param1;
		QEvent* sigval2 = param2;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* param1, QEvent* param2) {

		return QWidgetAction::eventFilter(param1, param2);

	}

	// Subclass to allow providing a Go implementation
	virtual QWidget* createWidget(QWidget* parent) override {
		if (vtbl->createWidget == 0) {
			return QWidgetAction::createWidget(parent);
		}

		QWidget* sigval1 = parent;

		QWidget* callback_return_value = vtbl->createWidget(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QWidget* virtualbase_createWidget(QWidget* parent) {

		return QWidgetAction::createWidget(parent);

	}

	// Subclass to allow providing a Go implementation
	virtual void deleteWidget(QWidget* widget) override {
		if (vtbl->deleteWidget == 0) {
			QWidgetAction::deleteWidget(widget);
			return;
		}

		QWidget* sigval1 = widget;

		vtbl->deleteWidget(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_deleteWidget(QWidget* widget) {

		QWidgetAction::deleteWidget(widget);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QWidgetAction::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QWidgetAction::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QWidgetAction::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QWidgetAction::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QWidgetAction::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QWidgetAction::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QWidgetAction::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QWidgetAction::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QWidgetAction::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QWidgetAction::disconnectNotify(*signal);

	}

};

QWidgetAction* QWidgetAction_new(struct QWidgetAction_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQWidgetAction(vtbl, parent);
}

void QWidgetAction_virtbase(QWidgetAction* src, QAction** outptr_QAction) {
	*outptr_QAction = static_cast<QAction*>(src);
}

QMetaObject* QWidgetAction_metaObject(const QWidgetAction* self) {
	return (QMetaObject*) self->metaObject();
}

void* QWidgetAction_metacast(QWidgetAction* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QWidgetAction_metacall(QWidgetAction* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QWidgetAction_tr(const char* s) {
	QString _ret = QWidgetAction::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWidgetAction_trUtf8(const char* s) {
	QString _ret = QWidgetAction::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QWidgetAction_setDefaultWidget(QWidgetAction* self, QWidget* w) {
	self->setDefaultWidget(w);
}

QWidget* QWidgetAction_defaultWidget(const QWidgetAction* self) {
	return self->defaultWidget();
}

QWidget* QWidgetAction_requestWidget(QWidgetAction* self, QWidget* parent) {
	return self->requestWidget(parent);
}

void QWidgetAction_releaseWidget(QWidgetAction* self, QWidget* widget) {
	self->releaseWidget(widget);
}

struct miqt_string QWidgetAction_tr2(const char* s, const char* c) {
	QString _ret = QWidgetAction::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWidgetAction_tr3(const char* s, const char* c, int n) {
	QString _ret = QWidgetAction::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWidgetAction_trUtf82(const char* s, const char* c) {
	QString _ret = QWidgetAction::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QWidgetAction_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QWidgetAction::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QWidgetAction_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQWidgetAction*)(self) )->virtualbase_metaObject();
}

void* QWidgetAction_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQWidgetAction*)(self) )->virtualbase_metacast(param1);
}

int QWidgetAction_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQWidgetAction*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QWidgetAction_virtualbase_event(void* self, QEvent* param1) {
	return ( (MiqtVirtualQWidgetAction*)(self) )->virtualbase_event(param1);
}

bool QWidgetAction_virtualbase_eventFilter(void* self, QObject* param1, QEvent* param2) {
	return ( (MiqtVirtualQWidgetAction*)(self) )->virtualbase_eventFilter(param1, param2);
}

QWidget* QWidgetAction_virtualbase_createWidget(void* self, QWidget* parent) {
	return ( (MiqtVirtualQWidgetAction*)(self) )->virtualbase_createWidget(parent);
}

void QWidgetAction_virtualbase_deleteWidget(void* self, QWidget* widget) {
	( (MiqtVirtualQWidgetAction*)(self) )->virtualbase_deleteWidget(widget);
}

void QWidgetAction_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQWidgetAction*)(self) )->virtualbase_timerEvent(event);
}

void QWidgetAction_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQWidgetAction*)(self) )->virtualbase_childEvent(event);
}

void QWidgetAction_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQWidgetAction*)(self) )->virtualbase_customEvent(event);
}

void QWidgetAction_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQWidgetAction*)(self) )->virtualbase_connectNotify(signal);
}

void QWidgetAction_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQWidgetAction*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QWidgetAction_staticMetaObject() { return &QWidgetAction::staticMetaObject; }
void QWidgetAction_delete(QWidgetAction* self) {
	delete self;
}

