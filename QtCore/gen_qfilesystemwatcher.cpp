#include <QChildEvent>
#include <QEvent>
#include <QFileSystemWatcher>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qfilesystemwatcher.h>
#include "gen_qfilesystemwatcher.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQFileSystemWatcher final : public QFileSystemWatcher {
	struct QFileSystemWatcher_VTable* vtbl;
public:

	MiqtVirtualQFileSystemWatcher(struct QFileSystemWatcher_VTable* vtbl): QFileSystemWatcher(), vtbl(vtbl) {};
	MiqtVirtualQFileSystemWatcher(struct QFileSystemWatcher_VTable* vtbl, const QStringList& paths): QFileSystemWatcher(paths), vtbl(vtbl) {};
	MiqtVirtualQFileSystemWatcher(struct QFileSystemWatcher_VTable* vtbl, QObject* parent): QFileSystemWatcher(parent), vtbl(vtbl) {};
	MiqtVirtualQFileSystemWatcher(struct QFileSystemWatcher_VTable* vtbl, const QStringList& paths, QObject* parent): QFileSystemWatcher(paths, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQFileSystemWatcher() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QFileSystemWatcher::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QFileSystemWatcher::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QFileSystemWatcher::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QFileSystemWatcher::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QFileSystemWatcher::qt_metacall(param1, param2, param3);
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

		return QFileSystemWatcher::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QFileSystemWatcher::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QFileSystemWatcher::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QFileSystemWatcher::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QFileSystemWatcher::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QFileSystemWatcher::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QFileSystemWatcher::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QFileSystemWatcher::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QFileSystemWatcher::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QFileSystemWatcher::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QFileSystemWatcher::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QFileSystemWatcher::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QFileSystemWatcher::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QFileSystemWatcher::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QFileSystemWatcher::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend QObject* QFileSystemWatcher_protectedbase_sender(const void* self);
	friend int QFileSystemWatcher_protectedbase_senderSignalIndex(const void* self);
	friend int QFileSystemWatcher_protectedbase_receivers(const void* self, const char* signal);
	friend bool QFileSystemWatcher_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QFileSystemWatcher* QFileSystemWatcher_new(struct QFileSystemWatcher_VTable* vtbl) {
	return new MiqtVirtualQFileSystemWatcher(vtbl);
}

QFileSystemWatcher* QFileSystemWatcher_new2(struct QFileSystemWatcher_VTable* vtbl, struct miqt_array /* of struct miqt_string */  paths) {
	QStringList paths_QList;
	paths_QList.reserve(paths.len);
	struct miqt_string* paths_arr = static_cast<struct miqt_string*>(paths.data);
	for(size_t i = 0; i < paths.len; ++i) {
		QString paths_arr_i_QString = QString::fromUtf8(paths_arr[i].data, paths_arr[i].len);
		paths_QList.push_back(paths_arr_i_QString);
	}
	return new MiqtVirtualQFileSystemWatcher(vtbl, paths_QList);
}

QFileSystemWatcher* QFileSystemWatcher_new3(struct QFileSystemWatcher_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQFileSystemWatcher(vtbl, parent);
}

QFileSystemWatcher* QFileSystemWatcher_new4(struct QFileSystemWatcher_VTable* vtbl, struct miqt_array /* of struct miqt_string */  paths, QObject* parent) {
	QStringList paths_QList;
	paths_QList.reserve(paths.len);
	struct miqt_string* paths_arr = static_cast<struct miqt_string*>(paths.data);
	for(size_t i = 0; i < paths.len; ++i) {
		QString paths_arr_i_QString = QString::fromUtf8(paths_arr[i].data, paths_arr[i].len);
		paths_QList.push_back(paths_arr_i_QString);
	}
	return new MiqtVirtualQFileSystemWatcher(vtbl, paths_QList, parent);
}

void QFileSystemWatcher_virtbase(QFileSystemWatcher* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QFileSystemWatcher_metaObject(const QFileSystemWatcher* self) {
	return (QMetaObject*) self->metaObject();
}

void* QFileSystemWatcher_metacast(QFileSystemWatcher* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QFileSystemWatcher_metacall(QFileSystemWatcher* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QFileSystemWatcher_tr(const char* s) {
	QString _ret = QFileSystemWatcher::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QFileSystemWatcher_addPath(QFileSystemWatcher* self, struct miqt_string file) {
	QString file_QString = QString::fromUtf8(file.data, file.len);
	return self->addPath(file_QString);
}

struct miqt_array /* of struct miqt_string */  QFileSystemWatcher_addPaths(QFileSystemWatcher* self, struct miqt_array /* of struct miqt_string */  files) {
	QStringList files_QList;
	files_QList.reserve(files.len);
	struct miqt_string* files_arr = static_cast<struct miqt_string*>(files.data);
	for(size_t i = 0; i < files.len; ++i) {
		QString files_arr_i_QString = QString::fromUtf8(files_arr[i].data, files_arr[i].len);
		files_QList.push_back(files_arr_i_QString);
	}
	QStringList _ret = self->addPaths(files_QList);
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

bool QFileSystemWatcher_removePath(QFileSystemWatcher* self, struct miqt_string file) {
	QString file_QString = QString::fromUtf8(file.data, file.len);
	return self->removePath(file_QString);
}

struct miqt_array /* of struct miqt_string */  QFileSystemWatcher_removePaths(QFileSystemWatcher* self, struct miqt_array /* of struct miqt_string */  files) {
	QStringList files_QList;
	files_QList.reserve(files.len);
	struct miqt_string* files_arr = static_cast<struct miqt_string*>(files.data);
	for(size_t i = 0; i < files.len; ++i) {
		QString files_arr_i_QString = QString::fromUtf8(files_arr[i].data, files_arr[i].len);
		files_QList.push_back(files_arr_i_QString);
	}
	QStringList _ret = self->removePaths(files_QList);
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

struct miqt_array /* of struct miqt_string */  QFileSystemWatcher_files(const QFileSystemWatcher* self) {
	QStringList _ret = self->files();
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

struct miqt_array /* of struct miqt_string */  QFileSystemWatcher_directories(const QFileSystemWatcher* self) {
	QStringList _ret = self->directories();
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

struct miqt_string QFileSystemWatcher_tr2(const char* s, const char* c) {
	QString _ret = QFileSystemWatcher::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFileSystemWatcher_tr3(const char* s, const char* c, int n) {
	QString _ret = QFileSystemWatcher::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QFileSystemWatcher_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQFileSystemWatcher*)(self) )->virtualbase_metaObject();
}

void* QFileSystemWatcher_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQFileSystemWatcher*)(self) )->virtualbase_metacast(param1);
}

int QFileSystemWatcher_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQFileSystemWatcher*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QFileSystemWatcher_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQFileSystemWatcher*)(self) )->virtualbase_event(event);
}

bool QFileSystemWatcher_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQFileSystemWatcher*)(self) )->virtualbase_eventFilter(watched, event);
}

