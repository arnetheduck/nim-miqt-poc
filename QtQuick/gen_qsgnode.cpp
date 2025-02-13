#include <QMatrix4x4>
#include <QRectF>
#include <QSGBasicGeometryNode>
#include <QSGClipNode>
#include <QSGGeometry>
#include <QSGGeometryNode>
#include <QSGMaterial>
#include <QSGNode>
#include <QSGNodeVisitor>
#include <QSGOpacityNode>
#include <QSGRootNode>
#include <QSGTransformNode>
#include <qsgnode.h>
#include "gen_qsgnode.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQSGNode final : public QSGNode {
	struct QSGNode_VTable* vtbl;
public:

	MiqtVirtualQSGNode(struct QSGNode_VTable* vtbl): QSGNode(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSGNode() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGNode::isSubtreeBlocked();
		}


		bool callback_return_value = vtbl->isSubtreeBlocked(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isSubtreeBlocked() const {

		return QSGNode::isSubtreeBlocked();

	}

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGNode::preprocess();
			return;
		}


		vtbl->preprocess(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_preprocess() {

		QSGNode::preprocess();

	}

};

QSGNode* QSGNode_new(struct QSGNode_VTable* vtbl) {
	return new MiqtVirtualQSGNode(vtbl);
}

QSGNode* QSGNode_parent(const QSGNode* self) {
	return self->parent();
}

void QSGNode_removeChildNode(QSGNode* self, QSGNode* node) {
	self->removeChildNode(node);
}

void QSGNode_removeAllChildNodes(QSGNode* self) {
	self->removeAllChildNodes();
}

void QSGNode_prependChildNode(QSGNode* self, QSGNode* node) {
	self->prependChildNode(node);
}

void QSGNode_appendChildNode(QSGNode* self, QSGNode* node) {
	self->appendChildNode(node);
}

void QSGNode_insertChildNodeBefore(QSGNode* self, QSGNode* node, QSGNode* before) {
	self->insertChildNodeBefore(node, before);
}

void QSGNode_insertChildNodeAfter(QSGNode* self, QSGNode* node, QSGNode* after) {
	self->insertChildNodeAfter(node, after);
}

void QSGNode_reparentChildNodesTo(QSGNode* self, QSGNode* newParent) {
	self->reparentChildNodesTo(newParent);
}

int QSGNode_childCount(const QSGNode* self) {
	return self->childCount();
}

QSGNode* QSGNode_childAtIndex(const QSGNode* self, int i) {
	return self->childAtIndex(static_cast<int>(i));
}

QSGNode* QSGNode_firstChild(const QSGNode* self) {
	return self->firstChild();
}

QSGNode* QSGNode_lastChild(const QSGNode* self) {
	return self->lastChild();
}

QSGNode* QSGNode_nextSibling(const QSGNode* self) {
	return self->nextSibling();
}

QSGNode* QSGNode_previousSibling(const QSGNode* self) {
	return self->previousSibling();
}

int QSGNode_type(const QSGNode* self) {
	QSGNode::NodeType _ret = self->type();
	return static_cast<int>(_ret);
}

void QSGNode_clearDirty(QSGNode* self) {
	self->clearDirty();
}

void QSGNode_markDirty(QSGNode* self, int bits) {
	self->markDirty(static_cast<QSGNode::DirtyState>(bits));
}

int QSGNode_dirtyState(const QSGNode* self) {
	QSGNode::DirtyState _ret = self->dirtyState();
	return static_cast<int>(_ret);
}

bool QSGNode_isSubtreeBlocked(const QSGNode* self) {
	return self->isSubtreeBlocked();
}

int QSGNode_flags(const QSGNode* self) {
	QSGNode::Flags _ret = self->flags();
	return static_cast<int>(_ret);
}

void QSGNode_setFlag(QSGNode* self, int param1) {
	self->setFlag(static_cast<QSGNode::Flag>(param1));
}

void QSGNode_setFlags(QSGNode* self, int param1) {
	self->setFlags(static_cast<QSGNode::Flags>(param1));
}

void QSGNode_preprocess(QSGNode* self) {
	self->preprocess();
}

void QSGNode_setFlag2(QSGNode* self, int param1, bool param2) {
	self->setFlag(static_cast<QSGNode::Flag>(param1), param2);
}

void QSGNode_setFlags2(QSGNode* self, int param1, bool param2) {
	self->setFlags(static_cast<QSGNode::Flags>(param1), param2);
}

