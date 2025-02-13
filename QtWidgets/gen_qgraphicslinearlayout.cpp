#include <QEvent>
#include <QGraphicsItem>
#include <QGraphicsLayout>
#include <QGraphicsLayoutItem>
#include <QGraphicsLinearLayout>
#include <QRectF>
#include <QSizeF>
#include <qgraphicslinearlayout.h>
#include "gen_qgraphicslinearlayout.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQGraphicsLinearLayout final : public QGraphicsLinearLayout {
	struct QGraphicsLinearLayout_VTable* vtbl;
public:

	MiqtVirtualQGraphicsLinearLayout(struct QGraphicsLinearLayout_VTable* vtbl): QGraphicsLinearLayout(), vtbl(vtbl) {};
	MiqtVirtualQGraphicsLinearLayout(struct QGraphicsLinearLayout_VTable* vtbl, Qt::Orientation orientation): QGraphicsLinearLayout(orientation), vtbl(vtbl) {};
	MiqtVirtualQGraphicsLinearLayout(struct QGraphicsLinearLayout_VTable* vtbl, QGraphicsLayoutItem* parent): QGraphicsLinearLayout(parent), vtbl(vtbl) {};
	MiqtVirtualQGraphicsLinearLayout(struct QGraphicsLinearLayout_VTable* vtbl, Qt::Orientation orientation, QGraphicsLayoutItem* parent): QGraphicsLinearLayout(orientation, parent), vtbl(vtbl) {};

	virtual ~MiqtVirtualQGraphicsLinearLayout() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void removeAt(int index) override {
		if (vtbl->removeAt == 0) {
			QGraphicsLinearLayout::removeAt(index);
			return;
		}

		int sigval1 = index;

		vtbl->removeAt(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_removeAt(int index) {

		QGraphicsLinearLayout::removeAt(static_cast<int>(index));

	}

	// Subclass to allow providing a Go implementation
	virtual void setGeometry(const QRectF& rect) override {
		if (vtbl->setGeometry == 0) {
			QGraphicsLinearLayout::setGeometry(rect);
			return;
		}

		const QRectF& rect_ret = rect;
		// Cast returned reference into pointer
		QRectF* sigval1 = const_cast<QRectF*>(&rect_ret);

		vtbl->setGeometry(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setGeometry(QRectF* rect) {

		QGraphicsLinearLayout::setGeometry(*rect);

	}

	// Subclass to allow providing a Go implementation
	virtual int count() const override {
		if (vtbl->count == 0) {
			return QGraphicsLinearLayout::count();
		}


		int callback_return_value = vtbl->count(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_count() const {

		return QGraphicsLinearLayout::count();

	}

	// Subclass to allow providing a Go implementation
	virtual QGraphicsLayoutItem* itemAt(int index) const override {
		if (vtbl->itemAt == 0) {
			return QGraphicsLinearLayout::itemAt(index);
		}

		int sigval1 = index;

		QGraphicsLayoutItem* callback_return_value = vtbl->itemAt(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QGraphicsLayoutItem* virtualbase_itemAt(int index) const {

		return QGraphicsLinearLayout::itemAt(static_cast<int>(index));

	}

	// Subclass to allow providing a Go implementation
	virtual void invalidate() override {
		if (vtbl->invalidate == 0) {
			QGraphicsLinearLayout::invalidate();
			return;
		}


		vtbl->invalidate(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_invalidate() {

		QGraphicsLinearLayout::invalidate();

	}

	// Subclass to allow providing a Go implementation
	virtual QSizeF sizeHint(Qt::SizeHint which, const QSizeF& constraint) const override {
		if (vtbl->sizeHint == 0) {
			return QGraphicsLinearLayout::sizeHint(which, constraint);
		}

		Qt::SizeHint which_ret = which;
		int sigval1 = static_cast<int>(which_ret);
		const QSizeF& constraint_ret = constraint;
		// Cast returned reference into pointer
		QSizeF* sigval2 = const_cast<QSizeF*>(&constraint_ret);

		QSizeF* callback_return_value = vtbl->sizeHint(vtbl, this, sigval1, sigval2);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSizeF* virtualbase_sizeHint(int which, QSizeF* constraint) const {

		return new QSizeF(QGraphicsLinearLayout::sizeHint(static_cast<Qt::SizeHint>(which), *constraint));

	}

	// Subclass to allow providing a Go implementation
	virtual void getContentsMargins(qreal* left, qreal* top, qreal* right, qreal* bottom) const override {
		if (vtbl->getContentsMargins == 0) {
			QGraphicsLinearLayout::getContentsMargins(left, top, right, bottom);
			return;
		}

		qreal* left_ret = left;
		double* sigval1 = static_cast<double*>(left_ret);
		qreal* top_ret = top;
		double* sigval2 = static_cast<double*>(top_ret);
		qreal* right_ret = right;
		double* sigval3 = static_cast<double*>(right_ret);
		qreal* bottom_ret = bottom;
		double* sigval4 = static_cast<double*>(bottom_ret);

		vtbl->getContentsMargins(vtbl, this, sigval1, sigval2, sigval3, sigval4);

	}

	// Wrapper to allow calling protected method
	void virtualbase_getContentsMargins(double* left, double* top, double* right, double* bottom) const {

		QGraphicsLinearLayout::getContentsMargins(static_cast<qreal*>(left), static_cast<qreal*>(top), static_cast<qreal*>(right), static_cast<qreal*>(bottom));

	}

	// Subclass to allow providing a Go implementation
	virtual void updateGeometry() override {
		if (vtbl->updateGeometry == 0) {
			QGraphicsLinearLayout::updateGeometry();
			return;
		}


		vtbl->updateGeometry(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateGeometry() {

		QGraphicsLinearLayout::updateGeometry();

	}

	// Subclass to allow providing a Go implementation
	virtual void widgetEvent(QEvent* e) override {
		if (vtbl->widgetEvent == 0) {
			QGraphicsLinearLayout::widgetEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->widgetEvent(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_widgetEvent(QEvent* e) {

		QGraphicsLinearLayout::widgetEvent(e);

	}

	// Subclass to allow providing a Go implementation
	virtual bool isEmpty() const override {
		if (vtbl->isEmpty == 0) {
			return QGraphicsLinearLayout::isEmpty();
		}


		bool callback_return_value = vtbl->isEmpty(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isEmpty() const {

		return QGraphicsLinearLayout::isEmpty();

	}

	// Wrappers to allow calling protected methods:
	friend void QGraphicsLinearLayout_protectedbase_addChildLayoutItem(void* self, QGraphicsLayoutItem* layoutItem);
	friend void QGraphicsLinearLayout_protectedbase_setGraphicsItem(void* self, QGraphicsItem* item);
	friend void QGraphicsLinearLayout_protectedbase_setOwnedByLayout(void* self, bool ownedByLayout);
};

QGraphicsLinearLayout* QGraphicsLinearLayout_new(struct QGraphicsLinearLayout_VTable* vtbl) {
	return new MiqtVirtualQGraphicsLinearLayout(vtbl);
}

QGraphicsLinearLayout* QGraphicsLinearLayout_new2(struct QGraphicsLinearLayout_VTable* vtbl, int orientation) {
	return new MiqtVirtualQGraphicsLinearLayout(vtbl, static_cast<Qt::Orientation>(orientation));
}

QGraphicsLinearLayout* QGraphicsLinearLayout_new3(struct QGraphicsLinearLayout_VTable* vtbl, QGraphicsLayoutItem* parent) {
	return new MiqtVirtualQGraphicsLinearLayout(vtbl, parent);
}

QGraphicsLinearLayout* QGraphicsLinearLayout_new4(struct QGraphicsLinearLayout_VTable* vtbl, int orientation, QGraphicsLayoutItem* parent) {
	return new MiqtVirtualQGraphicsLinearLayout(vtbl, static_cast<Qt::Orientation>(orientation), parent);
}

void QGraphicsLinearLayout_virtbase(QGraphicsLinearLayout* src, QGraphicsLayout** outptr_QGraphicsLayout) {
	*outptr_QGraphicsLayout = static_cast<QGraphicsLayout*>(src);
}

void QGraphicsLinearLayout_setOrientation(QGraphicsLinearLayout* self, int orientation) {
	self->setOrientation(static_cast<Qt::Orientation>(orientation));
}

int QGraphicsLinearLayout_orientation(const QGraphicsLinearLayout* self) {
	Qt::Orientation _ret = self->orientation();
	return static_cast<int>(_ret);
}

void QGraphicsLinearLayout_addItem(QGraphicsLinearLayout* self, QGraphicsLayoutItem* item) {
	self->addItem(item);
}

void QGraphicsLinearLayout_addStretch(QGraphicsLinearLayout* self) {
	self->addStretch();
}

void QGraphicsLinearLayout_insertItem(QGraphicsLinearLayout* self, int index, QGraphicsLayoutItem* item) {
	self->insertItem(static_cast<int>(index), item);
}

void QGraphicsLinearLayout_insertStretch(QGraphicsLinearLayout* self, int index) {
	self->insertStretch(static_cast<int>(index));
}

void QGraphicsLinearLayout_removeItem(QGraphicsLinearLayout* self, QGraphicsLayoutItem* item) {
	self->removeItem(item);
}

void QGraphicsLinearLayout_removeAt(QGraphicsLinearLayout* self, int index) {
	self->removeAt(static_cast<int>(index));
}

void QGraphicsLinearLayout_setSpacing(QGraphicsLinearLayout* self, double spacing) {
	self->setSpacing(static_cast<qreal>(spacing));
}

double QGraphicsLinearLayout_spacing(const QGraphicsLinearLayout* self) {
	qreal _ret = self->spacing();
	return static_cast<double>(_ret);
}

void QGraphicsLinearLayout_setItemSpacing(QGraphicsLinearLayout* self, int index, double spacing) {
	self->setItemSpacing(static_cast<int>(index), static_cast<qreal>(spacing));
}

double QGraphicsLinearLayout_itemSpacing(const QGraphicsLinearLayout* self, int index) {
	qreal _ret = self->itemSpacing(static_cast<int>(index));
	return static_cast<double>(_ret);
}

void QGraphicsLinearLayout_setStretchFactor(QGraphicsLinearLayout* self, QGraphicsLayoutItem* item, int stretch) {
	self->setStretchFactor(item, static_cast<int>(stretch));
}

int QGraphicsLinearLayout_stretchFactor(const QGraphicsLinearLayout* self, QGraphicsLayoutItem* item) {
	return self->stretchFactor(item);
}

void QGraphicsLinearLayout_setAlignment(QGraphicsLinearLayout* self, QGraphicsLayoutItem* item, int alignment) {
	self->setAlignment(item, static_cast<Qt::Alignment>(alignment));
}

int QGraphicsLinearLayout_alignment(const QGraphicsLinearLayout* self, QGraphicsLayoutItem* item) {
	Qt::Alignment _ret = self->alignment(item);
	return static_cast<int>(_ret);
}

void QGraphicsLinearLayout_setGeometry(QGraphicsLinearLayout* self, QRectF* rect) {
	self->setGeometry(*rect);
}

int QGraphicsLinearLayout_count(const QGraphicsLinearLayout* self) {
	return self->count();
}

QGraphicsLayoutItem* QGraphicsLinearLayout_itemAt(const QGraphicsLinearLayout* self, int index) {
	return self->itemAt(static_cast<int>(index));
}

void QGraphicsLinearLayout_invalidate(QGraphicsLinearLayout* self) {
	self->invalidate();
}

QSizeF* QGraphicsLinearLayout_sizeHint(const QGraphicsLinearLayout* self, int which, QSizeF* constraint) {
	return new QSizeF(self->sizeHint(static_cast<Qt::SizeHint>(which), *constraint));
}

void QGraphicsLinearLayout_dump(const QGraphicsLinearLayout* self) {
	self->dump();
}

void QGraphicsLinearLayout_addStretch1(QGraphicsLinearLayout* self, int stretch) {
	self->addStretch(static_cast<int>(stretch));
}

void QGraphicsLinearLayout_insertStretch2(QGraphicsLinearLayout* self, int index, int stretch) {
	self->insertStretch(static_cast<int>(index), static_cast<int>(stretch));
}

void QGraphicsLinearLayout_dump1(const QGraphicsLinearLayout* self, int indent) {
	self->dump(static_cast<int>(indent));
}

void QGraphicsLinearLayout_virtualbase_removeAt(void* self, int index) {
	( (MiqtVirtualQGraphicsLinearLayout*)(self) )->virtualbase_removeAt(index);
}

void QGraphicsLinearLayout_virtualbase_setGeometry(void* self, QRectF* rect) {
	( (MiqtVirtualQGraphicsLinearLayout*)(self) )->virtualbase_setGeometry(rect);
}

int QGraphicsLinearLayout_virtualbase_count(const void* self) {
	return ( (const MiqtVirtualQGraphicsLinearLayout*)(self) )->virtualbase_count();
}

QGraphicsLayoutItem* QGraphicsLinearLayout_virtualbase_itemAt(const void* self, int index) {
	return ( (const MiqtVirtualQGraphicsLinearLayout*)(self) )->virtualbase_itemAt(index);
}

void QGraphicsLinearLayout_virtualbase_invalidate(void* self) {
	( (MiqtVirtualQGraphicsLinearLayout*)(self) )->virtualbase_invalidate();
}

QSizeF* QGraphicsLinearLayout_virtualbase_sizeHint(const void* self, int which, QSizeF* constraint) {
	return ( (const MiqtVirtualQGraphicsLinearLayout*)(self) )->virtualbase_sizeHint(which, constraint);
}

void QGraphicsLinearLayout_virtualbase_getContentsMargins(const void* self, double* left, double* top, double* right, double* bottom) {
	( (const MiqtVirtualQGraphicsLinearLayout*)(self) )->virtualbase_getContentsMargins(left, top, right, bottom);
}

void QGraphicsLinearLayout_virtualbase_updateGeometry(void* self) {
	( (MiqtVirtualQGraphicsLinearLayout*)(self) )->virtualbase_updateGeometry();
}

void QGraphicsLinearLayout_virtualbase_widgetEvent(void* self, QEvent* e) {
	( (MiqtVirtualQGraphicsLinearLayout*)(self) )->virtualbase_widgetEvent(e);
}

bool QGraphicsLinearLayout_virtualbase_isEmpty(const void* self) {
	return ( (const MiqtVirtualQGraphicsLinearLayout*)(self) )->virtualbase_isEmpty();
}

void QGraphicsLinearLayout_protectedbase_addChildLayoutItem(void* self, QGraphicsLayoutItem* layoutItem) {
	MiqtVirtualQGraphicsLinearLayout* self_cast = static_cast<MiqtVirtualQGraphicsLinearLayout*>( (QGraphicsLinearLayout*)(self) );
	
	self_cast->addChildLayoutItem(layoutItem);

}

void QGraphicsLinearLayout_protectedbase_setGraphicsItem(void* self, QGraphicsItem* item) {
	MiqtVirtualQGraphicsLinearLayout* self_cast = static_cast<MiqtVirtualQGraphicsLinearLayout*>( (QGraphicsLinearLayout*)(self) );
	
	self_cast->setGraphicsItem(item);

}

void QGraphicsLinearLayout_protectedbase_setOwnedByLayout(void* self, bool ownedByLayout) {
	MiqtVirtualQGraphicsLinearLayout* self_cast = static_cast<MiqtVirtualQGraphicsLinearLayout*>( (QGraphicsLinearLayout*)(self) );
	
	self_cast->setOwnedByLayout(ownedByLayout);

}

void QGraphicsLinearLayout_delete(QGraphicsLinearLayout* self) {
	delete self;
}

