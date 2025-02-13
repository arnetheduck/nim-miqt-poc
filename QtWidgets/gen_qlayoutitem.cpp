#include <QLayout>
#include <QLayoutItem>
#include <QRect>
#include <QSize>
#include <QSizePolicy>
#include <QSpacerItem>
#include <QWidget>
#include <QWidgetItem>
#include <QWidgetItemV2>
#include <qlayoutitem.h>
#include "gen_qlayoutitem.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQLayoutItem final : public QLayoutItem {
	struct QLayoutItem_VTable* vtbl;
public:

	MiqtVirtualQLayoutItem(struct QLayoutItem_VTable* vtbl): QLayoutItem(), vtbl(vtbl) {};
	MiqtVirtualQLayoutItem(struct QLayoutItem_VTable* vtbl, const QLayoutItem& param1): QLayoutItem(param1), vtbl(vtbl) {};
	MiqtVirtualQLayoutItem(struct QLayoutItem_VTable* vtbl, Qt::Alignment alignment): QLayoutItem(alignment), vtbl(vtbl) {};

	virtual ~MiqtVirtualQLayoutItem() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QSize(); // Pure virtual, there is no base we can call
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QSize(); // Pure virtual, there is no base we can call
		}


		QSize* callback_return_value = vtbl->minimumSize(vtbl, this);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QSize(); // Pure virtual, there is no base we can call
		}


		QSize* callback_return_value = vtbl->maximumSize(vtbl, this);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return Qt::Orientations(); // Pure virtual, there is no base we can call
		}


		int callback_return_value = vtbl->expandingDirections(vtbl, this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	// Subclass to allow providing a Go implementation
	virtual void setGeometry(const QRect& geometry) override {
		if (vtbl->setGeometry == 0) {
			return; // Pure virtual, there is no base we can call
		}

		const QRect& geometry_ret = geometry;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&geometry_ret);

		vtbl->setGeometry(vtbl, this, sigval1);

	}

	// Subclass to allow providing a Go implementation
	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QRect(); // Pure virtual, there is no base we can call
		}


		QRect* callback_return_value = vtbl->geometry(vtbl, this);

		return *callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return false; // Pure virtual, there is no base we can call
		}


		bool callback_return_value = vtbl->isEmpty(vtbl, this);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QLayoutItem::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QLayoutItem::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QLayoutItem::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QLayoutItem::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QLayoutItem::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_minimumHeightForWidth(int param1) const {

		return QLayoutItem::minimumHeightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QLayoutItem::invalidate();
			return;
		}


		vtbl->invalidate(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_invalidate() {

		QLayoutItem::invalidate();

	}

	// Subclass to allow providing a Go implementation
	virtual QWidget* widget() override {
		if (vtbl->widget == 0) {
			return QLayoutItem::widget();
		}


		QWidget* callback_return_value = vtbl->widget(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QWidget* virtualbase_widget() {

		return QLayoutItem::widget();

	}

	// Subclass to allow providing a Go implementation
	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QLayoutItem::layout();
		}


		QLayout* callback_return_value = vtbl->layout(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QLayout* virtualbase_layout() {

		return QLayoutItem::layout();

	}

	// Subclass to allow providing a Go implementation
	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QLayoutItem::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSpacerItem* virtualbase_spacerItem() {

		return QLayoutItem::spacerItem();

	}

	// Subclass to allow providing a Go implementation
	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QLayoutItem::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(vtbl, this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_controlTypes() const {

		QSizePolicy::ControlTypes _ret = QLayoutItem::controlTypes();
		return static_cast<int>(_ret);

	}

};

QLayoutItem* QLayoutItem_new(struct QLayoutItem_VTable* vtbl) {
	return new MiqtVirtualQLayoutItem(vtbl);
}

QLayoutItem* QLayoutItem_new2(struct QLayoutItem_VTable* vtbl, QLayoutItem* param1) {
	return new MiqtVirtualQLayoutItem(vtbl, *param1);
}

QLayoutItem* QLayoutItem_new3(struct QLayoutItem_VTable* vtbl, int alignment) {
	return new MiqtVirtualQLayoutItem(vtbl, static_cast<Qt::Alignment>(alignment));
}

QSize* QLayoutItem_sizeHint(const QLayoutItem* self) {
	return new QSize(self->sizeHint());
}

QSize* QLayoutItem_minimumSize(const QLayoutItem* self) {
	return new QSize(self->minimumSize());
}

QSize* QLayoutItem_maximumSize(const QLayoutItem* self) {
	return new QSize(self->maximumSize());
}

int QLayoutItem_expandingDirections(const QLayoutItem* self) {
	Qt::Orientations _ret = self->expandingDirections();
	return static_cast<int>(_ret);
}

void QLayoutItem_setGeometry(QLayoutItem* self, QRect* geometry) {
	self->setGeometry(*geometry);
}

QRect* QLayoutItem_geometry(const QLayoutItem* self) {
	return new QRect(self->geometry());
}

bool QLayoutItem_isEmpty(const QLayoutItem* self) {
	return self->isEmpty();
}

bool QLayoutItem_hasHeightForWidth(const QLayoutItem* self) {
	return self->hasHeightForWidth();
}

int QLayoutItem_heightForWidth(const QLayoutItem* self, int param1) {
	return self->heightForWidth(static_cast<int>(param1));
}

int QLayoutItem_minimumHeightForWidth(const QLayoutItem* self, int param1) {
	return self->minimumHeightForWidth(static_cast<int>(param1));
}

void QLayoutItem_invalidate(QLayoutItem* self) {
	self->invalidate();
}

QWidget* QLayoutItem_widget(QLayoutItem* self) {
	return self->widget();
}

QLayout* QLayoutItem_layout(QLayoutItem* self) {
	return self->layout();
}

QSpacerItem* QLayoutItem_spacerItem(QLayoutItem* self) {
	return self->spacerItem();
}

int QLayoutItem_alignment(const QLayoutItem* self) {
	Qt::Alignment _ret = self->alignment();
	return static_cast<int>(_ret);
}

void QLayoutItem_setAlignment(QLayoutItem* self, int a) {
	self->setAlignment(static_cast<Qt::Alignment>(a));
}

int QLayoutItem_controlTypes(const QLayoutItem* self) {
	QSizePolicy::ControlTypes _ret = self->controlTypes();
	return static_cast<int>(_ret);
}

bool QLayoutItem_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQLayoutItem*)(self) )->virtualbase_hasHeightForWidth();
}

