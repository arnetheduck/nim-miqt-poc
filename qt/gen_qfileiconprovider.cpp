#include <QFileIconProvider>
#include <QFileInfo>
#include <QIcon>
#include <QString>
#include <QByteArray>
#include <cstring>
#include "qfileiconprovider.h"
#include "gen_qfileiconprovider.h"
#include "_cgo_export.h"

QFileIconProvider* QFileIconProvider_new() {
	return new QFileIconProvider();
}

QIcon* QFileIconProvider_Icon(const QFileIconProvider* self, uintptr_t typeVal) {
	QIcon _ret = self->icon(static_cast<QFileIconProvider::IconType>(typeVal));
	// Copy-construct value returned type into heap-allocated copy
	return static_cast<QIcon*>(new QIcon(_ret));
}

QIcon* QFileIconProvider_IconWithInfo(const QFileIconProvider* self, QFileInfo* info) {
	QIcon _ret = self->icon(*info);
	// Copy-construct value returned type into heap-allocated copy
	return static_cast<QIcon*>(new QIcon(_ret));
}

struct miqt_string* QFileIconProvider_Type(const QFileIconProvider* self, QFileInfo* info) {
	QString _ret = self->type(*info);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	return miqt_strdup(_b.data(), _b.length());
}

void QFileIconProvider_SetOptions(QFileIconProvider* self, int options) {
	self->setOptions(static_cast<QFileIconProvider::Options>(options));
}

int QFileIconProvider_Options(const QFileIconProvider* self) {
	QFileIconProvider::Options _ret = self->options();
	return static_cast<int>(_ret);
}

void QFileIconProvider_Delete(QFileIconProvider* self) {
	delete self;
}

