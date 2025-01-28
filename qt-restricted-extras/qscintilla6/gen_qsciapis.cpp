#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <qsciapis.h>
#include "gen_qsciapis.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QsciAPIs_apiPreparationCancelled(intptr_t);
void miqt_exec_callback_QsciAPIs_apiPreparationStarted(intptr_t);
void miqt_exec_callback_QsciAPIs_apiPreparationFinished(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQsciAPIs final : public QsciAPIs {
	struct QsciAPIs_VTable* vtbl;
public:

	MiqtVirtualQsciAPIs(struct QsciAPIs_VTable* vtbl, QsciLexer* lexer): QsciAPIs(lexer), vtbl(vtbl) {};

	virtual ~MiqtVirtualQsciAPIs() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QsciAPIs::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QsciAPIs::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QsciAPIs::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QsciAPIs::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QsciAPIs::qt_metacall(param1, param2, param3);
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

		return QsciAPIs::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void updateAutoCompletionList(const QStringList& context, QStringList& list) override {
		if (vtbl->updateAutoCompletionList == 0) {
			QsciAPIs::updateAutoCompletionList(context, list);
			return;
		}

		const QStringList& context_ret = context;
		// Convert QList<> from C++ memory to manually-managed C memory
		struct miqt_string* context_arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * context_ret.length()));
		for (size_t i = 0, e = context_ret.length(); i < e; ++i) {
			QString context_lv_ret = context_ret[i];
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray context_lv_b = context_lv_ret.toUtf8();
			struct miqt_string context_lv_ms;
			context_lv_ms.len = context_lv_b.length();
			context_lv_ms.data = static_cast<char*>(malloc(context_lv_ms.len));
			memcpy(context_lv_ms.data, context_lv_b.data(), context_lv_ms.len);
			context_arr[i] = context_lv_ms;
		}
		struct miqt_array context_out;
		context_out.len = context_ret.length();
		context_out.data = static_cast<void*>(context_arr);
		struct miqt_array /* of struct miqt_string */  sigval1 = context_out;
		QStringList& list_ret = list;
		// Convert QList<> from C++ memory to manually-managed C memory
		struct miqt_string* list_arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * list_ret.length()));
		for (size_t i = 0, e = list_ret.length(); i < e; ++i) {
			QString list_lv_ret = list_ret[i];
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray list_lv_b = list_lv_ret.toUtf8();
			struct miqt_string list_lv_ms;
			list_lv_ms.len = list_lv_b.length();
			list_lv_ms.data = static_cast<char*>(malloc(list_lv_ms.len));
			memcpy(list_lv_ms.data, list_lv_b.data(), list_lv_ms.len);
			list_arr[i] = list_lv_ms;
		}
		struct miqt_array list_out;
		list_out.len = list_ret.length();
		list_out.data = static_cast<void*>(list_arr);
		struct miqt_array /* of struct miqt_string */  sigval2 = list_out;

		vtbl->updateAutoCompletionList(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateAutoCompletionList(struct miqt_array /* of struct miqt_string */  context, struct miqt_array /* of struct miqt_string */  list) {
		QStringList context_QList;
		context_QList.reserve(context.len);
		struct miqt_string* context_arr = static_cast<struct miqt_string*>(context.data);
		for(size_t i = 0; i < context.len; ++i) {
			QString context_arr_i_QString = QString::fromUtf8(context_arr[i].data, context_arr[i].len);
			context_QList.push_back(context_arr_i_QString);
		}
		QStringList list_QList;
		list_QList.reserve(list.len);
		struct miqt_string* list_arr = static_cast<struct miqt_string*>(list.data);
		for(size_t i = 0; i < list.len; ++i) {
			QString list_arr_i_QString = QString::fromUtf8(list_arr[i].data, list_arr[i].len);
			list_QList.push_back(list_arr_i_QString);
		}

		QsciAPIs::updateAutoCompletionList(context_QList, list_QList);

	}

	// Subclass to allow providing a Go implementation
	virtual void autoCompletionSelected(const QString& sel) override {
		if (vtbl->autoCompletionSelected == 0) {
			QsciAPIs::autoCompletionSelected(sel);
			return;
		}

		const QString sel_ret = sel;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray sel_b = sel_ret.toUtf8();
		struct miqt_string sel_ms;
		sel_ms.len = sel_b.length();
		sel_ms.data = static_cast<char*>(malloc(sel_ms.len));
		memcpy(sel_ms.data, sel_b.data(), sel_ms.len);
		struct miqt_string sigval1 = sel_ms;

		vtbl->autoCompletionSelected(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_autoCompletionSelected(struct miqt_string sel) {
		QString sel_QString = QString::fromUtf8(sel.data, sel.len);

		QsciAPIs::autoCompletionSelected(sel_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual QStringList callTips(const QStringList& context, int commas, QsciScintilla::CallTipsStyle style, QList<int>& shifts) override {
		if (vtbl->callTips == 0) {
			return QsciAPIs::callTips(context, commas, style, shifts);
		}

		const QStringList& context_ret = context;
		// Convert QList<> from C++ memory to manually-managed C memory
		struct miqt_string* context_arr = static_cast<struct miqt_string*>(malloc(sizeof(struct miqt_string) * context_ret.length()));
		for (size_t i = 0, e = context_ret.length(); i < e; ++i) {
			QString context_lv_ret = context_ret[i];
			// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
			QByteArray context_lv_b = context_lv_ret.toUtf8();
			struct miqt_string context_lv_ms;
			context_lv_ms.len = context_lv_b.length();
			context_lv_ms.data = static_cast<char*>(malloc(context_lv_ms.len));
			memcpy(context_lv_ms.data, context_lv_b.data(), context_lv_ms.len);
			context_arr[i] = context_lv_ms;
		}
		struct miqt_array context_out;
		context_out.len = context_ret.length();
		context_out.data = static_cast<void*>(context_arr);
		struct miqt_array /* of struct miqt_string */  sigval1 = context_out;
		int sigval2 = commas;
		QsciScintilla::CallTipsStyle style_ret = style;
		int sigval3 = static_cast<int>(style_ret);
		QList<int>& shifts_ret = shifts;
		// Convert QList<> from C++ memory to manually-managed C memory
		int* shifts_arr = static_cast<int*>(malloc(sizeof(int) * shifts_ret.length()));
		for (size_t i = 0, e = shifts_ret.length(); i < e; ++i) {
			shifts_arr[i] = shifts_ret[i];
		}
		struct miqt_array shifts_out;
		shifts_out.len = shifts_ret.length();
		shifts_out.data = static_cast<void*>(shifts_arr);
		struct miqt_array /* of int */  sigval4 = shifts_out;

		struct miqt_array /* of struct miqt_string */  callback_return_value = vtbl->callTips(vtbl, this, sigval1, sigval2, sigval3, sigval4);
		QStringList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		struct miqt_string* callback_return_value_arr = static_cast<struct miqt_string*>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			QString callback_return_value_arr_i_QString = QString::fromUtf8(callback_return_value_arr[i].data, callback_return_value_arr[i].len);
			callback_return_value_QList.push_back(callback_return_value_arr_i_QString);
		}

		return callback_return_value_QList;
	}

	// Wrapper to allow calling protected method
	struct miqt_array /* of struct miqt_string */  virtualbase_callTips(struct miqt_array /* of struct miqt_string */  context, int commas, int style, struct miqt_array /* of int */  shifts) {
		QStringList context_QList;
		context_QList.reserve(context.len);
		struct miqt_string* context_arr = static_cast<struct miqt_string*>(context.data);
		for(size_t i = 0; i < context.len; ++i) {
			QString context_arr_i_QString = QString::fromUtf8(context_arr[i].data, context_arr[i].len);
			context_QList.push_back(context_arr_i_QString);
		}
		QList<int> shifts_QList;
		shifts_QList.reserve(shifts.len);
		int* shifts_arr = static_cast<int*>(shifts.data);
		for(size_t i = 0; i < shifts.len; ++i) {
			shifts_QList.push_back(static_cast<int>(shifts_arr[i]));
		}

		QStringList _ret = QsciAPIs::callTips(context_QList, static_cast<int>(commas), static_cast<QsciScintilla::CallTipsStyle>(style), shifts_QList);
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

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QsciAPIs::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* e) {

		return QsciAPIs::event(e);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QsciAPIs::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QsciAPIs::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QsciAPIs::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QsciAPIs::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QsciAPIs::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QsciAPIs::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QsciAPIs::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QsciAPIs::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QsciAPIs::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QsciAPIs::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QsciAPIs::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QsciAPIs::disconnectNotify(*signal);

	}

};

QsciAPIs* QsciAPIs_new(struct QsciAPIs_VTable* vtbl, QsciLexer* lexer) {
	return new MiqtVirtualQsciAPIs(vtbl, lexer);
}

void QsciAPIs_virtbase(QsciAPIs* src, QsciAbstractAPIs** outptr_QsciAbstractAPIs) {
	*outptr_QsciAbstractAPIs = static_cast<QsciAbstractAPIs*>(src);
}

QMetaObject* QsciAPIs_metaObject(const QsciAPIs* self) {
	return (QMetaObject*) self->metaObject();
}

void* QsciAPIs_metacast(QsciAPIs* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QsciAPIs_metacall(QsciAPIs* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QsciAPIs_tr(const char* s) {
	QString _ret = QsciAPIs::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QsciAPIs_add(QsciAPIs* self, struct miqt_string entry) {
	QString entry_QString = QString::fromUtf8(entry.data, entry.len);
	self->add(entry_QString);
}

void QsciAPIs_clear(QsciAPIs* self) {
	self->clear();
}

bool QsciAPIs_load(QsciAPIs* self, struct miqt_string filename) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return self->load(filename_QString);
}

void QsciAPIs_remove(QsciAPIs* self, struct miqt_string entry) {
	QString entry_QString = QString::fromUtf8(entry.data, entry.len);
	self->remove(entry_QString);
}

void QsciAPIs_prepare(QsciAPIs* self) {
	self->prepare();
}

void QsciAPIs_cancelPreparation(QsciAPIs* self) {
	self->cancelPreparation();
}

struct miqt_string QsciAPIs_defaultPreparedName(const QsciAPIs* self) {
	QString _ret = self->defaultPreparedName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QsciAPIs_isPrepared(const QsciAPIs* self) {
	return self->isPrepared();
}

bool QsciAPIs_loadPrepared(QsciAPIs* self) {
	return self->loadPrepared();
}

bool QsciAPIs_savePrepared(const QsciAPIs* self) {
	return self->savePrepared();
}

void QsciAPIs_updateAutoCompletionList(QsciAPIs* self, struct miqt_array /* of struct miqt_string */  context, struct miqt_array /* of struct miqt_string */  list) {
	QStringList context_QList;
	context_QList.reserve(context.len);
	struct miqt_string* context_arr = static_cast<struct miqt_string*>(context.data);
	for(size_t i = 0; i < context.len; ++i) {
		QString context_arr_i_QString = QString::fromUtf8(context_arr[i].data, context_arr[i].len);
		context_QList.push_back(context_arr_i_QString);
	}
	QStringList list_QList;
	list_QList.reserve(list.len);
	struct miqt_string* list_arr = static_cast<struct miqt_string*>(list.data);
	for(size_t i = 0; i < list.len; ++i) {
		QString list_arr_i_QString = QString::fromUtf8(list_arr[i].data, list_arr[i].len);
		list_QList.push_back(list_arr_i_QString);
	}
	self->updateAutoCompletionList(context_QList, list_QList);
}

void QsciAPIs_autoCompletionSelected(QsciAPIs* self, struct miqt_string sel) {
	QString sel_QString = QString::fromUtf8(sel.data, sel.len);
	self->autoCompletionSelected(sel_QString);
}

struct miqt_array /* of struct miqt_string */  QsciAPIs_callTips(QsciAPIs* self, struct miqt_array /* of struct miqt_string */  context, int commas, int style, struct miqt_array /* of int */  shifts) {
	QStringList context_QList;
	context_QList.reserve(context.len);
	struct miqt_string* context_arr = static_cast<struct miqt_string*>(context.data);
	for(size_t i = 0; i < context.len; ++i) {
		QString context_arr_i_QString = QString::fromUtf8(context_arr[i].data, context_arr[i].len);
		context_QList.push_back(context_arr_i_QString);
	}
	QList<int> shifts_QList;
	shifts_QList.reserve(shifts.len);
	int* shifts_arr = static_cast<int*>(shifts.data);
	for(size_t i = 0; i < shifts.len; ++i) {
		shifts_QList.push_back(static_cast<int>(shifts_arr[i]));
	}
	QStringList _ret = self->callTips(context_QList, static_cast<int>(commas), static_cast<QsciScintilla::CallTipsStyle>(style), shifts_QList);
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

bool QsciAPIs_event(QsciAPIs* self, QEvent* e) {
	return self->event(e);
}

struct miqt_array /* of struct miqt_string */  QsciAPIs_installedAPIFiles(const QsciAPIs* self) {
	QStringList _ret = self->installedAPIFiles();
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

void QsciAPIs_apiPreparationCancelled(QsciAPIs* self) {
	self->apiPreparationCancelled();
}

void QsciAPIs_connect_apiPreparationCancelled(QsciAPIs* self, intptr_t slot) {
	MiqtVirtualQsciAPIs::connect(self, static_cast<void (QsciAPIs::*)()>(&QsciAPIs::apiPreparationCancelled), self, [=]() {
		miqt_exec_callback_QsciAPIs_apiPreparationCancelled(slot);
	});
}

void QsciAPIs_apiPreparationStarted(QsciAPIs* self) {
	self->apiPreparationStarted();
}

void QsciAPIs_connect_apiPreparationStarted(QsciAPIs* self, intptr_t slot) {
	MiqtVirtualQsciAPIs::connect(self, static_cast<void (QsciAPIs::*)()>(&QsciAPIs::apiPreparationStarted), self, [=]() {
		miqt_exec_callback_QsciAPIs_apiPreparationStarted(slot);
	});
}

void QsciAPIs_apiPreparationFinished(QsciAPIs* self) {
	self->apiPreparationFinished();
}

void QsciAPIs_connect_apiPreparationFinished(QsciAPIs* self, intptr_t slot) {
	MiqtVirtualQsciAPIs::connect(self, static_cast<void (QsciAPIs::*)()>(&QsciAPIs::apiPreparationFinished), self, [=]() {
		miqt_exec_callback_QsciAPIs_apiPreparationFinished(slot);
	});
}

struct miqt_string QsciAPIs_tr2(const char* s, const char* c) {
	QString _ret = QsciAPIs::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QsciAPIs_tr3(const char* s, const char* c, int n) {
	QString _ret = QsciAPIs::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QsciAPIs_isPrepared1(const QsciAPIs* self, struct miqt_string filename) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return self->isPrepared(filename_QString);
}

bool QsciAPIs_loadPrepared1(QsciAPIs* self, struct miqt_string filename) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return self->loadPrepared(filename_QString);
}

bool QsciAPIs_savePrepared1(const QsciAPIs* self, struct miqt_string filename) {
	QString filename_QString = QString::fromUtf8(filename.data, filename.len);
	return self->savePrepared(filename_QString);
}

QMetaObject* QsciAPIs_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQsciAPIs*)(self) )->virtualbase_metaObject();
}

void* QsciAPIs_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQsciAPIs*)(self) )->virtualbase_metacast(param1);
}

int QsciAPIs_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQsciAPIs*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QsciAPIs_virtualbase_updateAutoCompletionList(void* self, struct miqt_array /* of struct miqt_string */  context, struct miqt_array /* of struct miqt_string */  list) {
	( (MiqtVirtualQsciAPIs*)(self) )->virtualbase_updateAutoCompletionList(context, list);
}

void QsciAPIs_virtualbase_autoCompletionSelected(void* self, struct miqt_string sel) {
	( (MiqtVirtualQsciAPIs*)(self) )->virtualbase_autoCompletionSelected(sel);
}

struct miqt_array /* of struct miqt_string */  QsciAPIs_virtualbase_callTips(void* self, struct miqt_array /* of struct miqt_string */  context, int commas, int style, struct miqt_array /* of int */  shifts) {
	return ( (MiqtVirtualQsciAPIs*)(self) )->virtualbase_callTips(context, commas, style, shifts);
}

bool QsciAPIs_virtualbase_event(void* self, QEvent* e) {
	return ( (MiqtVirtualQsciAPIs*)(self) )->virtualbase_event(e);
}

bool QsciAPIs_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQsciAPIs*)(self) )->virtualbase_eventFilter(watched, event);
}

void QsciAPIs_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQsciAPIs*)(self) )->virtualbase_timerEvent(event);
}

void QsciAPIs_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQsciAPIs*)(self) )->virtualbase_childEvent(event);
}

void QsciAPIs_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQsciAPIs*)(self) )->virtualbase_customEvent(event);
}

void QsciAPIs_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQsciAPIs*)(self) )->virtualbase_connectNotify(signal);
}

void QsciAPIs_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQsciAPIs*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QsciAPIs_staticMetaObject() { return &QsciAPIs::staticMetaObject; }
void QsciAPIs_delete(QsciAPIs* self) {
	delete self;
}