void QFileSystemWatcher_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQFileSystemWatcher*)(self) )->virtualbase_timerEvent(event);
}

void QFileSystemWatcher_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQFileSystemWatcher*)(self) )->virtualbase_childEvent(event);
}

void QFileSystemWatcher_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQFileSystemWatcher*)(self) )->virtualbase_customEvent(event);
}

void QFileSystemWatcher_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQFileSystemWatcher*)(self) )->virtualbase_connectNotify(signal);
}

void QFileSystemWatcher_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQFileSystemWatcher*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QFileSystemWatcher_staticMetaObject() { return &QFileSystemWatcher::staticMetaObject; }
QObject* QFileSystemWatcher_protectedbase_sender(const void* self) {
	MiqtVirtualQFileSystemWatcher* self_cast = static_cast<MiqtVirtualQFileSystemWatcher*>( (QFileSystemWatcher*)(self) );
	
	return self_cast->sender();

}

int QFileSystemWatcher_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQFileSystemWatcher* self_cast = static_cast<MiqtVirtualQFileSystemWatcher*>( (QFileSystemWatcher*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QFileSystemWatcher_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQFileSystemWatcher* self_cast = static_cast<MiqtVirtualQFileSystemWatcher*>( (QFileSystemWatcher*)(self) );
	
	return self_cast->receivers(signal);

}

bool QFileSystemWatcher_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQFileSystemWatcher* self_cast = static_cast<MiqtVirtualQFileSystemWatcher*>( (QFileSystemWatcher*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QFileSystemWatcher_delete(QFileSystemWatcher* self) {
	delete self;
}

