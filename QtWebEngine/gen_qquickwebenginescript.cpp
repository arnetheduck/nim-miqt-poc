#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QQuickWebEngineScript>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <qquickwebenginescript.h>
#include "gen_qquickwebenginescript.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QQuickWebEngineScript_nameChanged(intptr_t, struct miqt_string);
void miqt_exec_callback_QQuickWebEngineScript_sourceUrlChanged(intptr_t, QUrl*);
void miqt_exec_callback_QQuickWebEngineScript_sourceCodeChanged(intptr_t, struct miqt_string);
void miqt_exec_callback_QQuickWebEngineScript_injectionPointChanged(intptr_t, int);
void miqt_exec_callback_QQuickWebEngineScript_worldIdChanged(intptr_t, int);
void miqt_exec_callback_QQuickWebEngineScript_runOnSubframesChanged(intptr_t, bool);
void miqt_exec_callback_QQuickWebEngineScript_timerEvent(QQuickWebEngineScript*, intptr_t, QTimerEvent*);
bool miqt_exec_callback_QQuickWebEngineScript_event(QQuickWebEngineScript*, intptr_t, QEvent*);
bool miqt_exec_callback_QQuickWebEngineScript_eventFilter(QQuickWebEngineScript*, intptr_t, QObject*, QEvent*);
void miqt_exec_callback_QQuickWebEngineScript_childEvent(QQuickWebEngineScript*, intptr_t, QChildEvent*);
void miqt_exec_callback_QQuickWebEngineScript_customEvent(QQuickWebEngineScript*, intptr_t, QEvent*);
void miqt_exec_callback_QQuickWebEngineScript_connectNotify(QQuickWebEngineScript*, intptr_t, QMetaMethod*);
void miqt_exec_callback_QQuickWebEngineScript_disconnectNotify(QQuickWebEngineScript*, intptr_t, QMetaMethod*);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQQuickWebEngineScript final : public QQuickWebEngineScript {
public:

	MiqtVirtualQQuickWebEngineScript(): QQuickWebEngineScript() {};
	MiqtVirtualQQuickWebEngineScript(QObject* parent): QQuickWebEngineScript(parent) {};

	virtual ~MiqtVirtualQQuickWebEngineScript() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__timerEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* e) override {
		if (handle__timerEvent == 0) {
			QQuickWebEngineScript::timerEvent(e);
			return;
		}
		
		QTimerEvent* sigval1 = e;

		miqt_exec_callback_QQuickWebEngineScript_timerEvent(this, handle__timerEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* e) {

		QQuickWebEngineScript::timerEvent(e);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__event = 0;

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (handle__event == 0) {
			return QQuickWebEngineScript::event(event);
		}
		
		QEvent* sigval1 = event;

		bool callback_return_value = miqt_exec_callback_QQuickWebEngineScript_event(this, handle__event, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QQuickWebEngineScript::event(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__eventFilter = 0;

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (handle__eventFilter == 0) {
			return QQuickWebEngineScript::eventFilter(watched, event);
		}
		
		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = miqt_exec_callback_QQuickWebEngineScript_eventFilter(this, handle__eventFilter, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QQuickWebEngineScript::eventFilter(watched, event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__childEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (handle__childEvent == 0) {
			QQuickWebEngineScript::childEvent(event);
			return;
		}
		
		QChildEvent* sigval1 = event;

		miqt_exec_callback_QQuickWebEngineScript_childEvent(this, handle__childEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QQuickWebEngineScript::childEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__customEvent = 0;

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (handle__customEvent == 0) {
			QQuickWebEngineScript::customEvent(event);
			return;
		}
		
		QEvent* sigval1 = event;

		miqt_exec_callback_QQuickWebEngineScript_customEvent(this, handle__customEvent, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QQuickWebEngineScript::customEvent(event);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__connectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (handle__connectNotify == 0) {
			QQuickWebEngineScript::connectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQuickWebEngineScript_connectNotify(this, handle__connectNotify, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QQuickWebEngineScript::connectNotify(*signal);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__disconnectNotify = 0;

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (handle__disconnectNotify == 0) {
			QQuickWebEngineScript::disconnectNotify(signal);
			return;
		}
		
		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		miqt_exec_callback_QQuickWebEngineScript_disconnectNotify(this, handle__disconnectNotify, sigval1);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QQuickWebEngineScript::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend QObject* QQuickWebEngineScript_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickWebEngineScript_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QQuickWebEngineScript_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QQuickWebEngineScript_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QQuickWebEngineScript* QQuickWebEngineScript_new() {
	return new MiqtVirtualQQuickWebEngineScript();
}

QQuickWebEngineScript* QQuickWebEngineScript_new2(QObject* parent) {
	return new MiqtVirtualQQuickWebEngineScript(parent);
}

void QQuickWebEngineScript_virtbase(QQuickWebEngineScript* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QQuickWebEngineScript_metaObject(const QQuickWebEngineScript* self) {
	return (QMetaObject*) self->metaObject();
}

void* QQuickWebEngineScript_metacast(QQuickWebEngineScript* self, const char* param1) {
	return self->qt_metacast(param1);
}

struct miqt_string QQuickWebEngineScript_tr(const char* s) {
	QString _ret = QQuickWebEngineScript::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickWebEngineScript_trUtf8(const char* s) {
	QString _ret = QQuickWebEngineScript::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickWebEngineScript_toString(const QQuickWebEngineScript* self) {
	QString _ret = self->toString();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickWebEngineScript_name(const QQuickWebEngineScript* self) {
	QString _ret = self->name();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QUrl* QQuickWebEngineScript_sourceUrl(const QQuickWebEngineScript* self) {
	return new QUrl(self->sourceUrl());
}

struct miqt_string QQuickWebEngineScript_sourceCode(const QQuickWebEngineScript* self) {
	QString _ret = self->sourceCode();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QQuickWebEngineScript_injectionPoint(const QQuickWebEngineScript* self) {
	QQuickWebEngineScript::InjectionPoint _ret = self->injectionPoint();
	return static_cast<int>(_ret);
}

int QQuickWebEngineScript_worldId(const QQuickWebEngineScript* self) {
	QQuickWebEngineScript::ScriptWorldId _ret = self->worldId();
	return static_cast<int>(_ret);
}

bool QQuickWebEngineScript_runOnSubframes(const QQuickWebEngineScript* self) {
	return self->runOnSubframes();
}

void QQuickWebEngineScript_setName(QQuickWebEngineScript* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->setName(name_QString);
}

void QQuickWebEngineScript_setSourceUrl(QQuickWebEngineScript* self, QUrl* url) {
	self->setSourceUrl(*url);
}

void QQuickWebEngineScript_setSourceCode(QQuickWebEngineScript* self, struct miqt_string code) {
	QString code_QString = QString::fromUtf8(code.data, code.len);
	self->setSourceCode(code_QString);
}

void QQuickWebEngineScript_setInjectionPoint(QQuickWebEngineScript* self, int injectionPoint) {
	self->setInjectionPoint(static_cast<QQuickWebEngineScript::InjectionPoint>(injectionPoint));
}

void QQuickWebEngineScript_setWorldId(QQuickWebEngineScript* self, int scriptWorldId) {
	self->setWorldId(static_cast<QQuickWebEngineScript::ScriptWorldId>(scriptWorldId));
}

void QQuickWebEngineScript_setRunOnSubframes(QQuickWebEngineScript* self, bool on) {
	self->setRunOnSubframes(on);
}

void QQuickWebEngineScript_nameChanged(QQuickWebEngineScript* self, struct miqt_string name) {
	QString name_QString = QString::fromUtf8(name.data, name.len);
	self->nameChanged(name_QString);
}

void QQuickWebEngineScript_connect_nameChanged(QQuickWebEngineScript* self, intptr_t slot) {
	MiqtVirtualQQuickWebEngineScript::connect(self, static_cast<void (QQuickWebEngineScript::*)(const QString&)>(&QQuickWebEngineScript::nameChanged), self, [=](const QString& name) {
		const QString name_ret = name;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray name_b = name_ret.toUtf8();
		struct miqt_string name_ms;
		name_ms.len = name_b.length();
		name_ms.data = static_cast<char*>(malloc(name_ms.len));
		memcpy(name_ms.data, name_b.data(), name_ms.len);
		struct miqt_string sigval1 = name_ms;
		miqt_exec_callback_QQuickWebEngineScript_nameChanged(slot, sigval1);
	});
}

void QQuickWebEngineScript_sourceUrlChanged(QQuickWebEngineScript* self, QUrl* url) {
	self->sourceUrlChanged(*url);
}

void QQuickWebEngineScript_connect_sourceUrlChanged(QQuickWebEngineScript* self, intptr_t slot) {
	MiqtVirtualQQuickWebEngineScript::connect(self, static_cast<void (QQuickWebEngineScript::*)(const QUrl&)>(&QQuickWebEngineScript::sourceUrlChanged), self, [=](const QUrl& url) {
		const QUrl& url_ret = url;
		// Cast returned reference into pointer
		QUrl* sigval1 = const_cast<QUrl*>(&url_ret);
		miqt_exec_callback_QQuickWebEngineScript_sourceUrlChanged(slot, sigval1);
	});
}

void QQuickWebEngineScript_sourceCodeChanged(QQuickWebEngineScript* self, struct miqt_string code) {
	QString code_QString = QString::fromUtf8(code.data, code.len);
	self->sourceCodeChanged(code_QString);
}

void QQuickWebEngineScript_connect_sourceCodeChanged(QQuickWebEngineScript* self, intptr_t slot) {
	MiqtVirtualQQuickWebEngineScript::connect(self, static_cast<void (QQuickWebEngineScript::*)(const QString&)>(&QQuickWebEngineScript::sourceCodeChanged), self, [=](const QString& code) {
		const QString code_ret = code;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray code_b = code_ret.toUtf8();
		struct miqt_string code_ms;
		code_ms.len = code_b.length();
		code_ms.data = static_cast<char*>(malloc(code_ms.len));
		memcpy(code_ms.data, code_b.data(), code_ms.len);
		struct miqt_string sigval1 = code_ms;
		miqt_exec_callback_QQuickWebEngineScript_sourceCodeChanged(slot, sigval1);
	});
}

void QQuickWebEngineScript_injectionPointChanged(QQuickWebEngineScript* self, int injectionPoint) {
	self->injectionPointChanged(static_cast<QQuickWebEngineScript::InjectionPoint>(injectionPoint));
}

void QQuickWebEngineScript_connect_injectionPointChanged(QQuickWebEngineScript* self, intptr_t slot) {
	MiqtVirtualQQuickWebEngineScript::connect(self, static_cast<void (QQuickWebEngineScript::*)(QQuickWebEngineScript::InjectionPoint)>(&QQuickWebEngineScript::injectionPointChanged), self, [=](QQuickWebEngineScript::InjectionPoint injectionPoint) {
		QQuickWebEngineScript::InjectionPoint injectionPoint_ret = injectionPoint;
		int sigval1 = static_cast<int>(injectionPoint_ret);
		miqt_exec_callback_QQuickWebEngineScript_injectionPointChanged(slot, sigval1);
	});
}

void QQuickWebEngineScript_worldIdChanged(QQuickWebEngineScript* self, int scriptWorldId) {
	self->worldIdChanged(static_cast<QQuickWebEngineScript::ScriptWorldId>(scriptWorldId));
}

void QQuickWebEngineScript_connect_worldIdChanged(QQuickWebEngineScript* self, intptr_t slot) {
	MiqtVirtualQQuickWebEngineScript::connect(self, static_cast<void (QQuickWebEngineScript::*)(QQuickWebEngineScript::ScriptWorldId)>(&QQuickWebEngineScript::worldIdChanged), self, [=](QQuickWebEngineScript::ScriptWorldId scriptWorldId) {
		QQuickWebEngineScript::ScriptWorldId scriptWorldId_ret = scriptWorldId;
		int sigval1 = static_cast<int>(scriptWorldId_ret);
		miqt_exec_callback_QQuickWebEngineScript_worldIdChanged(slot, sigval1);
	});
}

void QQuickWebEngineScript_runOnSubframesChanged(QQuickWebEngineScript* self, bool on) {
	self->runOnSubframesChanged(on);
}

void QQuickWebEngineScript_connect_runOnSubframesChanged(QQuickWebEngineScript* self, intptr_t slot) {
	MiqtVirtualQQuickWebEngineScript::connect(self, static_cast<void (QQuickWebEngineScript::*)(bool)>(&QQuickWebEngineScript::runOnSubframesChanged), self, [=](bool on) {
		bool sigval1 = on;
		miqt_exec_callback_QQuickWebEngineScript_runOnSubframesChanged(slot, sigval1);
	});
}

struct miqt_string QQuickWebEngineScript_tr2(const char* s, const char* c) {
	QString _ret = QQuickWebEngineScript::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickWebEngineScript_tr3(const char* s, const char* c, int n) {
	QString _ret = QQuickWebEngineScript::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickWebEngineScript_trUtf82(const char* s, const char* c) {
	QString _ret = QQuickWebEngineScript::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QQuickWebEngineScript_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QQuickWebEngineScript::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QQuickWebEngineScript_override_virtual_timerEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickWebEngineScript* self_cast = dynamic_cast<MiqtVirtualQQuickWebEngineScript*>( (QQuickWebEngineScript*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__timerEvent = slot;
	return true;
}

void QQuickWebEngineScript_virtualbase_timerEvent(void* self, QTimerEvent* e) {
	( (MiqtVirtualQQuickWebEngineScript*)(self) )->virtualbase_timerEvent(e);
}

bool QQuickWebEngineScript_override_virtual_event(void* self, intptr_t slot) {
	MiqtVirtualQQuickWebEngineScript* self_cast = dynamic_cast<MiqtVirtualQQuickWebEngineScript*>( (QQuickWebEngineScript*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__event = slot;
	return true;
}

bool QQuickWebEngineScript_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQQuickWebEngineScript*)(self) )->virtualbase_event(event);
}

bool QQuickWebEngineScript_override_virtual_eventFilter(void* self, intptr_t slot) {
	MiqtVirtualQQuickWebEngineScript* self_cast = dynamic_cast<MiqtVirtualQQuickWebEngineScript*>( (QQuickWebEngineScript*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__eventFilter = slot;
	return true;
}

bool QQuickWebEngineScript_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQQuickWebEngineScript*)(self) )->virtualbase_eventFilter(watched, event);
}

bool QQuickWebEngineScript_override_virtual_childEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickWebEngineScript* self_cast = dynamic_cast<MiqtVirtualQQuickWebEngineScript*>( (QQuickWebEngineScript*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__childEvent = slot;
	return true;
}

void QQuickWebEngineScript_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQQuickWebEngineScript*)(self) )->virtualbase_childEvent(event);
}

bool QQuickWebEngineScript_override_virtual_customEvent(void* self, intptr_t slot) {
	MiqtVirtualQQuickWebEngineScript* self_cast = dynamic_cast<MiqtVirtualQQuickWebEngineScript*>( (QQuickWebEngineScript*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__customEvent = slot;
	return true;
}

void QQuickWebEngineScript_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQQuickWebEngineScript*)(self) )->virtualbase_customEvent(event);
}

bool QQuickWebEngineScript_override_virtual_connectNotify(void* self, intptr_t slot) {
	MiqtVirtualQQuickWebEngineScript* self_cast = dynamic_cast<MiqtVirtualQQuickWebEngineScript*>( (QQuickWebEngineScript*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__connectNotify = slot;
	return true;
}

void QQuickWebEngineScript_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickWebEngineScript*)(self) )->virtualbase_connectNotify(signal);
}

bool QQuickWebEngineScript_override_virtual_disconnectNotify(void* self, intptr_t slot) {
	MiqtVirtualQQuickWebEngineScript* self_cast = dynamic_cast<MiqtVirtualQQuickWebEngineScript*>( (QQuickWebEngineScript*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__disconnectNotify = slot;
	return true;
}

void QQuickWebEngineScript_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQQuickWebEngineScript*)(self) )->virtualbase_disconnectNotify(signal);
}

QObject* QQuickWebEngineScript_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQQuickWebEngineScript* self_cast = dynamic_cast<MiqtVirtualQQuickWebEngineScript*>( (QQuickWebEngineScript*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QQuickWebEngineScript_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQQuickWebEngineScript* self_cast = dynamic_cast<MiqtVirtualQQuickWebEngineScript*>( (QQuickWebEngineScript*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QQuickWebEngineScript_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	MiqtVirtualQQuickWebEngineScript* self_cast = dynamic_cast<MiqtVirtualQQuickWebEngineScript*>( (QQuickWebEngineScript*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QQuickWebEngineScript_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	MiqtVirtualQQuickWebEngineScript* self_cast = dynamic_cast<MiqtVirtualQQuickWebEngineScript*>( (QQuickWebEngineScript*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QQuickWebEngineScript_delete(QQuickWebEngineScript* self) {
	delete self;
}

