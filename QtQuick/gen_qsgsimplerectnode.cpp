#include <QColor>
#include <QRectF>
#include <QSGBasicGeometryNode>
#include <QSGGeometryNode>
#include <QSGNode>
#include <QSGSimpleRectNode>
#include <qsgsimplerectnode.h>
#include "gen_qsgsimplerectnode.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQSGSimpleRectNode final : public QSGSimpleRectNode {
	struct QSGSimpleRectNode_VTable* vtbl;
public:

	MiqtVirtualQSGSimpleRectNode(struct QSGSimpleRectNode_VTable* vtbl, const QRectF& rect, const QColor& color): QSGSimpleRectNode(rect, color), vtbl(vtbl) {};
	MiqtVirtualQSGSimpleRectNode(struct QSGSimpleRectNode_VTable* vtbl): QSGSimpleRectNode(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSGSimpleRectNode() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGSimpleRectNode::isSubtreeBlocked();
		}


		bool callback_return_value = vtbl->isSubtreeBlocked(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isSubtreeBlocked() const {

		return QSGSimpleRectNode::isSubtreeBlocked();

	}

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGSimpleRectNode::preprocess();
			return;
		}


		vtbl->preprocess(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_preprocess() {

		QSGSimpleRectNode::preprocess();

	}

};

QSGSimpleRectNode* QSGSimpleRectNode_new(struct QSGSimpleRectNode_VTable* vtbl, QRectF* rect, QColor* color) {
	return new MiqtVirtualQSGSimpleRectNode(vtbl, *rect, *color);
}

QSGSimpleRectNode* QSGSimpleRectNode_new2(struct QSGSimpleRectNode_VTable* vtbl) {
	return new MiqtVirtualQSGSimpleRectNode(vtbl);
}

void QSGSimpleRectNode_virtbase(QSGSimpleRectNode* src, QSGGeometryNode** outptr_QSGGeometryNode) {
	*outptr_QSGGeometryNode = static_cast<QSGGeometryNode*>(src);
}

void QSGSimpleRectNode_setRect(QSGSimpleRectNode* self, QRectF* rect) {
	self->setRect(*rect);
}

void QSGSimpleRectNode_setRect2(QSGSimpleRectNode* self, double x, double y, double w, double h) {
	self->setRect(static_cast<qreal>(x), static_cast<qreal>(y), static_cast<qreal>(w), static_cast<qreal>(h));
}

QRectF* QSGSimpleRectNode_rect(const QSGSimpleRectNode* self) {
	return new QRectF(self->rect());
}

void QSGSimpleRectNode_setColor(QSGSimpleRectNode* self, QColor* color) {
	self->setColor(*color);
}

QColor* QSGSimpleRectNode_color(const QSGSimpleRectNode* self) {
	return new QColor(self->color());
}

bool QSGSimpleRectNode_virtualbase_isSubtreeBlocked(const void* self) {
	return ( (const MiqtVirtualQSGSimpleRectNode*)(self) )->virtualbase_isSubtreeBlocked();
}

void QSGSimpleRectNode_virtualbase_preprocess(void* self) {
	( (MiqtVirtualQSGSimpleRectNode*)(self) )->virtualbase_preprocess();
}

void QSGSimpleRectNode_delete(QSGSimpleRectNode* self) {
	delete self;
}