int QLayoutItem_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQLayoutItem*)(self) )->virtualbase_heightForWidth(param1);
}

int QLayoutItem_virtualbase_minimumHeightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQLayoutItem*)(self) )->virtualbase_minimumHeightForWidth(param1);
}

void QLayoutItem_virtualbase_invalidate(void* self) {
	( (MiqtVirtualQLayoutItem*)(self) )->virtualbase_invalidate();
}

QWidget* QLayoutItem_virtualbase_widget(void* self) {
	return ( (MiqtVirtualQLayoutItem*)(self) )->virtualbase_widget();
}

QLayout* QLayoutItem_virtualbase_layout(void* self) {
	return ( (MiqtVirtualQLayoutItem*)(self) )->virtualbase_layout();
}

QSpacerItem* QLayoutItem_virtualbase_spacerItem(void* self) {
	return ( (MiqtVirtualQLayoutItem*)(self) )->virtualbase_spacerItem();
}

int QLayoutItem_virtualbase_controlTypes(const void* self) {
	return ( (const MiqtVirtualQLayoutItem*)(self) )->virtualbase_controlTypes();
}

void QLayoutItem_delete(QLayoutItem* self) {
	delete self;
}

class MiqtVirtualQSpacerItem final : public QSpacerItem {
	struct QSpacerItem_VTable* vtbl;
public:

