#include <QChildEvent>
#include <QColor>
#include <QEvent>
#include <QFont>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QSyntaxHighlighter>
#include <QTextBlock>
#include <QTextBlockUserData>
#include <QTextCharFormat>
#include <QTextDocument>
#include <QTimerEvent>
#include <qsyntaxhighlighter.h>
#include "gen_qsyntaxhighlighter.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQSyntaxHighlighter final : public QSyntaxHighlighter {
	struct QSyntaxHighlighter_VTable* vtbl;
public:

	MiqtVirtualQSyntaxHighlighter(struct QSyntaxHighlighter_VTable* vtbl, QObject* parent): QSyntaxHighlighter(parent), vtbl(vtbl) {};
	MiqtVirtualQSyntaxHighlighter(struct QSyntaxHighlighter_VTable* vtbl, QTextDocument* parent): QSyntaxHighlighter(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSyntaxHighlighter() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QSyntaxHighlighter::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QSyntaxHighlighter::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QSyntaxHighlighter::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QSyntaxHighlighter::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QSyntaxHighlighter::qt_metacall(param1, param2, param3);
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

		return QSyntaxHighlighter::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void highlightBlock(const QString& text) override {
		if (vtbl->highlightBlock == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QString text_ret = text;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray text_b = text_ret.toUtf8();
		struct miqt_string text_ms;
		text_ms.len = text_b.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_b.data(), text_ms.len);
		struct miqt_string sigval1 = text_ms;

		vtbl->highlightBlock(vtbl, this, sigval1);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QSyntaxHighlighter::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QSyntaxHighlighter::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QSyntaxHighlighter::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QSyntaxHighlighter::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QSyntaxHighlighter::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QSyntaxHighlighter::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QSyntaxHighlighter::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QSyntaxHighlighter::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QSyntaxHighlighter::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QSyntaxHighlighter::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QSyntaxHighlighter::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QSyntaxHighlighter::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QSyntaxHighlighter::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QSyntaxHighlighter::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	void protectedbase_setFormat(int start, int count, QTextCharFormat* format) {

		QSyntaxHighlighter::setFormat(static_cast<int>(start), static_cast<int>(count), *format);

	}

	// Wrapper to allow calling protected method
	void protectedbase_setFormat2(int start, int count, QColor* color) {

		QSyntaxHighlighter::setFormat(static_cast<int>(start), static_cast<int>(count), *color);

	}

	// Wrapper to allow calling protected method
	void protectedbase_setFormat3(int start, int count, QFont* font) {

		QSyntaxHighlighter::setFormat(static_cast<int>(start), static_cast<int>(count), *font);

	}

	// Wrapper to allow calling protected method
	QTextCharFormat* protectedbase_format(int pos) const {

		return new QTextCharFormat(QSyntaxHighlighter::format(static_cast<int>(pos)));

	}

	// Wrapper to allow calling protected method
	int protectedbase_previousBlockState() const {

		return QSyntaxHighlighter::previousBlockState();

	}

	// Wrapper to allow calling protected method
	int protectedbase_currentBlockState() const {

		return QSyntaxHighlighter::currentBlockState();

	}

	// Wrapper to allow calling protected method
	void protectedbase_setCurrentBlockState(int newState) {

		QSyntaxHighlighter::setCurrentBlockState(static_cast<int>(newState));

	}

	// Wrapper to allow calling protected method
	void protectedbase_setCurrentBlockUserData(QTextBlockUserData* data) {

		QSyntaxHighlighter::setCurrentBlockUserData(data);

	}

	// Wrapper to allow calling protected method
	QTextBlockUserData* protectedbase_currentBlockUserData() const {

		return QSyntaxHighlighter::currentBlockUserData();

	}

	// Wrapper to allow calling protected method
	QTextBlock* protectedbase_currentBlock() const {

		return new QTextBlock(QSyntaxHighlighter::currentBlock());

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QSyntaxHighlighter::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QSyntaxHighlighter::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QSyntaxHighlighter::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QSyntaxHighlighter::isSignalConnected(*signal);

	}

};

QSyntaxHighlighter* QSyntaxHighlighter_new(struct QSyntaxHighlighter_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQSyntaxHighlighter(vtbl, parent);
}

QSyntaxHighlighter* QSyntaxHighlighter_new2(struct QSyntaxHighlighter_VTable* vtbl, QTextDocument* parent) {
	return new MiqtVirtualQSyntaxHighlighter(vtbl, parent);
}

void QSyntaxHighlighter_virtbase(QSyntaxHighlighter* src, QObject** outptr_QObject) {
	*outptr_QObject = static_cast<QObject*>(src);
}

QMetaObject* QSyntaxHighlighter_metaObject(const QSyntaxHighlighter* self) {
	return (QMetaObject*) self->metaObject();
}

void* QSyntaxHighlighter_metacast(QSyntaxHighlighter* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QSyntaxHighlighter_metacall(QSyntaxHighlighter* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QSyntaxHighlighter_tr(const char* s) {
	QString _ret = QSyntaxHighlighter::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QSyntaxHighlighter_setDocument(QSyntaxHighlighter* self, QTextDocument* doc) {
	self->setDocument(doc);
}

QTextDocument* QSyntaxHighlighter_document(const QSyntaxHighlighter* self) {
	return self->document();
}

void QSyntaxHighlighter_rehighlight(QSyntaxHighlighter* self) {
	self->rehighlight();
}

void QSyntaxHighlighter_rehighlightBlock(QSyntaxHighlighter* self, QTextBlock* block) {
	self->rehighlightBlock(*block);
}

struct miqt_string QSyntaxHighlighter_tr2(const char* s, const char* c) {
	QString _ret = QSyntaxHighlighter::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QSyntaxHighlighter_tr3(const char* s, const char* c, int n) {
	QString _ret = QSyntaxHighlighter::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QSyntaxHighlighter_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQSyntaxHighlighter*)(self) )->virtualbase_metaObject();
}

void* QSyntaxHighlighter_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQSyntaxHighlighter*)(self) )->virtualbase_metacast(param1);
}