bool QSGNode_virtualbase_isSubtreeBlocked(const void* self) {
	return ( (const MiqtVirtualQSGNode*)(self) )->virtualbase_isSubtreeBlocked();
}

void QSGNode_virtualbase_preprocess(void* self) {
	( (MiqtVirtualQSGNode*)(self) )->virtualbase_preprocess();
}

void QSGNode_delete(QSGNode* self) {
	delete self;
}

void QSGBasicGeometryNode_virtbase(QSGBasicGeometryNode* src, QSGNode** outptr_QSGNode) {
	*outptr_QSGNode = static_cast<QSGNode*>(src);
}

void QSGBasicGeometryNode_setGeometry(QSGBasicGeometryNode* self, QSGGeometry* geometry) {
	self->setGeometry(geometry);
}

QSGGeometry* QSGBasicGeometryNode_geometry(const QSGBasicGeometryNode* self) {
	return (QSGGeometry*) self->geometry();
}

QSGGeometry* QSGBasicGeometryNode_geometry2(QSGBasicGeometryNode* self) {
	return self->geometry();
}

QMatrix4x4* QSGBasicGeometryNode_matrix(const QSGBasicGeometryNode* self) {
	return (QMatrix4x4*) self->matrix();
}

QSGClipNode* QSGBasicGeometryNode_clipList(const QSGBasicGeometryNode* self) {
	return (QSGClipNode*) self->clipList();
}

void QSGBasicGeometryNode_setRendererMatrix(QSGBasicGeometryNode* self, QMatrix4x4* m) {
	self->setRendererMatrix(m);
}

void QSGBasicGeometryNode_setRendererClipList(QSGBasicGeometryNode* self, QSGClipNode* c) {
	self->setRendererClipList(c);
}

void QSGBasicGeometryNode_delete(QSGBasicGeometryNode* self) {
	delete self;
}

class MiqtVirtualQSGGeometryNode final : public QSGGeometryNode {
	struct QSGGeometryNode_VTable* vtbl;
public:

	MiqtVirtualQSGGeometryNode(struct QSGGeometryNode_VTable* vtbl): QSGGeometryNode(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSGGeometryNode() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGGeometryNode::isSubtreeBlocked();
		}


		bool callback_return_value = vtbl->isSubtreeBlocked(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isSubtreeBlocked() const {

		return QSGGeometryNode::isSubtreeBlocked();

	}

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGGeometryNode::preprocess();
			return;
		}


		vtbl->preprocess(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_preprocess() {

		QSGGeometryNode::preprocess();

	}

};

QSGGeometryNode* QSGGeometryNode_new(struct QSGGeometryNode_VTable* vtbl) {
	return new MiqtVirtualQSGGeometryNode(vtbl);
}

void QSGGeometryNode_virtbase(QSGGeometryNode* src, QSGBasicGeometryNode** outptr_QSGBasicGeometryNode) {
	*outptr_QSGBasicGeometryNode = static_cast<QSGBasicGeometryNode*>(src);
}

void QSGGeometryNode_setMaterial(QSGGeometryNode* self, QSGMaterial* material) {
	self->setMaterial(material);
}

QSGMaterial* QSGGeometryNode_material(const QSGGeometryNode* self) {
	return self->material();
}

void QSGGeometryNode_setOpaqueMaterial(QSGGeometryNode* self, QSGMaterial* material) {
	self->setOpaqueMaterial(material);
}

QSGMaterial* QSGGeometryNode_opaqueMaterial(const QSGGeometryNode* self) {
	return self->opaqueMaterial();
}

QSGMaterial* QSGGeometryNode_activeMaterial(const QSGGeometryNode* self) {
	return self->activeMaterial();
}

void QSGGeometryNode_setRenderOrder(QSGGeometryNode* self, int order) {
	self->setRenderOrder(static_cast<int>(order));
}

int QSGGeometryNode_renderOrder(const QSGGeometryNode* self) {
	return self->renderOrder();
}

void QSGGeometryNode_setInheritedOpacity(QSGGeometryNode* self, double opacity) {
	self->setInheritedOpacity(static_cast<qreal>(opacity));
}

double QSGGeometryNode_inheritedOpacity(const QSGGeometryNode* self) {
	qreal _ret = self->inheritedOpacity();
	return static_cast<double>(_ret);
}

bool QSGGeometryNode_virtualbase_isSubtreeBlocked(const void* self) {
	return ( (const MiqtVirtualQSGGeometryNode*)(self) )->virtualbase_isSubtreeBlocked();
}

void QSGGeometryNode_virtualbase_preprocess(void* self) {
	( (MiqtVirtualQSGGeometryNode*)(self) )->virtualbase_preprocess();
}

void QSGGeometryNode_delete(QSGGeometryNode* self) {
	delete self;
}

class MiqtVirtualQSGClipNode final : public QSGClipNode {
	struct QSGClipNode_VTable* vtbl;
public:

