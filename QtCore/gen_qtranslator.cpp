#include <QChildEvent>
#include <QEvent>
#include <QLocale>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QTranslator>
#include <qtranslator.h>
#include "gen_qtranslator.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQTranslator final : public QTranslator {
	struct QTranslator_VTable* vtbl;
public:

	MiqtVirtualQTranslator(struct QTranslator_VTable* vtbl): QTranslator(), vtbl(vtbl) {};
	MiqtVirtualQTranslator(struct QTranslator_VTable* vtbl, QObject* parent): QTranslator(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQTranslator() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTranslator::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QTranslator::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTranslator::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QTranslator::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTranslator::qt_metacall(param1, param2, param3);
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

		return QTranslator::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual QString translate(const char* context, const char* sourceText, const char* disambiguation, int n) const override {
		if (vtbl->translate == 0) {
			return QTranslator::translate(context, sourceText, disambiguation, n);
		}

		const char* sigval1 = (const char*) context;
		const char* sigval2 = (const char*) sourceText;
		const char* sigval3 = (const char*) disambiguation;
		int sigval4 = n;

		struct miqt_string callback_return_value = vtbl->translate(vtbl, this, sigval1, sigval2, sigval3, sigval4);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);

		return callback_return_value_QString;
	}

	// Wrapper to allow calling protected method
	struct miqt_string virtualbase_translate(const char* context, const char* sourceText, const char* disambiguation, int n) const {

		QString _ret = QTranslator::translate(context, sourceText, disambiguation, static_cast<int>(n));
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _b = _ret.toUtf8();
		struct miqt_string _ms;
		_ms.len = _b.length();
		_ms.data = static_cast<char*>(malloc(_ms.len));
		memcpy(_ms.data, _b.data(), _ms.len);
		return _ms;

	}

	// Subclass to allow providing a Go implementation
	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QTranslator::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isEmpty() const {

		return QTranslator::isEmpty();

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTranslator::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QTranslator::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTranslator::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QTranslator::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTranslator::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QTranslator::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTranslator::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QTranslator::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTranslator::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QTranslator::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTranslator::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QTranslator::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTranslator::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QTranslator::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend QObject* QTranslator_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QTranslator_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QTranslator_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QTranslator_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QTranslator* QTranslator_new(struct QTranslator_VTable* vtbl) {
	return new MiqtVirtualQTranslator(vtbl);
}

QTranslator* QTranslator_new2(struct QTranslator_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQTranslator(vtbl, parent);
}

void QTranslator_virtbase(QTranslator* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QTranslator_metaObject(const QTranslator* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTranslator_metacast(QTranslator* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTranslator_metacall(QTranslator* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTranslator_tr(const char* s) {
	QString _ret = QTranslator::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTranslator_trUtf8(const char* s) {
	QString _ret = QTranslator::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTranslator_translate(const QTranslator* self, const char* context, const char* sourceText, const char* disambiguation, int n) {
	QString _ret = self->translate(context, sourceText, disambiguation, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QTranslator_isEmpty(const QTranslator* self) {
	return self->isEmpty();
}

struct miqt_string QTranslator_language(const QTranslator* self) {
	QString _ret = self->language();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTranslator_filePath(const QTranslator* self) {
	QString _ret = self->filePath();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QTranslator_load(QTranslator* self, struct miqt_string filename) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return self->load(filename_QString);
}

bool QTranslator_load2(QTranslator* self, QLocale* locale, struct miqt_string filename) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return self->load(*locale, filename_QString);
}

bool QTranslator_load3(QTranslator* self, const unsigned char* data, int len) {
	return self->load(static_cast<const uchar*>(data), static_cast<int>(len));
}

struct miqt_string QTranslator_tr2(const char* s, const char* c) {
	QString _ret = QTranslator::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTranslator_tr3(const char* s, const char* c, int n) {
	QString _ret = QTranslator::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTranslator_trUtf82(const char* s, const char* c) {
	QString _ret = QTranslator::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTranslator_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QTranslator::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QTranslator_load22(QTranslator* self, struct miqt_string filename, struct miqt_string directory) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	QString directory_QString = QString::fromUtf8(directory.data, directory.len);
	return self->load(filename_QString, directory_QString);
}

bool QTranslator_load32(QTranslator* self, struct miqt_string filename, struct miqt_string directory, struct miqt_string search_delimiters) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	QString directory_QString = QString::fromUtf8(directory.data, directory.len);
	QString search_delimiters_QString = QString::fromUtf8(search_delimiters.data, search_delimiters.len);
	return self->load(filename_QString, directory_QString, search_delimiters_QString);
}

bool QTranslator_load4(QTranslator* self, struct miqt_string filename, struct miqt_string directory, struct miqt_string search_delimiters, struct miqt_string suffix) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	QString directory_QString = QString::fromUtf8(directory.data, directory.len);
	QString search_delimiters_QString = QString::fromUtf8(search_delimiters.data, search_delimiters.len);
	QString suffix_QString = QString::fromUtf8(suffix.data, suffix.len);
	return self->load(filename_QString, directory_QString, search_delimiters_QString, suffix_QString);
}

bool QTranslator_load33(QTranslator* self, QLocale* locale, struct miqt_string filename, struct miqt_string prefix) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);
	return self->load(*locale, filename_QString, prefix_QString);
}

bool QTranslator_load42(QTranslator* self, QLocale* locale, struct miqt_string filename, struct miqt_string prefix, struct miqt_string directory) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);
	QString directory_QString = QString::fromUtf8(directory.data, directory.len);
	return self->load(*locale, filename_QString, prefix_QString, directory_QString);
}

bool QTranslator_load5(QTranslator* self, QLocale* locale, struct miqt_string filename, struct miqt_string prefix, struct miqt_string directory, struct miqt_string suffix) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	QString prefix_QString = QString::fromUtf8(prefix.data, prefix.len);
	QString directory_QString = QString::fromUtf8(directory.data, directory.len);
	QString suffix_QString = QString::fromUtf8(suffix.data, suffix.len);
	return self->load(*locale, filename_QString, prefix_QString, directory_QString, suffix_QString);
}

bool QTranslator_load34(QTranslator* self, const unsigned char* data, int len, struct miqt_string directory) {
	QString directory_QString = QString::fromUtf8(directory.data, directory.len);
	return self->load(static_cast<const uchar*>(data), static_cast<int>(len), directory_QString);
}

QMetaObject* QTranslator_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQTranslator*)(self) )->virtualbase_metaObject();
}

void* QTranslator_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQTranslator*)(self) )->virtualbase_metacast(param1);
}

