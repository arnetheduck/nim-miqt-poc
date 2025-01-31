#include <QAbstractItemView>
#include <QAbstractScrollArea>
#include <QActionEvent>
#include <QBrush>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QColor>
#include <QContextMenuEvent>
#include <QDataStream>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QFont>
#include <QFrame>
#include <QHideEvent>
#include <QIcon>
#include <QInputMethodEvent>
#include <QItemSelection>
#include <QItemSelectionModel>
#include <QKeyEvent>
#include <QList>
#include <QMetaMethod>
#include <QMetaObject>
#include <QMimeData>
#include <QModelIndex>
#include <QMouseEvent>
#include <QMoveEvent>
#include <QObject>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPaintEvent>
#include <QPainter>
#include <QPoint>
#include <QRect>
#include <QRegion>
#include <QResizeEvent>
#include <QShowEvent>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QStyleOptionViewItem>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QTreeView>
#include <QTreeWidget>
#include <QTreeWidgetItem>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qtreewidget.h>
#include "gen_qtreewidget.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QTreeWidget_itemPressed(intptr_t, QTreeWidgetItem*, int);
void miqt_exec_callback_QTreeWidget_itemPressed_release(intptr_t);
void miqt_exec_callback_QTreeWidget_itemClicked(intptr_t, QTreeWidgetItem*, int);
void miqt_exec_callback_QTreeWidget_itemClicked_release(intptr_t);
void miqt_exec_callback_QTreeWidget_itemDoubleClicked(intptr_t, QTreeWidgetItem*, int);
void miqt_exec_callback_QTreeWidget_itemDoubleClicked_release(intptr_t);
void miqt_exec_callback_QTreeWidget_itemActivated(intptr_t, QTreeWidgetItem*, int);
void miqt_exec_callback_QTreeWidget_itemActivated_release(intptr_t);
void miqt_exec_callback_QTreeWidget_itemEntered(intptr_t, QTreeWidgetItem*, int);
void miqt_exec_callback_QTreeWidget_itemEntered_release(intptr_t);
void miqt_exec_callback_QTreeWidget_itemChanged(intptr_t, QTreeWidgetItem*, int);
void miqt_exec_callback_QTreeWidget_itemChanged_release(intptr_t);
void miqt_exec_callback_QTreeWidget_itemExpanded(intptr_t, QTreeWidgetItem*);
void miqt_exec_callback_QTreeWidget_itemExpanded_release(intptr_t);
void miqt_exec_callback_QTreeWidget_itemCollapsed(intptr_t, QTreeWidgetItem*);
void miqt_exec_callback_QTreeWidget_itemCollapsed_release(intptr_t);
void miqt_exec_callback_QTreeWidget_currentItemChanged(intptr_t, QTreeWidgetItem*, QTreeWidgetItem*);
void miqt_exec_callback_QTreeWidget_currentItemChanged_release(intptr_t);
void miqt_exec_callback_QTreeWidget_itemSelectionChanged(intptr_t);
void miqt_exec_callback_QTreeWidget_itemSelectionChanged_release(intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQTreeWidgetItem final : public QTreeWidgetItem {
	struct QTreeWidgetItem_VTable* vtbl;
public:

	MiqtVirtualQTreeWidgetItem(struct QTreeWidgetItem_VTable* vtbl): QTreeWidgetItem(), vtbl(vtbl) {};
	MiqtVirtualQTreeWidgetItem(struct QTreeWidgetItem_VTable* vtbl, const QStringList& strings): QTreeWidgetItem(strings), vtbl(vtbl) {};
	MiqtVirtualQTreeWidgetItem(struct QTreeWidgetItem_VTable* vtbl, QTreeWidget* treeview): QTreeWidgetItem(treeview), vtbl(vtbl) {};
	MiqtVirtualQTreeWidgetItem(struct QTreeWidgetItem_VTable* vtbl, QTreeWidget* treeview, const QStringList& strings): QTreeWidgetItem(treeview, strings), vtbl(vtbl) {};
	MiqtVirtualQTreeWidgetItem(struct QTreeWidgetItem_VTable* vtbl, QTreeWidget* treeview, QTreeWidgetItem* after): QTreeWidgetItem(treeview, after), vtbl(vtbl) {};
	MiqtVirtualQTreeWidgetItem(struct QTreeWidgetItem_VTable* vtbl, QTreeWidgetItem* parent): QTreeWidgetItem(parent), vtbl(vtbl) {};
	MiqtVirtualQTreeWidgetItem(struct QTreeWidgetItem_VTable* vtbl, QTreeWidgetItem* parent, const QStringList& strings): QTreeWidgetItem(parent, strings), vtbl(vtbl) {};
	MiqtVirtualQTreeWidgetItem(struct QTreeWidgetItem_VTable* vtbl, QTreeWidgetItem* parent, QTreeWidgetItem* after): QTreeWidgetItem(parent, after), vtbl(vtbl) {};
	MiqtVirtualQTreeWidgetItem(struct QTreeWidgetItem_VTable* vtbl, const QTreeWidgetItem& other): QTreeWidgetItem(other), vtbl(vtbl) {};
	MiqtVirtualQTreeWidgetItem(struct QTreeWidgetItem_VTable* vtbl, int type): QTreeWidgetItem(type), vtbl(vtbl) {};
	MiqtVirtualQTreeWidgetItem(struct QTreeWidgetItem_VTable* vtbl, const QStringList& strings, int type): QTreeWidgetItem(strings, type), vtbl(vtbl) {};
	MiqtVirtualQTreeWidgetItem(struct QTreeWidgetItem_VTable* vtbl, QTreeWidget* treeview, int type): QTreeWidgetItem(treeview, type), vtbl(vtbl) {};
	MiqtVirtualQTreeWidgetItem(struct QTreeWidgetItem_VTable* vtbl, QTreeWidget* treeview, const QStringList& strings, int type): QTreeWidgetItem(treeview, strings, type), vtbl(vtbl) {};
	MiqtVirtualQTreeWidgetItem(struct QTreeWidgetItem_VTable* vtbl, QTreeWidget* treeview, QTreeWidgetItem* after, int type): QTreeWidgetItem(treeview, after, type), vtbl(vtbl) {};
	MiqtVirtualQTreeWidgetItem(struct QTreeWidgetItem_VTable* vtbl, QTreeWidgetItem* parent, int type): QTreeWidgetItem(parent, type), vtbl(vtbl) {};
	MiqtVirtualQTreeWidgetItem(struct QTreeWidgetItem_VTable* vtbl, QTreeWidgetItem* parent, const QStringList& strings, int type): QTreeWidgetItem(parent, strings, type), vtbl(vtbl) {};
	MiqtVirtualQTreeWidgetItem(struct QTreeWidgetItem_VTable* vtbl, QTreeWidgetItem* parent, QTreeWidgetItem* after, int type): QTreeWidgetItem(parent, after, type), vtbl(vtbl) {};

	virtual ~MiqtVirtualQTreeWidgetItem() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QTreeWidgetItem* clone() const override {
		if (vtbl->clone == 0) {
			return QTreeWidgetItem::clone();
		}


		QTreeWidgetItem* callback_return_value = vtbl->clone(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QTreeWidgetItem* virtualbase_clone() const {

		return QTreeWidgetItem::clone();

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant data(int column, int role) const override {
		if (vtbl->data == 0) {
			return QTreeWidgetItem::data(column, role);
		}

		int sigval1 = column;
		int sigval2 = role;

		QVariant* callback_return_value = vtbl->data(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_data(int column, int role) const {

		return new QVariant(QTreeWidgetItem::data(static_cast<int>(column), static_cast<int>(role)));

	}

	// Subclass to allow providing a Go implementation
	virtual void setData(int column, int role, const QVariant& value) override {
		if (vtbl->setData == 0) {
			QTreeWidgetItem::setData(column, role, value);
			return;
		}

		int sigval1 = column;
		int sigval2 = role;
		const QVariant& value_ret = value;
		// Cast returned reference into pointer
		QVariant* sigval3 = const_cast<QVariant*>(&value_ret);

		vtbl->setData(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setData(int column, int role, QVariant* value) {

		QTreeWidgetItem::setData(static_cast<int>(column), static_cast<int>(role), *value);

	}

	// Subclass to allow providing a Go implementation
	virtual bool operator<(const QTreeWidgetItem& other) const override {
		if (vtbl->operatorLesser == 0) {
			return QTreeWidgetItem::operator<(other);
		}

		const QTreeWidgetItem& other_ret = other;
		// Cast returned reference into pointer
		QTreeWidgetItem* sigval1 = const_cast<QTreeWidgetItem*>(&other_ret);

		bool callback_return_value = vtbl->operatorLesser(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_operatorLesser(QTreeWidgetItem* other) const {

		return QTreeWidgetItem::operator<(*other);

	}

	// Subclass to allow providing a Go implementation
	virtual void read(QDataStream& in) override {
		if (vtbl->read == 0) {
			QTreeWidgetItem::read(in);
			return;
		}

		QDataStream& in_ret = in;
		// Cast returned reference into pointer
		QDataStream* sigval1 = &in_ret;

		vtbl->read(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_read(QDataStream* in) {

		QTreeWidgetItem::read(*in);

	}

	// Subclass to allow providing a Go implementation
	virtual void write(QDataStream& out) const override {
		if (vtbl->write == 0) {
			QTreeWidgetItem::write(out);
			return;
		}

		QDataStream& out_ret = out;
		// Cast returned reference into pointer
		QDataStream* sigval1 = &out_ret;

		vtbl->write(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_write(QDataStream* out) const {

		QTreeWidgetItem::write(*out);

	}

	// Wrapper to allow calling protected method
	void protectedbase_emitDataChanged() {

		QTreeWidgetItem::emitDataChanged();

	}

};

QTreeWidgetItem* QTreeWidgetItem_new(struct QTreeWidgetItem_VTable* vtbl) {
	return new MiqtVirtualQTreeWidgetItem(vtbl);
}

QTreeWidgetItem* QTreeWidgetItem_new2(struct QTreeWidgetItem_VTable* vtbl, struct miqt_array /* of struct miqt_string */  strings) {
	QStringList strings_QList;
	strings_QList.reserve(strings.len);
	struct miqt_string* strings_arr = static_cast<struct miqt_string*>(strings.data);
	for(size_t i = 0; i < strings.len; ++i) {
		QString strings_arr_i_QString = QString::fromUtf8(strings_arr[i].data, strings_arr[i].len);
		strings_QList.push_back(strings_arr_i_QString);
	}
	return new MiqtVirtualQTreeWidgetItem(vtbl, strings_QList);
}

QTreeWidgetItem* QTreeWidgetItem_new3(struct QTreeWidgetItem_VTable* vtbl, QTreeWidget* treeview) {
	return new MiqtVirtualQTreeWidgetItem(vtbl, treeview);
}

QTreeWidgetItem* QTreeWidgetItem_new4(struct QTreeWidgetItem_VTable* vtbl, QTreeWidget* treeview, struct miqt_array /* of struct miqt_string */  strings) {
	QStringList strings_QList;
	strings_QList.reserve(strings.len);
	struct miqt_string* strings_arr = static_cast<struct miqt_string*>(strings.data);
	for(size_t i = 0; i < strings.len; ++i) {
		QString strings_arr_i_QString = QString::fromUtf8(strings_arr[i].data, strings_arr[i].len);
		strings_QList.push_back(strings_arr_i_QString);
	}
	return new MiqtVirtualQTreeWidgetItem(vtbl, treeview, strings_QList);
}

QTreeWidgetItem* QTreeWidgetItem_new5(struct QTreeWidgetItem_VTable* vtbl, QTreeWidget* treeview, QTreeWidgetItem* after) {
	return new MiqtVirtualQTreeWidgetItem(vtbl, treeview, after);
}

QTreeWidgetItem* QTreeWidgetItem_new6(struct QTreeWidgetItem_VTable* vtbl, QTreeWidgetItem* parent) {
	return new MiqtVirtualQTreeWidgetItem(vtbl, parent);
}

QTreeWidgetItem* QTreeWidgetItem_new7(struct QTreeWidgetItem_VTable* vtbl, QTreeWidgetItem* parent, struct miqt_array /* of struct miqt_string */  strings) {
	QStringList strings_QList;
	strings_QList.reserve(strings.len);
	struct miqt_string* strings_arr = static_cast<struct miqt_string*>(strings.data);
	for(size_t i = 0; i < strings.len; ++i) {
		QString strings_arr_i_QString = QString::fromUtf8(strings_arr[i].data, strings_arr[i].len);
		strings_QList.push_back(strings_arr_i_QString);
	}
	return new MiqtVirtualQTreeWidgetItem(vtbl, parent, strings_QList);
}

QTreeWidgetItem* QTreeWidgetItem_new8(struct QTreeWidgetItem_VTable* vtbl, QTreeWidgetItem* parent, QTreeWidgetItem* after) {
	return new MiqtVirtualQTreeWidgetItem(vtbl, parent, after);
}

QTreeWidgetItem* QTreeWidgetItem_new9(struct QTreeWidgetItem_VTable* vtbl, QTreeWidgetItem* other) {
	return new MiqtVirtualQTreeWidgetItem(vtbl, *other);
}

QTreeWidgetItem* QTreeWidgetItem_new10(struct QTreeWidgetItem_VTable* vtbl, int type) {
	return new MiqtVirtualQTreeWidgetItem(vtbl, static_cast<int>(type));
}

QTreeWidgetItem* QTreeWidgetItem_new11(struct QTreeWidgetItem_VTable* vtbl, struct miqt_array /* of struct miqt_string */  strings, int type) {
	QStringList strings_QList;
	strings_QList.reserve(strings.len);
	struct miqt_string* strings_arr = static_cast<struct miqt_string*>(strings.data);
	for(size_t i = 0; i < strings.len; ++i) {
		QString strings_arr_i_QString = QString::fromUtf8(strings_arr[i].data, strings_arr[i].len);
		strings_QList.push_back(strings_arr_i_QString);
	}
	return new MiqtVirtualQTreeWidgetItem(vtbl, strings_QList, static_cast<int>(type));
}

QTreeWidgetItem* QTreeWidgetItem_new12(struct QTreeWidgetItem_VTable* vtbl, QTreeWidget* treeview, int type) {
	return new MiqtVirtualQTreeWidgetItem(vtbl, treeview, static_cast<int>(type));
}

QTreeWidgetItem* QTreeWidgetItem_new13(struct QTreeWidgetItem_VTable* vtbl, QTreeWidget* treeview, struct miqt_array /* of struct miqt_string */  strings, int type) {
	QStringList strings_QList;
	strings_QList.reserve(strings.len);
	struct miqt_string* strings_arr = static_cast<struct miqt_string*>(strings.data);
	for(size_t i = 0; i < strings.len; ++i) {
		QString strings_arr_i_QString = QString::fromUtf8(strings_arr[i].data, strings_arr[i].len);
		strings_QList.push_back(strings_arr_i_QString);
	}
	return new MiqtVirtualQTreeWidgetItem(vtbl, treeview, strings_QList, static_cast<int>(type));
}

QTreeWidgetItem* QTreeWidgetItem_new14(struct QTreeWidgetItem_VTable* vtbl, QTreeWidget* treeview, QTreeWidgetItem* after, int type) {
	return new MiqtVirtualQTreeWidgetItem(vtbl, treeview, after, static_cast<int>(type));
}

QTreeWidgetItem* QTreeWidgetItem_new15(struct QTreeWidgetItem_VTable* vtbl, QTreeWidgetItem* parent, int type) {
	return new MiqtVirtualQTreeWidgetItem(vtbl, parent, static_cast<int>(type));
}

QTreeWidgetItem* QTreeWidgetItem_new16(struct QTreeWidgetItem_VTable* vtbl, QTreeWidgetItem* parent, struct miqt_array /* of struct miqt_string */  strings, int type) {
	QStringList strings_QList;
	strings_QList.reserve(strings.len);
	struct miqt_string* strings_arr = static_cast<struct miqt_string*>(strings.data);
	for(size_t i = 0; i < strings.len; ++i) {
		QString strings_arr_i_QString = QString::fromUtf8(strings_arr[i].data, strings_arr[i].len);
		strings_QList.push_back(strings_arr_i_QString);
	}
	return new MiqtVirtualQTreeWidgetItem(vtbl, parent, strings_QList, static_cast<int>(type));
}

QTreeWidgetItem* QTreeWidgetItem_new17(struct QTreeWidgetItem_VTable* vtbl, QTreeWidgetItem* parent, QTreeWidgetItem* after, int type) {
	return new MiqtVirtualQTreeWidgetItem(vtbl, parent, after, static_cast<int>(type));
}

QTreeWidgetItem* QTreeWidgetItem_clone(const QTreeWidgetItem* self) {
	return self->clone();
}

QTreeWidget* QTreeWidgetItem_treeWidget(const QTreeWidgetItem* self) {
	return self->treeWidget();
}

void QTreeWidgetItem_setSelected(QTreeWidgetItem* self, bool select) {
	self->setSelected(select);
}

bool QTreeWidgetItem_isSelected(const QTreeWidgetItem* self) {
	return self->isSelected();
}

void QTreeWidgetItem_setHidden(QTreeWidgetItem* self, bool hide) {
	self->setHidden(hide);
}

bool QTreeWidgetItem_isHidden(const QTreeWidgetItem* self) {
	return self->isHidden();
}

void QTreeWidgetItem_setExpanded(QTreeWidgetItem* self, bool expand) {
	self->setExpanded(expand);
}

bool QTreeWidgetItem_isExpanded(const QTreeWidgetItem* self) {
	return self->isExpanded();
}

void QTreeWidgetItem_setFirstColumnSpanned(QTreeWidgetItem* self, bool span) {
	self->setFirstColumnSpanned(span);
}

bool QTreeWidgetItem_isFirstColumnSpanned(const QTreeWidgetItem* self) {
	return self->isFirstColumnSpanned();
}

void QTreeWidgetItem_setDisabled(QTreeWidgetItem* self, bool disabled) {
	self->setDisabled(disabled);
}

bool QTreeWidgetItem_isDisabled(const QTreeWidgetItem* self) {
	return self->isDisabled();
}

void QTreeWidgetItem_setChildIndicatorPolicy(QTreeWidgetItem* self, int policy) {
	self->setChildIndicatorPolicy(static_cast<QTreeWidgetItem::ChildIndicatorPolicy>(policy));
}

int QTreeWidgetItem_childIndicatorPolicy(const QTreeWidgetItem* self) {
	QTreeWidgetItem::ChildIndicatorPolicy _ret = self->childIndicatorPolicy();
	return static_cast<int>(_ret);
}

int QTreeWidgetItem_flags(const QTreeWidgetItem* self) {
	Qt::ItemFlags _ret = self->flags();
	return static_cast<int>(_ret);
}

void QTreeWidgetItem_setFlags(QTreeWidgetItem* self, int flags) {
	self->setFlags(static_cast<Qt::ItemFlags>(flags));
}

struct miqt_string QTreeWidgetItem_text(const QTreeWidgetItem* self, int column) {
	QString _ret = self->text(static_cast<int>(column));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTreeWidgetItem_setText(QTreeWidgetItem* self, int column, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	self->setText(static_cast<int>(column), text_QString);
}

QIcon* QTreeWidgetItem_icon(const QTreeWidgetItem* self, int column) {
	return new QIcon(self->icon(static_cast<int>(column)));
}

void QTreeWidgetItem_setIcon(QTreeWidgetItem* self, int column, QIcon* icon) {
	self->setIcon(static_cast<int>(column), *icon);
}

struct miqt_string QTreeWidgetItem_statusTip(const QTreeWidgetItem* self, int column) {
	QString _ret = self->statusTip(static_cast<int>(column));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTreeWidgetItem_setStatusTip(QTreeWidgetItem* self, int column, struct miqt_string statusTip) {
	QString statusTip_QString = QString::fromUtf8(statusTip.data, statusTip.len);
	self->setStatusTip(static_cast<int>(column), statusTip_QString);
}

struct miqt_string QTreeWidgetItem_toolTip(const QTreeWidgetItem* self, int column) {
	QString _ret = self->toolTip(static_cast<int>(column));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTreeWidgetItem_setToolTip(QTreeWidgetItem* self, int column, struct miqt_string toolTip) {
	QString toolTip_QString = QString::fromUtf8(toolTip.data, toolTip.len);
	self->setToolTip(static_cast<int>(column), toolTip_QString);
}

struct miqt_string QTreeWidgetItem_whatsThis(const QTreeWidgetItem* self, int column) {
	QString _ret = self->whatsThis(static_cast<int>(column));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTreeWidgetItem_setWhatsThis(QTreeWidgetItem* self, int column, struct miqt_string whatsThis) {
	QString whatsThis_QString = QString::fromUtf8(whatsThis.data, whatsThis.len);
	self->setWhatsThis(static_cast<int>(column), whatsThis_QString);
}

QFont* QTreeWidgetItem_font(const QTreeWidgetItem* self, int column) {
	return new QFont(self->font(static_cast<int>(column)));
}

void QTreeWidgetItem_setFont(QTreeWidgetItem* self, int column, QFont* font) {
	self->setFont(static_cast<int>(column), *font);
}

int QTreeWidgetItem_textAlignment(const QTreeWidgetItem* self, int column) {
	return self->textAlignment(static_cast<int>(column));
}

void QTreeWidgetItem_setTextAlignment(QTreeWidgetItem* self, int column, int alignment) {
	self->setTextAlignment(static_cast<int>(column), static_cast<int>(alignment));
}

QColor* QTreeWidgetItem_backgroundColor(const QTreeWidgetItem* self, int column) {
	return new QColor(self->backgroundColor(static_cast<int>(column)));
}

void QTreeWidgetItem_setBackgroundColor(QTreeWidgetItem* self, int column, QColor* color) {
	self->setBackgroundColor(static_cast<int>(column), *color);
}

QBrush* QTreeWidgetItem_background(const QTreeWidgetItem* self, int column) {
	return new QBrush(self->background(static_cast<int>(column)));
}

void QTreeWidgetItem_setBackground(QTreeWidgetItem* self, int column, QBrush* brush) {
	self->setBackground(static_cast<int>(column), *brush);
}

QColor* QTreeWidgetItem_textColor(const QTreeWidgetItem* self, int column) {
	return new QColor(self->textColor(static_cast<int>(column)));
}

void QTreeWidgetItem_setTextColor(QTreeWidgetItem* self, int column, QColor* color) {
	self->setTextColor(static_cast<int>(column), *color);
}

QBrush* QTreeWidgetItem_foreground(const QTreeWidgetItem* self, int column) {
	return new QBrush(self->foreground(static_cast<int>(column)));
}

void QTreeWidgetItem_setForeground(QTreeWidgetItem* self, int column, QBrush* brush) {
	self->setForeground(static_cast<int>(column), *brush);
}

int QTreeWidgetItem_checkState(const QTreeWidgetItem* self, int column) {
	Qt::CheckState _ret = self->checkState(static_cast<int>(column));
	return static_cast<int>(_ret);
}

void QTreeWidgetItem_setCheckState(QTreeWidgetItem* self, int column, int state) {
	self->setCheckState(static_cast<int>(column), static_cast<Qt::CheckState>(state));
}

QSize* QTreeWidgetItem_sizeHint(const QTreeWidgetItem* self, int column) {
	return new QSize(self->sizeHint(static_cast<int>(column)));
}

void QTreeWidgetItem_setSizeHint(QTreeWidgetItem* self, int column, QSize* size) {
	self->setSizeHint(static_cast<int>(column), *size);
}

QVariant* QTreeWidgetItem_data(const QTreeWidgetItem* self, int column, int role) {
	return new QVariant(self->data(static_cast<int>(column), static_cast<int>(role)));
}

void QTreeWidgetItem_setData(QTreeWidgetItem* self, int column, int role, QVariant* value) {
	self->setData(static_cast<int>(column), static_cast<int>(role), *value);
}

bool QTreeWidgetItem_operatorLesser(const QTreeWidgetItem* self, QTreeWidgetItem* other) {
	return (*self < *other);
}

void QTreeWidgetItem_read(QTreeWidgetItem* self, QDataStream* in) {
	self->read(*in);
}

void QTreeWidgetItem_write(const QTreeWidgetItem* self, QDataStream* out) {
	self->write(*out);
}

void QTreeWidgetItem_operatorAssign(QTreeWidgetItem* self, QTreeWidgetItem* other) {
	self->operator=(*other);
}

QTreeWidgetItem* QTreeWidgetItem_parent(const QTreeWidgetItem* self) {
	return self->parent();
}

QTreeWidgetItem* QTreeWidgetItem_child(const QTreeWidgetItem* self, int index) {
	return self->child(static_cast<int>(index));
}

int QTreeWidgetItem_childCount(const QTreeWidgetItem* self) {
	return self->childCount();
}

int QTreeWidgetItem_columnCount(const QTreeWidgetItem* self) {
	return self->columnCount();
}

int QTreeWidgetItem_indexOfChild(const QTreeWidgetItem* self, QTreeWidgetItem* child) {
	return self->indexOfChild(child);
}

void QTreeWidgetItem_addChild(QTreeWidgetItem* self, QTreeWidgetItem* child) {
	self->addChild(child);
}

void QTreeWidgetItem_insertChild(QTreeWidgetItem* self, int index, QTreeWidgetItem* child) {
	self->insertChild(static_cast<int>(index), child);
}

void QTreeWidgetItem_removeChild(QTreeWidgetItem* self, QTreeWidgetItem* child) {
	self->removeChild(child);
}

QTreeWidgetItem* QTreeWidgetItem_takeChild(QTreeWidgetItem* self, int index) {
	return self->takeChild(static_cast<int>(index));
}

void QTreeWidgetItem_addChildren(QTreeWidgetItem* self, struct miqt_array /* of QTreeWidgetItem* */  children) {
	QList<QTreeWidgetItem *> children_QList;
	children_QList.reserve(children.len);
	QTreeWidgetItem** children_arr = static_cast<QTreeWidgetItem**>(children.data);
	for(size_t i = 0; i < children.len; ++i) {
		children_QList.push_back(children_arr[i]);
	}
	self->addChildren(children_QList);
}

void QTreeWidgetItem_insertChildren(QTreeWidgetItem* self, int index, struct miqt_array /* of QTreeWidgetItem* */  children) {
	QList<QTreeWidgetItem *> children_QList;
	children_QList.reserve(children.len);
	QTreeWidgetItem** children_arr = static_cast<QTreeWidgetItem**>(children.data);
	for(size_t i = 0; i < children.len; ++i) {
		children_QList.push_back(children_arr[i]);
	}
	self->insertChildren(static_cast<int>(index), children_QList);
}

struct miqt_array /* of QTreeWidgetItem* */  QTreeWidgetItem_takeChildren(QTreeWidgetItem* self) {
	QList<QTreeWidgetItem *> _ret = self->takeChildren();
	// Convert QList<> from C++ memory to manually-managed C memory
	QTreeWidgetItem** _arr = static_cast<QTreeWidgetItem**>(malloc(sizeof(QTreeWidgetItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

int QTreeWidgetItem_type(const QTreeWidgetItem* self) {
	return self->type();
}

void QTreeWidgetItem_sortChildren(QTreeWidgetItem* self, int column, int order) {
	self->sortChildren(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

QTreeWidgetItem* QTreeWidgetItem_virtualbase_clone(const void* self) {
	return ( (const MiqtVirtualQTreeWidgetItem*)(self) )->virtualbase_clone();
}

QVariant* QTreeWidgetItem_virtualbase_data(const void* self, int column, int role) {
	return ( (const MiqtVirtualQTreeWidgetItem*)(self) )->virtualbase_data(column, role);
}

void QTreeWidgetItem_virtualbase_setData(void* self, int column, int role, QVariant* value) {
	( (MiqtVirtualQTreeWidgetItem*)(self) )->virtualbase_setData(column, role, value);
}

bool QTreeWidgetItem_virtualbase_operatorLesser(const void* self, QTreeWidgetItem* other) {
	return ( (const MiqtVirtualQTreeWidgetItem*)(self) )->virtualbase_operatorLesser(other);
}

void QTreeWidgetItem_virtualbase_read(void* self, QDataStream* in) {
	( (MiqtVirtualQTreeWidgetItem*)(self) )->virtualbase_read(in);
}

void QTreeWidgetItem_virtualbase_write(const void* self, QDataStream* out) {
	( (const MiqtVirtualQTreeWidgetItem*)(self) )->virtualbase_write(out);
}

void QTreeWidgetItem_protectedbase_emitDataChanged(void* self) {
	( (MiqtVirtualQTreeWidgetItem*)(self) )->protectedbase_emitDataChanged();
}

void QTreeWidgetItem_delete(QTreeWidgetItem* self) {
	delete self;
}

class MiqtVirtualQTreeWidget final : public QTreeWidget {
	struct QTreeWidget_VTable* vtbl;
public:

	MiqtVirtualQTreeWidget(struct QTreeWidget_VTable* vtbl, QWidget* parent): QTreeWidget(parent), vtbl(vtbl) {};
	MiqtVirtualQTreeWidget(struct QTreeWidget_VTable* vtbl): QTreeWidget(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQTreeWidget() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTreeWidget::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMetaObject* virtualbase_metaObject() const {

		return (QMetaObject*) QTreeWidget::metaObject();

	}

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTreeWidget::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	void* virtualbase_metacast(const char* param1) {

		return QTreeWidget::qt_metacast(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTreeWidget::qt_metacall(param1, param2, param3);
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

		return QTreeWidget::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

	}

	// Subclass to allow providing a Go implementation
	virtual void setSelectionModel(QItemSelectionModel* selectionModel) override {
		if (vtbl->setSelectionModel == 0) {
			QTreeWidget::setSelectionModel(selectionModel);
			return;
		}

		QItemSelectionModel* sigval1 = selectionModel;

		vtbl->setSelectionModel(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setSelectionModel(QItemSelectionModel* selectionModel) {

		QTreeWidget::setSelectionModel(selectionModel);

	}

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QTreeWidget::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_event(QEvent* e) {

		return QTreeWidget::event(e);

	}

	// Subclass to allow providing a Go implementation
	virtual QStringList mimeTypes() const override {
		if (vtbl->mimeTypes == 0) {
			return QTreeWidget::mimeTypes();
		}


		struct miqt_array /* of struct miqt_string */  callback_return_value = vtbl->mimeTypes(vtbl, this);
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
	struct miqt_array /* of struct miqt_string */  virtualbase_mimeTypes() const {

		QStringList _ret = QTreeWidget::mimeTypes();
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
	virtual QMimeData* mimeData(const QList<QTreeWidgetItem *> items) const override {
		if (vtbl->mimeData == 0) {
			return QTreeWidget::mimeData(items);
		}

		const QList<QTreeWidgetItem *> items_ret = items;
		// Convert QList<> from C++ memory to manually-managed C memory
		QTreeWidgetItem** items_arr = static_cast<QTreeWidgetItem**>(malloc(sizeof(QTreeWidgetItem*) * items_ret.length()));
		for (size_t i = 0, e = items_ret.length(); i < e; ++i) {
			items_arr[i] = items_ret[i];
		}
		struct miqt_array items_out;
		items_out.len = items_ret.length();
		items_out.data = static_cast<void*>(items_arr);
		struct miqt_array /* of QTreeWidgetItem* */  sigval1 = items_out;

		QMimeData* callback_return_value = vtbl->mimeData(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QMimeData* virtualbase_mimeData(struct miqt_array /* of QTreeWidgetItem* */  items) const {
		QList<QTreeWidgetItem *> items_QList;
		items_QList.reserve(items.len);
		QTreeWidgetItem** items_arr = static_cast<QTreeWidgetItem**>(items.data);
		for(size_t i = 0; i < items.len; ++i) {
			items_QList.push_back(items_arr[i]);
		}

		return QTreeWidget::mimeData(items_QList);

	}

	// Subclass to allow providing a Go implementation
	virtual bool dropMimeData(QTreeWidgetItem* parent, int index, const QMimeData* data, Qt::DropAction action) override {
		if (vtbl->dropMimeData == 0) {
			return QTreeWidget::dropMimeData(parent, index, data, action);
		}

		QTreeWidgetItem* sigval1 = parent;
		int sigval2 = index;
		QMimeData* sigval3 = (QMimeData*) data;
		Qt::DropAction action_ret = action;
		int sigval4 = static_cast<int>(action_ret);

		bool callback_return_value = vtbl->dropMimeData(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_dropMimeData(QTreeWidgetItem* parent, int index, QMimeData* data, int action) {

		return QTreeWidget::dropMimeData(parent, static_cast<int>(index), data, static_cast<Qt::DropAction>(action));

	}

	// Subclass to allow providing a Go implementation
	virtual Qt::DropActions supportedDropActions() const override {
		if (vtbl->supportedDropActions == 0) {
			return QTreeWidget::supportedDropActions();
		}


		int callback_return_value = vtbl->supportedDropActions(vtbl, this);

		return static_cast<Qt::DropActions>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_supportedDropActions() const {

		Qt::DropActions _ret = QTreeWidget::supportedDropActions();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QTreeWidget::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dropEvent(QDropEvent* event) {

		QTreeWidget::dropEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void setRootIndex(const QModelIndex& index) override {
		if (vtbl->setRootIndex == 0) {
			QTreeWidget::setRootIndex(index);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		vtbl->setRootIndex(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setRootIndex(QModelIndex* index) {

		QTreeWidget::setRootIndex(*index);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyboardSearch(const QString& search) override {
		if (vtbl->keyboardSearch == 0) {
			QTreeWidget::keyboardSearch(search);
			return;
		}

		const QString search_ret = search;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray search_b = search_ret.toUtf8();
		struct miqt_string search_ms;
		search_ms.len = search_b.length();
		search_ms.data = static_cast<char*>(malloc(search_ms.len));
		memcpy(search_ms.data, search_b.data(), search_ms.len);
		struct miqt_string sigval1 = search_ms;

		vtbl->keyboardSearch(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyboardSearch(struct miqt_string search) {
		QString search_QString = QString::fromUtf8(search.data, search.len);

		QTreeWidget::keyboardSearch(search_QString);

	}

	// Subclass to allow providing a Go implementation
	virtual QRect visualRect(const QModelIndex& index) const override {
		if (vtbl->visualRect == 0) {
			return QTreeWidget::visualRect(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		QRect* callback_return_value = vtbl->visualRect(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRect* virtualbase_visualRect(QModelIndex* index) const {

		return new QRect(QTreeWidget::visualRect(*index));

	}

	// Subclass to allow providing a Go implementation
	virtual void scrollTo(const QModelIndex& index, QAbstractItemView::ScrollHint hint) override {
		if (vtbl->scrollTo == 0) {
			QTreeWidget::scrollTo(index, hint);
			return;
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QAbstractItemView::ScrollHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->scrollTo(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_scrollTo(QModelIndex* index, int hint) {

		QTreeWidget::scrollTo(*index, static_cast<QAbstractItemView::ScrollHint>(hint));

	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndex indexAt(const QPoint& p) const override {
		if (vtbl->indexAt == 0) {
			return QTreeWidget::indexAt(p);
		}

		const QPoint& p_ret = p;
		// Cast returned reference into pointer
		QPoint* sigval1 = const_cast<QPoint*>(&p_ret);

		QModelIndex* callback_return_value = vtbl->indexAt(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QModelIndex* virtualbase_indexAt(QPoint* p) const {

		return new QModelIndex(QTreeWidget::indexAt(*p));

	}

	// Subclass to allow providing a Go implementation
	virtual void doItemsLayout() override {
		if (vtbl->doItemsLayout == 0) {
			QTreeWidget::doItemsLayout();
			return;
		}


		vtbl->doItemsLayout(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_doItemsLayout() {

		QTreeWidget::doItemsLayout();

	}

	// Subclass to allow providing a Go implementation
	virtual void reset() override {
		if (vtbl->reset == 0) {
			QTreeWidget::reset();
			return;
		}


		vtbl->reset(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_reset() {

		QTreeWidget::reset();

	}

	// Subclass to allow providing a Go implementation
	virtual void dataChanged(const QModelIndex& topLeft, const QModelIndex& bottomRight, const QVector<int>& roles) override {
		if (vtbl->dataChanged == 0) {
			QTreeWidget::dataChanged(topLeft, bottomRight, roles);
			return;
		}

		const QModelIndex& topLeft_ret = topLeft;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&topLeft_ret);
		const QModelIndex& bottomRight_ret = bottomRight;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&bottomRight_ret);
		const QVector<int>& roles_ret = roles;
		// Convert QList<> from C++ memory to manually-managed C memory
		int* roles_arr = static_cast<int*>(malloc(sizeof(int) * roles_ret.length()));
		for (size_t i = 0, e = roles_ret.length(); i < e; ++i) {
			roles_arr[i] = roles_ret[i];
		}
		struct miqt_array roles_out;
		roles_out.len = roles_ret.length();
		roles_out.data = static_cast<void*>(roles_arr);
		struct miqt_array /* of int */  sigval3 = roles_out;

		vtbl->dataChanged(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dataChanged(QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles) {
		QVector<int> roles_QList;
		roles_QList.reserve(roles.len);
		int* roles_arr = static_cast<int*>(roles.data);
		for(size_t i = 0; i < roles.len; ++i) {
			roles_QList.push_back(static_cast<int>(roles_arr[i]));
		}

		QTreeWidget::dataChanged(*topLeft, *bottomRight, roles_QList);

	}

	// Subclass to allow providing a Go implementation
	virtual void selectAll() override {
		if (vtbl->selectAll == 0) {
			QTreeWidget::selectAll();
			return;
		}


		vtbl->selectAll(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_selectAll() {

		QTreeWidget::selectAll();

	}

	// Subclass to allow providing a Go implementation
	virtual void verticalScrollbarValueChanged(int value) override {
		if (vtbl->verticalScrollbarValueChanged == 0) {
			QTreeWidget::verticalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->verticalScrollbarValueChanged(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_verticalScrollbarValueChanged(int value) {

		QTreeWidget::verticalScrollbarValueChanged(static_cast<int>(value));

	}

	// Subclass to allow providing a Go implementation
	virtual void scrollContentsBy(int dx, int dy) override {
		if (vtbl->scrollContentsBy == 0) {
			QTreeWidget::scrollContentsBy(dx, dy);
			return;
		}

		int sigval1 = dx;
		int sigval2 = dy;

		vtbl->scrollContentsBy(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_scrollContentsBy(int dx, int dy) {

		QTreeWidget::scrollContentsBy(static_cast<int>(dx), static_cast<int>(dy));

	}

	// Subclass to allow providing a Go implementation
	virtual void rowsInserted(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsInserted == 0) {
			QTreeWidget::rowsInserted(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsInserted(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_rowsInserted(QModelIndex* parent, int start, int end) {

		QTreeWidget::rowsInserted(*parent, static_cast<int>(start), static_cast<int>(end));

	}

	// Subclass to allow providing a Go implementation
	virtual void rowsAboutToBeRemoved(const QModelIndex& parent, int start, int end) override {
		if (vtbl->rowsAboutToBeRemoved == 0) {
			QTreeWidget::rowsAboutToBeRemoved(parent, start, end);
			return;
		}

		const QModelIndex& parent_ret = parent;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&parent_ret);
		int sigval2 = start;
		int sigval3 = end;

		vtbl->rowsAboutToBeRemoved(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_rowsAboutToBeRemoved(QModelIndex* parent, int start, int end) {

		QTreeWidget::rowsAboutToBeRemoved(*parent, static_cast<int>(start), static_cast<int>(end));

	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndex moveCursor(QAbstractItemView::CursorAction cursorAction, Qt::KeyboardModifiers modifiers) override {
		if (vtbl->moveCursor == 0) {
			return QTreeWidget::moveCursor(cursorAction, modifiers);
		}

		QAbstractItemView::CursorAction cursorAction_ret = cursorAction;
		int sigval1 = static_cast<int>(cursorAction_ret);
		Qt::KeyboardModifiers modifiers_ret = modifiers;
		int sigval2 = static_cast<int>(modifiers_ret);

		QModelIndex* callback_return_value = vtbl->moveCursor(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QModelIndex* virtualbase_moveCursor(int cursorAction, int modifiers) {

		return new QModelIndex(QTreeWidget::moveCursor(static_cast<QAbstractItemView::CursorAction>(cursorAction), static_cast<Qt::KeyboardModifiers>(modifiers)));

	}

	// Subclass to allow providing a Go implementation
	virtual int horizontalOffset() const override {
		if (vtbl->horizontalOffset == 0) {
			return QTreeWidget::horizontalOffset();
		}


		int callback_return_value = vtbl->horizontalOffset(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_horizontalOffset() const {

		return QTreeWidget::horizontalOffset();

	}

	// Subclass to allow providing a Go implementation
	virtual int verticalOffset() const override {
		if (vtbl->verticalOffset == 0) {
			return QTreeWidget::verticalOffset();
		}


		int callback_return_value = vtbl->verticalOffset(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_verticalOffset() const {

		return QTreeWidget::verticalOffset();

	}

	// Subclass to allow providing a Go implementation
	virtual void setSelection(const QRect& rect, QItemSelectionModel::SelectionFlags command) override {
		if (vtbl->setSelection == 0) {
			QTreeWidget::setSelection(rect, command);
			return;
		}

		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&rect_ret);
		QItemSelectionModel::SelectionFlags command_ret = command;
		int sigval2 = static_cast<int>(command_ret);

		vtbl->setSelection(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setSelection(QRect* rect, int command) {

		QTreeWidget::setSelection(*rect, static_cast<QItemSelectionModel::SelectionFlags>(command));

	}

	// Subclass to allow providing a Go implementation
	virtual QRegion visualRegionForSelection(const QItemSelection& selection) const override {
		if (vtbl->visualRegionForSelection == 0) {
			return QTreeWidget::visualRegionForSelection(selection);
		}

		const QItemSelection& selection_ret = selection;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selection_ret);

		QRegion* callback_return_value = vtbl->visualRegionForSelection(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRegion* virtualbase_visualRegionForSelection(QItemSelection* selection) const {

		return new QRegion(QTreeWidget::visualRegionForSelection(*selection));

	}

	// Subclass to allow providing a Go implementation
	virtual QModelIndexList selectedIndexes() const override {
		if (vtbl->selectedIndexes == 0) {
			return QTreeWidget::selectedIndexes();
		}


		struct miqt_array /* of QModelIndex* */  callback_return_value = vtbl->selectedIndexes(vtbl, this);
		QModelIndexList callback_return_value_QList;
		callback_return_value_QList.reserve(callback_return_value.len);
		QModelIndex** callback_return_value_arr = static_cast<QModelIndex**>(callback_return_value.data);
		for(size_t i = 0; i < callback_return_value.len; ++i) {
			callback_return_value_QList.push_back(*(callback_return_value_arr[i]));
		}

		return callback_return_value_QList;
	}

	// Wrapper to allow calling protected method
	struct miqt_array /* of QModelIndex* */  virtualbase_selectedIndexes() const {

		QModelIndexList _ret = QTreeWidget::selectedIndexes();
		// Convert QList<> from C++ memory to manually-managed C memory
		QModelIndex** _arr = static_cast<QModelIndex**>(malloc(sizeof(QModelIndex*) * _ret.length()));
		for (size_t i = 0, e = _ret.length(); i < e; ++i) {
			_arr[i] = new QModelIndex(_ret[i]);
		}
		struct miqt_array _out;
		_out.len = _ret.length();
		_out.data = static_cast<void*>(_arr);
		return _out;

	}

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTreeWidget::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_timerEvent(QTimerEvent* event) {

		QTreeWidget::timerEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QTreeWidget::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_paintEvent(QPaintEvent* event) {

		QTreeWidget::paintEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void drawRow(QPainter* painter, const QStyleOptionViewItem& options, const QModelIndex& index) const override {
		if (vtbl->drawRow == 0) {
			QTreeWidget::drawRow(painter, options, index);
			return;
		}

		QPainter* sigval1 = painter;
		const QStyleOptionViewItem& options_ret = options;
		// Cast returned reference into pointer
		QStyleOptionViewItem* sigval2 = const_cast<QStyleOptionViewItem*>(&options_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&index_ret);

		vtbl->drawRow(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_drawRow(QPainter* painter, QStyleOptionViewItem* options, QModelIndex* index) const {

		QTreeWidget::drawRow(painter, *options, *index);

	}

	// Subclass to allow providing a Go implementation
	virtual void drawBranches(QPainter* painter, const QRect& rect, const QModelIndex& index) const override {
		if (vtbl->drawBranches == 0) {
			QTreeWidget::drawBranches(painter, rect, index);
			return;
		}

		QPainter* sigval1 = painter;
		const QRect& rect_ret = rect;
		// Cast returned reference into pointer
		QRect* sigval2 = const_cast<QRect*>(&rect_ret);
		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval3 = const_cast<QModelIndex*>(&index_ret);

		vtbl->drawBranches(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_drawBranches(QPainter* painter, QRect* rect, QModelIndex* index) const {

		QTreeWidget::drawBranches(painter, *rect, *index);

	}

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QTreeWidget::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mousePressEvent(QMouseEvent* event) {

		QTreeWidget::mousePressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QTreeWidget::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseReleaseEvent(QMouseEvent* event) {

		QTreeWidget::mouseReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QTreeWidget::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseDoubleClickEvent(QMouseEvent* event) {

		QTreeWidget::mouseDoubleClickEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QTreeWidget::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_mouseMoveEvent(QMouseEvent* event) {

		QTreeWidget::mouseMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QTreeWidget::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyPressEvent(QKeyEvent* event) {

		QTreeWidget::keyPressEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QTreeWidget::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragMoveEvent(QDragMoveEvent* event) {

		QTreeWidget::dragMoveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool viewportEvent(QEvent* event) override {
		if (vtbl->viewportEvent == 0) {
			return QTreeWidget::viewportEvent(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->viewportEvent(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_viewportEvent(QEvent* event) {

		return QTreeWidget::viewportEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void updateGeometries() override {
		if (vtbl->updateGeometries == 0) {
			QTreeWidget::updateGeometries();
			return;
		}


		vtbl->updateGeometries(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateGeometries() {

		QTreeWidget::updateGeometries();

	}

	// Subclass to allow providing a Go implementation
	virtual QSize viewportSizeHint() const override {
		if (vtbl->viewportSizeHint == 0) {
			return QTreeWidget::viewportSizeHint();
		}


		QSize* callback_return_value = vtbl->viewportSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_viewportSizeHint() const {

		return new QSize(QTreeWidget::viewportSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual int sizeHintForColumn(int column) const override {
		if (vtbl->sizeHintForColumn == 0) {
			return QTreeWidget::sizeHintForColumn(column);
		}

		int sigval1 = column;

		int callback_return_value = vtbl->sizeHintForColumn(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_sizeHintForColumn(int column) const {

		return QTreeWidget::sizeHintForColumn(static_cast<int>(column));

	}

	// Subclass to allow providing a Go implementation
	virtual void horizontalScrollbarAction(int action) override {
		if (vtbl->horizontalScrollbarAction == 0) {
			QTreeWidget::horizontalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->horizontalScrollbarAction(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_horizontalScrollbarAction(int action) {

		QTreeWidget::horizontalScrollbarAction(static_cast<int>(action));

	}

	// Subclass to allow providing a Go implementation
	virtual bool isIndexHidden(const QModelIndex& index) const override {
		if (vtbl->isIndexHidden == 0) {
			return QTreeWidget::isIndexHidden(index);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);

		bool callback_return_value = vtbl->isIndexHidden(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isIndexHidden(QModelIndex* index) const {

		return QTreeWidget::isIndexHidden(*index);

	}

	// Subclass to allow providing a Go implementation
	virtual void selectionChanged(const QItemSelection& selected, const QItemSelection& deselected) override {
		if (vtbl->selectionChanged == 0) {
			QTreeWidget::selectionChanged(selected, deselected);
			return;
		}

		const QItemSelection& selected_ret = selected;
		// Cast returned reference into pointer
		QItemSelection* sigval1 = const_cast<QItemSelection*>(&selected_ret);
		const QItemSelection& deselected_ret = deselected;
		// Cast returned reference into pointer
		QItemSelection* sigval2 = const_cast<QItemSelection*>(&deselected_ret);

		vtbl->selectionChanged(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_selectionChanged(QItemSelection* selected, QItemSelection* deselected) {

		QTreeWidget::selectionChanged(*selected, *deselected);

	}

	// Subclass to allow providing a Go implementation
	virtual void currentChanged(const QModelIndex& current, const QModelIndex& previous) override {
		if (vtbl->currentChanged == 0) {
			QTreeWidget::currentChanged(current, previous);
			return;
		}

		const QModelIndex& current_ret = current;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&current_ret);
		const QModelIndex& previous_ret = previous;
		// Cast returned reference into pointer
		QModelIndex* sigval2 = const_cast<QModelIndex*>(&previous_ret);

		vtbl->currentChanged(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_currentChanged(QModelIndex* current, QModelIndex* previous) {

		QTreeWidget::currentChanged(*current, *previous);

	}

	// Subclass to allow providing a Go implementation
	virtual int sizeHintForRow(int row) const override {
		if (vtbl->sizeHintForRow == 0) {
			return QTreeWidget::sizeHintForRow(row);
		}

		int sigval1 = row;

		int callback_return_value = vtbl->sizeHintForRow(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_sizeHintForRow(int row) const {

		return QTreeWidget::sizeHintForRow(static_cast<int>(row));

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery query) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QTreeWidget::inputMethodQuery(query);
		}

		Qt::InputMethodQuery query_ret = query;
		int sigval1 = static_cast<int>(query_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_inputMethodQuery(int query) const {

		return new QVariant(QTreeWidget::inputMethodQuery(static_cast<Qt::InputMethodQuery>(query)));

	}

	// Subclass to allow providing a Go implementation
	virtual void updateEditorData() override {
		if (vtbl->updateEditorData == 0) {
			QTreeWidget::updateEditorData();
			return;
		}


		vtbl->updateEditorData(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateEditorData() {

		QTreeWidget::updateEditorData();

	}

	// Subclass to allow providing a Go implementation
	virtual void updateEditorGeometries() override {
		if (vtbl->updateEditorGeometries == 0) {
			QTreeWidget::updateEditorGeometries();
			return;
		}


		vtbl->updateEditorGeometries(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateEditorGeometries() {

		QTreeWidget::updateEditorGeometries();

	}

	// Subclass to allow providing a Go implementation
	virtual void verticalScrollbarAction(int action) override {
		if (vtbl->verticalScrollbarAction == 0) {
			QTreeWidget::verticalScrollbarAction(action);
			return;
		}

		int sigval1 = action;

		vtbl->verticalScrollbarAction(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_verticalScrollbarAction(int action) {

		QTreeWidget::verticalScrollbarAction(static_cast<int>(action));

	}

	// Subclass to allow providing a Go implementation
	virtual void horizontalScrollbarValueChanged(int value) override {
		if (vtbl->horizontalScrollbarValueChanged == 0) {
			QTreeWidget::horizontalScrollbarValueChanged(value);
			return;
		}

		int sigval1 = value;

		vtbl->horizontalScrollbarValueChanged(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_horizontalScrollbarValueChanged(int value) {

		QTreeWidget::horizontalScrollbarValueChanged(static_cast<int>(value));

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEditor(QWidget* editor, QAbstractItemDelegate::EndEditHint hint) override {
		if (vtbl->closeEditor == 0) {
			QTreeWidget::closeEditor(editor, hint);
			return;
		}

		QWidget* sigval1 = editor;
		QAbstractItemDelegate::EndEditHint hint_ret = hint;
		int sigval2 = static_cast<int>(hint_ret);

		vtbl->closeEditor(vtbl, this, sigval1, sigval2);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEditor(QWidget* editor, int hint) {

		QTreeWidget::closeEditor(editor, static_cast<QAbstractItemDelegate::EndEditHint>(hint));

	}

	// Subclass to allow providing a Go implementation
	virtual void commitData(QWidget* editor) override {
		if (vtbl->commitData == 0) {
			QTreeWidget::commitData(editor);
			return;
		}

		QWidget* sigval1 = editor;

		vtbl->commitData(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_commitData(QWidget* editor) {

		QTreeWidget::commitData(editor);

	}

	// Subclass to allow providing a Go implementation
	virtual void editorDestroyed(QObject* editor) override {
		if (vtbl->editorDestroyed == 0) {
			QTreeWidget::editorDestroyed(editor);
			return;
		}

		QObject* sigval1 = editor;

		vtbl->editorDestroyed(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_editorDestroyed(QObject* editor) {

		QTreeWidget::editorDestroyed(editor);

	}

	// Subclass to allow providing a Go implementation
	virtual bool edit(const QModelIndex& index, QAbstractItemView::EditTrigger trigger, QEvent* event) override {
		if (vtbl->edit2 == 0) {
			return QTreeWidget::edit(index, trigger, event);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QAbstractItemView::EditTrigger trigger_ret = trigger;
		int sigval2 = static_cast<int>(trigger_ret);
		QEvent* sigval3 = event;

		bool callback_return_value = vtbl->edit2(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_edit2(QModelIndex* index, int trigger, QEvent* event) {

		return QTreeWidget::edit(*index, static_cast<QAbstractItemView::EditTrigger>(trigger), event);

	}

	// Subclass to allow providing a Go implementation
	virtual QItemSelectionModel::SelectionFlags selectionCommand(const QModelIndex& index, const QEvent* event) const override {
		if (vtbl->selectionCommand == 0) {
			return QTreeWidget::selectionCommand(index, event);
		}

		const QModelIndex& index_ret = index;
		// Cast returned reference into pointer
		QModelIndex* sigval1 = const_cast<QModelIndex*>(&index_ret);
		QEvent* sigval2 = (QEvent*) event;

		int callback_return_value = vtbl->selectionCommand(vtbl, this, sigval1, sigval2);

		return static_cast<QItemSelectionModel::SelectionFlags>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_selectionCommand(QModelIndex* index, QEvent* event) const {

		QItemSelectionModel::SelectionFlags _ret = QTreeWidget::selectionCommand(*index, event);
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual void startDrag(Qt::DropActions supportedActions) override {
		if (vtbl->startDrag == 0) {
			QTreeWidget::startDrag(supportedActions);
			return;
		}

		Qt::DropActions supportedActions_ret = supportedActions;
		int sigval1 = static_cast<int>(supportedActions_ret);

		vtbl->startDrag(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_startDrag(int supportedActions) {

		QTreeWidget::startDrag(static_cast<Qt::DropActions>(supportedActions));

	}

	// Subclass to allow providing a Go implementation
	virtual QStyleOptionViewItem viewOptions() const override {
		if (vtbl->viewOptions == 0) {
			return QTreeWidget::viewOptions();
		}


		QStyleOptionViewItem* callback_return_value = vtbl->viewOptions(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QStyleOptionViewItem* virtualbase_viewOptions() const {

		return new QStyleOptionViewItem(QTreeWidget::viewOptions());

	}

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QTreeWidget::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_focusNextPrevChild(bool next) {

		return QTreeWidget::focusNextPrevChild(next);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QTreeWidget::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragEnterEvent(QDragEnterEvent* event) {

		QTreeWidget::dragEnterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QTreeWidget::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_dragLeaveEvent(QDragLeaveEvent* event) {

		QTreeWidget::dragLeaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QTreeWidget::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusInEvent(QFocusEvent* event) {

		QTreeWidget::focusInEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QTreeWidget::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_focusOutEvent(QFocusEvent* event) {

		QTreeWidget::focusOutEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QTreeWidget::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_resizeEvent(QResizeEvent* event) {

		QTreeWidget::resizeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* event) override {
		if (vtbl->inputMethodEvent == 0) {
			QTreeWidget::inputMethodEvent(event);
			return;
		}

		QInputMethodEvent* sigval1 = event;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_inputMethodEvent(QInputMethodEvent* event) {

		QTreeWidget::inputMethodEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* object, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTreeWidget::eventFilter(object, event);
		}

		QObject* sigval1 = object;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_eventFilter(QObject* object, QEvent* event) {

		return QTreeWidget::eventFilter(object, event);

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QTreeWidget::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSizeHint() const {

		return new QSize(QTreeWidget::minimumSizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QTreeWidget::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QTreeWidget::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual void setupViewport(QWidget* viewport) override {
		if (vtbl->setupViewport == 0) {
			QTreeWidget::setupViewport(viewport);
			return;
		}

		QWidget* sigval1 = viewport;

		vtbl->setupViewport(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setupViewport(QWidget* viewport) {

		QTreeWidget::setupViewport(viewport);

	}

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* param1) override {
		if (vtbl->wheelEvent == 0) {
			QTreeWidget::wheelEvent(param1);
			return;
		}

		QWheelEvent* sigval1 = param1;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_wheelEvent(QWheelEvent* param1) {

		QTreeWidget::wheelEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* param1) override {
		if (vtbl->contextMenuEvent == 0) {
			QTreeWidget::contextMenuEvent(param1);
			return;
		}

		QContextMenuEvent* sigval1 = param1;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_contextMenuEvent(QContextMenuEvent* param1) {

		QTreeWidget::contextMenuEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* param1) override {
		if (vtbl->changeEvent == 0) {
			QTreeWidget::changeEvent(param1);
			return;
		}

		QEvent* sigval1 = param1;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_changeEvent(QEvent* param1) {

		QTreeWidget::changeEvent(param1);

	}

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QTreeWidget::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QTreeWidget::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QTreeWidget::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setVisible(bool visible) {

		QTreeWidget::setVisible(visible);

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QTreeWidget::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QTreeWidget::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QTreeWidget::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QTreeWidget::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QTreeWidget::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QTreeWidget::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QTreeWidget::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_keyReleaseEvent(QKeyEvent* event) {

		QTreeWidget::keyReleaseEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QTreeWidget::enterEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_enterEvent(QEvent* event) {

		QTreeWidget::enterEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QTreeWidget::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_leaveEvent(QEvent* event) {

		QTreeWidget::leaveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QTreeWidget::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_moveEvent(QMoveEvent* event) {

		QTreeWidget::moveEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QTreeWidget::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_closeEvent(QCloseEvent* event) {

		QTreeWidget::closeEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QTreeWidget::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_tabletEvent(QTabletEvent* event) {

		QTreeWidget::tabletEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QTreeWidget::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_actionEvent(QActionEvent* event) {

		QTreeWidget::actionEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QTreeWidget::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_showEvent(QShowEvent* event) {

		QTreeWidget::showEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QTreeWidget::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_hideEvent(QHideEvent* event) {

		QTreeWidget::hideEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, long* result) override {
		if (vtbl->nativeEvent == 0) {
			return QTreeWidget::nativeEvent(eventType, message, result);
		}

		const QByteArray eventType_qb = eventType;
		struct miqt_string eventType_ms;
		eventType_ms.len = eventType_qb.length();
		eventType_ms.data = static_cast<char*>(malloc(eventType_ms.len));
		memcpy(eventType_ms.data, eventType_qb.data(), eventType_ms.len);
		struct miqt_string sigval1 = eventType_ms;
		void* sigval2 = message;
		long* sigval3 = result;

		bool callback_return_value = vtbl->nativeEvent(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_nativeEvent(struct miqt_string eventType, void* message, long* result) {
		QByteArray eventType_QByteArray(eventType.data, eventType.len);

		return QTreeWidget::nativeEvent(eventType_QByteArray, message, static_cast<long*>(result));

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QTreeWidget::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QTreeWidget::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QTreeWidget::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QTreeWidget::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QTreeWidget::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QTreeWidget::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QTreeWidget::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QTreeWidget::sharedPainter();

	}

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTreeWidget::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_childEvent(QChildEvent* event) {

		QTreeWidget::childEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTreeWidget::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_customEvent(QEvent* event) {

		QTreeWidget::customEvent(event);

	}

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTreeWidget::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_connectNotify(QMetaMethod* signal) {

		QTreeWidget::connectNotify(*signal);

	}

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTreeWidget::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_disconnectNotify(QMetaMethod* signal) {

		QTreeWidget::disconnectNotify(*signal);

	}

	// Wrapper to allow calling protected method
	struct miqt_array /* of QTreeWidgetItem* */  protectedbase_items(QMimeData* data) const {

		QList<QTreeWidgetItem *> _ret = QTreeWidget::items(data);
		// Convert QList<> from C++ memory to manually-managed C memory
		QTreeWidgetItem** _arr = static_cast<QTreeWidgetItem**>(malloc(sizeof(QTreeWidgetItem*) * _ret.length()));
		for (size_t i = 0, e = _ret.length(); i < e; ++i) {
			_arr[i] = _ret[i];
		}
		struct miqt_array _out;
		_out.len = _ret.length();
		_out.data = static_cast<void*>(_arr);
		return _out;

	}

	// Wrapper to allow calling protected method
	QModelIndex* protectedbase_indexFromItem(QTreeWidgetItem* item) const {

		return new QModelIndex(QTreeWidget::indexFromItem(item));

	}

	// Wrapper to allow calling protected method
	QModelIndex* protectedbase_indexFromItemWithItem(QTreeWidgetItem* item) const {

		return new QModelIndex(QTreeWidget::indexFromItem(item));

	}

	// Wrapper to allow calling protected method
	QTreeWidgetItem* protectedbase_itemFromIndex(QModelIndex* index) const {

		return QTreeWidget::itemFromIndex(*index);

	}

	// Wrapper to allow calling protected method
	QModelIndex* protectedbase_indexFromItem2(QTreeWidgetItem* item, int column) const {

		return new QModelIndex(QTreeWidget::indexFromItem(item, static_cast<int>(column)));

	}

	// Wrapper to allow calling protected method
	QModelIndex* protectedbase_indexFromItem22(QTreeWidgetItem* item, int column) const {

		return new QModelIndex(QTreeWidget::indexFromItem(item, static_cast<int>(column)));

	}

	// Wrapper to allow calling protected method
	void protectedbase_columnResized(int column, int oldSize, int newSize) {

		QTreeWidget::columnResized(static_cast<int>(column), static_cast<int>(oldSize), static_cast<int>(newSize));

	}

	// Wrapper to allow calling protected method
	void protectedbase_columnCountChanged(int oldCount, int newCount) {

		QTreeWidget::columnCountChanged(static_cast<int>(oldCount), static_cast<int>(newCount));

	}

	// Wrapper to allow calling protected method
	void protectedbase_columnMoved() {

		QTreeWidget::columnMoved();

	}

	// Wrapper to allow calling protected method
	void protectedbase_reexpand() {

		QTreeWidget::reexpand();

	}

	// Wrapper to allow calling protected method
	void protectedbase_rowsRemoved(QModelIndex* parent, int first, int last) {

		QTreeWidget::rowsRemoved(*parent, static_cast<int>(first), static_cast<int>(last));

	}

	// Wrapper to allow calling protected method
	void protectedbase_drawTree(QPainter* painter, QRegion* region) const {

		QTreeWidget::drawTree(painter, *region);

	}

	// Wrapper to allow calling protected method
	int protectedbase_indexRowSizeHint(QModelIndex* index) const {

		return QTreeWidget::indexRowSizeHint(*index);

	}

	// Wrapper to allow calling protected method
	int protectedbase_rowHeight(QModelIndex* index) const {

		return QTreeWidget::rowHeight(*index);

	}

	// Wrapper to allow calling protected method
	void protectedbase_setHorizontalStepsPerItem(int steps) {

		QTreeWidget::setHorizontalStepsPerItem(static_cast<int>(steps));

	}

	// Wrapper to allow calling protected method
	int protectedbase_horizontalStepsPerItem() const {

		return QTreeWidget::horizontalStepsPerItem();

	}

	// Wrapper to allow calling protected method
	void protectedbase_setVerticalStepsPerItem(int steps) {

		QTreeWidget::setVerticalStepsPerItem(static_cast<int>(steps));

	}

	// Wrapper to allow calling protected method
	int protectedbase_verticalStepsPerItem() const {

		return QTreeWidget::verticalStepsPerItem();

	}

	// Wrapper to allow calling protected method
	int protectedbase_state() const {

		QAbstractItemView::State _ret = QTreeWidget::state();
		return static_cast<int>(_ret);

	}

	// Wrapper to allow calling protected method
	void protectedbase_setState(int state) {

		QTreeWidget::setState(static_cast<QAbstractItemView::State>(state));

	}

	// Wrapper to allow calling protected method
	void protectedbase_scheduleDelayedItemsLayout() {

		QTreeWidget::scheduleDelayedItemsLayout();

	}

	// Wrapper to allow calling protected method
	void protectedbase_executeDelayedItemsLayout() {

		QTreeWidget::executeDelayedItemsLayout();

	}

	// Wrapper to allow calling protected method
	void protectedbase_setDirtyRegion(QRegion* region) {

		QTreeWidget::setDirtyRegion(*region);

	}

	// Wrapper to allow calling protected method
	void protectedbase_scrollDirtyRegion(int dx, int dy) {

		QTreeWidget::scrollDirtyRegion(static_cast<int>(dx), static_cast<int>(dy));

	}

	// Wrapper to allow calling protected method
	QPoint* protectedbase_dirtyRegionOffset() const {

		return new QPoint(QTreeWidget::dirtyRegionOffset());

	}

	// Wrapper to allow calling protected method
	void protectedbase_startAutoScroll() {

		QTreeWidget::startAutoScroll();

	}

	// Wrapper to allow calling protected method
	void protectedbase_stopAutoScroll() {

		QTreeWidget::stopAutoScroll();

	}

	// Wrapper to allow calling protected method
	void protectedbase_doAutoScroll() {

		QTreeWidget::doAutoScroll();

	}

	// Wrapper to allow calling protected method
	int protectedbase_dropIndicatorPosition() const {

		QAbstractItemView::DropIndicatorPosition _ret = QTreeWidget::dropIndicatorPosition();
		return static_cast<int>(_ret);

	}

	// Wrapper to allow calling protected method
	void protectedbase_setViewportMargins(int left, int top, int right, int bottom) {

		QTreeWidget::setViewportMargins(static_cast<int>(left), static_cast<int>(top), static_cast<int>(right), static_cast<int>(bottom));

	}

	// Wrapper to allow calling protected method
	QMargins* protectedbase_viewportMargins() const {

		return new QMargins(QTreeWidget::viewportMargins());

	}

	// Wrapper to allow calling protected method
	void protectedbase_drawFrame(QPainter* param1) {

		QTreeWidget::drawFrame(param1);

	}

	// Wrapper to allow calling protected method
	void protectedbase_initStyleOption(QStyleOptionFrame* option) const {

		QTreeWidget::initStyleOption(option);

	}

	// Wrapper to allow calling protected method
	void protectedbase_updateMicroFocus() {

		QTreeWidget::updateMicroFocus();

	}

	// Wrapper to allow calling protected method
	void protectedbase_create() {

		QTreeWidget::create();

	}

	// Wrapper to allow calling protected method
	void protectedbase_destroy() {

		QTreeWidget::destroy();

	}

	// Wrapper to allow calling protected method
	bool protectedbase_focusNextChild() {

		return QTreeWidget::focusNextChild();

	}

	// Wrapper to allow calling protected method
	bool protectedbase_focusPreviousChild() {

		return QTreeWidget::focusPreviousChild();

	}

	// Wrapper to allow calling protected method
	QObject* protectedbase_sender() const {

		return QTreeWidget::sender();

	}

	// Wrapper to allow calling protected method
	int protectedbase_senderSignalIndex() const {

		return QTreeWidget::senderSignalIndex();

	}

	// Wrapper to allow calling protected method
	int protectedbase_receivers(const char* signal) const {

		return QTreeWidget::receivers(signal);

	}

	// Wrapper to allow calling protected method
	bool protectedbase_isSignalConnected(QMetaMethod* signal) const {

		return QTreeWidget::isSignalConnected(*signal);

	}

};

QTreeWidget* QTreeWidget_new(struct QTreeWidget_VTable* vtbl, QWidget* parent) {
	return new MiqtVirtualQTreeWidget(vtbl, parent);
}

QTreeWidget* QTreeWidget_new2(struct QTreeWidget_VTable* vtbl) {
	return new MiqtVirtualQTreeWidget(vtbl);
}

void QTreeWidget_virtbase(QTreeWidget* src, QTreeView** outptr_QTreeView) {
	*outptr_QTreeView = static_cast<QTreeView*>(src);
}

QMetaObject* QTreeWidget_metaObject(const QTreeWidget* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTreeWidget_metacast(QTreeWidget* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTreeWidget_metacall(QTreeWidget* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTreeWidget_tr(const char* s) {
	QString _ret = QTreeWidget::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTreeWidget_trUtf8(const char* s) {
	QString _ret = QTreeWidget::trUtf8(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QTreeWidget_columnCount(const QTreeWidget* self) {
	return self->columnCount();
}

void QTreeWidget_setColumnCount(QTreeWidget* self, int columns) {
	self->setColumnCount(static_cast<int>(columns));
}

QTreeWidgetItem* QTreeWidget_invisibleRootItem(const QTreeWidget* self) {
	return self->invisibleRootItem();
}

QTreeWidgetItem* QTreeWidget_topLevelItem(const QTreeWidget* self, int index) {
	return self->topLevelItem(static_cast<int>(index));
}

int QTreeWidget_topLevelItemCount(const QTreeWidget* self) {
	return self->topLevelItemCount();
}

void QTreeWidget_insertTopLevelItem(QTreeWidget* self, int index, QTreeWidgetItem* item) {
	self->insertTopLevelItem(static_cast<int>(index), item);
}

void QTreeWidget_addTopLevelItem(QTreeWidget* self, QTreeWidgetItem* item) {
	self->addTopLevelItem(item);
}

QTreeWidgetItem* QTreeWidget_takeTopLevelItem(QTreeWidget* self, int index) {
	return self->takeTopLevelItem(static_cast<int>(index));
}

int QTreeWidget_indexOfTopLevelItem(const QTreeWidget* self, QTreeWidgetItem* item) {
	return self->indexOfTopLevelItem(item);
}

void QTreeWidget_insertTopLevelItems(QTreeWidget* self, int index, struct miqt_array /* of QTreeWidgetItem* */  items) {
	QList<QTreeWidgetItem *> items_QList;
	items_QList.reserve(items.len);
	QTreeWidgetItem** items_arr = static_cast<QTreeWidgetItem**>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		items_QList.push_back(items_arr[i]);
	}
	self->insertTopLevelItems(static_cast<int>(index), items_QList);
}

void QTreeWidget_addTopLevelItems(QTreeWidget* self, struct miqt_array /* of QTreeWidgetItem* */  items) {
	QList<QTreeWidgetItem *> items_QList;
	items_QList.reserve(items.len);
	QTreeWidgetItem** items_arr = static_cast<QTreeWidgetItem**>(items.data);
	for(size_t i = 0; i < items.len; ++i) {
		items_QList.push_back(items_arr[i]);
	}
	self->addTopLevelItems(items_QList);
}

QTreeWidgetItem* QTreeWidget_headerItem(const QTreeWidget* self) {
	return self->headerItem();
}

void QTreeWidget_setHeaderItem(QTreeWidget* self, QTreeWidgetItem* item) {
	self->setHeaderItem(item);
}

void QTreeWidget_setHeaderLabels(QTreeWidget* self, struct miqt_array /* of struct miqt_string */  labels) {
	QStringList labels_QList;
	labels_QList.reserve(labels.len);
	struct miqt_string* labels_arr = static_cast<struct miqt_string*>(labels.data);
	for(size_t i = 0; i < labels.len; ++i) {
		QString labels_arr_i_QString = QString::fromUtf8(labels_arr[i].data, labels_arr[i].len);
		labels_QList.push_back(labels_arr_i_QString);
	}
	self->setHeaderLabels(labels_QList);
}

void QTreeWidget_setHeaderLabel(QTreeWidget* self, struct miqt_string label) {
	QString label_QString = QString::fromUtf8(label.data, label.len);
	self->setHeaderLabel(label_QString);
}

QTreeWidgetItem* QTreeWidget_currentItem(const QTreeWidget* self) {
	return self->currentItem();
}

int QTreeWidget_currentColumn(const QTreeWidget* self) {
	return self->currentColumn();
}

void QTreeWidget_setCurrentItem(QTreeWidget* self, QTreeWidgetItem* item) {
	self->setCurrentItem(item);
}

void QTreeWidget_setCurrentItem2(QTreeWidget* self, QTreeWidgetItem* item, int column) {
	self->setCurrentItem(item, static_cast<int>(column));
}

void QTreeWidget_setCurrentItem3(QTreeWidget* self, QTreeWidgetItem* item, int column, int command) {
	self->setCurrentItem(item, static_cast<int>(column), static_cast<QItemSelectionModel::SelectionFlags>(command));
}

QTreeWidgetItem* QTreeWidget_itemAt(const QTreeWidget* self, QPoint* p) {
	return self->itemAt(*p);
}

QTreeWidgetItem* QTreeWidget_itemAt2(const QTreeWidget* self, int x, int y) {
	return self->itemAt(static_cast<int>(x), static_cast<int>(y));
}

QRect* QTreeWidget_visualItemRect(const QTreeWidget* self, QTreeWidgetItem* item) {
	return new QRect(self->visualItemRect(item));
}

int QTreeWidget_sortColumn(const QTreeWidget* self) {
	return self->sortColumn();
}

void QTreeWidget_sortItems(QTreeWidget* self, int column, int order) {
	self->sortItems(static_cast<int>(column), static_cast<Qt::SortOrder>(order));
}

void QTreeWidget_editItem(QTreeWidget* self, QTreeWidgetItem* item) {
	self->editItem(item);
}

void QTreeWidget_openPersistentEditor(QTreeWidget* self, QTreeWidgetItem* item) {
	self->openPersistentEditor(item);
}

void QTreeWidget_closePersistentEditor(QTreeWidget* self, QTreeWidgetItem* item) {
	self->closePersistentEditor(item);
}

bool QTreeWidget_isPersistentEditorOpen(const QTreeWidget* self, QTreeWidgetItem* item) {
	return self->isPersistentEditorOpen(item);
}

QWidget* QTreeWidget_itemWidget(const QTreeWidget* self, QTreeWidgetItem* item, int column) {
	return self->itemWidget(item, static_cast<int>(column));
}

void QTreeWidget_setItemWidget(QTreeWidget* self, QTreeWidgetItem* item, int column, QWidget* widget) {
	self->setItemWidget(item, static_cast<int>(column), widget);
}

void QTreeWidget_removeItemWidget(QTreeWidget* self, QTreeWidgetItem* item, int column) {
	self->removeItemWidget(item, static_cast<int>(column));
}

bool QTreeWidget_isItemSelected(const QTreeWidget* self, QTreeWidgetItem* item) {
	return self->isItemSelected(item);
}

void QTreeWidget_setItemSelected(QTreeWidget* self, QTreeWidgetItem* item, bool select) {
	self->setItemSelected(item, select);
}

struct miqt_array /* of QTreeWidgetItem* */  QTreeWidget_selectedItems(const QTreeWidget* self) {
	QList<QTreeWidgetItem *> _ret = self->selectedItems();
	// Convert QList<> from C++ memory to manually-managed C memory
	QTreeWidgetItem** _arr = static_cast<QTreeWidgetItem**>(malloc(sizeof(QTreeWidgetItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array /* of QTreeWidgetItem* */  QTreeWidget_findItems(const QTreeWidget* self, struct miqt_string text, int flags) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QList<QTreeWidgetItem *> _ret = self->findItems(text_QString, static_cast<Qt::MatchFlags>(flags));
	// Convert QList<> from C++ memory to manually-managed C memory
	QTreeWidgetItem** _arr = static_cast<QTreeWidgetItem**>(malloc(sizeof(QTreeWidgetItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

bool QTreeWidget_isItemHidden(const QTreeWidget* self, QTreeWidgetItem* item) {
	return self->isItemHidden(item);
}

void QTreeWidget_setItemHidden(QTreeWidget* self, QTreeWidgetItem* item, bool hide) {
	self->setItemHidden(item, hide);
}

bool QTreeWidget_isItemExpanded(const QTreeWidget* self, QTreeWidgetItem* item) {
	return self->isItemExpanded(item);
}

void QTreeWidget_setItemExpanded(QTreeWidget* self, QTreeWidgetItem* item, bool expand) {
	self->setItemExpanded(item, expand);
}

bool QTreeWidget_isFirstItemColumnSpanned(const QTreeWidget* self, QTreeWidgetItem* item) {
	return self->isFirstItemColumnSpanned(item);
}

void QTreeWidget_setFirstItemColumnSpanned(QTreeWidget* self, QTreeWidgetItem* item, bool span) {
	self->setFirstItemColumnSpanned(item, span);
}

QTreeWidgetItem* QTreeWidget_itemAbove(const QTreeWidget* self, QTreeWidgetItem* item) {
	return self->itemAbove(item);
}

QTreeWidgetItem* QTreeWidget_itemBelow(const QTreeWidget* self, QTreeWidgetItem* item) {
	return self->itemBelow(item);
}

void QTreeWidget_setSelectionModel(QTreeWidget* self, QItemSelectionModel* selectionModel) {
	self->setSelectionModel(selectionModel);
}

void QTreeWidget_scrollToItem(QTreeWidget* self, QTreeWidgetItem* item) {
	self->scrollToItem(item);
}

void QTreeWidget_expandItem(QTreeWidget* self, QTreeWidgetItem* item) {
	self->expandItem(item);
}

void QTreeWidget_collapseItem(QTreeWidget* self, QTreeWidgetItem* item) {
	self->collapseItem(item);
}

void QTreeWidget_clear(QTreeWidget* self) {
	self->clear();
}

void QTreeWidget_itemPressed(QTreeWidget* self, QTreeWidgetItem* item, int column) {
	self->itemPressed(item, static_cast<int>(column));
}

void QTreeWidget_connect_itemPressed(QTreeWidget* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QTreeWidgetItem* item, int column) {
			QTreeWidgetItem* sigval1 = item;
			int sigval2 = column;
			miqt_exec_callback_QTreeWidget_itemPressed(slot, sigval1, sigval2);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QTreeWidget_itemPressed_release(slot); }
	};
	MiqtVirtualQTreeWidget::connect(self, static_cast<void (QTreeWidget::*)(QTreeWidgetItem*, int)>(&QTreeWidget::itemPressed), self, caller{slot});
}

void QTreeWidget_itemClicked(QTreeWidget* self, QTreeWidgetItem* item, int column) {
	self->itemClicked(item, static_cast<int>(column));
}

void QTreeWidget_connect_itemClicked(QTreeWidget* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QTreeWidgetItem* item, int column) {
			QTreeWidgetItem* sigval1 = item;
			int sigval2 = column;
			miqt_exec_callback_QTreeWidget_itemClicked(slot, sigval1, sigval2);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QTreeWidget_itemClicked_release(slot); }
	};
	MiqtVirtualQTreeWidget::connect(self, static_cast<void (QTreeWidget::*)(QTreeWidgetItem*, int)>(&QTreeWidget::itemClicked), self, caller{slot});
}

void QTreeWidget_itemDoubleClicked(QTreeWidget* self, QTreeWidgetItem* item, int column) {
	self->itemDoubleClicked(item, static_cast<int>(column));
}

void QTreeWidget_connect_itemDoubleClicked(QTreeWidget* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QTreeWidgetItem* item, int column) {
			QTreeWidgetItem* sigval1 = item;
			int sigval2 = column;
			miqt_exec_callback_QTreeWidget_itemDoubleClicked(slot, sigval1, sigval2);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QTreeWidget_itemDoubleClicked_release(slot); }
	};
	MiqtVirtualQTreeWidget::connect(self, static_cast<void (QTreeWidget::*)(QTreeWidgetItem*, int)>(&QTreeWidget::itemDoubleClicked), self, caller{slot});
}

void QTreeWidget_itemActivated(QTreeWidget* self, QTreeWidgetItem* item, int column) {
	self->itemActivated(item, static_cast<int>(column));
}

void QTreeWidget_connect_itemActivated(QTreeWidget* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QTreeWidgetItem* item, int column) {
			QTreeWidgetItem* sigval1 = item;
			int sigval2 = column;
			miqt_exec_callback_QTreeWidget_itemActivated(slot, sigval1, sigval2);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QTreeWidget_itemActivated_release(slot); }
	};
	MiqtVirtualQTreeWidget::connect(self, static_cast<void (QTreeWidget::*)(QTreeWidgetItem*, int)>(&QTreeWidget::itemActivated), self, caller{slot});
}

void QTreeWidget_itemEntered(QTreeWidget* self, QTreeWidgetItem* item, int column) {
	self->itemEntered(item, static_cast<int>(column));
}

void QTreeWidget_connect_itemEntered(QTreeWidget* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QTreeWidgetItem* item, int column) {
			QTreeWidgetItem* sigval1 = item;
			int sigval2 = column;
			miqt_exec_callback_QTreeWidget_itemEntered(slot, sigval1, sigval2);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QTreeWidget_itemEntered_release(slot); }
	};
	MiqtVirtualQTreeWidget::connect(self, static_cast<void (QTreeWidget::*)(QTreeWidgetItem*, int)>(&QTreeWidget::itemEntered), self, caller{slot});
}

void QTreeWidget_itemChanged(QTreeWidget* self, QTreeWidgetItem* item, int column) {
	self->itemChanged(item, static_cast<int>(column));
}

void QTreeWidget_connect_itemChanged(QTreeWidget* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QTreeWidgetItem* item, int column) {
			QTreeWidgetItem* sigval1 = item;
			int sigval2 = column;
			miqt_exec_callback_QTreeWidget_itemChanged(slot, sigval1, sigval2);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QTreeWidget_itemChanged_release(slot); }
	};
	MiqtVirtualQTreeWidget::connect(self, static_cast<void (QTreeWidget::*)(QTreeWidgetItem*, int)>(&QTreeWidget::itemChanged), self, caller{slot});
}

void QTreeWidget_itemExpanded(QTreeWidget* self, QTreeWidgetItem* item) {
	self->itemExpanded(item);
}

void QTreeWidget_connect_itemExpanded(QTreeWidget* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QTreeWidgetItem* item) {
			QTreeWidgetItem* sigval1 = item;
			miqt_exec_callback_QTreeWidget_itemExpanded(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QTreeWidget_itemExpanded_release(slot); }
	};
	MiqtVirtualQTreeWidget::connect(self, static_cast<void (QTreeWidget::*)(QTreeWidgetItem*)>(&QTreeWidget::itemExpanded), self, caller{slot});
}

void QTreeWidget_itemCollapsed(QTreeWidget* self, QTreeWidgetItem* item) {
	self->itemCollapsed(item);
}

void QTreeWidget_connect_itemCollapsed(QTreeWidget* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QTreeWidgetItem* item) {
			QTreeWidgetItem* sigval1 = item;
			miqt_exec_callback_QTreeWidget_itemCollapsed(slot, sigval1);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QTreeWidget_itemCollapsed_release(slot); }
	};
	MiqtVirtualQTreeWidget::connect(self, static_cast<void (QTreeWidget::*)(QTreeWidgetItem*)>(&QTreeWidget::itemCollapsed), self, caller{slot});
}

void QTreeWidget_currentItemChanged(QTreeWidget* self, QTreeWidgetItem* current, QTreeWidgetItem* previous) {
	self->currentItemChanged(current, previous);
}

void QTreeWidget_connect_currentItemChanged(QTreeWidget* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()(QTreeWidgetItem* current, QTreeWidgetItem* previous) {
			QTreeWidgetItem* sigval1 = current;
			QTreeWidgetItem* sigval2 = previous;
			miqt_exec_callback_QTreeWidget_currentItemChanged(slot, sigval1, sigval2);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QTreeWidget_currentItemChanged_release(slot); }
	};
	MiqtVirtualQTreeWidget::connect(self, static_cast<void (QTreeWidget::*)(QTreeWidgetItem*, QTreeWidgetItem*)>(&QTreeWidget::currentItemChanged), self, caller{slot});
}

void QTreeWidget_itemSelectionChanged(QTreeWidget* self) {
	self->itemSelectionChanged();
}

void QTreeWidget_connect_itemSelectionChanged(QTreeWidget* self, intptr_t slot) {
	struct caller {
		intptr_t slot;
		void operator()() {
			miqt_exec_callback_QTreeWidget_itemSelectionChanged(slot);
		}
		caller(caller &&) = default;
		caller &operator=(caller &&) = default;
		caller(const caller &) = delete;
		caller &operator=(const caller &) = delete;
		~caller() { miqt_exec_callback_QTreeWidget_itemSelectionChanged_release(slot); }
	};
	MiqtVirtualQTreeWidget::connect(self, static_cast<void (QTreeWidget::*)()>(&QTreeWidget::itemSelectionChanged), self, caller{slot});
}

struct miqt_string QTreeWidget_tr2(const char* s, const char* c) {
	QString _ret = QTreeWidget::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTreeWidget_tr3(const char* s, const char* c, int n) {
	QString _ret = QTreeWidget::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTreeWidget_trUtf82(const char* s, const char* c) {
	QString _ret = QTreeWidget::trUtf8(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTreeWidget_trUtf83(const char* s, const char* c, int n) {
	QString _ret = QTreeWidget::trUtf8(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTreeWidget_editItem2(QTreeWidget* self, QTreeWidgetItem* item, int column) {
	self->editItem(item, static_cast<int>(column));
}

void QTreeWidget_openPersistentEditor2(QTreeWidget* self, QTreeWidgetItem* item, int column) {
	self->openPersistentEditor(item, static_cast<int>(column));
}

void QTreeWidget_closePersistentEditor2(QTreeWidget* self, QTreeWidgetItem* item, int column) {
	self->closePersistentEditor(item, static_cast<int>(column));
}

bool QTreeWidget_isPersistentEditorOpen2(const QTreeWidget* self, QTreeWidgetItem* item, int column) {
	return self->isPersistentEditorOpen(item, static_cast<int>(column));
}

struct miqt_array /* of QTreeWidgetItem* */  QTreeWidget_findItems3(const QTreeWidget* self, struct miqt_string text, int flags, int column) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QList<QTreeWidgetItem *> _ret = self->findItems(text_QString, static_cast<Qt::MatchFlags>(flags), static_cast<int>(column));
	// Convert QList<> from C++ memory to manually-managed C memory
	QTreeWidgetItem** _arr = static_cast<QTreeWidgetItem**>(malloc(sizeof(QTreeWidgetItem*) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = _ret[i];
	}
	struct miqt_array _out;
	_out.len = _ret.length();
	_out.data = static_cast<void*>(_arr);
	return _out;
}

void QTreeWidget_scrollToItem2(QTreeWidget* self, QTreeWidgetItem* item, int hint) {
	self->scrollToItem(item, static_cast<QAbstractItemView::ScrollHint>(hint));
}

QMetaObject* QTreeWidget_virtualbase_metaObject(const void* self) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_metaObject();
}

void* QTreeWidget_virtualbase_metacast(void* self, const char* param1) {
	return ( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_metacast(param1);
}

int QTreeWidget_virtualbase_metacall(void* self, int param1, int param2, void** param3) {
	return ( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_metacall(param1, param2, param3);
}

void QTreeWidget_virtualbase_setSelectionModel(void* self, QItemSelectionModel* selectionModel) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_setSelectionModel(selectionModel);
}

bool QTreeWidget_virtualbase_event(void* self, QEvent* e) {
	return ( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_event(e);
}

struct miqt_array /* of struct miqt_string */  QTreeWidget_virtualbase_mimeTypes(const void* self) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_mimeTypes();
}

QMimeData* QTreeWidget_virtualbase_mimeData(const void* self, struct miqt_array /* of QTreeWidgetItem* */  items) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_mimeData(items);
}

bool QTreeWidget_virtualbase_dropMimeData(void* self, QTreeWidgetItem* parent, int index, QMimeData* data, int action) {
	return ( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_dropMimeData(parent, index, data, action);
}

int QTreeWidget_virtualbase_supportedDropActions(const void* self) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_supportedDropActions();
}

void QTreeWidget_virtualbase_dropEvent(void* self, QDropEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_dropEvent(event);
}

void QTreeWidget_virtualbase_setRootIndex(void* self, QModelIndex* index) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_setRootIndex(index);
}

void QTreeWidget_virtualbase_keyboardSearch(void* self, struct miqt_string search) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_keyboardSearch(search);
}

QRect* QTreeWidget_virtualbase_visualRect(const void* self, QModelIndex* index) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_visualRect(index);
}

void QTreeWidget_virtualbase_scrollTo(void* self, QModelIndex* index, int hint) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_scrollTo(index, hint);
}

QModelIndex* QTreeWidget_virtualbase_indexAt(const void* self, QPoint* p) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_indexAt(p);
}

void QTreeWidget_virtualbase_doItemsLayout(void* self) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_doItemsLayout();
}

void QTreeWidget_virtualbase_reset(void* self) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_reset();
}

void QTreeWidget_virtualbase_dataChanged(void* self, QModelIndex* topLeft, QModelIndex* bottomRight, struct miqt_array /* of int */  roles) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_dataChanged(topLeft, bottomRight, roles);
}

void QTreeWidget_virtualbase_selectAll(void* self) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_selectAll();
}

void QTreeWidget_virtualbase_verticalScrollbarValueChanged(void* self, int value) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_verticalScrollbarValueChanged(value);
}

void QTreeWidget_virtualbase_scrollContentsBy(void* self, int dx, int dy) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_scrollContentsBy(dx, dy);
}

void QTreeWidget_virtualbase_rowsInserted(void* self, QModelIndex* parent, int start, int end) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_rowsInserted(parent, start, end);
}

void QTreeWidget_virtualbase_rowsAboutToBeRemoved(void* self, QModelIndex* parent, int start, int end) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_rowsAboutToBeRemoved(parent, start, end);
}

QModelIndex* QTreeWidget_virtualbase_moveCursor(void* self, int cursorAction, int modifiers) {
	return ( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_moveCursor(cursorAction, modifiers);
}

int QTreeWidget_virtualbase_horizontalOffset(const void* self) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_horizontalOffset();
}

int QTreeWidget_virtualbase_verticalOffset(const void* self) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_verticalOffset();
}

void QTreeWidget_virtualbase_setSelection(void* self, QRect* rect, int command) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_setSelection(rect, command);
}

QRegion* QTreeWidget_virtualbase_visualRegionForSelection(const void* self, QItemSelection* selection) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_visualRegionForSelection(selection);
}

struct miqt_array /* of QModelIndex* */  QTreeWidget_virtualbase_selectedIndexes(const void* self) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_selectedIndexes();
}

void QTreeWidget_virtualbase_timerEvent(void* self, QTimerEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_timerEvent(event);
}

void QTreeWidget_virtualbase_paintEvent(void* self, QPaintEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_paintEvent(event);
}

void QTreeWidget_virtualbase_drawRow(const void* self, QPainter* painter, QStyleOptionViewItem* options, QModelIndex* index) {
	( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_drawRow(painter, options, index);
}

void QTreeWidget_virtualbase_drawBranches(const void* self, QPainter* painter, QRect* rect, QModelIndex* index) {
	( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_drawBranches(painter, rect, index);
}

void QTreeWidget_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_mousePressEvent(event);
}

void QTreeWidget_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_mouseReleaseEvent(event);
}

void QTreeWidget_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_mouseDoubleClickEvent(event);
}

void QTreeWidget_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_mouseMoveEvent(event);
}

void QTreeWidget_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_keyPressEvent(event);
}

void QTreeWidget_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_dragMoveEvent(event);
}

bool QTreeWidget_virtualbase_viewportEvent(void* self, QEvent* event) {
	return ( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_viewportEvent(event);
}

void QTreeWidget_virtualbase_updateGeometries(void* self) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_updateGeometries();
}

QSize* QTreeWidget_virtualbase_viewportSizeHint(const void* self) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_viewportSizeHint();
}

int QTreeWidget_virtualbase_sizeHintForColumn(const void* self, int column) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_sizeHintForColumn(column);
}

void QTreeWidget_virtualbase_horizontalScrollbarAction(void* self, int action) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_horizontalScrollbarAction(action);
}

bool QTreeWidget_virtualbase_isIndexHidden(const void* self, QModelIndex* index) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_isIndexHidden(index);
}

void QTreeWidget_virtualbase_selectionChanged(void* self, QItemSelection* selected, QItemSelection* deselected) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_selectionChanged(selected, deselected);
}

void QTreeWidget_virtualbase_currentChanged(void* self, QModelIndex* current, QModelIndex* previous) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_currentChanged(current, previous);
}

int QTreeWidget_virtualbase_sizeHintForRow(const void* self, int row) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_sizeHintForRow(row);
}

QVariant* QTreeWidget_virtualbase_inputMethodQuery(const void* self, int query) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_inputMethodQuery(query);
}

void QTreeWidget_virtualbase_updateEditorData(void* self) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_updateEditorData();
}

void QTreeWidget_virtualbase_updateEditorGeometries(void* self) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_updateEditorGeometries();
}

void QTreeWidget_virtualbase_verticalScrollbarAction(void* self, int action) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_verticalScrollbarAction(action);
}

void QTreeWidget_virtualbase_horizontalScrollbarValueChanged(void* self, int value) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_horizontalScrollbarValueChanged(value);
}

void QTreeWidget_virtualbase_closeEditor(void* self, QWidget* editor, int hint) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_closeEditor(editor, hint);
}

void QTreeWidget_virtualbase_commitData(void* self, QWidget* editor) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_commitData(editor);
}

void QTreeWidget_virtualbase_editorDestroyed(void* self, QObject* editor) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_editorDestroyed(editor);
}

bool QTreeWidget_virtualbase_edit2(void* self, QModelIndex* index, int trigger, QEvent* event) {
	return ( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_edit2(index, trigger, event);
}

int QTreeWidget_virtualbase_selectionCommand(const void* self, QModelIndex* index, QEvent* event) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_selectionCommand(index, event);
}

void QTreeWidget_virtualbase_startDrag(void* self, int supportedActions) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_startDrag(supportedActions);
}

QStyleOptionViewItem* QTreeWidget_virtualbase_viewOptions(const void* self) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_viewOptions();
}

bool QTreeWidget_virtualbase_focusNextPrevChild(void* self, bool next) {
	return ( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_focusNextPrevChild(next);
}

void QTreeWidget_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_dragEnterEvent(event);
}

void QTreeWidget_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_dragLeaveEvent(event);
}

void QTreeWidget_virtualbase_focusInEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_focusInEvent(event);
}

void QTreeWidget_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_focusOutEvent(event);
}

void QTreeWidget_virtualbase_resizeEvent(void* self, QResizeEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_resizeEvent(event);
}

void QTreeWidget_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_inputMethodEvent(event);
}

bool QTreeWidget_virtualbase_eventFilter(void* self, QObject* object, QEvent* event) {
	return ( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_eventFilter(object, event);
}

QSize* QTreeWidget_virtualbase_minimumSizeHint(const void* self) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_minimumSizeHint();
}

QSize* QTreeWidget_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_sizeHint();
}

void QTreeWidget_virtualbase_setupViewport(void* self, QWidget* viewport) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_setupViewport(viewport);
}

void QTreeWidget_virtualbase_wheelEvent(void* self, QWheelEvent* param1) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_wheelEvent(param1);
}

void QTreeWidget_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* param1) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_contextMenuEvent(param1);
}

void QTreeWidget_virtualbase_changeEvent(void* self, QEvent* param1) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_changeEvent(param1);
}

int QTreeWidget_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_devType();
}

void QTreeWidget_virtualbase_setVisible(void* self, bool visible) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_setVisible(visible);
}

int QTreeWidget_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_heightForWidth(param1);
}

bool QTreeWidget_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_hasHeightForWidth();
}

QPaintEngine* QTreeWidget_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_paintEngine();
}

void QTreeWidget_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_keyReleaseEvent(event);
}

void QTreeWidget_virtualbase_enterEvent(void* self, QEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_enterEvent(event);
}

void QTreeWidget_virtualbase_leaveEvent(void* self, QEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_leaveEvent(event);
}

void QTreeWidget_virtualbase_moveEvent(void* self, QMoveEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_moveEvent(event);
}

void QTreeWidget_virtualbase_closeEvent(void* self, QCloseEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_closeEvent(event);
}

void QTreeWidget_virtualbase_tabletEvent(void* self, QTabletEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_tabletEvent(event);
}

void QTreeWidget_virtualbase_actionEvent(void* self, QActionEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_actionEvent(event);
}

void QTreeWidget_virtualbase_showEvent(void* self, QShowEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_showEvent(event);
}

void QTreeWidget_virtualbase_hideEvent(void* self, QHideEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_hideEvent(event);
}

bool QTreeWidget_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, long* result) {
	return ( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_nativeEvent(eventType, message, result);
}

int QTreeWidget_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_metric(param1);
}

void QTreeWidget_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QTreeWidget_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_redirected(offset);
}

QPainter* QTreeWidget_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->virtualbase_sharedPainter();
}

void QTreeWidget_virtualbase_childEvent(void* self, QChildEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_childEvent(event);
}

void QTreeWidget_virtualbase_customEvent(void* self, QEvent* event) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_customEvent(event);
}

void QTreeWidget_virtualbase_connectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_connectNotify(signal);
}

void QTreeWidget_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {
	( (MiqtVirtualQTreeWidget*)(self) )->virtualbase_disconnectNotify(signal);
}

struct miqt_array /* of QTreeWidgetItem* */  QTreeWidget_protectedbase_items(const void* self, QMimeData* data) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->protectedbase_items(data);
}

QModelIndex* QTreeWidget_protectedbase_indexFromItem(const void* self, QTreeWidgetItem* item) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->protectedbase_indexFromItem(item);
}

QModelIndex* QTreeWidget_protectedbase_indexFromItemWithItem(const void* self, QTreeWidgetItem* item) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->protectedbase_indexFromItemWithItem(item);
}

QTreeWidgetItem* QTreeWidget_protectedbase_itemFromIndex(const void* self, QModelIndex* index) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->protectedbase_itemFromIndex(index);
}

QModelIndex* QTreeWidget_protectedbase_indexFromItem2(const void* self, QTreeWidgetItem* item, int column) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->protectedbase_indexFromItem2(item, column);
}

QModelIndex* QTreeWidget_protectedbase_indexFromItem22(const void* self, QTreeWidgetItem* item, int column) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->protectedbase_indexFromItem22(item, column);
}

void QTreeWidget_protectedbase_columnResized(void* self, int column, int oldSize, int newSize) {
	( (MiqtVirtualQTreeWidget*)(self) )->protectedbase_columnResized(column, oldSize, newSize);
}

void QTreeWidget_protectedbase_columnCountChanged(void* self, int oldCount, int newCount) {
	( (MiqtVirtualQTreeWidget*)(self) )->protectedbase_columnCountChanged(oldCount, newCount);
}

void QTreeWidget_protectedbase_columnMoved(void* self) {
	( (MiqtVirtualQTreeWidget*)(self) )->protectedbase_columnMoved();
}

void QTreeWidget_protectedbase_reexpand(void* self) {
	( (MiqtVirtualQTreeWidget*)(self) )->protectedbase_reexpand();
}

void QTreeWidget_protectedbase_rowsRemoved(void* self, QModelIndex* parent, int first, int last) {
	( (MiqtVirtualQTreeWidget*)(self) )->protectedbase_rowsRemoved(parent, first, last);
}

void QTreeWidget_protectedbase_drawTree(const void* self, QPainter* painter, QRegion* region) {
	( (const MiqtVirtualQTreeWidget*)(self) )->protectedbase_drawTree(painter, region);
}

int QTreeWidget_protectedbase_indexRowSizeHint(const void* self, QModelIndex* index) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->protectedbase_indexRowSizeHint(index);
}

int QTreeWidget_protectedbase_rowHeight(const void* self, QModelIndex* index) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->protectedbase_rowHeight(index);
}

void QTreeWidget_protectedbase_setHorizontalStepsPerItem(void* self, int steps) {
	( (MiqtVirtualQTreeWidget*)(self) )->protectedbase_setHorizontalStepsPerItem(steps);
}

int QTreeWidget_protectedbase_horizontalStepsPerItem(const void* self) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->protectedbase_horizontalStepsPerItem();
}

void QTreeWidget_protectedbase_setVerticalStepsPerItem(void* self, int steps) {
	( (MiqtVirtualQTreeWidget*)(self) )->protectedbase_setVerticalStepsPerItem(steps);
}

int QTreeWidget_protectedbase_verticalStepsPerItem(const void* self) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->protectedbase_verticalStepsPerItem();
}

int QTreeWidget_protectedbase_state(const void* self) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->protectedbase_state();
}

void QTreeWidget_protectedbase_setState(void* self, int state) {
	( (MiqtVirtualQTreeWidget*)(self) )->protectedbase_setState(state);
}

void QTreeWidget_protectedbase_scheduleDelayedItemsLayout(void* self) {
	( (MiqtVirtualQTreeWidget*)(self) )->protectedbase_scheduleDelayedItemsLayout();
}

void QTreeWidget_protectedbase_executeDelayedItemsLayout(void* self) {
	( (MiqtVirtualQTreeWidget*)(self) )->protectedbase_executeDelayedItemsLayout();
}

void QTreeWidget_protectedbase_setDirtyRegion(void* self, QRegion* region) {
	( (MiqtVirtualQTreeWidget*)(self) )->protectedbase_setDirtyRegion(region);
}

void QTreeWidget_protectedbase_scrollDirtyRegion(void* self, int dx, int dy) {
	( (MiqtVirtualQTreeWidget*)(self) )->protectedbase_scrollDirtyRegion(dx, dy);
}

QPoint* QTreeWidget_protectedbase_dirtyRegionOffset(const void* self) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->protectedbase_dirtyRegionOffset();
}

void QTreeWidget_protectedbase_startAutoScroll(void* self) {
	( (MiqtVirtualQTreeWidget*)(self) )->protectedbase_startAutoScroll();
}

void QTreeWidget_protectedbase_stopAutoScroll(void* self) {
	( (MiqtVirtualQTreeWidget*)(self) )->protectedbase_stopAutoScroll();
}

void QTreeWidget_protectedbase_doAutoScroll(void* self) {
	( (MiqtVirtualQTreeWidget*)(self) )->protectedbase_doAutoScroll();
}

int QTreeWidget_protectedbase_dropIndicatorPosition(const void* self) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->protectedbase_dropIndicatorPosition();
}

void QTreeWidget_protectedbase_setViewportMargins(void* self, int left, int top, int right, int bottom) {
	( (MiqtVirtualQTreeWidget*)(self) )->protectedbase_setViewportMargins(left, top, right, bottom);
}

QMargins* QTreeWidget_protectedbase_viewportMargins(const void* self) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->protectedbase_viewportMargins();
}

void QTreeWidget_protectedbase_drawFrame(void* self, QPainter* param1) {
	( (MiqtVirtualQTreeWidget*)(self) )->protectedbase_drawFrame(param1);
}

void QTreeWidget_protectedbase_initStyleOption(const void* self, QStyleOptionFrame* option) {
	( (const MiqtVirtualQTreeWidget*)(self) )->protectedbase_initStyleOption(option);
}

void QTreeWidget_protectedbase_updateMicroFocus(void* self) {
	( (MiqtVirtualQTreeWidget*)(self) )->protectedbase_updateMicroFocus();
}

void QTreeWidget_protectedbase_create(void* self) {
	( (MiqtVirtualQTreeWidget*)(self) )->protectedbase_create();
}

void QTreeWidget_protectedbase_destroy(void* self) {
	( (MiqtVirtualQTreeWidget*)(self) )->protectedbase_destroy();
}

bool QTreeWidget_protectedbase_focusNextChild(void* self) {
	return ( (MiqtVirtualQTreeWidget*)(self) )->protectedbase_focusNextChild();
}

bool QTreeWidget_protectedbase_focusPreviousChild(void* self) {
	return ( (MiqtVirtualQTreeWidget*)(self) )->protectedbase_focusPreviousChild();
}

QObject* QTreeWidget_protectedbase_sender(const void* self) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->protectedbase_sender();
}

int QTreeWidget_protectedbase_senderSignalIndex(const void* self) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->protectedbase_senderSignalIndex();
}

int QTreeWidget_protectedbase_receivers(const void* self, const char* signal) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->protectedbase_receivers(signal);
}

bool QTreeWidget_protectedbase_isSignalConnected(const void* self, QMetaMethod* signal) {
	return ( (const MiqtVirtualQTreeWidget*)(self) )->protectedbase_isSignalConnected(signal);
}

const QMetaObject* QTreeWidget_staticMetaObject() { return &QTreeWidget::staticMetaObject; }
void QTreeWidget_delete(QTreeWidget* self) {
	delete self;
}