	MiqtVirtualQSpacerItem(struct QSpacerItem_VTable* vtbl, int w, int h): QSpacerItem(w, h), vtbl(vtbl) {};
	MiqtVirtualQSpacerItem(struct QSpacerItem_VTable* vtbl, const QSpacerItem& param1): QSpacerItem(param1), vtbl(vtbl) {};
	MiqtVirtualQSpacerItem(struct QSpacerItem_VTable* vtbl, int w, int h, QSizePolicy::Policy hData): QSpacerItem(w, h, hData), vtbl(vtbl) {};
	MiqtVirtualQSpacerItem(struct QSpacerItem_VTable* vtbl, int w, int h, QSizePolicy::Policy hData, QSizePolicy::Policy vData): QSpacerItem(w, h, hData, vData), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSpacerItem() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QSpacerItem::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QSpacerItem::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QSpacerItem::minimumSize();
		}


		QSize* callback_return_value = vtbl->minimumSize(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSize() const {

		return new QSize(QSpacerItem::minimumSize());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QSpacerItem::maximumSize();
		}


		QSize* callback_return_value = vtbl->maximumSize(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_maximumSize() const {

		return new QSize(QSpacerItem::maximumSize());

	}

	// Subclass to allow providing a Go implementation
	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return QSpacerItem::expandingDirections();
		}


		int callback_return_value = vtbl->expandingDirections(vtbl, this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_expandingDirections() const {

		Qt::Orientations _ret = QSpacerItem::expandingDirections();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QSpacerItem::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isEmpty() const {

		return QSpacerItem::isEmpty();

	}

	// Subclass to allow providing a Go implementation
	virtual void setGeometry(const QRect& geometry) override {
		if (vtbl->setGeometry == 0) {
			QSpacerItem::setGeometry(geometry);
			return;
		}

		const QRect& geometry_ret = geometry;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&geometry_ret);

		vtbl->setGeometry(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setGeometry(QRect* geometry) {

		QSpacerItem::setGeometry(*geometry);

	}

	// Subclass to allow providing a Go implementation
	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QSpacerItem::geometry();
		}


		QRect* callback_return_value = vtbl->geometry(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRect* virtualbase_geometry() const {

		return new QRect(QSpacerItem::geometry());

	}

	// Subclass to allow providing a Go implementation
	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QSpacerItem::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSpacerItem* virtualbase_spacerItem() {

		return QSpacerItem::spacerItem();

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QSpacerItem::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QSpacerItem::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QSpacerItem::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QSpacerItem::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QSpacerItem::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_minimumHeightForWidth(int param1) const {

		return QSpacerItem::minimumHeightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QSpacerItem::invalidate();
			return;
		}


		vtbl->invalidate(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_invalidate() {

		QSpacerItem::invalidate();

	}

	// Subclass to allow providing a Go implementation
	virtual QWidget* widget() override {
		if (vtbl->widget == 0) {
			return QSpacerItem::widget();
		}


		QWidget* callback_return_value = vtbl->widget(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QWidget* virtualbase_widget() {

		return QSpacerItem::widget();

	}

	// Subclass to allow providing a Go implementation
	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QSpacerItem::layout();
		}


		QLayout* callback_return_value = vtbl->layout(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QLayout* virtualbase_layout() {

		return QSpacerItem::layout();

	}

	// Subclass to allow providing a Go implementation
	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QSpacerItem::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(vtbl, this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_controlTypes() const {

		QSizePolicy::ControlTypes _ret = QSpacerItem::controlTypes();
		return static_cast<int>(_ret);

	}

};

QSpacerItem* QSpacerItem_new(struct QSpacerItem_VTable* vtbl, int w, int h) {
	return new MiqtVirtualQSpacerItem(vtbl, static_cast<int>(w), static_cast<int>(h));
}

QSpacerItem* QSpacerItem_new2(struct QSpacerItem_VTable* vtbl, QSpacerItem* param1) {
	return new MiqtVirtualQSpacerItem(vtbl, *param1);
}

QSpacerItem* QSpacerItem_new3(struct QSpacerItem_VTable* vtbl, int w, int h, int hData) {
	return new MiqtVirtualQSpacerItem(vtbl, static_cast<int>(w), static_cast<int>(h), static_cast<QSizePolicy::Policy>(hData));
}

QSpacerItem* QSpacerItem_new4(struct QSpacerItem_VTable* vtbl, int w, int h, int hData, int vData) {
	return new MiqtVirtualQSpacerItem(vtbl, static_cast<int>(w), static_cast<int>(h), static_cast<QSizePolicy::Policy>(hData), static_cast<QSizePolicy::Policy>(vData));
}

void QSpacerItem_virtbase(QSpacerItem* src, QLayoutItem** outptr_QLayoutItem) {
	*outptr_QLayoutItem = static_cast<QLayoutItem*>(src);
}

void QSpacerItem_changeSize(QSpacerItem* self, int w, int h) {
	self->changeSize(static_cast<int>(w), static_cast<int>(h));
}

QSize* QSpacerItem_sizeHint(const QSpacerItem* self) {
	return new QSize(self->sizeHint());
}

QSize* QSpacerItem_minimumSize(const QSpacerItem* self) {
	return new QSize(self->minimumSize());
}

QSize* QSpacerItem_maximumSize(const QSpacerItem* self) {
	return new QSize(self->maximumSize());
}

int QSpacerItem_expandingDirections(const QSpacerItem* self) {
	Qt::Orientations _ret = self->expandingDirections();
	return static_cast<int>(_ret);
}

bool QSpacerItem_isEmpty(const QSpacerItem* self) {
	return self->isEmpty();
}

void QSpacerItem_setGeometry(QSpacerItem* self, QRect* geometry) {
	self->setGeometry(*geometry);
}

QRect* QSpacerItem_geometry(const QSpacerItem* self) {
	return new QRect(self->geometry());
}

QSpacerItem* QSpacerItem_spacerItem(QSpacerItem* self) {
	return self->spacerItem();
}

QSizePolicy* QSpacerItem_sizePolicy(const QSpacerItem* self) {
	return new QSizePolicy(self->sizePolicy());
}

void QSpacerItem_changeSize3(QSpacerItem* self, int w, int h, int hData) {
	self->changeSize(static_cast<int>(w), static_cast<int>(h), static_cast<QSizePolicy::Policy>(hData));
}

void QSpacerItem_changeSize4(QSpacerItem* self, int w, int h, int hData, int vData) {
	self->changeSize(static_cast<int>(w), static_cast<int>(h), static_cast<QSizePolicy::Policy>(hData), static_cast<QSizePolicy::Policy>(vData));
}

QSize* QSpacerItem_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQSpacerItem*)(self) )->virtualbase_sizeHint();
}

QSize* QSpacerItem_virtualbase_minimumSize(const void* self) {
	return ( (const MiqtVirtualQSpacerItem*)(self) )->virtualbase_minimumSize();
}

QSize* QSpacerItem_virtualbase_maximumSize(const void* self) {
	return ( (const MiqtVirtualQSpacerItem*)(self) )->virtualbase_maximumSize();
}

int QSpacerItem_virtualbase_expandingDirections(const void* self) {
	return ( (const MiqtVirtualQSpacerItem*)(self) )->virtualbase_expandingDirections();
}

bool QSpacerItem_virtualbase_isEmpty(const void* self) {
	return ( (const MiqtVirtualQSpacerItem*)(self) )->virtualbase_isEmpty();
}

void QSpacerItem_virtualbase_setGeometry(void* self, QRect* geometry) {
	( (MiqtVirtualQSpacerItem*)(self) )->virtualbase_setGeometry(geometry);
}

QRect* QSpacerItem_virtualbase_geometry(const void* self) {
	return ( (const MiqtVirtualQSpacerItem*)(self) )->virtualbase_geometry();
}

QSpacerItem* QSpacerItem_virtualbase_spacerItem(void* self) {
	return ( (MiqtVirtualQSpacerItem*)(self) )->virtualbase_spacerItem();
}

bool QSpacerItem_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQSpacerItem*)(self) )->virtualbase_hasHeightForWidth();
}

int QSpacerItem_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQSpacerItem*)(self) )->virtualbase_heightForWidth(param1);
}

