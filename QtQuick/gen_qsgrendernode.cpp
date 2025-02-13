#include <QMatrix4x4>
#include <QRect>
#include <QRectF>
#include <QRegion>
#include <QSGClipNode>
#include <QSGNode>
#include <QSGRenderNode>
#define WORKAROUND_INNER_CLASS_DEFINITION_QSGRenderNode__RenderState
#include <qsgrendernode.h>
#include "gen_qsgrendernode.h"

#ifdef __cplusplus
extern "C" {
#endif

int miqt_exec_callback_QSGRenderNode_changedStates(const QSGRenderNode*, intptr_t);
void miqt_exec_callback_QSGRenderNode_prepare(QSGRenderNode*, intptr_t);
void miqt_exec_callback_QSGRenderNode_render(QSGRenderNode*, intptr_t, QSGRenderNode__RenderState*);
void miqt_exec_callback_QSGRenderNode_releaseResources(QSGRenderNode*, intptr_t);
int miqt_exec_callback_QSGRenderNode_flags(const QSGRenderNode*, intptr_t);
QRectF* miqt_exec_callback_QSGRenderNode_rect(const QSGRenderNode*, intptr_t);
bool miqt_exec_callback_QSGRenderNode_isSubtreeBlocked(const QSGRenderNode*, intptr_t);
void miqt_exec_callback_QSGRenderNode_preprocess(QSGRenderNode*, intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQSGRenderNode final : public QSGRenderNode {
public:

	MiqtVirtualQSGRenderNode(): QSGRenderNode() {};

	virtual ~MiqtVirtualQSGRenderNode() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__changedStates = 0;

	// Subclass to allow providing a Go implementation
	virtual QSGRenderNode::StateFlags changedStates() const override {
		if (handle__changedStates == 0) {
			return QSGRenderNode::changedStates();
		}
		

		int callback_return_value = miqt_exec_callback_QSGRenderNode_changedStates(this, handle__changedStates);

		return static_cast<QSGRenderNode::StateFlags>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_changedStates() const {

		QSGRenderNode::StateFlags _ret = QSGRenderNode::changedStates();
		return static_cast<int>(_ret);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__prepare = 0;

	// Subclass to allow providing a Go implementation
	virtual void prepare() override {
		if (handle__prepare == 0) {
			QSGRenderNode::prepare();
			return;
		}
		

		miqt_exec_callback_QSGRenderNode_prepare(this, handle__prepare);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_prepare() {

		QSGRenderNode::prepare();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__render = 0;

	// Subclass to allow providing a Go implementation
	virtual void render(const QSGRenderNode::RenderState* state) override {
		if (handle__render == 0) {
			return; // Pure virtual, there is no base we can call
		}
		
		QSGRenderNode__RenderState* sigval1 = (QSGRenderNode__RenderState*) state;

		miqt_exec_callback_QSGRenderNode_render(this, handle__render, sigval1);

		
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__releaseResources = 0;

	// Subclass to allow providing a Go implementation
	virtual void releaseResources() override {
		if (handle__releaseResources == 0) {
			QSGRenderNode::releaseResources();
			return;
		}
		

		miqt_exec_callback_QSGRenderNode_releaseResources(this, handle__releaseResources);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_releaseResources() {

		QSGRenderNode::releaseResources();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__flags = 0;

	// Subclass to allow providing a Go implementation
	virtual QSGRenderNode::RenderingFlags flags() const override {
		if (handle__flags == 0) {
			return QSGRenderNode::flags();
		}
		

		int callback_return_value = miqt_exec_callback_QSGRenderNode_flags(this, handle__flags);

		return static_cast<QSGRenderNode::RenderingFlags>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_flags() const {

		QSGRenderNode::RenderingFlags _ret = QSGRenderNode::flags();
		return static_cast<int>(_ret);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__rect = 0;

	// Subclass to allow providing a Go implementation
	virtual QRectF rect() const override {
		if (handle__rect == 0) {
			return QSGRenderNode::rect();
		}
		

		QRectF* callback_return_value = miqt_exec_callback_QSGRenderNode_rect(this, handle__rect);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QRectF* virtualbase_rect() const {

		return new QRectF(QSGRenderNode::rect());

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__isSubtreeBlocked = 0;

	// Subclass to allow providing a Go implementation
	virtual bool isSubtreeBlocked() const override {
		if (handle__isSubtreeBlocked == 0) {
			return QSGRenderNode::isSubtreeBlocked();
		}
		

		bool callback_return_value = miqt_exec_callback_QSGRenderNode_isSubtreeBlocked(this, handle__isSubtreeBlocked);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_isSubtreeBlocked() const {

		return QSGRenderNode::isSubtreeBlocked();

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__preprocess = 0;

	// Subclass to allow providing a Go implementation
	virtual void preprocess() override {
		if (handle__preprocess == 0) {
			QSGRenderNode::preprocess();
			return;
		}
		

		miqt_exec_callback_QSGRenderNode_preprocess(this, handle__preprocess);

		
	}

	// Wrapper to allow calling protected method
	void virtualbase_preprocess() {

		QSGRenderNode::preprocess();

	}

};

QSGRenderNode* QSGRenderNode_new() {
	return new MiqtVirtualQSGRenderNode();
}

void QSGRenderNode_virtbase(QSGRenderNode* src, QSGNode** outptr_QSGNode) {
	*outptr_QSGNode = static_cast<QSGNode*>(src);
}

int QSGRenderNode_changedStates(const QSGRenderNode* self) {
	QSGRenderNode::StateFlags _ret = self->changedStates();
	return static_cast<int>(_ret);
}

void QSGRenderNode_prepare(QSGRenderNode* self) {
	self->prepare();
}

void QSGRenderNode_render(QSGRenderNode* self, QSGRenderNode__RenderState* state) {
	self->render(state);
}

void QSGRenderNode_releaseResources(QSGRenderNode* self) {
	self->releaseResources();
}

int QSGRenderNode_flags(const QSGRenderNode* self) {
	QSGRenderNode::RenderingFlags _ret = self->flags();
	return static_cast<int>(_ret);
}

QRectF* QSGRenderNode_rect(const QSGRenderNode* self) {
	return new QRectF(self->rect());
}

QMatrix4x4* QSGRenderNode_matrix(const QSGRenderNode* self) {
	return (QMatrix4x4*) self->matrix();
}

QSGClipNode* QSGRenderNode_clipList(const QSGRenderNode* self) {
	return (QSGClipNode*) self->clipList();
}

double QSGRenderNode_inheritedOpacity(const QSGRenderNode* self) {
	qreal _ret = self->inheritedOpacity();
	return static_cast<double>(_ret);
}

bool QSGRenderNode_override_virtual_changedStates(void* self, intptr_t slot) {
	MiqtVirtualQSGRenderNode* self_cast = dynamic_cast<MiqtVirtualQSGRenderNode*>( (QSGRenderNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__changedStates = slot;
	return true;
}

int QSGRenderNode_virtualbase_changedStates(const void* self) {
	return ( (const MiqtVirtualQSGRenderNode*)(self) )->virtualbase_changedStates();
}

bool QSGRenderNode_override_virtual_prepare(void* self, intptr_t slot) {
	MiqtVirtualQSGRenderNode* self_cast = dynamic_cast<MiqtVirtualQSGRenderNode*>( (QSGRenderNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__prepare = slot;
	return true;
}

void QSGRenderNode_virtualbase_prepare(void* self) {
	( (MiqtVirtualQSGRenderNode*)(self) )->virtualbase_prepare();
}

bool QSGRenderNode_override_virtual_render(void* self, intptr_t slot) {
	MiqtVirtualQSGRenderNode* self_cast = dynamic_cast<MiqtVirtualQSGRenderNode*>( (QSGRenderNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__render = slot;
	return true;
}

bool QSGRenderNode_override_virtual_releaseResources(void* self, intptr_t slot) {
	MiqtVirtualQSGRenderNode* self_cast = dynamic_cast<MiqtVirtualQSGRenderNode*>( (QSGRenderNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__releaseResources = slot;
	return true;
}

void QSGRenderNode_virtualbase_releaseResources(void* self) {
	( (MiqtVirtualQSGRenderNode*)(self) )->virtualbase_releaseResources();
}

bool QSGRenderNode_override_virtual_flags(void* self, intptr_t slot) {
	MiqtVirtualQSGRenderNode* self_cast = dynamic_cast<MiqtVirtualQSGRenderNode*>( (QSGRenderNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__flags = slot;
	return true;
}

int QSGRenderNode_virtualbase_flags(const void* self) {
	return ( (const MiqtVirtualQSGRenderNode*)(self) )->virtualbase_flags();
}

bool QSGRenderNode_override_virtual_rect(void* self, intptr_t slot) {
	MiqtVirtualQSGRenderNode* self_cast = dynamic_cast<MiqtVirtualQSGRenderNode*>( (QSGRenderNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__rect = slot;
	return true;
}

QRectF* QSGRenderNode_virtualbase_rect(const void* self) {
	return ( (const MiqtVirtualQSGRenderNode*)(self) )->virtualbase_rect();
}

bool QSGRenderNode_override_virtual_isSubtreeBlocked(void* self, intptr_t slot) {
	MiqtVirtualQSGRenderNode* self_cast = dynamic_cast<MiqtVirtualQSGRenderNode*>( (QSGRenderNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__isSubtreeBlocked = slot;
	return true;
}

bool QSGRenderNode_virtualbase_isSubtreeBlocked(const void* self) {
	return ( (const MiqtVirtualQSGRenderNode*)(self) )->virtualbase_isSubtreeBlocked();
}

bool QSGRenderNode_override_virtual_preprocess(void* self, intptr_t slot) {
	MiqtVirtualQSGRenderNode* self_cast = dynamic_cast<MiqtVirtualQSGRenderNode*>( (QSGRenderNode*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__preprocess = slot;
	return true;
}

void QSGRenderNode_virtualbase_preprocess(void* self) {
	( (MiqtVirtualQSGRenderNode*)(self) )->virtualbase_preprocess();
}

void QSGRenderNode_delete(QSGRenderNode* self) {
	delete self;
}

QMatrix4x4* QSGRenderNode__RenderState_projectionMatrix(const QSGRenderNode__RenderState* self) {
	return (QMatrix4x4*) self->projectionMatrix();
}

QRect* QSGRenderNode__RenderState_scissorRect(const QSGRenderNode__RenderState* self) {
	return new QRect(self->scissorRect());
}

bool QSGRenderNode__RenderState_scissorEnabled(const QSGRenderNode__RenderState* self) {
	return self->scissorEnabled();
}

int QSGRenderNode__RenderState_stencilValue(const QSGRenderNode__RenderState* self) {
	return self->stencilValue();
}

bool QSGRenderNode__RenderState_stencilEnabled(const QSGRenderNode__RenderState* self) {
	return self->stencilEnabled();
}

QRegion* QSGRenderNode__RenderState_clipRegion(const QSGRenderNode__RenderState* self) {
	return (QRegion*) self->clipRegion();
}

void* QSGRenderNode__RenderState_get(const QSGRenderNode__RenderState* self, const char* state) {
	return self->get(state);
}

void QSGRenderNode__RenderState_operatorAssign(QSGRenderNode__RenderState* self, QSGRenderNode__RenderState* param1) {
	self->operator=(*param1);
}

void QSGRenderNode__RenderState_delete(QSGRenderNode__RenderState* self) {
	delete self;
}

