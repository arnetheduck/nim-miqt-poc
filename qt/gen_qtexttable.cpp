#include <QChildEvent>
#include <QEvent>
#include <QMetaMethod>
#include <QMetaObject>
#include <QObject>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTextCharFormat>
#include <QTextCursor>
#include <QTextDocument>
#include <QTextFrame>
#define WORKAROUND_INNER_CLASS_DEFINITION_QTextFrame__iterator
#include <QTextObject>
#include <QTextTable>
#include <QTextTableCell>
#include <QTextTableFormat>
#include <QTimerEvent>
#include <qtexttable.h>
#include "gen_qtexttable.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

QTextTableCell* QTextTableCell_new() {
	return new QTextTableCell();
}

QTextTableCell* QTextTableCell_new2(QTextTableCell* o) {
	return new QTextTableCell(*o);
}

void QTextTableCell_operatorAssign(QTextTableCell* self, QTextTableCell* o) {
	self->operator=(*o);
}

void QTextTableCell_setFormat(QTextTableCell* self, QTextCharFormat* format) {
	self->setFormat(*format);
}

QTextCharFormat* QTextTableCell_format(const QTextTableCell* self) {
	return new QTextCharFormat(self->format());
}

int QTextTableCell_row(const QTextTableCell* self) {
	return self->row();
}

int QTextTableCell_column(const QTextTableCell* self) {
	return self->column();
}

int QTextTableCell_rowSpan(const QTextTableCell* self) {
	return self->rowSpan();
}

int QTextTableCell_columnSpan(const QTextTableCell* self) {
	return self->columnSpan();
}

bool QTextTableCell_isValid(const QTextTableCell* self) {
	return self->isValid();
}

QTextCursor* QTextTableCell_firstCursorPosition(const QTextTableCell* self) {
	return new QTextCursor(self->firstCursorPosition());
}

QTextCursor* QTextTableCell_lastCursorPosition(const QTextTableCell* self) {
	return new QTextCursor(self->lastCursorPosition());
}

int QTextTableCell_firstPosition(const QTextTableCell* self) {
	return self->firstPosition();
}

int QTextTableCell_lastPosition(const QTextTableCell* self) {
	return self->lastPosition();
}

bool QTextTableCell_operatorEqual(const QTextTableCell* self, QTextTableCell* other) {
	return (*self == *other);
}

bool QTextTableCell_operatorNotEqual(const QTextTableCell* self, QTextTableCell* other) {
	return (*self != *other);
}

QTextFrame__iterator* QTextTableCell_begin(const QTextTableCell* self) {
	return new QTextFrame::iterator(self->begin());
}

QTextFrame__iterator* QTextTableCell_end(const QTextTableCell* self) {
	return new QTextFrame::iterator(self->end());
}

int QTextTableCell_tableCellFormatIndex(const QTextTableCell* self) {
	return self->tableCellFormatIndex();
}

void QTextTableCell_delete(QTextTableCell* self) {
	delete self;
}

class MiqtVirtualQTextTable final : public QTextTable {
	struct QTextTable_VTable* vtbl;
public:

	MiqtVirtualQTextTable(struct QTextTable_VTable* vtbl, QTextDocument* doc): QTextTable(doc), vtbl(vtbl) {};

	virtual ~MiqtVirtualQTextTable() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTextTable::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QTextTable::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTextTable::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QTextTable::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTextTable::qt_metacall(param1, param2, param3);
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

