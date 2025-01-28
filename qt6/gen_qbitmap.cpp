#include <QBitmap>
#include <QImage>
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPainter>
#include <QPixmap>
#include <QPoint>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QTransform>
#include <QVariant>
#include <qbitmap.h>
#include "gen_qbitmap.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQBitmap final : public QBitmap {
	struct QBitmap_VTable* vtbl;
public:

	MiqtVirtualQBitmap(struct QBitmap_VTable* vtbl): QBitmap(), vtbl(vtbl) {};
	MiqtVirtualQBitmap(struct QBitmap_VTable* vtbl, const QPixmap& param1): QBitmap(param1), vtbl(vtbl) {};
	MiqtVirtualQBitmap(struct QBitmap_VTable* vtbl, int w, int h): QBitmap(w, h), vtbl(vtbl) {};
	MiqtVirtualQBitmap(struct QBitmap_VTable* vtbl, const QSize& param1): QBitmap(param1), vtbl(vtbl) {};
	MiqtVirtualQBitmap(struct QBitmap_VTable* vtbl, const QString& fileName): QBitmap(fileName), vtbl(vtbl) {};
	MiqtVirtualQBitmap(struct QBitmap_VTable* vtbl, const QBitmap& param1): QBitmap(param1), vtbl(vtbl) {};
	MiqtVirtualQBitmap(struct QBitmap_VTable* vtbl, const QString& fileName, const char* format): QBitmap(fileName, format), vtbl(vtbl) {};

	virtual ~MiqtVirtualQBitmap() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QBitmap::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_devType() const {

		return QBitmap::devType();

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QBitmap::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintEngine* virtualbase_paintEngine() const {

		return QBitmap::paintEngine();

	}

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QBitmap::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_metric(int param1) const {

		return QBitmap::metric(static_cast<QPaintDevice::PaintDeviceMetric>(param1));

	}

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QBitmap::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_initPainter(QPainter* painter) const {

		QBitmap::initPainter(painter);

	}

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QBitmap::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPaintDevice* virtualbase_redirected(QPoint* offset) const {

		return QBitmap::redirected(offset);

	}

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QBitmap::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	// Wrapper to allow calling protected method
	QPainter* virtualbase_sharedPainter() const {

		return QBitmap::sharedPainter();

	}

};

QBitmap* QBitmap_new(struct QBitmap_VTable* vtbl) {
	return new MiqtVirtualQBitmap(vtbl);
}

QBitmap* QBitmap_new2(struct QBitmap_VTable* vtbl, QPixmap* param1) {
	return new MiqtVirtualQBitmap(vtbl, *param1);
}

QBitmap* QBitmap_new3(struct QBitmap_VTable* vtbl, int w, int h) {
	return new MiqtVirtualQBitmap(vtbl, static_cast<int>(w), static_cast<int>(h));
}

QBitmap* QBitmap_new4(struct QBitmap_VTable* vtbl, QSize* param1) {
	return new MiqtVirtualQBitmap(vtbl, *param1);
}

QBitmap* QBitmap_new5(struct QBitmap_VTable* vtbl, struct miqt_string fileName) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new MiqtVirtualQBitmap(vtbl, fileName_QString);
}

QBitmap* QBitmap_new6(struct QBitmap_VTable* vtbl, QBitmap* param1) {
	return new MiqtVirtualQBitmap(vtbl, *param1);
}

QBitmap* QBitmap_new7(struct QBitmap_VTable* vtbl, struct miqt_string fileName, const char* format) {
	QString fileName_QString = QString::fromUtf8(fileName.data, fileName.len);
	return new MiqtVirtualQBitmap(vtbl, fileName_QString, format);
}

void QBitmap_virtbase(QBitmap* src, QPixmap** outptr_QPixmap) {
	*outptr_QPixmap = static_cast<QPixmap*>(src);
}

void QBitmap_operatorAssign(QBitmap* self, QPixmap* param1) {
	self->operator=(*param1);
}

void QBitmap_swap(QBitmap* self, QBitmap* other) {
	self->swap(*other);
}

QVariant* QBitmap_ToQVariant(const QBitmap* self) {
	return new QVariant(self->operator QVariant());
}

void QBitmap_clear(QBitmap* self) {
	self->clear();
}

QBitmap* QBitmap_fromImage(QImage* image) {
	return new QBitmap(QBitmap::fromImage(*image));
}

QBitmap* QBitmap_fromData(QSize* size, const unsigned char* bits) {
	return new QBitmap(QBitmap::fromData(*size, static_cast<const uchar*>(bits)));
}

QBitmap* QBitmap_fromPixmap(QPixmap* pixmap) {
	return new QBitmap(QBitmap::fromPixmap(*pixmap));
}

QBitmap* QBitmap_transformed(const QBitmap* self, QTransform* matrix) {
	return new QBitmap(self->transformed(*matrix));
}

void QBitmap_operatorAssignWithQBitmap(QBitmap* self, QBitmap* param1) {
	self->operator=(*param1);
}

QBitmap* QBitmap_fromImage2(QImage* image, int flags) {
	return new QBitmap(QBitmap::fromImage(*image, static_cast<Qt::ImageConversionFlags>(flags)));
}

QBitmap* QBitmap_fromData3(QSize* size, const unsigned char* bits, int monoFormat) {
	return new QBitmap(QBitmap::fromData(*size, static_cast<const uchar*>(bits), static_cast<QImage::Format>(monoFormat)));
}

int QBitmap_virtualbase_devType(const void* self) {
	return ( (const MiqtVirtualQBitmap*)(self) )->virtualbase_devType();
}

QPaintEngine* QBitmap_virtualbase_paintEngine(const void* self) {
	return ( (const MiqtVirtualQBitmap*)(self) )->virtualbase_paintEngine();
}

int QBitmap_virtualbase_metric(const void* self, int param1) {
	return ( (const MiqtVirtualQBitmap*)(self) )->virtualbase_metric(param1);
}

void QBitmap_virtualbase_initPainter(const void* self, QPainter* painter) {
	( (const MiqtVirtualQBitmap*)(self) )->virtualbase_initPainter(painter);
}

QPaintDevice* QBitmap_virtualbase_redirected(const void* self, QPoint* offset) {
	return ( (const MiqtVirtualQBitmap*)(self) )->virtualbase_redirected(offset);
}

QPainter* QBitmap_virtualbase_sharedPainter(const void* self) {
	return ( (const MiqtVirtualQBitmap*)(self) )->virtualbase_sharedPainter();
}

void QBitmap_delete(QBitmap* self) {
	delete self;
}