	MiqtVirtualQSGClipNode(struct QSGClipNode_VTable* vtbl): QSGClipNode(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSGClipNode() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGClipNode::isSubtreeBlocked();
		}


		bool callback_return_value = vtbl->isSubtreeBlocked(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isSubtreeBlocked() const {

		return QSGClipNode::isSubtreeBlocked();

	}

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGClipNode::preprocess();
			return;
		}


		vtbl->preprocess(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_preprocess() {

		QSGClipNode::preprocess();

	}

};

QSGClipNode* QSGClipNode_new(struct QSGClipNode_VTable* vtbl) {
	return new MiqtVirtualQSGClipNode(vtbl);
}

void QSGClipNode_virtbase(QSGClipNode* src, QSGBasicGeometryNode** outptr_QSGBasicGeometryNode) {
	*outptr_QSGBasicGeometryNode = static_cast<QSGBasicGeometryNode*>(src);
}

void QSGClipNode_setIsRectangular(QSGClipNode* self, bool rectHint) {
	self->setIsRectangular(rectHint);
}

bool QSGClipNode_isRectangular(const QSGClipNode* self) {
	return self->isRectangular();
}

void QSGClipNode_setClipRect(QSGClipNode* self, QRectF* clipRect) {
	self->setClipRect(*clipRect);
}

QRectF* QSGClipNode_clipRect(const QSGClipNode* self) {
	return new QRectF(self->clipRect());
}

bool QSGClipNode_virtualbase_isSubtreeBlocked(const void* self) {
	return ( (const MiqtVirtualQSGClipNode*)(self) )->virtualbase_isSubtreeBlocked();
}

void QSGClipNode_virtualbase_preprocess(void* self) {
	( (MiqtVirtualQSGClipNode*)(self) )->virtualbase_preprocess();
}

void QSGClipNode_delete(QSGClipNode* self) {
	delete self;
}

class MiqtVirtualQSGTransformNode final : public QSGTransformNode {
	struct QSGTransformNode_VTable* vtbl;
public:

	MiqtVirtualQSGTransformNode(struct QSGTransformNode_VTable* vtbl): QSGTransformNode(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSGTransformNode() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGTransformNode::isSubtreeBlocked();
		}


		bool callback_return_value = vtbl->isSubtreeBlocked(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isSubtreeBlocked() const {

		return QSGTransformNode::isSubtreeBlocked();

	}

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGTransformNode::preprocess();
			return;
		}


		vtbl->preprocess(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_preprocess() {

		QSGTransformNode::preprocess();

	}

};

QSGTransformNode* QSGTransformNode_new(struct QSGTransformNode_VTable* vtbl) {
	return new MiqtVirtualQSGTransformNode(vtbl);
}

void QSGTransformNode_virtbase(QSGTransformNode* src, QSGNode** outptr_QSGNode) {
	*outptr_QSGNode = static_cast<QSGNode*>(src);
}

void QSGTransformNode_setMatrix(QSGTransformNode* self, QMatrix4x4* matrix) {
	self->setMatrix(*matrix);
}

QMatrix4x4* QSGTransformNode_matrix(const QSGTransformNode* self) {
	const QMatrix4x4& _ret = self->matrix();
	// Cast returned reference into pointer
	return const_cast<QMatrix4x4*>(&_ret);
}

void QSGTransformNode_setCombinedMatrix(QSGTransformNode* self, QMatrix4x4* matrix) {
	self->setCombinedMatrix(*matrix);
}

QMatrix4x4* QSGTransformNode_combinedMatrix(const QSGTransformNode* self) {
	const QMatrix4x4& _ret = self->combinedMatrix();
	// Cast returned reference into pointer
	return const_cast<QMatrix4x4*>(&_ret);
}

bool QSGTransformNode_virtualbase_isSubtreeBlocked(const void* self) {
	return ( (const MiqtVirtualQSGTransformNode*)(self) )->virtualbase_isSubtreeBlocked();
}

void QSGTransformNode_virtualbase_preprocess(void* self) {
	( (MiqtVirtualQSGTransformNode*)(self) )->virtualbase_preprocess();
}

void QSGTransformNode_delete(QSGTransformNode* self) {
	delete self;
}

class MiqtVirtualQSGRootNode final : public QSGRootNode {
	struct QSGRootNode_VTable* vtbl;
public:

