#include <QByteArray>
#include <QMatrix4x4>
#include <QRect>
#include <QSGMaterial>
#include <QSGMaterialShader>
#define WORKAROUND_INNER_CLASS_DEFINITION_QSGMaterialShader__GraphicsPipelineState
#define WORKAROUND_INNER_CLASS_DEFINITION_QSGMaterialShader__RenderState
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qsgmaterialshader.h>
#include "gen_qsgmaterialshader.h"

#ifdef __cplusplus
extern "C" {
#endif

bool miqt_exec_callback_QSGMaterialShader_updateUniformData(QSGMaterialShader*, intptr_t, QSGMaterialShader__RenderState*, QSGMaterial*, QSGMaterial*);
bool miqt_exec_callback_QSGMaterialShader_updateGraphicsPipelineState(QSGMaterialShader*, intptr_t, QSGMaterialShader__RenderState*, QSGMaterialShader__GraphicsPipelineState*, QSGMaterial*, QSGMaterial*);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQSGMaterialShader final : public QSGMaterialShader {
public:

	MiqtVirtualQSGMaterialShader(): QSGMaterialShader() {};

	virtual ~MiqtVirtualQSGMaterialShader() override = default;

	// cgo.Handle value for overwritten implementation
	intptr_t handle__updateUniformData = 0;

	// Subclass to allow providing a Go implementation
	virtual bool updateUniformData(QSGMaterialShader::RenderState& state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) override {
		if (handle__updateUniformData == 0) {
			return QSGMaterialShader::updateUniformData(state, newMaterial, oldMaterial);
		}
		
		QSGMaterialShader::RenderState& state_ret = state;
		// Cast returned reference into pointer
		QSGMaterialShader__RenderState* sigval1 = &state_ret;
		QSGMaterial* sigval2 = newMaterial;
		QSGMaterial* sigval3 = oldMaterial;

		bool callback_return_value = miqt_exec_callback_QSGMaterialShader_updateUniformData(this, handle__updateUniformData, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_updateUniformData(QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {

		return QSGMaterialShader::updateUniformData(*state, newMaterial, oldMaterial);

	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__updateGraphicsPipelineState = 0;

	// Subclass to allow providing a Go implementation
	virtual bool updateGraphicsPipelineState(QSGMaterialShader::RenderState& state, QSGMaterialShader::GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) override {
		if (handle__updateGraphicsPipelineState == 0) {
			return QSGMaterialShader::updateGraphicsPipelineState(state, ps, newMaterial, oldMaterial);
		}
		
		QSGMaterialShader::RenderState& state_ret = state;
		// Cast returned reference into pointer
		QSGMaterialShader__RenderState* sigval1 = &state_ret;
		QSGMaterialShader__GraphicsPipelineState* sigval2 = ps;
		QSGMaterial* sigval3 = newMaterial;
		QSGMaterial* sigval4 = oldMaterial;

		bool callback_return_value = miqt_exec_callback_QSGMaterialShader_updateGraphicsPipelineState(this, handle__updateGraphicsPipelineState, sigval1, sigval2, sigval3, sigval4);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_updateGraphicsPipelineState(QSGMaterialShader__RenderState* state, QSGMaterialShader__GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {

		return QSGMaterialShader::updateGraphicsPipelineState(*state, ps, newMaterial, oldMaterial);

	}

	// Wrappers to allow calling protected methods:
	friend void QSGMaterialShader_protectedbase_setShaderFileName(bool* _dynamic_cast_ok, void* self, int stage, struct miqt_string filename);
	friend void QSGMaterialShader_protectedbase_setShader(bool* _dynamic_cast_ok, void* self, int stage, const QShader* shader);
};

QSGMaterialShader* QSGMaterialShader_new() {
	return new MiqtVirtualQSGMaterialShader();
}

bool QSGMaterialShader_updateUniformData(QSGMaterialShader* self, QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {
	return self->updateUniformData(*state, newMaterial, oldMaterial);
}

bool QSGMaterialShader_updateGraphicsPipelineState(QSGMaterialShader* self, QSGMaterialShader__RenderState* state, QSGMaterialShader__GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {
	return self->updateGraphicsPipelineState(*state, ps, newMaterial, oldMaterial);
}

int QSGMaterialShader_flags(const QSGMaterialShader* self) {
	QSGMaterialShader::Flags _ret = self->flags();
	return static_cast<int>(_ret);
}

void QSGMaterialShader_setFlag(QSGMaterialShader* self, int flags) {
	self->setFlag(static_cast<QSGMaterialShader::Flags>(flags));
}

void QSGMaterialShader_setFlags(QSGMaterialShader* self, int flags) {
	self->setFlags(static_cast<QSGMaterialShader::Flags>(flags));
}

int QSGMaterialShader_combinedImageSamplerCount(const QSGMaterialShader* self, int binding) {
	return self->combinedImageSamplerCount(static_cast<int>(binding));
}

void QSGMaterialShader_setFlag2(QSGMaterialShader* self, int flags, bool on) {
	self->setFlag(static_cast<QSGMaterialShader::Flags>(flags), on);
}

bool QSGMaterialShader_override_virtual_updateUniformData(void* self, intptr_t slot) {
	MiqtVirtualQSGMaterialShader* self_cast = dynamic_cast<MiqtVirtualQSGMaterialShader*>( (QSGMaterialShader*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__updateUniformData = slot;
	return true;
}

bool QSGMaterialShader_virtualbase_updateUniformData(void* self, QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {
	return ( (MiqtVirtualQSGMaterialShader*)(self) )->virtualbase_updateUniformData(state, newMaterial, oldMaterial);
}

bool QSGMaterialShader_override_virtual_updateGraphicsPipelineState(void* self, intptr_t slot) {
	MiqtVirtualQSGMaterialShader* self_cast = dynamic_cast<MiqtVirtualQSGMaterialShader*>( (QSGMaterialShader*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__updateGraphicsPipelineState = slot;
	return true;
}

bool QSGMaterialShader_virtualbase_updateGraphicsPipelineState(void* self, QSGMaterialShader__RenderState* state, QSGMaterialShader__GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {
	return ( (MiqtVirtualQSGMaterialShader*)(self) )->virtualbase_updateGraphicsPipelineState(state, ps, newMaterial, oldMaterial);
}

void QSGMaterialShader_protectedbase_setShaderFileName(bool* _dynamic_cast_ok, void* self, int stage, struct miqt_string filename) {
	MiqtVirtualQSGMaterialShader* self_cast = dynamic_cast<MiqtVirtualQSGMaterialShader*>( (QSGMaterialShader*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
			QString filename_QString = QString::fromUtf8(filename.data, filename.len);

	self_cast->setShaderFileName(static_cast<MiqtVirtualQSGMaterialShader::Stage>(stage), filename_QString);

}

void QSGMaterialShader_protectedbase_setShader(bool* _dynamic_cast_ok, void* self, int stage, const QShader* shader) {
	MiqtVirtualQSGMaterialShader* self_cast = dynamic_cast<MiqtVirtualQSGMaterialShader*>( (QSGMaterialShader*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setShader(static_cast<MiqtVirtualQSGMaterialShader::Stage>(stage), *shader);

}

void QSGMaterialShader_delete(QSGMaterialShader* self) {
	delete self;
}

int QSGMaterialShader__RenderState_dirtyStates(const QSGMaterialShader__RenderState* self) {
	QSGMaterialShader::RenderState::DirtyStates _ret = self->dirtyStates();
	return static_cast<int>(_ret);
}

bool QSGMaterialShader__RenderState_isMatrixDirty(const QSGMaterialShader__RenderState* self) {
	return self->isMatrixDirty();
}

bool QSGMaterialShader__RenderState_isOpacityDirty(const QSGMaterialShader__RenderState* self) {
	return self->isOpacityDirty();
}

float QSGMaterialShader__RenderState_opacity(const QSGMaterialShader__RenderState* self) {
	return self->opacity();
}

QMatrix4x4* QSGMaterialShader__RenderState_combinedMatrix(const QSGMaterialShader__RenderState* self) {
	return new QMatrix4x4(self->combinedMatrix());
}

QMatrix4x4* QSGMaterialShader__RenderState_modelViewMatrix(const QSGMaterialShader__RenderState* self) {
	return new QMatrix4x4(self->modelViewMatrix());
}

QMatrix4x4* QSGMaterialShader__RenderState_projectionMatrix(const QSGMaterialShader__RenderState* self) {
	return new QMatrix4x4(self->projectionMatrix());
}

QRect* QSGMaterialShader__RenderState_viewportRect(const QSGMaterialShader__RenderState* self) {
	return new QRect(self->viewportRect());
}

QRect* QSGMaterialShader__RenderState_deviceRect(const QSGMaterialShader__RenderState* self) {
	return new QRect(self->deviceRect());
}

float QSGMaterialShader__RenderState_determinant(const QSGMaterialShader__RenderState* self) {
	return self->determinant();
}

float QSGMaterialShader__RenderState_devicePixelRatio(const QSGMaterialShader__RenderState* self) {
	return self->devicePixelRatio();
}

struct miqt_string QSGMaterialShader__RenderState_uniformData(QSGMaterialShader__RenderState* self) {
	QByteArray _qb = self->uniformData();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

QRhiResourceUpdateBatch* QSGMaterialShader__RenderState_resourceUpdateBatch(QSGMaterialShader__RenderState* self) {
	return self->resourceUpdateBatch();
}

void QSGMaterialShader__RenderState_delete(QSGMaterialShader__RenderState* self) {
	delete self;
}

void QSGMaterialShader__GraphicsPipelineState_delete(QSGMaterialShader__GraphicsPipelineState* self) {
	delete self;
}