int QSyntaxHighlighter_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQSyntaxHighlighter*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QSyntaxHighlighter_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQSyntaxHighlighter*)(self) )->virtualbase_event(event);
}

bool QSyntaxHighlighter_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQSyntaxHighlighter*)(self) )->virtualbase_eventFilter(watched, event);
}

void QSyntaxHighlighter_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQSyntaxHighlighter*)(self) )->virtualbase_timerEvent(event);
}

void QSyntaxHighlighter_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQSyntaxHighlighter*)(self) )->virtualbase_childEvent(event);
}

void QSyntaxHighlighter_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQSyntaxHighlighter*)(self) )->virtualbase_customEvent(event);
}

void QSyntaxHighlighter_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSyntaxHighlighter*)(self) )->virtualbase_connectNotify(signal);
}

void QSyntaxHighlighter_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQSyntaxHighlighter*)(self) )->virtualbase_disconnectNotify(signal);
}

void QSyntaxHighlighter_protectedbase_setFormat(void* self, int start, int count, QTextCharFormat* format) {
	( (MiqtVirtualQSyntaxHighlighter*)(self) )->protectedbase_setFormat(start, count, format);
}

void QSyntaxHighlighter_protectedbase_setFormat2(void* self, int start, int count, QColor* color) {
	( (MiqtVirtualQSyntaxHighlighter*)(self) )->protectedbase_setFormat2(start, count, color);
}

void QSyntaxHighlighter_protectedbase_setFormat3(void* self, int start, int count, QFont* font) {
	( (MiqtVirtualQSyntaxHighlighter*)(self) )->protectedbase_setFormat3(start, count, font);
}

QTextCharFormat* QSyntaxHighlighter_protectedbase_format(const void* self, int pos) {
	return ( (const MiqtVirtualQSyntaxHighlighter*)(self) )->protectedbase_format(pos);
}

int QSyntaxHighlighter_protectedbase_previousBlockState(const void* self) {
	return ( (const MiqtVirtualQSyntaxHighlighter*)(self) )->protectedbase_previousBlockState();
}

int QSyntaxHighlighter_protectedbase_currentBlockState(const void* self) {
	return ( (const MiqtVirtualQSyntaxHighlighter*)(self) )->protectedbase_currentBlockState();
}

void QSyntaxHighlighter_protectedbase_setCurrentBlockState(void* self, int newState) {
	( (MiqtVirtualQSyntaxHighlighter*)(self) )->protectedbase_setCurrentBlockState(newState);
}

void QSyntaxHighlighter_protectedbase_setCurrentBlockUserData(void* self, QTextBlockUserData* data) {
	( (MiqtVirtualQSyntaxHighlighter*)(self) )->protectedbase_setCurrentBlockUserData(data);
}

QTextBlockUserData* QSyntaxHighlighter_protectedbase_currentBlockUserData(const void* self) {
	return ( (const MiqtVirtualQSyntaxHighlighter*)(self) )->protectedbase_currentBlockUserData();
}

QTextBlock* QSyntaxHighlighter_protectedbase_currentBlock(const void* self) {
	return ( (const MiqtVirtualQSyntaxHighlighter*)(self) )->protectedbase_currentBlock();
}

QObject* QSyntaxHighlighter_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQSyntaxHighlighter*)(self) )->protectedbase_sender();
}

int QSyntaxHighlighter_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQSyntaxHighlighter*)(self) )->protectedbase_senderSignalIndex();
}

int QSyntaxHighlighter_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQSyntaxHighlighter*)(self) )->protectedbase_receivers(signal);
}

bool QSyntaxHighlighter_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQSyntaxHighlighter*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QSyntaxHighlighter_staticMetaObject() { return &QSyntaxHighlighter::staticMetaObject; }
void QSyntaxHighlighter_delete(QSyntaxHighlighter* self) {
	delete self;
}