int QSpacerItem_virtualbase_minimumHeightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQSpacerItem*)(self) )->virtualbase_minimumHeightForWidth(param1);
}

void QSpacerItem_virtualbase_invalidate(void* self) {
	( (MiqtVirtualQSpacerItem*)(self) )->virtualbase_invalidate();
}

QWidget* QSpacerItem_virtualbase_widget(void* self) {
	return ( (MiqtVirtualQSpacerItem*)(self) )->virtualbase_widget();
}

QLayout* QSpacerItem_virtualbase_layout(void* self) {
	return ( (MiqtVirtualQSpacerItem*)(self) )->virtualbase_layout();
}

int QSpacerItem_virtualbase_controlTypes(const void* self) {
	return ( (const MiqtVirtualQSpacerItem*)(self) )->virtualbase_controlTypes();
}

void QSpacerItem_delete(QSpacerItem* self) {
	delete self;
}

class MiqtVirtualQWidgetItem final : public QWidgetItem {
	struct QWidgetItem_VTable* vtbl;
public:

	MiqtVirtualQWidgetItem(struct QWidgetItem_VTable* vtbl, QWidget* w): QWidgetItem(w), vtbl(vtbl) {};

	virtual ~MiqtVirtualQWidgetItem() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QWidgetItem::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QWidgetItem::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QWidgetItem::minimumSize();
		}


		QSize* callback_return_value = vtbl->minimumSize(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSize() const {

		return new QSize(QWidgetItem::minimumSize());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QWidgetItem::maximumSize();
		}


		QSize* callback_return_value = vtbl->maximumSize(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_maximumSize() const {

		return new QSize(QWidgetItem::maximumSize());

	}

	// Subclass to allow providing a Go implementation
	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return QWidgetItem::expandingDirections();
		}


		int callback_return_value = vtbl->expandingDirections(vtbl, this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_expandingDirections() const {

		Qt::Orientations _ret = QWidgetItem::expandingDirections();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QWidgetItem::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isEmpty() const {

		return QWidgetItem::isEmpty();

	}

	// Subclass to allow providing a Go implementation
	virtual void setGeometry(const QRect& geometry) override {
		if (vtbl->setGeometry == 0) {
			QWidgetItem::setGeometry(geometry);
			return;
		}

		const QRect& geometry_ret = geometry;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&geometry_ret);

		vtbl->setGeometry(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setGeometry(QRect* geometry) {

		QWidgetItem::setGeometry(*geometry);

	}

	// Subclass to allow providing a Go implementation
	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QWidgetItem::geometry();
		}


		QRect* callback_return_value = vtbl->geometry(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRect* virtualbase_geometry() const {

		return new QRect(QWidgetItem::geometry());

	}

	// Subclass to allow providing a Go implementation
	virtual QWidget* widget() override {
		if (vtbl->widget == 0) {
			return QWidgetItem::widget();
		}


		QWidget* callback_return_value = vtbl->widget(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QWidget* virtualbase_widget() {

		return QWidgetItem::widget();

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QWidgetItem::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QWidgetItem::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QWidgetItem::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int param1) const {

		return QWidgetItem::heightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QWidgetItem::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(vtbl, this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_controlTypes() const {

		QSizePolicy::ControlTypes _ret = QWidgetItem::controlTypes();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QWidgetItem::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_minimumHeightForWidth(int param1) const {

		return QWidgetItem::minimumHeightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QWidgetItem::invalidate();
			return;
		}


		vtbl->invalidate(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_invalidate() {

		QWidgetItem::invalidate();

	}

	// Subclass to allow providing a Go implementation
	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QWidgetItem::layout();
		}


		QLayout* callback_return_value = vtbl->layout(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QLayout* virtualbase_layout() {

		return QWidgetItem::layout();

	}

	// Subclass to allow providing a Go implementation
	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QWidgetItem::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSpacerItem* virtualbase_spacerItem() {

		return QWidgetItem::spacerItem();

	}

};

QWidgetItem* QWidgetItem_new(struct QWidgetItem_VTable* vtbl, QWidget* w) {
	return new MiqtVirtualQWidgetItem(vtbl, w);
}

void QWidgetItem_virtbase(QWidgetItem* src, QLayoutItem** outptr_QLayoutItem) {
	*outptr_QLayoutItem = static_cast<QLayoutItem*>(src);
}

QSize* QWidgetItem_sizeHint(const QWidgetItem* self) {
	return new QSize(self->sizeHint());
}

QSize* QWidgetItem_minimumSize(const QWidgetItem* self) {
	return new QSize(self->minimumSize());
}

QSize* QWidgetItem_maximumSize(const QWidgetItem* self) {
	return new QSize(self->maximumSize());
}

int QWidgetItem_expandingDirections(const QWidgetItem* self) {
	Qt::Orientations _ret = self->expandingDirections();
	return static_cast<int>(_ret);
}

bool QWidgetItem_isEmpty(const QWidgetItem* self) {
	return self->isEmpty();
}

void QWidgetItem_setGeometry(QWidgetItem* self, QRect* geometry) {
	self->setGeometry(*geometry);
}

QRect* QWidgetItem_geometry(const QWidgetItem* self) {
	return new QRect(self->geometry());
}

QWidget* QWidgetItem_widget(QWidgetItem* self) {
	return self->widget();
}

bool QWidgetItem_hasHeightForWidth(const QWidgetItem* self) {
	return self->hasHeightForWidth();
}

int QWidgetItem_heightForWidth(const QWidgetItem* self, int param1) {
	return self->heightForWidth(static_cast<int>(param1));
}

int QWidgetItem_controlTypes(const QWidgetItem* self) {
	QSizePolicy::ControlTypes _ret = self->controlTypes();
	return static_cast<int>(_ret);
}

QSize* QWidgetItem_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQWidgetItem*)(self) )->virtualbase_sizeHint();
}

QSize* QWidgetItem_virtualbase_minimumSize(const void* self) {
	return ( (const MiqtVirtualQWidgetItem*)(self) )->virtualbase_minimumSize();
}

QSize* QWidgetItem_virtualbase_maximumSize(const void* self) {
	return ( (const MiqtVirtualQWidgetItem*)(self) )->virtualbase_maximumSize();
}

int QWidgetItem_virtualbase_expandingDirections(const void* self) {
	return ( (const MiqtVirtualQWidgetItem*)(self) )->virtualbase_expandingDirections();
}

bool QWidgetItem_virtualbase_isEmpty(const void* self) {
	return ( (const MiqtVirtualQWidgetItem*)(self) )->virtualbase_isEmpty();
}

void QWidgetItem_virtualbase_setGeometry(void* self, QRect* geometry) {
	( (MiqtVirtualQWidgetItem*)(self) )->virtualbase_setGeometry(geometry);
}

QRect* QWidgetItem_virtualbase_geometry(const void* self) {
	return ( (const MiqtVirtualQWidgetItem*)(self) )->virtualbase_geometry();
}

QWidget* QWidgetItem_virtualbase_widget(void* self) {
	return ( (MiqtVirtualQWidgetItem*)(self) )->virtualbase_widget();
}

bool QWidgetItem_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQWidgetItem*)(self) )->virtualbase_hasHeightForWidth();
}

int QWidgetItem_virtualbase_heightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQWidgetItem*)(self) )->virtualbase_heightForWidth(param1);
}

