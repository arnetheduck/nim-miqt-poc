#include <QByteArray>
#include <QChildEvent>
#include <QEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMimeData>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTimerEvent>
#include <QUrl>
#include <QVariant>
#include <qmimedata.h>
#include "gen_qmimedata.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQMimeData final : public QMimeData {
	struct QMimeData_VTable* vtbl;
public:

	MiqtVirtualQMimeData(struct QMimeData_VTable* vtbl): QMimeData(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQMimeData() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QMimeData::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QMimeData::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QMimeData::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QMimeData::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QMimeData::qt_metacall(param1, param2, param3);
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

		return QMimeData::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasFormat(const QString& mimetype) const override {
		if (vtbl->hasFormat == 0) {
			return QMimeData::hasFormat(mimetype);
		}

		const QString mimetype_ret = mimetype;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray mimetype_b = mimetype_ret.toUtf8();
		struct miqt_string mimetype_ms;
		mimetype_ms.len = mimetype_b.length();
		mimetype_ms.data = static_cast<char*>(malloc(mimetype_ms.len));
		memcpy(mimetype_ms.data, mimetype_b.data(), mimetype_ms.len);
		struct miqt_string sigval1 = mimetype_ms;

		bool callback_return_value = vtbl->hasFormat(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasFormat(struct miqt_string mimetype) const {
		QString mimetype_QString = QString::fromUtf8(mimetype.data, mimetype.len);

		return QMimeData::hasFormat(mimetype_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual QStringList formats() const override {
		if (vtbl->formats == 0) {
			return QMimeData::formats();
		}


		struct miqt_array /* of struct miqt_string */  callback_return_value = vtbl->formats(vtbl, this);
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
	struct miqt_array /* of struct miqt_string */  virtualbase_formats() const {

		QStringList _ret = QMimeData::formats();
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
	virtual QVariant retrieveData(const QString& mimetype, QVariant::Type preferredType) const override {
		if (vtbl->retrieveData == 0) {
			return QMimeData::retrieveData(mimetype, preferredType);
		}

		const QString mimetype_ret = mimetype;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray mimetype_b = mimetype_ret.toUtf8();
		struct miqt_string mimetype_ms;
		mimetype_ms.len = mimetype_b.length();
		mimetype_ms.data = static_cast<char*>(malloc(mimetype_ms.len));
		memcpy(mimetype_ms.data, mimetype_b.data(), mimetype_ms.len);
		struct miqt_string sigval1 = mimetype_ms;
		QVariant::Type preferredType_ret = preferredType;
		int sigval2 = static_cast<int>(preferredType_ret);

		QVariant* callback_return_value = vtbl->retrieveData(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_retrieveData(struct miqt_string mimetype, int preferredType) const {
		QString mimetype_QString = QString::fromUtf8(mimetype.data, mimetype.len);

		return new QVariant(QMimeData::retrieveData(mimetype_QString, static_cast<QVariant::Type>(preferredType)));

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QMimeData::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QMimeData::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QMimeData::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QMimeData::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QMimeData::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QMimeData::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QMimeData::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QMimeData::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QMimeData::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QMimeData::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QMimeData::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QMimeData::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QMimeData::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QMimeData::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QMimeData::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QMimeData::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QMimeData::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QMimeData::isSignalConnected(*signal);

	}

};

QMimeData* QMimeData_new(struct QMimeData_VTable* vtbl) {
	return new MiqtVirtualQMimeData(vtbl);
}

void QMimeData_virtbase(QMimeData* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QMimeData_metaObject(const QMimeData* self) {
	return (QMetaObject*) self->metaObject();
}

void* QMimeData_metacast(QMimeData* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QMimeData_metacall(QMimeData* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QMimeData_tr(const char* s) {
	QString _ret = QMimeData::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMimeData_trUtf8(const char* s) {
	QString _ret = QMimeData::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_array /* of QUrl* */  QMimeData_urls(const QMimeData* self) {
	QList<QUrl> _ret = self->urls();
	// Convert QList<> from C++ memory to manually-managed C memory
	QUrl** _arr = static_cast<QUrl**>(malloc(sizeof(QUrl*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QUrl(_ret[i]);
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QMimeData_setUrls(QMimeData* self, struct miqt_array /* of QUrl* */  urls) {
	QList<QUrl> urls_QList;
	urls_QList.reserve(urls.len);
	QUrl** urls_arr = static_cast<QUrl**>(urls.data);
	for(size_t i = 0; i < urls.len; ++i) {
		urls_QList.push_back(*(urls_arr[i]));
	}
	self->setUrls(urls_QList);
}

bool QMimeData_hasUrls(const QMimeData* self) {
	return self->hasUrls();
}

struct miqt_string QMimeData_text(const QMimeData* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMimeData_setText(QMimeData* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setText(text_QString);
}

bool QMimeData_hasText(const QMimeData* self) {
	return self->hasText();
}

struct miqt_string QMimeData_html(const QMimeData* self) {
	QString _ret = self->html();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QMimeData_setHtml(QMimeData* self, struct miqt_string html) {
	QString html_QString = QString::fromUtf8(html.data, html.len);
	self->setHtml(html_QString);
}

bool QMimeData_hasHtml(const QMimeData* self) {
	return self->hasHtml();
}

QVariant* QMimeData_imageData(const QMimeData* self) {
	return new QVariant(self->imageData());
}

void QMimeData_setImageData(QMimeData* self, QVariant* image) {
	self->setImageData(*image);
}

bool QMimeData_hasImage(const QMimeData* self) {
	return self->hasImage();
}

QVariant* QMimeData_colorData(const QMimeData* self) {
	return new QVariant(self->colorData());
}

void QMimeData_setColorData(QMimeData* self, QVariant* color) {
	self->setColorData(*color);
}

bool QMimeData_hasColor(const QMimeData* self) {
	return self->hasColor();
}

struct miqt_string QMimeData_data(const QMimeData* self, struct miqt_string mimetype) {
	QString mimetype_QString = QString::fromUtf8(mimetype.data, mimetype.len);
	QByteArray _qb = self->data(mimetype_QString);
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QMimeData_setData(QMimeData* self, struct miqt_string mimetype, struct miqt_string data) {
	QString mimetype_QString = QString::fromUtf8(mimetype.data, mimetype.len);
	QByteArray data_QByteArray(data.data, data.len);
	self->setData(mimetype_QString, data_QByteArray);
}

void QMimeData_removeFormat(QMimeData* self, struct miqt_string mimetype) {
	QString mimetype_QString = QString::fromUtf8(mimetype.data, mimetype.len);
	self->removeFormat(mimetype_QString);
}

bool QMimeData_hasFormat(const QMimeData* self, struct miqt_string mimetype) {
	QString mimetype_QString = QString::fromUtf8(mimetype.data, mimetype.len);
	return self->hasFormat(mimetype_QString);
}

struct miqt_array /* of struct miqt_string */  QMimeData_formats(const QMimeData* self) {
	QStringList _ret = self->formats();
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

void QMimeData_clear(QMimeData* self) {
	self->clear();
}

struct miqt_string QMimeData_tr2(const char* s, const char* c) {
	QString _ret = QMimeData::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMimeData_tr3(const char* s, const char* c, int n) {
	QString _ret = QMimeData::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMimeData_trUtf82(const char* s, const char* c) {
	QString _ret = QMimeData::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QMimeData_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QMimeData::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QMimeData_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQMimeData*)(self) )->virtualbase_metaObject();
}

void* QMimeData_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQMimeData*)(self) )->virtualbase_metacast(param1);
}

int QMimeData_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQMimeData*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QMimeData_virtualbase_hasFormat(const void* self, struct miqt_string mimetype) {
	return ( (const MiqtVirtualQMimeData*)(self) )->virtualbase_hasFormat(mimetype);
}

struct miqt_array /* of struct miqt_string */  QMimeData_virtualbase_formats(const void* self) {
	return ( (const MiqtVirtualQMimeData*)(self) )->virtualbase_formats();
}

QVariant* QMimeData_virtualbase_retrieveData(const void* self, struct miqt_string mimetype, int preferredType) {
	return ( (const MiqtVirtualQMimeData*)(self) )->virtualbase_retrieveData(mimetype, preferredType);
}

bool QMimeData_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQMimeData*)(self) )->virtualbase_event(event);
}

bool QMimeData_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQMimeData*)(self) )->virtualbase_eventFilter(watched, event);
}

void QMimeData_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQMimeData*)(self) )->virtualbase_timerEvent(event);
}

void QMimeData_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQMimeData*)(self) )->virtualbase_childEvent(event);
}

void QMimeData_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQMimeData*)(self) )->virtualbase_customEvent(event);
}

void QMimeData_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQMimeData*)(self) )->virtualbase_connectNotify(signal);
}

void QMimeData_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQMimeData*)(self) )->virtualbase_disconnectNotify(signal);
}

QObject* QMimeData_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQMimeData*)(self) )->protectedbase_sender();
}

int QMimeData_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQMimeData*)(self) )->protectedbase_senderSignalIndex();
}

int QMimeData_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQMimeData*)(self) )->protectedbase_receivers(signal);
}

bool QMimeData_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQMimeData*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QMimeData_staticMetaObject() { return &QMimeData::staticMetaObject; }
void QMimeData_delete(QMimeData* self) {
	delete self;
}

