#include <QDataStream>
#include <QIconEngine>
#define WORKAROUND_INNER_CLASS_DEFINITION_QIconEngine__AvailableSizesArgument
#define WORKAROUND_INNER_CLASS_DEFINITION_QIconEngine__ScaledPixmapArgument
#include <QList>
#include <QPainter>
#include <QPixmap>
#include <QRect>
#include <QSize>
#include <QString>
#include <QByteArray>
#include <cstring>
#include "qiconengine.h"
#include "gen_qiconengine.h"
#include "_cgo_export.h"

void QIconEngine_Paint(QIconEngine* self, QPainter* painter, QRect* rect, uintptr_t mode, uintptr_t state) {
	self->paint(painter, *rect, static_cast<QIcon::Mode>(mode), static_cast<QIcon::State>(state));
}

QSize* QIconEngine_ActualSize(QIconEngine* self, QSize* size, uintptr_t mode, uintptr_t state) {
	QSize _ret = self->actualSize(*size, static_cast<QIcon::Mode>(mode), static_cast<QIcon::State>(state));
	// Copy-construct value returned type into heap-allocated copy
	return static_cast<QSize*>(new QSize(_ret));
}

QPixmap* QIconEngine_Pixmap(QIconEngine* self, QSize* size, uintptr_t mode, uintptr_t state) {
	QPixmap _ret = self->pixmap(*size, static_cast<QIcon::Mode>(mode), static_cast<QIcon::State>(state));
	// Copy-construct value returned type into heap-allocated copy
	return static_cast<QPixmap*>(new QPixmap(_ret));
}

void QIconEngine_AddPixmap(QIconEngine* self, QPixmap* pixmap, uintptr_t mode, uintptr_t state) {
	self->addPixmap(*pixmap, static_cast<QIcon::Mode>(mode), static_cast<QIcon::State>(state));
}

void QIconEngine_AddFile(QIconEngine* self, struct miqt_string* fileName, QSize* size, uintptr_t mode, uintptr_t state) {
	QString fileName_QString = QString::fromUtf8(&fileName->data, fileName->len);
	self->addFile(fileName_QString, *size, static_cast<QIcon::Mode>(mode), static_cast<QIcon::State>(state));
}

struct miqt_string* QIconEngine_Key(const QIconEngine* self) {
	QString _ret = self->key();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	return miqt_strdup(_b.data(), _b.length());
}

QIconEngine* QIconEngine_Clone(const QIconEngine* self) {
	return self->clone();
}

bool QIconEngine_Read(QIconEngine* self, QDataStream* in) {
	return self->read(*in);
}

bool QIconEngine_Write(const QIconEngine* self, QDataStream* out) {
	return self->write(*out);
}

struct miqt_array* QIconEngine_AvailableSizes(const QIconEngine* self) {
	QList<QSize> _ret = self->availableSizes();
	// Convert QList<> from C++ memory to manually-managed C memory of copy-constructed pointers
	QSize** _arr = static_cast<QSize**>(malloc(sizeof(QSize**) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QSize(_ret[i]);
	}
	struct miqt_array* _out = static_cast<struct miqt_array*>(malloc(sizeof(struct miqt_array)));
	_out->len = _ret.length();
	_out->data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_string* QIconEngine_IconName(const QIconEngine* self) {
	QString _ret = self->iconName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	return miqt_strdup(_b.data(), _b.length());
}

bool QIconEngine_IsNull(const QIconEngine* self) {
	return self->isNull();
}

QPixmap* QIconEngine_ScaledPixmap(QIconEngine* self, QSize* size, uintptr_t mode, uintptr_t state, double scale) {
	QPixmap _ret = self->scaledPixmap(*size, static_cast<QIcon::Mode>(mode), static_cast<QIcon::State>(state), static_cast<qreal>(scale));
	// Copy-construct value returned type into heap-allocated copy
	return static_cast<QPixmap*>(new QPixmap(_ret));
}

struct miqt_array* QIconEngine_AvailableSizes1(const QIconEngine* self, uintptr_t mode) {
	QList<QSize> _ret = self->availableSizes(static_cast<QIcon::Mode>(mode));
	// Convert QList<> from C++ memory to manually-managed C memory of copy-constructed pointers
	QSize** _arr = static_cast<QSize**>(malloc(sizeof(QSize**) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QSize(_ret[i]);
	}
	struct miqt_array* _out = static_cast<struct miqt_array*>(malloc(sizeof(struct miqt_array)));
	_out->len = _ret.length();
	_out->data = static_cast<void*>(_arr);
	return _out;
}

struct miqt_array* QIconEngine_AvailableSizes2(const QIconEngine* self, uintptr_t mode, uintptr_t state) {
	QList<QSize> _ret = self->availableSizes(static_cast<QIcon::Mode>(mode), static_cast<QIcon::State>(state));
	// Convert QList<> from C++ memory to manually-managed C memory of copy-constructed pointers
	QSize** _arr = static_cast<QSize**>(malloc(sizeof(QSize**) * _ret.length()));
	for (size_t i = 0, e = _ret.length(); i < e; ++i) {
		_arr[i] = new QSize(_ret[i]);
	}
	struct miqt_array* _out = static_cast<struct miqt_array*>(malloc(sizeof(struct miqt_array)));
	_out->len = _ret.length();
	_out->data = static_cast<void*>(_arr);
	return _out;
}

void QIconEngine_Delete(QIconEngine* self) {
	delete self;
}

QIconEngine__AvailableSizesArgument* QIconEngine__AvailableSizesArgument_new(QIconEngine__AvailableSizesArgument* param1) {
	return new QIconEngine::AvailableSizesArgument(*param1);
}

void QIconEngine__AvailableSizesArgument_Delete(QIconEngine__AvailableSizesArgument* self) {
	delete self;
}

QIconEngine__ScaledPixmapArgument* QIconEngine__ScaledPixmapArgument_new(QIconEngine__ScaledPixmapArgument* param1) {
	return new QIconEngine::ScaledPixmapArgument(*param1);
}

void QIconEngine__ScaledPixmapArgument_Delete(QIconEngine__ScaledPixmapArgument* self) {
	delete self;
}

