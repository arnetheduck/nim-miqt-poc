#include <QAbstractItemDelegate>
#include <QAbstractItemModel>
#include <QAbstractItemView>
#include <QChildEvent>
#include <QEvent>
#include <QHelpEvent>
#include <QItemEditorFactory>
#include <QList>
#include <QLocale>
#include <QMetaMethod>
#include <QMetaObject>
#include <QModelIndex>
#include <QObject>
#include <QPainter>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionViewItem>
#include <QStyledItemDelegate>
#include <QTimerEvent>
#include <QVariant>
#include <QWidget>
#include <qstyleditemdelegate.h>
#include "gen_qstyleditemdelegate.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQStyledItemDelegate final : public QStyledItemDelegate {
	struct QStyledItemDelegate_VTable* vtbl;
public:

	MiqtVirtualQStyledItemDelegate(struct QStyledItemDelegate_VTable* vtbl): QStyledItemDelegate(), vtbl(vtbl) {};
	MiqtVirtualQStyledItemDelegate(struct QStyledItemDelegate_VTable* vtbl, QObject* parent): QStyledItemDelegate(parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQStyledItemDelegate() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QStyledItemDelegate::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QStyledItemDelegate::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QStyledItemDelegate::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QStyledItemDelegate::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QStyledItemDelegate::qt_metacall(param1, param2, param3);
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

		return QStyledItemDelegate::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void paint(QPainter* painter, const QStyleOptionViewItem& option, const QModelIndex& index) const override {
		if (vtbl->paint == 0) {
			QStyledItemDelegate::paint(painter, option, index);
			return;
		}

		QPainter* sigval1 = painter;
		const QStyleOptionViewItem& option_ret = option;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval2 = const_cast<QStyleOptionViewItem*>(&option_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&index_ret);

		vtbl->paint(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paint(QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index) const {

		QStyledItemDelegate::paint(painter, *option, *index);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint(const QStyleOptionViewItem& option, const QModelIndex& index) const override {
		if (vtbl->sizeHint == 0) {
			return QStyledItemDelegate::sizeHint(option, index);
		}

		const QStyleOptionViewItem& option_ret = option;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval1 = const_cast<QStyleOptionViewItem*>(&option_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&index_ret);

		QSize* callback_return_value = vtbl->sizeHint(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint(QStyleOptionViewItem* option, QModelIndex* index) const {

		return new QSize(QStyledItemDelegate::sizeHint(*option, *index));

	}

	// Subclass to allow providing a Go implementation
	virtual QWidget* createEditor(QWidget* parent, const QStyleOptionViewItem& option, const QModelIndex& index) const override {
		if (vtbl->createEditor == 0) {
			return QStyledItemDelegate::createEditor(parent, option, index);
		}

		QWidget* sigval1 = parent;
		const QStyleOptionViewItem& option_ret = option;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval2 = const_cast<QStyleOptionViewItem*>(&option_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&index_ret);

		QWidget* callback_return_value = vtbl->createEditor(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QWidget* virtualbase_createEditor(QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index) const {

		return QStyledItemDelegate::createEditor(parent, *option, *index);

	}

	// Subclass to allow providing a Go implementation
	virtual void setEditorData(QWidget* editor, const QModelIndex& index) const override {
		if (vtbl->setEditorData == 0) {
			QStyledItemDelegate::setEditorData(editor, index);
			return;
		}

		QWidget* sigval1 = editor;
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setEditorData(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setEditorData(QWidget* editor, QModelIndex* index) const {

		QStyledItemDelegate::setEditorData(editor, *index);

	}

	// Subclass to allow providing a Go implementation
	virtual void setModelData(QWidget* editor, QAbstractItemModel* model, const QModelIndex& index) const override {
		if (vtbl->setModelData == 0) {
			QStyledItemDelegate::setModelData(editor, model, index);
			return;
		}

		QWidget* sigval1 = editor;
		QAbstractItemModel* sigval2 = model;
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setModelData(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setModelData(QWidget* editor, QAbstractItemModel* model, QModelIndex* index) const {

		QStyledItemDelegate::setModelData(editor, model, *index);

	}

	// Subclass to allow providing a Go implementation
	virtual void updateEditorGeometry(QWidget* editor, const QStyleOptionViewItem& option, const QModelIndex& index) const override {
		if (vtbl->updateEditorGeometry == 0) {
			QStyledItemDelegate::updateEditorGeometry(editor, option, index);
			return;
		}

		QWidget* sigval1 = editor;
		const QStyleOptionViewItem& option_ret = option;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval2 = const_cast<QStyleOptionViewItem*>(&option_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&index_ret);

		vtbl->updateEditorGeometry(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateEditorGeometry(QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index) const {

		QStyledItemDelegate::updateEditorGeometry(editor, *option, *index);

	}

	// Subclass to allow providing a Go implementation
	virtual QString displayText(const QVariant& value, const QLocale& locale) const override {
		if (vtbl->displayText == 0) {
			return QStyledItemDelegate::displayText(value, locale);
		}

		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval1 = const_cast<QVariant*>(&value_ret);
		const QLocale& locale_ret = locale;
		// Cast returned reference into pointer
		QLocale* sigval2 = const_cast<QLocale*>(&locale_ret);

		struct miqt_string callback_return_value = vtbl->displayText(vtbl, this, sigval1, sigval2);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);

		return callback_return_value_QString;
	}

	// Wrapper to allow calling protected method
	struct miqt_string virtualbase_displayText(QVariant* value, QLocale* locale) const {

		QString _ret = QStyledItemDelegate::displayText(*value, *locale);
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _b = _ret.toUtf8();
		struct miqt_string _ms;
		_ms.len = _b.length();
		_ms.data = static_cast<char*>(malloc(_ms.len));
		memcpy(_ms.data, _b.data(), _ms.len);
		return _ms;

	}

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionViewItem* option, const QModelIndex& index) const override {
		if (vtbl->initStyleOption == 0) {
			QStyledItemDelegate::initStyleOption(option, index);
			return;
		}

		QStyleOptionViewItem* sigval1 = option;
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&index_ret);

		vtbl->initStyleOption(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initStyleOption(QStyleOptionViewItem* option, QModelIndex* index) const {

		QStyledItemDelegate::initStyleOption(option, *index);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QStyledItemDelegate::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* object, QEvent* event) {

		return QStyledItemDelegate::eventFilter(object, event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool editorEvent(QEvent* event, QAbstractItemModel* model, const QStyleOptionViewItem& option, const QModelIndex& index) override {
		if (vtbl->editorEvent == 0) {
			return QStyledItemDelegate::editorEvent(event, model, option, index);
		}

		QEvent* sigval1 = event;
		QAbstractItemModel* sigval2 = model;
		const QStyleOptionViewItem& option_ret = option;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval3 = const_cast<QStyleOptionViewItem*>(&option_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval4 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->editorEvent(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_editorEvent(QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index) {

		return QStyledItemDelegate::editorEvent(event, model, *option, *index);

	}

	// Subclass to allow providing a Go implementation
	virtual void destroyEditor(QWidget* editor, const QModelIndex& index) const override {
		if (vtbl->destroyEditor == 0) {
			QStyledItemDelegate::destroyEditor(editor, index);
			return;
		}

		QWidget* sigval1 = editor;
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&index_ret);

		vtbl->destroyEditor(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_destroyEditor(QWidget* editor, QModelIndex* index) const {

		QStyledItemDelegate::destroyEditor(editor, *index);

	}

	// Subclass to allow providing a Go implementation
	virtual bool helpEvent(QHelpEvent* event, QAbstractItemView* view, const QStyleOptionViewItem& option, const QModelIndex& index) override {
		if (vtbl->helpEvent == 0) {
			return QStyledItemDelegate::helpEvent(event, view, option, index);
		}

		QHelpEvent* sigval1 = event;
		QAbstractItemView* sigval2 = view;
		const QStyleOptionViewItem& option_ret = option;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval3 = const_cast<QStyleOptionViewItem*>(&option_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval4 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->helpEvent(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_helpEvent(QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index) {

		return QStyledItemDelegate::helpEvent(event, view, *option, *index);

	}

	// Subclass to allow providing a Go implementation
	virtual QVector<int> paintingRoles() const override {
		if (vtbl->paintingRoles == 0) {
			return QStyledItemDelegate::paintingRoles();
		}


		struct miqt_array /* of int */  callback_return_value = vtbl->paintingRoles(vtbl, this);
		QVector<int> callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		int* callback_return_value_arr = static_cast<int*>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(static_cast<int>(callback_return_value_arr[i]));
		}

		return callback_return_value_QList;
	}

	// Wrapper to allow calling protected method
	struct miqt_array /* of int */  virtualbase_paintingRoles() const {

		QVector<int> _ret = QStyledItemDelegate::paintingRoles();
		// Convert QList<> from C++ memory to manually-managed C memory
		int* _arr = static_cast<int*>(malloc(sizeof(int) * _ret.length()));
		for (size_t i = 0, e = _ret.length(); i < e; ++i) {
			_arr[i] = _ret[i];
		}
		struct miqt_array _out;
		_out.len = _ret.length();
		_out.data = static_cast<void*>(_arr);
		return _out;

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QStyledItemDelegate::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* event) {

		return QStyledItemDelegate::event(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QStyledItemDelegate::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QStyledItemDelegate::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QStyledItemDelegate::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QStyledItemDelegate::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QStyledItemDelegate::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QStyledItemDelegate::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QStyledItemDelegate::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QStyledItemDelegate::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QStyledItemDelegate::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QStyledItemDelegate::disconnectNotify(*signal);

	}

	// Wrappers to allow calling protected methods:
	friend QObject* QStyledItemDelegate_protectedbase_sender(const void* self);
	friend int QStyledItemDelegate_protectedbase_senderSignalIndex(const void* self);
	friend int QStyledItemDelegate_protectedbase_receivers(const void* self, const char* signal);
	friend bool QStyledItemDelegate_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal);
};

QStyledItemDelegate* QStyledItemDelegate_new(struct QStyledItemDelegate_VTable* vtbl) {
	return new MiqtVirtualQStyledItemDelegate(vtbl);
}

QStyledItemDelegate* QStyledItemDelegate_new2(struct QStyledItemDelegate_VTable* vtbl, QObject* parent) {
	return new MiqtVirtualQStyledItemDelegate(vtbl, parent);
}

void QStyledItemDelegate_virtbase(QStyledItemDelegate* src, QAbstractItemDelegate** outptr_QAbstractItemDelegate) {
	*outptr_QAbstractItemDelegate = static_cast<QAbstractItemDelegate*>(src);
}

QMetaObject* QStyledItemDelegate_metaObject(const QStyledItemDelegate* self) {
	return (QMetaObject*) self->metaObject();
}

void* QStyledItemDelegate_metacast(QStyledItemDelegate* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QStyledItemDelegate_metacall(QStyledItemDelegate* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QStyledItemDelegate_tr(const char* s) {
	QString _ret = QStyledItemDelegate::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStyledItemDelegate_trUtf8(const char* s) {
	QString _ret = QStyledItemDelegate::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QStyledItemDelegate_paint(const QStyledItemDelegate* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index) {
	self->paint(painter, *option, *index);
}

QSize* QStyledItemDelegate_sizeHint(const QStyledItemDelegate* self, QStyleOptionViewItem* option, QModelIndex* index) {
	return new QSize(self->sizeHint(*option, *index));
}

QWidget* QStyledItemDelegate_createEditor(const QStyledItemDelegate* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index) {
	return self->createEditor(parent, *option, *index);
}

void QStyledItemDelegate_setEditorData(const QStyledItemDelegate* self, QWidget* editor, QModelIndex* index) {
	self->setEditorData(editor, *index);
}

void QStyledItemDelegate_setModelData(const QStyledItemDelegate* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index) {
	self->setModelData(editor, model, *index);
}

void QStyledItemDelegate_updateEditorGeometry(const QStyledItemDelegate* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index) {
	self->updateEditorGeometry(editor, *option, *index);
}

QItemEditorFactory* QStyledItemDelegate_itemEditorFactory(const QStyledItemDelegate* self) {
	return self->itemEditorFactory();
}

void QStyledItemDelegate_setItemEditorFactory(QStyledItemDelegate* self, QItemEditorFactory* factory) {
	self->setItemEditorFactory(factory);
}

struct miqt_string QStyledItemDelegate_displayText(const QStyledItemDelegate* self, QVariant* value, QLocale* locale) {
	QString _ret = self->displayText(*value, *locale);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStyledItemDelegate_tr2(const char* s, const char* c) {
	QString _ret = QStyledItemDelegate::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStyledItemDelegate_tr3(const char* s, const char* c, int n) {
	QString _ret = QStyledItemDelegate::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStyledItemDelegate_trUtf82(const char* s, const char* c) {
	QString _ret = QStyledItemDelegate::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QStyledItemDelegate_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QStyledItemDelegate::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QStyledItemDelegate_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQStyledItemDelegate*)(self) )->virtualbase_metaObject();
}

void* QStyledItemDelegate_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQStyledItemDelegate*)(self) )->virtualbase_metacast(param1);
}

int QStyledItemDelegate_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQStyledItemDelegate*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QStyledItemDelegate_virtualbase_paint(const void* self, QPainter* painter, QStyleOptionViewItem* option, QModelIndex* index) {
	( (const MiqtVirtualQStyledItemDelegate*)(self) )->virtualbase_paint(painter, option, index);
}

QSize* QStyledItemDelegate_virtualbase_sizeHint(const void* self, QStyleOptionViewItem* option, QModelIndex* index) {
	return ( (const MiqtVirtualQStyledItemDelegate*)(self) )->virtualbase_sizeHint(option, index);
}

QWidget* QStyledItemDelegate_virtualbase_createEditor(const void* self, QWidget* parent, QStyleOptionViewItem* option, QModelIndex* index) {
	return ( (const MiqtVirtualQStyledItemDelegate*)(self) )->virtualbase_createEditor(parent, option, index);
}

void QStyledItemDelegate_virtualbase_setEditorData(const void* self, QWidget* editor, QModelIndex* index) {
	( (const MiqtVirtualQStyledItemDelegate*)(self) )->virtualbase_setEditorData(editor, index);
}

void QStyledItemDelegate_virtualbase_setModelData(const void* self, QWidget* editor, QAbstractItemModel* model, QModelIndex* index) {
	( (const MiqtVirtualQStyledItemDelegate*)(self) )->virtualbase_setModelData(editor, model, index);
}

void QStyledItemDelegate_virtualbase_updateEditorGeometry(const void* self, QWidget* editor, QStyleOptionViewItem* option, QModelIndex* index) {
	( (const MiqtVirtualQStyledItemDelegate*)(self) )->virtualbase_updateEditorGeometry(editor, option, index);
}

struct miqt_string QStyledItemDelegate_virtualbase_displayText(const void* self, QVariant* value, QLocale* locale) {
	return ( (const MiqtVirtualQStyledItemDelegate*)(self) )->virtualbase_displayText(value, locale);
}

void QStyledItemDelegate_virtualbase_initStyleOption(const void* self, QStyleOptionViewItem* option, QModelIndex* index) {
	( (const MiqtVirtualQStyledItemDelegate*)(self) )->virtualbase_initStyleOption(option, index);
}

bool QStyledItemDelegate_virtualbase_eventFilter(void* self, QObject* object, QEvent* event) {
	return ( (MiqtVirtualQStyledItemDelegate*)(self) )->virtualbase_eventFilter(object, event);
}

bool QStyledItemDelegate_virtualbase_editorEvent(void* self, QEvent* event, QAbstractItemModel* model, QStyleOptionViewItem* option, QModelIndex* index) {
	return ( (MiqtVirtualQStyledItemDelegate*)(self) )->virtualbase_editorEvent(event, model, option, index);
}

void QStyledItemDelegate_virtualbase_destroyEditor(const void* self, QWidget* editor, QModelIndex* index) {
	( (const MiqtVirtualQStyledItemDelegate*)(self) )->virtualbase_destroyEditor(editor, index);
}

bool QStyledItemDelegate_virtualbase_helpEvent(void* self, QHelpEvent* event, QAbstractItemView* view, QStyleOptionViewItem* option, QModelIndex* index) {
	return ( (MiqtVirtualQStyledItemDelegate*)(self) )->virtualbase_helpEvent(event, view, option, index);
}

struct miqt_array /* of int */  QStyledItemDelegate_virtualbase_paintingRoles(const void* self) {
	return ( (const MiqtVirtualQStyledItemDelegate*)(self) )->virtualbase_paintingRoles();
}

bool QStyledItemDelegate_virtualbase_event(void* self, QEvent* event) {
	return ( (MiqtVirtualQStyledItemDelegate*)(self) )->virtualbase_event(event);
}

void QStyledItemDelegate_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQStyledItemDelegate*)(self) )->virtualbase_timerEvent(event);
}

void QStyledItemDelegate_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQStyledItemDelegate*)(self) )->virtualbase_childEvent(event);
}

void QStyledItemDelegate_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQStyledItemDelegate*)(self) )->virtualbase_customEvent(event);
}

void QStyledItemDelegate_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQStyledItemDelegate*)(self) )->virtualbase_connectNotify(signal);
}

void QStyledItemDelegate_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQStyledItemDelegate*)(self) )->virtualbase_disconnectNotify(signal);
}

const QMetaObject* QStyledItemDelegate_staticMetaObject() { return &QStyledItemDelegate::staticMetaObject; }
QObject* QStyledItemDelegate_protectedbase_sender(const void* self) {
	MiqtVirtualQStyledItemDelegate* self_cast = static_cast<MiqtVirtualQStyledItemDelegate*>( (QStyledItemDelegate*)(self) );
	
	return self_cast->sender();

}

int QStyledItemDelegate_protectedbase_senderSignalIndex(const void* self) {
	MiqtVirtualQStyledItemDelegate* self_cast = static_cast<MiqtVirtualQStyledItemDelegate*>( (QStyledItemDelegate*)(self) );
	
	return self_cast->senderSignalIndex();

}

int QStyledItemDelegate_protectedbase_receivers(const void* self, const char* signal) {
	MiqtVirtualQStyledItemDelegate* self_cast = static_cast<MiqtVirtualQStyledItemDelegate*>( (QStyledItemDelegate*)(self) );
	
	return self_cast->receivers(signal);

}

bool QStyledItemDelegate_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	MiqtVirtualQStyledItemDelegate* self_cast = static_cast<MiqtVirtualQStyledItemDelegate*>( (QStyledItemDelegate*)(self) );
	
	return self_cast->isSignalConnected(*signal);

}

void QStyledItemDelegate_delete(QStyledItemDelegate* self) {
	delete self;
}