int QTranslator_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQTranslator*)(self) )->virtualbase_metacall(param1, param2, param3);
}

struct miqt_string QTranslator_virtualbase_translate(const void* self, const char* context, const char* sourceText, const char* disambiguation, int n) {
	return ( (const MiqtVirtualQTranslator*)(self) )->virtualbase_translate(context, sourceText, disambiguation, n);
}

bool QTranslator_virtualbase_isEmpty(const void* self) {
	return ( (const MiqtVirtualQTranslator*)(self) )->virtualbase_isEmpty();
}

bool QTranslator_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQTranslator*)(self) )->virtualbase_event(event);
}

bool QTranslator_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQTranslator*)(self) )->virtualbase_eventFilter(watched, event);
}

void QTranslator_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQTranslator*)(self) )->virtualbase_timerEvent(event);
}

void QTranslator_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQTranslator*)(self) )->virtualbase_childEvent(event);
}

void QTranslator_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQTranslator*)(self) )->virtualbase_customEvent(event);
}

void QTranslator_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQTranslator*)(self) )->virtualbase_connectNotify(signal);
}

void QTranslator_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQTranslator*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QTranslator_staticMetaObject() { return &QTranslator::staticMetaObject; }
QObject* QTranslator_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQTranslator* self_cast = dynamic_cast<MiqtVirtualQTranslator*>( (QTranslator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QTranslator_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	MiqtVirtualQTranslator* self_cast = dynamic_cast<MiqtVirtualQTranslator*>( (QTranslator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QTranslator_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	MiqtVirtualQTranslator* self_cast = dynamic_cast<MiqtVirtualQTranslator*>( (QTranslator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QTranslator_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	MiqtVirtualQTranslator* self_cast = dynamic_cast<MiqtVirtualQTranslator*>( (QTranslator*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QTranslator_delete(QTranslator* self) {
	delete self;
}

