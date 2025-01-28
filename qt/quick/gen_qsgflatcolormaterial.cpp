#include <QColor>
#include <QSGFlatColorMaterial>
#include <QSGMaterial>
#include <QSGMaterialShader>
#include <QSGMaterialType>
#include <qsgflatcolormaterial.h>
#include "gen_qsgflatcolormaterial.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQSGFlatColorMaterial final : public QSGFlatColorMaterial {
	struct QSGFlatColorMaterial_VTable* vtbl;
public:

	MiqtVirtualQSGFlatColorMaterial(struct QSGFlatColorMaterial_VTable* vtbl): QSGFlatColorMaterial(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQSGFlatColorMaterial() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QSGMaterialType* type() const override {
		if (vtbl->type == 0) {
			return QSGFlatColorMaterial::type();
		}


		QSGMaterialType* callback_return_value = vtbl->type(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSGMaterialType* virtualbase_type() const {

		return QSGFlatColorMaterial::type();

	}

	// Subclass to allow providing a Go implementation
	virtual QSGMaterialShader* createShader() const override {
		if (vtbl->createShader == 0) {
			return QSGFlatColorMaterial::createShader();
		}


		QSGMaterialShader* callback_return_value = vtbl->createShader(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QSGMaterialShader* virtualbase_createShader() const {

		return QSGFlatColorMaterial::createShader();

	}

	// Subclass to allow providing a Go implementation
	virtual int compare(const QSGMaterial* other) const override {
		if (vtbl->compare == 0) {
			return QSGFlatColorMaterial::compare(other);
		}

		QSGMaterial* sigval1 = (QSGMaterial*) other;

		int callback_return_value = vtbl->compare(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_compare(QSGMaterial* other) const {

		return QSGFlatColorMaterial::compare(other);

	}

};

QSGFlatColorMaterial* QSGFlatColorMaterial_new(struct QSGFlatColorMaterial_VTable* vtbl) {
	return new MiqtVirtualQSGFlatColorMaterial(vtbl);
}

void QSGFlatColorMaterial_virtbase(QSGFlatColorMaterial* src, QSGMaterial** outptr_QSGMaterial) {
	*outptr_QSGMaterial = static_cast<QSGMaterial*>(src);
}

QSGMaterialType* QSGFlatColorMaterial_type(const QSGFlatColorMaterial* self) {
	return self->type();
}

QSGMaterialShader* QSGFlatColorMaterial_createShader(const QSGFlatColorMaterial* self) {
	return self->createShader();
}

void QSGFlatColorMaterial_setColor(QSGFlatColorMaterial* self, QColor* color) {
	self->setColor(*color);
}

QColor* QSGFlatColorMaterial_color(const QSGFlatColorMaterial* self) {
	const QColor& _ret = self->color();
	// Cast returned reference into pointer
	return const_cast<QColor*>(&_ret);
}

int QSGFlatColorMaterial_compare(const QSGFlatColorMaterial* self, QSGMaterial* other) {
	return self->compare(other);
}

QSGMaterialType* QSGFlatColorMaterial_virtualbase_type(const void* self) {
	return ( (const MiqtVirtualQSGFlatColorMaterial*)(self) )->virtualbase_type();
}

QSGMaterialShader* QSGFlatColorMaterial_virtualbase_createShader(const void* self) {
	return ( (const MiqtVirtualQSGFlatColorMaterial*)(self) )->virtualbase_createShader();
}

int QSGFlatColorMaterial_virtualbase_compare(const void* self, QSGMaterial* other) {
	return ( (const MiqtVirtualQSGFlatColorMaterial*)(self) )->virtualbase_compare(other);
}

void QSGFlatColorMaterial_delete(QSGFlatColorMaterial* self) {
	delete self;
}