	MiqtVirtualQSGRootNode(struct QSGRootNode_VTable* vtbl): QSGRootNode(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSGRootNode() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGRootNode::isSubtreeBlocked();
		}


		bool callback_return_value = vtbl->isSubtreeBlocked(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isSubtreeBlocked() const {

		return QSGRootNode::isSubtreeBlocked();

	}

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGRootNode::preprocess();
			return;
		}


		vtbl->preprocess(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_preprocess() {

		QSGRootNode::preprocess();

	}

};

QSGRootNode* QSGRootNode_new(struct QSGRootNode_VTable* vtbl) {
	return new MiqtVirtualQSGRootNode(vtbl);
}

void QSGRootNode_virtbase(QSGRootNode* src, QSGNode** outptr_QSGNode) {
	*outptr_QSGNode = static_cast<QSGNode*>(src);
}

bool QSGRootNode_virtualbase_isSubtreeBlocked(const void* self) {
	return ( (const MiqtVirtualQSGRootNode*)(self) )->virtualbase_isSubtreeBlocked();
}

void QSGRootNode_virtualbase_preprocess(void* self) {
	( (MiqtVirtualQSGRootNode*)(self) )->virtualbase_preprocess();
}

void QSGRootNode_delete(QSGRootNode* self) {
	delete self;
}

class MiqtVirtualQSGOpacityNode final : public QSGOpacityNode {
	struct QSGOpacityNode_VTable* vtbl;
public:

	MiqtVirtualQSGOpacityNode(struct QSGOpacityNode_VTable* vtbl): QSGOpacityNode(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSGOpacityNode() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (vtbl->isSubtreeBlocked == 0) {
			return QSGOpacityNode::isSubtreeBlocked();
		}


		bool callback_return_value = vtbl->isSubtreeBlocked(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isSubtreeBlocked() const {

		return QSGOpacityNode::isSubtreeBlocked();

	}

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (vtbl->preprocess == 0) {
			QSGOpacityNode::preprocess();
			return;
		}


		vtbl->preprocess(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_preprocess() {

		QSGOpacityNode::preprocess();

	}

};

QSGOpacityNode* QSGOpacityNode_new(struct QSGOpacityNode_VTable* vtbl) {
	return new MiqtVirtualQSGOpacityNode(vtbl);
}

void QSGOpacityNode_virtbase(QSGOpacityNode* src, QSGNode** outptr_QSGNode) {
	*outptr_QSGNode = static_cast<QSGNode*>(src);
}

void QSGOpacityNode_setOpacity(QSGOpacityNode* self, double opacity) {
	self->setOpacity(static_cast<qreal>(opacity));
}

double QSGOpacityNode_opacity(const QSGOpacityNode* self) {
	qreal _ret = self->opacity();
	return static_cast<double>(_ret);
}

void QSGOpacityNode_setCombinedOpacity(QSGOpacityNode* self, double opacity) {
	self->setCombinedOpacity(static_cast<qreal>(opacity));
}

double QSGOpacityNode_combinedOpacity(const QSGOpacityNode* self) {
	qreal _ret = self->combinedOpacity();
	return static_cast<double>(_ret);
}

bool QSGOpacityNode_isSubtreeBlocked(const QSGOpacityNode* self) {
	return self->isSubtreeBlocked();
}

bool QSGOpacityNode_virtualbase_isSubtreeBlocked(const void* self) {
	return ( (const MiqtVirtualQSGOpacityNode*)(self) )->virtualbase_isSubtreeBlocked();
}

void QSGOpacityNode_virtualbase_preprocess(void* self) {
	( (MiqtVirtualQSGOpacityNode*)(self) )->virtualbase_preprocess();
}

void QSGOpacityNode_delete(QSGOpacityNode* self) {
	delete self;
}

void QSGNodeVisitor_delete(QSGNodeVisitor* self) {
	delete self;
}

