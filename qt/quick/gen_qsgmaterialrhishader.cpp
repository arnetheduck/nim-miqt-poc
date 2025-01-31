#include <QByteArray>
#include <QMatrix4x4>
#include <QRect>
#include <QSGMaterial>
#include <QSGMaterialRhiShader>
#define WORKAROUND_INNER_CLASS_DEFINITION_QSGMaterialRhiShader__GraphicsPipelineState
#define WORKAROUND_INNER_CLASS_DEFINITION_QSGMaterialRhiShader__RenderState
#include <QSGMaterialShader>
#define WORKAROUND_INNER_CLASS_DEFINITION_QSGMaterialShader__RenderState
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qsgmaterialrhishader.h>
#include "gen_qsgmaterialrhishader.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQSGMaterialRhiShader final : public QSGMaterialRhiShader {
	struct QSGMaterialRhiShader_VTable* vtbl;
public:

	MiqtVirtualQSGMaterialRhiShader(struct QSGMaterialRhiShader_VTable* vtbl): QSGMaterialRhiShader(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSGMaterialRhiShader() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual bool updateUniformData(QSGMaterialRhiShader::RenderState& state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) override {
		if (vtbl->updateUniformData == 0) {
			return QSGMaterialRhiShader::updateUniformData(state, newMaterial, oldMaterial);
		}

		QSGMaterialRhiShader::RenderState& state_ret = state;
		// Cast returned reference into pointer
		QSGMaterialRhiShader__RenderState* sigval1 = &state_ret;
		QSGMaterial* sigval2 = newMaterial;
		QSGMaterial* sigval3 = oldMaterial;

		bool callback_return_value = vtbl->updateUniformData(vtbl, this, sigval1, sigval2, sigval3);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_updateUniformData(QSGMaterialRhiShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {

		return QSGMaterialRhiShader::updateUniformData(*state, newMaterial, oldMaterial);

	}

	// Subclass to allow providing a Go implementation
	virtual bool updateGraphicsPipelineState(QSGMaterialRhiShader::RenderState& state, QSGMaterialRhiShader::GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) override {
		if (vtbl->updateGraphicsPipelineState == 0) {
			return QSGMaterialRhiShader::updateGraphicsPipelineState(state, ps, newMaterial, oldMaterial);
		}

		QSGMaterialRhiShader::RenderState& state_ret = state;
		// Cast returned reference into pointer
		QSGMaterialRhiShader__RenderState* sigval1 = &state_ret;
		QSGMaterialRhiShader__GraphicsPipelineState* sigval2 = ps;
		QSGMaterial* sigval3 = newMaterial;
		QSGMaterial* sigval4 = oldMaterial;

		bool callback_return_value = vtbl->updateGraphicsPipelineState(vtbl, this, sigval1, sigval2, sigval3, sigval4);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	bool virtualbase_updateGraphicsPipelineState(QSGMaterialRhiShader__RenderState* state, QSGMaterialRhiShader__GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {

		return QSGMaterialRhiShader::updateGraphicsPipelineState(*state, ps, newMaterial, oldMaterial);

	}

	// Subclass to allow providing a Go implementation
	virtual const char** attributeNames() const override {
		if (vtbl->attributeNames == 0) {
			return QSGMaterialRhiShader::attributeNames();
		}


		const char** callback_return_value = vtbl->attributeNames(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char** virtualbase_attributeNames() const {

		return (const char**) QSGMaterialRhiShader::attributeNames();

	}

	// Subclass to allow providing a Go implementation
	virtual void activate() override {
		if (vtbl->activate == 0) {
			QSGMaterialRhiShader::activate();
			return;
		}


		vtbl->activate(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_activate() {

		QSGMaterialRhiShader::activate();

	}

	// Subclass to allow providing a Go implementation
	virtual void deactivate() override {
		if (vtbl->deactivate == 0) {
			QSGMaterialRhiShader::deactivate();
			return;
		}


		vtbl->deactivate(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_deactivate() {

		QSGMaterialRhiShader::deactivate();

	}

	// Subclass to allow providing a Go implementation
	virtual void updateState(const QSGMaterialShader::RenderState& state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) override {
		if (vtbl->updateState == 0) {
			QSGMaterialRhiShader::updateState(state, newMaterial, oldMaterial);
			return;
		}

		const QSGMaterialShader::RenderState& state_ret = state;
		// Cast returned reference into pointer
		QSGMaterialShader__RenderState* sigval1 = const_cast<QSGMaterialShader::RenderState*>(&state_ret);
		QSGMaterial* sigval2 = newMaterial;
		QSGMaterial* sigval3 = oldMaterial;

		vtbl->updateState(vtbl, this, sigval1, sigval2, sigval3);

	}

	// Wrapper to allow calling protected method
	void virtualbase_updateState(QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {

		QSGMaterialRhiShader::updateState(*state, newMaterial, oldMaterial);

	}

	// Subclass to allow providing a Go implementation
	virtual void compile() override {
		if (vtbl->compile == 0) {
			QSGMaterialRhiShader::compile();
			return;
		}


		vtbl->compile(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_compile() {

		QSGMaterialRhiShader::compile();

	}

	// Subclass to allow providing a Go implementation
	virtual void initialize() override {
		if (vtbl->initialize == 0) {
			QSGMaterialRhiShader::initialize();
			return;
		}


		vtbl->initialize(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initialize() {

		QSGMaterialRhiShader::initialize();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* vertexShader() const override {
		if (vtbl->vertexShader == 0) {
			return QSGMaterialRhiShader::vertexShader();
		}


		const char* callback_return_value = vtbl->vertexShader(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_vertexShader() const {

		return (const char*) QSGMaterialRhiShader::vertexShader();

	}

	// Subclass to allow providing a Go implementation
	virtual const char* fragmentShader() const override {
		if (vtbl->fragmentShader == 0) {
			return QSGMaterialRhiShader::fragmentShader();
		}


		const char* callback_return_value = vtbl->fragmentShader(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	const char* virtualbase_fragmentShader() const {

		return (const char*) QSGMaterialRhiShader::fragmentShader();

	}

	// Wrapper to allow calling protected method
	void protectedbase_setShaderFileName(int stage, struct miqt_string filename) {
		QString filename_QString = QString::fromUtf8(filename.data, filename.len);

		QSGMaterialRhiShader::setShaderFileName(static_cast<QSGMaterialRhiShader::Stage>(stage), filename_QString);

	}

	// Wrapper to allow calling protected method
	void protectedbase_setShader(int stage, const QShader* shader) {

		QSGMaterialRhiShader::setShader(static_cast<QSGMaterialRhiShader::Stage>(stage), *shader);

	}

	// Wrapper to allow calling protected method
	void protectedbase_setShaderSourceFile(QOpenGLShader::ShaderType type, struct miqt_string sourceFile) {
		QString sourceFile_QString = QString::fromUtf8(sourceFile.data, sourceFile.len);

		QSGMaterialRhiShader::setShaderSourceFile(type, sourceFile_QString);

	}

	// Wrapper to allow calling protected method
	void protectedbase_setShaderSourceFiles(QOpenGLShader::ShaderType type, struct miqt_array /* of struct miqt_string */  sourceFiles) {
		QStringList sourceFiles_QList;
		sourceFiles_QList.reserve(sourceFiles.len);
		struct miqt_string* sourceFiles_arr = static_cast<struct miqt_string*>(sourceFiles.data);
		for(size_t i = 0; i < sourceFiles.len; ++i) {
			QString sourceFiles_arr_i_QString = QString::fromUtf8(sourceFiles_arr[i].data, sourceFiles_arr[i].len);
			sourceFiles_QList.push_back(sourceFiles_arr_i_QString);
		}

		QSGMaterialRhiShader::setShaderSourceFiles(type, sourceFiles_QList);

	}

};

QSGMaterialRhiShader* QSGMaterialRhiShader_new(struct QSGMaterialRhiShader_VTable* vtbl) {
	return new MiqtVirtualQSGMaterialRhiShader(vtbl);
}

void QSGMaterialRhiShader_virtbase(QSGMaterialRhiShader* src, QSGMaterialShader** outptr_QSGMaterialShader) {
	*outptr_QSGMaterialShader = static_cast<QSGMaterialShader*>(src);
}

bool QSGMaterialRhiShader_updateUniformData(QSGMaterialRhiShader* self, QSGMaterialRhiShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {
	return self->updateUniformData(*state, newMaterial, oldMaterial);
}

bool QSGMaterialRhiShader_updateGraphicsPipelineState(QSGMaterialRhiShader* self, QSGMaterialRhiShader__RenderState* state, QSGMaterialRhiShader__GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {
	return self->updateGraphicsPipelineState(*state, ps, newMaterial, oldMaterial);
}

int QSGMaterialRhiShader_flags(const QSGMaterialRhiShader* self) {
	QSGMaterialRhiShader::Flags _ret = self->flags();
	return static_cast<int>(_ret);
}

void QSGMaterialRhiShader_setFlag(QSGMaterialRhiShader* self, int flags) {
	self->setFlag(static_cast<QSGMaterialRhiShader::Flags>(flags));
}

const char** QSGMaterialRhiShader_attributeNames(const QSGMaterialRhiShader* self) {
	return (const char**) self->attributeNames();
}

void QSGMaterialRhiShader_setFlag2(QSGMaterialRhiShader* self, int flags, bool on) {
	self->setFlag(static_cast<QSGMaterialRhiShader::Flags>(flags), on);
}

bool QSGMaterialRhiShader_virtualbase_updateUniformData(void* self, QSGMaterialRhiShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {
	return ( (MiqtVirtualQSGMaterialRhiShader*)(self) )->virtualbase_updateUniformData(state, newMaterial, oldMaterial);
}

bool QSGMaterialRhiShader_virtualbase_updateGraphicsPipelineState(void* self, QSGMaterialRhiShader__RenderState* state, QSGMaterialRhiShader__GraphicsPipelineState* ps, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {
	return ( (MiqtVirtualQSGMaterialRhiShader*)(self) )->virtualbase_updateGraphicsPipelineState(state, ps, newMaterial, oldMaterial);
}

const char** QSGMaterialRhiShader_virtualbase_attributeNames(const void* self) {
	return ( (const MiqtVirtualQSGMaterialRhiShader*)(self) )->virtualbase_attributeNames();
}

void QSGMaterialRhiShader_virtualbase_activate(void* self) {
	( (MiqtVirtualQSGMaterialRhiShader*)(self) )->virtualbase_activate();
}

void QSGMaterialRhiShader_virtualbase_deactivate(void* self) {
	( (MiqtVirtualQSGMaterialRhiShader*)(self) )->virtualbase_deactivate();
}

void QSGMaterialRhiShader_virtualbase_updateState(void* self, QSGMaterialShader__RenderState* state, QSGMaterial* newMaterial, QSGMaterial* oldMaterial) {
	( (MiqtVirtualQSGMaterialRhiShader*)(self) )->virtualbase_updateState(state, newMaterial, oldMaterial);
}

void QSGMaterialRhiShader_virtualbase_compile(void* self) {
	( (MiqtVirtualQSGMaterialRhiShader*)(self) )->virtualbase_compile();
}

void QSGMaterialRhiShader_virtualbase_initialize(void* self) {
	( (MiqtVirtualQSGMaterialRhiShader*)(self) )->virtualbase_initialize();
}

const char* QSGMaterialRhiShader_virtualbase_vertexShader(const void* self) {
	return ( (const MiqtVirtualQSGMaterialRhiShader*)(self) )->virtualbase_vertexShader();
}

const char* QSGMaterialRhiShader_virtualbase_fragmentShader(const void* self) {
	return ( (const MiqtVirtualQSGMaterialRhiShader*)(self) )->virtualbase_fragmentShader();
}

void QSGMaterialRhiShader_protectedbase_setShaderFileName(void* self, int stage, struct miqt_string filename) {
	( (MiqtVirtualQSGMaterialRhiShader*)(self) )->protectedbase_setShaderFileName(stage, filename);
}

void QSGMaterialRhiShader_protectedbase_setShader(void* self, int stage, const QShader* shader) {
	( (MiqtVirtualQSGMaterialRhiShader*)(self) )->protectedbase_setShader(stage, shader);
}

void QSGMaterialRhiShader_protectedbase_setShaderSourceFile(void* self, QOpenGLShader::ShaderType type, struct miqt_string sourceFile) {
	( (MiqtVirtualQSGMaterialRhiShader*)(self) )->protectedbase_setShaderSourceFile(type, sourceFile);
}

void QSGMaterialRhiShader_protectedbase_setShaderSourceFiles(void* self, QOpenGLShader::ShaderType type, struct miqt_array /* of struct miqt_string */  sourceFiles) {
	( (MiqtVirtualQSGMaterialRhiShader*)(self) )->protectedbase_setShaderSourceFiles(type, sourceFiles);
}

void QSGMaterialRhiShader_delete(QSGMaterialRhiShader* self) {
	delete self;
}

int QSGMaterialRhiShader__RenderState_dirtyStates(const QSGMaterialRhiShader__RenderState* self) {
	QSGMaterialRhiShader::RenderState::DirtyStates _ret = self->dirtyStates();
	return static_cast<int>(_ret);
}

bool QSGMaterialRhiShader__RenderState_isMatrixDirty(const QSGMaterialRhiShader__RenderState* self) {
	return self->isMatrixDirty();
}

bool QSGMaterialRhiShader__RenderState_isOpacityDirty(const QSGMaterialRhiShader__RenderState* self) {
	return self->isOpacityDirty();
}

float QSGMaterialRhiShader__RenderState_opacity(const QSGMaterialRhiShader__RenderState* self) {
	return self->opacity();
}

QMatrix4x4* QSGMaterialRhiShader__RenderState_combinedMatrix(const QSGMaterialRhiShader__RenderState* self) {
	return new QMatrix4x4(self->combinedMatrix());
}

QMatrix4x4* QSGMaterialRhiShader__RenderState_modelViewMatrix(const QSGMaterialRhiShader__RenderState* self) {
	return new QMatrix4x4(self->modelViewMatrix());
}

QMatrix4x4* QSGMaterialRhiShader__RenderState_projectionMatrix(const QSGMaterialRhiShader__RenderState* self) {
	return new QMatrix4x4(self->projectionMatrix());
}

QRect* QSGMaterialRhiShader__RenderState_viewportRect(const QSGMaterialRhiShader__RenderState* self) {
	return new QRect(self->viewportRect());
}

QRect* QSGMaterialRhiShader__RenderState_deviceRect(const QSGMaterialRhiShader__RenderState* self) {
	return new QRect(self->deviceRect());
}

float QSGMaterialRhiShader__RenderState_determinant(const QSGMaterialRhiShader__RenderState* self) {
	return self->determinant();
}

float QSGMaterialRhiShader__RenderState_devicePixelRatio(const QSGMaterialRhiShader__RenderState* self) {
	return self->devicePixelRatio();
}

struct miqt_string QSGMaterialRhiShader__RenderState_uniformData(QSGMaterialRhiShader__RenderState* self) {
	QByteArray _qb = self->uniformData();
	struct miqt_string _ms;
	_ms.len = _qb.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _qb.data(), _ms.len);
	return _ms;
}

void QSGMaterialRhiShader__RenderState_delete(QSGMaterialRhiShader__RenderState* self) {
	delete self;
}

QSGMaterialRhiShader__GraphicsPipelineState* QSGMaterialRhiShader__GraphicsPipelineState_new(QSGMaterialRhiShader__GraphicsPipelineState* param1) {
	return new QSGMaterialRhiShader::GraphicsPipelineState(*param1);
}

void QSGMaterialRhiShader__GraphicsPipelineState_operatorAssign(QSGMaterialRhiShader__GraphicsPipelineState* self, QSGMaterialRhiShader__GraphicsPipelineState* param1) {
	self->operator=(*param1);
}

void QSGMaterialRhiShader__GraphicsPipelineState_delete(QSGMaterialRhiShader__GraphicsPipelineState* self) {
	delete self;
}