		return QTextTable::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTextTable::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QTextTable::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTextTable::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* watched, QEvent* event) {

		return QTextTable::eventFilter(watched, event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTextTable::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QTextTable::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTextTable::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QTextTable::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTextTable::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QTextTable::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTextTable::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QTextTable::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTextTable::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QTextTable::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	void protectedbase_setFormat(QTextFormat* format) {

		QTextTable::setFormat(*format);

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QTextTable::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QTextTable::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QTextTable::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QTextTable::isSignalConnected(*signal);

	}

};

QTextTable* QTextTable_new(struct QTextTable_VTable* vtbl, QTextDocument* doc) {
	return new MiqtVirtualQTextTable(vtbl, doc);
}

void QTextTable_virtbase(QTextTable* src, QTextFrame** outptr_QTextFrame) {
	*outptr_QTextFrame = static_cast<QTextFrame*>(src);
}

QMetaObject* QTextTable_metaObject(const QTextTable* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTextTable_metacast(QTextTable* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTextTable_metacall(QTextTable* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTextTable_tr(const char* s) {
	QString _ret = QTextTable::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTextTable_trUtf8(const char* s) {
	QString _ret = QTextTable::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTextTable_resize(QTextTable* self, int rows, int cols) {
	self->resize(static_cast<int>(rows), static_cast<int>(cols));
}

void QTextTable_insertRows(QTextTable* self, int pos, int num) {
	self->insertRows(static_cast<int>(pos), static_cast<int>(num));
}

void QTextTable_insertColumns(QTextTable* self, int pos, int num) {
	self->insertColumns(static_cast<int>(pos), static_cast<int>(num));
}

void QTextTable_appendRows(QTextTable* self, int count) {
	self->appendRows(static_cast<int>(count));
}

void QTextTable_appendColumns(QTextTable* self, int count) {
	self->appendColumns(static_cast<int>(count));
}

void QTextTable_removeRows(QTextTable* self, int pos, int num) {
	self->removeRows(static_cast<int>(pos), static_cast<int>(num));
}

void QTextTable_removeColumns(QTextTable* self, int pos, int num) {
	self->removeColumns(static_cast<int>(pos), static_cast<int>(num));
}

void QTextTable_mergeCells(QTextTable* self, int row, int col, int numRows, int numCols) {
	self->mergeCells(static_cast<int>(row), static_cast<int>(col), static_cast<int>(numRows), static_cast<int>(numCols));
}

void QTextTable_mergeCellsWithCursor(QTextTable* self, QTextCursor* cursor) {
	self->mergeCells(*cursor);
}

void QTextTable_splitCell(QTextTable* self, int row, int col, int numRows, int numCols) {
	self->splitCell(static_cast<int>(row), static_cast<int>(col), static_cast<int>(numRows), static_cast<int>(numCols));
}

int QTextTable_rows(const QTextTable* self) {
	return self->rows();
}

int QTextTable_columns(const QTextTable* self) {
	return self->columns();
}

QTextTableCell* QTextTable_cellAt(const QTextTable* self, int row, int col) {
	return new QTextTableCell(self->cellAt(static_cast<int>(row), static_cast<int>(col)));
}

QTextTableCell* QTextTable_cellAtWithPosition(const QTextTable* self, int position) {
	return new QTextTableCell(self->cellAt(static_cast<int>(position)));
}

QTextTableCell* QTextTable_cellAtWithQTextCursor(const QTextTable* self, QTextCursor* c) {
	return new QTextTableCell(self->cellAt(*c));
}

QTextCursor* QTextTable_rowStart(const QTextTable* self, QTextCursor* c) {
	return new QTextCursor(self->rowStart(*c));
}

QTextCursor* QTextTable_rowEnd(const QTextTable* self, QTextCursor* c) {
	return new QTextCursor(self->rowEnd(*c));
}

void QTextTable_setFormat(QTextTable* self, QTextTableFormat* format) {
	self->setFormat(*format);
}

QTextTableFormat* QTextTable_format(const QTextTable* self) {
	return new QTextTableFormat(self->format());
}

struct miqt_string QTextTable_tr2(const char* s, const char* c) {
	QString _ret = QTextTable::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTextTable_tr3(const char* s, const char* c, int n) {
	QString _ret = QTextTable::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTextTable_trUtf82(const char* s, const char* c) {
	QString _ret = QTextTable::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTextTable_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QTextTable::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QTextTable_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQTextTable*)(self) )->virtualbase_metaObject();
}

void* QTextTable_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQTextTable*)(self) )->virtualbase_metacast(param1);
}

int QTextTable_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQTextTable*)(self) )->virtualbase_metacall(param1, param2, param3);
}

bool QTextTable_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQTextTable*)(self) )->virtualbase_event(event);
}

bool QTextTable_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {
	return ( (MiqtVirtualQTextTable*)(self) )->virtualbase_eventFilter(watched, event);
}

void QTextTable_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQTextTable*)(self) )->virtualbase_timerEvent(event);
}

void QTextTable_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQTextTable*)(self) )->virtualbase_childEvent(event);
}

void QTextTable_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQTextTable*)(self) )->virtualbase_customEvent(event);
}

void QTextTable_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQTextTable*)(self) )->virtualbase_connectNotify(signal);
}

void QTextTable_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQTextTable*)(self) )->virtualbase_disconnectNotify(signal);
}

void QTextTable_protectedbase_setFormat(void* self, QTextFormat* format) {
	( (MiqtVirtualQTextTable*)(self) )->protectedbase_setFormat(format);
}

QObject* QTextTable_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQTextTable*)(self) )->protectedbase_sender();
}

int QTextTable_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQTextTable*)(self) )->protectedbase_senderSignalIndex();
}

int QTextTable_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQTextTable*)(self) )->protectedbase_receivers(signal);
}

bool QTextTable_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQTextTable*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QTextTable_staticMetaObject() { return &QTextTable::staticMetaObject; }
void QTextTable_delete(QTextTable* self) {
	delete self;
}

