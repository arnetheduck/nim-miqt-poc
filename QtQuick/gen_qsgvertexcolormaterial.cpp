#include <QSGMaterial>
#include <QSGMaterialShader>
#include <QSGMaterialType>
#include <QSGVertexColorMaterial>
#include <qsgvertexcolormaterial.h>
#include "gen_qsgvertexcolormaterial.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQSGVertexColorMaterial final : public QSGVertexColorMaterial {
	struct QSGVertexColorMaterial_VTable* vtbl;
public:

	MiqtVirtualQSGVertexColorMaterial(struct QSGVertexColorMaterial_VTable* vtbl): QSGVertexColorMaterial(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSGVertexColorMaterial() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual int compare(const QSGMaterial* other) const override {
		if (vtbl->compare == 0) {
			return QSGVertexColorMaterial::compare(other);
		}

		QSGMaterial* sigval1 = (QSGMaterial*) other;

		int callback_return_value = vtbl->compare(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_compare(QSGMaterial* other) const {

		return QSGVertexColorMaterial::compare(other);

	}

	// Subclass to allow providing a Go implementation
	virtual QSGMaterialType* type() const override {
		if (vtbl->type == 0) {
			return QSGVertexColorMaterial::type();
		}


		QSGMaterialType* callback_return_value = vtbl->type(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSGMaterialType* virtualbase_type() const {

		return QSGVertexColorMaterial::type();

	}

	// Subclass to allow providing a Go implementation
	virtual QSGMaterialShader* createShader() const override {
		if (vtbl->createShader == 0) {
			return QSGVertexColorMaterial::createShader();
		}


		QSGMaterialShader* callback_return_value = vtbl->createShader(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSGMaterialShader* virtualbase_createShader() const {

		return QSGVertexColorMaterial::createShader();

	}

};

QSGVertexColorMaterial* QSGVertexColorMaterial_new(struct QSGVertexColorMaterial_VTable* vtbl) {
	return new MiqtVirtualQSGVertexColorMaterial(vtbl);
}

void QSGVertexColorMaterial_virtbase(QSGVertexColorMaterial* src, QSGMaterial** outptr_QSGMaterial) {
	*outptr_QSGMaterial = static_cast<QSGMaterial*>(src);
}

int QSGVertexColorMaterial_compare(const QSGVertexColorMaterial* self, QSGMaterial* other) {
	return self->compare(other);
}

int QSGVertexColorMaterial_virtualbase_compare(const void* self, QSGMaterial* other) {
	return ( (const MiqtVirtualQSGVertexColorMaterial*)(self) )->virtualbase_compare(other);
}

QSGMaterialType* QSGVertexColorMaterial_virtualbase_type(const void* self) {
	return ( (const MiqtVirtualQSGVertexColorMaterial*)(self) )->virtualbase_type();
}

QSGMaterialShader* QSGVertexColorMaterial_virtualbase_createShader(const void* self) {
	return ( (const MiqtVirtualQSGVertexColorMaterial*)(self) )->virtualbase_createShader();
}

void QSGVertexColorMaterial_delete(QSGVertexColorMaterial* self) {
	delete self;
}

