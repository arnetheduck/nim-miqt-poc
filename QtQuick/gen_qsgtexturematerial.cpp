#include <QSGMaterial>
#include <QSGMaterialShader>
#include <QSGMaterialType>
#include <QSGOpaqueTextureMaterial>
#include <QSGTexture>
#include <QSGTextureMaterial>
#include <qsgtexturematerial.h>
#include "gen_qsgtexturematerial.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQSGOpaqueTextureMaterial final : public QSGOpaqueTextureMaterial {
	struct QSGOpaqueTextureMaterial_VTable* vtbl;
public:

	MiqtVirtualQSGOpaqueTextureMaterial(struct QSGOpaqueTextureMaterial_VTable* vtbl): QSGOpaqueTextureMaterial(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSGOpaqueTextureMaterial() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QSGMaterialType* type() const override {
		if (vtbl->type == 0) {
			return QSGOpaqueTextureMaterial::type();
		}


		QSGMaterialType* callback_return_value = vtbl->type(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSGMaterialType* virtualbase_type() const {

		return QSGOpaqueTextureMaterial::type();

	}

	// Subclass to allow providing a Go implementation
	virtual QSGMaterialShader* createShader() const override {
		if (vtbl->createShader == 0) {
			return QSGOpaqueTextureMaterial::createShader();
		}


		QSGMaterialShader* callback_return_value = vtbl->createShader(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSGMaterialShader* virtualbase_createShader() const {

		return QSGOpaqueTextureMaterial::createShader();

	}

	// Subclass to allow providing a Go implementation
	virtual int compare(const QSGMaterial* other) const override {
		if (vtbl->compare == 0) {
			return QSGOpaqueTextureMaterial::compare(other);
		}

		QSGMaterial* sigval1 = (QSGMaterial*) other;

		int callback_return_value = vtbl->compare(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_compare(QSGMaterial* other) const {

		return QSGOpaqueTextureMaterial::compare(other);

	}

};

QSGOpaqueTextureMaterial* QSGOpaqueTextureMaterial_new(struct QSGOpaqueTextureMaterial_VTable* vtbl) {
	return new MiqtVirtualQSGOpaqueTextureMaterial(vtbl);
}

void QSGOpaqueTextureMaterial_virtbase(QSGOpaqueTextureMaterial* src, QSGMaterial** outptr_QSGMaterial) {
	*outptr_QSGMaterial = static_cast<QSGMaterial*>(src);
}

QSGMaterialType* QSGOpaqueTextureMaterial_type(const QSGOpaqueTextureMaterial* self) {
	return self->type();
}

QSGMaterialShader* QSGOpaqueTextureMaterial_createShader(const QSGOpaqueTextureMaterial* self) {
	return self->createShader();
}

int QSGOpaqueTextureMaterial_compare(const QSGOpaqueTextureMaterial* self, QSGMaterial* other) {
	return self->compare(other);
}

void QSGOpaqueTextureMaterial_setTexture(QSGOpaqueTextureMaterial* self, QSGTexture* texture) {
	self->setTexture(texture);
}

QSGTexture* QSGOpaqueTextureMaterial_texture(const QSGOpaqueTextureMaterial* self) {
	return self->texture();
}

void QSGOpaqueTextureMaterial_setMipmapFiltering(QSGOpaqueTextureMaterial* self, int filteringType) {
	self->setMipmapFiltering(static_cast<QSGTexture::Filtering>(filteringType));
}

int QSGOpaqueTextureMaterial_mipmapFiltering(const QSGOpaqueTextureMaterial* self) {
	QSGTexture::Filtering _ret = self->mipmapFiltering();
	return static_cast<int>(_ret);
}

void QSGOpaqueTextureMaterial_setFiltering(QSGOpaqueTextureMaterial* self, int filteringType) {
	self->setFiltering(static_cast<QSGTexture::Filtering>(filteringType));
}

int QSGOpaqueTextureMaterial_filtering(const QSGOpaqueTextureMaterial* self) {
	QSGTexture::Filtering _ret = self->filtering();
	return static_cast<int>(_ret);
}

void QSGOpaqueTextureMaterial_setHorizontalWrapMode(QSGOpaqueTextureMaterial* self, int mode) {
	self->setHorizontalWrapMode(static_cast<QSGTexture::WrapMode>(mode));
}

int QSGOpaqueTextureMaterial_horizontalWrapMode(const QSGOpaqueTextureMaterial* self) {
	QSGTexture::WrapMode _ret = self->horizontalWrapMode();
	return static_cast<int>(_ret);
}

void QSGOpaqueTextureMaterial_setVerticalWrapMode(QSGOpaqueTextureMaterial* self, int mode) {
	self->setVerticalWrapMode(static_cast<QSGTexture::WrapMode>(mode));
}

int QSGOpaqueTextureMaterial_verticalWrapMode(const QSGOpaqueTextureMaterial* self) {
	QSGTexture::WrapMode _ret = self->verticalWrapMode();
	return static_cast<int>(_ret);
}

void QSGOpaqueTextureMaterial_setAnisotropyLevel(QSGOpaqueTextureMaterial* self, int level) {
	self->setAnisotropyLevel(static_cast<QSGTexture::AnisotropyLevel>(level));
}

int QSGOpaqueTextureMaterial_anisotropyLevel(const QSGOpaqueTextureMaterial* self) {
	QSGTexture::AnisotropyLevel _ret = self->anisotropyLevel();
	return static_cast<int>(_ret);
}

QSGMaterialType* QSGOpaqueTextureMaterial_virtualbase_type(const void* self) {
	return ( (const MiqtVirtualQSGOpaqueTextureMaterial*)(self) )->virtualbase_type();
}

QSGMaterialShader* QSGOpaqueTextureMaterial_virtualbase_createShader(const void* self) {
	return ( (const MiqtVirtualQSGOpaqueTextureMaterial*)(self) )->virtualbase_createShader();
}

int QSGOpaqueTextureMaterial_virtualbase_compare(const void* self, QSGMaterial* other) {
	return ( (const MiqtVirtualQSGOpaqueTextureMaterial*)(self) )->virtualbase_compare(other);
}

void QSGOpaqueTextureMaterial_delete(QSGOpaqueTextureMaterial* self) {
	delete self;
}

void QSGTextureMaterial_virtbase(QSGTextureMaterial* src, QSGOpaqueTextureMaterial** outptr_QSGOpaqueTextureMaterial) {
	*outptr_QSGOpaqueTextureMaterial = static_cast<QSGOpaqueTextureMaterial*>(src);
}

QSGMaterialType* QSGTextureMaterial_type(const QSGTextureMaterial* self) {
	return self->type();
}

QSGMaterialShader* QSGTextureMaterial_createShader(const QSGTextureMaterial* self) {
	return self->createShader();
}

void QSGTextureMaterial_delete(QSGTextureMaterial* self) {
	delete self;
}