int QWidgetItem_virtualbase_controlTypes(const void* self) {
	return ( (const MiqtVirtualQWidgetItem*)(self) )->virtualbase_controlTypes();
}

int QWidgetItem_virtualbase_minimumHeightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQWidgetItem*)(self) )->virtualbase_minimumHeightForWidth(param1);
}

void QWidgetItem_virtualbase_invalidate(void* self) {
	( (MiqtVirtualQWidgetItem*)(self) )->virtualbase_invalidate();
}

QLayout* QWidgetItem_virtualbase_layout(void* self) {
	return ( (MiqtVirtualQWidgetItem*)(self) )->virtualbase_layout();
}

QSpacerItem* QWidgetItem_virtualbase_spacerItem(void* self) {
	return ( (MiqtVirtualQWidgetItem*)(self) )->virtualbase_spacerItem();
}

void QWidgetItem_delete(QWidgetItem* self) {
	delete self;
}

class MiqtVirtualQWidgetItemV2 final : public QWidgetItemV2 {
	struct QWidgetItemV2_VTable* vtbl;
public:

	MiqtVirtualQWidgetItemV2(struct QWidgetItemV2_VTable* vtbl, QWidget* widget): QWidgetItemV2(widget), vtbl(vtbl) {};

	virtual ~MiqtVirtualQWidgetItemV2() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QWidgetItemV2::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_sizeHint() const {

		return new QSize(QWidgetItemV2::sizeHint());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSize() const override {
		if (vtbl->minimumSize == 0) {
			return QWidgetItemV2::minimumSize();
		}


		QSize* callback_return_value = vtbl->minimumSize(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_minimumSize() const {

		return new QSize(QWidgetItemV2::minimumSize());

	}

	// Subclass to allow providing a Go implementation
	virtual QSize maximumSize() const override {
		if (vtbl->maximumSize == 0) {
			return QWidgetItemV2::maximumSize();
		}


		QSize* callback_return_value = vtbl->maximumSize(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSize* virtualbase_maximumSize() const {

		return new QSize(QWidgetItemV2::maximumSize());

	}

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int width) const override {
		if (vtbl->heightForWidth == 0) {
			return QWidgetItemV2::heightForWidth(width);
		}

		int sigval1 = width;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_heightForWidth(int width) const {

		return QWidgetItemV2::heightForWidth(static_cast<int>(width));

	}

	// Subclass to allow providing a Go implementation
	virtual Qt::Orientations expandingDirections() const override {
		if (vtbl->expandingDirections == 0) {
			return QWidgetItemV2::expandingDirections();
		}


		int callback_return_value = vtbl->expandingDirections(vtbl, this);

		return static_cast<Qt::Orientations>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_expandingDirections() const {

		Qt::Orientations _ret = QWidgetItemV2::expandingDirections();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QWidgetItemV2::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isEmpty() const {

		return QWidgetItemV2::isEmpty();

	}

	// Subclass to allow providing a Go implementation
	virtual void setGeometry(const QRect& geometry) override {
		if (vtbl->setGeometry == 0) {
			QWidgetItemV2::setGeometry(geometry);
			return;
		}

		const QRect& geometry_ret = geometry;
		// Cast returned reference into pointer
		QRect* sigval1 = const_cast<QRect*>(&geometry_ret);

		vtbl->setGeometry(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setGeometry(QRect* geometry) {

		QWidgetItemV2::setGeometry(*geometry);

	}

	// Subclass to allow providing a Go implementation
	virtual QRect geometry() const override {
		if (vtbl->geometry == 0) {
			return QWidgetItemV2::geometry();
		}


		QRect* callback_return_value = vtbl->geometry(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRect* virtualbase_geometry() const {

		return new QRect(QWidgetItemV2::geometry());

	}

	// Subclass to allow providing a Go implementation
	virtual QWidget* widget() override {
		if (vtbl->widget == 0) {
			return QWidgetItemV2::widget();
		}


		QWidget* callback_return_value = vtbl->widget(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QWidget* virtualbase_widget() {

		return QWidgetItemV2::widget();

	}

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QWidgetItemV2::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_hasHeightForWidth() const {

		return QWidgetItemV2::hasHeightForWidth();

	}

	// Subclass to allow providing a Go implementation
	virtual QSizePolicy::ControlTypes controlTypes() const override {
		if (vtbl->controlTypes == 0) {
			return QWidgetItemV2::controlTypes();
		}


		int callback_return_value = vtbl->controlTypes(vtbl, this);

		return static_cast<QSizePolicy::ControlTypes>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_controlTypes() const {

		QSizePolicy::ControlTypes _ret = QWidgetItemV2::controlTypes();
		return static_cast<int>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual int minimumHeightForWidth(int param1) const override {
		if (vtbl->minimumHeightForWidth == 0) {
			return QWidgetItemV2::minimumHeightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->minimumHeightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_minimumHeightForWidth(int param1) const {

		return QWidgetItemV2::minimumHeightForWidth(static_cast<int>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QWidgetItemV2::invalidate();
			return;
		}


		vtbl->invalidate(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_invalidate() {

		QWidgetItemV2::invalidate();

	}

	// Subclass to allow providing a Go implementation
	virtual QLayout* layout() override {
		if (vtbl->layout == 0) {
			return QWidgetItemV2::layout();
		}


		QLayout* callback_return_value = vtbl->layout(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QLayout* virtualbase_layout() {

		return QWidgetItemV2::layout();

	}

	// Subclass to allow providing a Go implementation
	virtual QSpacerItem* spacerItem() override {
		if (vtbl->spacerItem == 0) {
			return QWidgetItemV2::spacerItem();
		}


		QSpacerItem* callback_return_value = vtbl->spacerItem(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSpacerItem* virtualbase_spacerItem() {

		return QWidgetItemV2::spacerItem();

	}

};

QWidgetItemV2* QWidgetItemV2_new(struct QWidgetItemV2_VTable* vtbl, QWidget* widget) {
	return new MiqtVirtualQWidgetItemV2(vtbl, widget);
}

void QWidgetItemV2_virtbase(QWidgetItemV2* src, QWidgetItem** outptr_QWidgetItem) {
	*outptr_QWidgetItem = static_cast<QWidgetItem*>(src);
}

QSize* QWidgetItemV2_sizeHint(const QWidgetItemV2* self) {
	return new QSize(self->sizeHint());
}

QSize* QWidgetItemV2_minimumSize(const QWidgetItemV2* self) {
	return new QSize(self->minimumSize());
}

QSize* QWidgetItemV2_maximumSize(const QWidgetItemV2* self) {
	return new QSize(self->maximumSize());
}

int QWidgetItemV2_heightForWidth(const QWidgetItemV2* self, int width) {
	return self->heightForWidth(static_cast<int>(width));
}

QSize* QWidgetItemV2_virtualbase_sizeHint(const void* self) {
	return ( (const MiqtVirtualQWidgetItemV2*)(self) )->virtualbase_sizeHint();
}

QSize* QWidgetItemV2_virtualbase_minimumSize(const void* self) {
	return ( (const MiqtVirtualQWidgetItemV2*)(self) )->virtualbase_minimumSize();
}

QSize* QWidgetItemV2_virtualbase_maximumSize(const void* self) {
	return ( (const MiqtVirtualQWidgetItemV2*)(self) )->virtualbase_maximumSize();
}

int QWidgetItemV2_virtualbase_heightForWidth(const void* self, int width) {
	return ( (const MiqtVirtualQWidgetItemV2*)(self) )->virtualbase_heightForWidth(width);
}

int QWidgetItemV2_virtualbase_expandingDirections(const void* self) {
	return ( (const MiqtVirtualQWidgetItemV2*)(self) )->virtualbase_expandingDirections();
}

bool QWidgetItemV2_virtualbase_isEmpty(const void* self) {
	return ( (const MiqtVirtualQWidgetItemV2*)(self) )->virtualbase_isEmpty();
}

void QWidgetItemV2_virtualbase_setGeometry(void* self, QRect* geometry) {
	( (MiqtVirtualQWidgetItemV2*)(self) )->virtualbase_setGeometry(geometry);
}

QRect* QWidgetItemV2_virtualbase_geometry(const void* self) {
	return ( (const MiqtVirtualQWidgetItemV2*)(self) )->virtualbase_geometry();
}

QWidget* QWidgetItemV2_virtualbase_widget(void* self) {
	return ( (MiqtVirtualQWidgetItemV2*)(self) )->virtualbase_widget();
}

bool QWidgetItemV2_virtualbase_hasHeightForWidth(const void* self) {
	return ( (const MiqtVirtualQWidgetItemV2*)(self) )->virtualbase_hasHeightForWidth();
}

int QWidgetItemV2_virtualbase_controlTypes(const void* self) {
	return ( (const MiqtVirtualQWidgetItemV2*)(self) )->virtualbase_controlTypes();
}

int QWidgetItemV2_virtualbase_minimumHeightForWidth(const void* self, int param1) {
	return ( (const MiqtVirtualQWidgetItemV2*)(self) )->virtualbase_minimumHeightForWidth(param1);
}

void QWidgetItemV2_virtualbase_invalidate(void* self) {
	( (MiqtVirtualQWidgetItemV2*)(self) )->virtualbase_invalidate();
}

QLayout* QWidgetItemV2_virtualbase_layout(void* self) {
	return ( (MiqtVirtualQWidgetItemV2*)(self) )->virtualbase_layout();
}

QSpacerItem* QWidgetItemV2_virtualbase_spacerItem(void* self) {
	return ( (MiqtVirtualQWidgetItemV2*)(self) )->virtualbase_spacerItem();
}

void QWidgetItemV2_delete(QWidgetItemV2* self) {
	delete self;
}

