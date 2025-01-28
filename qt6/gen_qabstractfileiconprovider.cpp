#include <QAbstractFileIconProvider>
#include <QFileInfo>
#include <QIcon>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qabstractfileiconprovider.h>
#include "gen_qabstractfileiconprovider.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQAbstractFileIconProvider final : public QAbstractFileIconProvider {
	struct QAbstractFileIconProvider_VTable* vtbl;
public:

	MiqtVirtualQAbstractFileIconProvider(struct QAbstractFileIconProvider_VTable* vtbl): QAbstractFileIconProvider(), vtbl(vtbl) {};

	virtual ~MiqtVirtualQAbstractFileIconProvider() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual QIcon icon(QAbstractFileIconProvider::IconType param1) const override {
		if (vtbl->icon == 0) {
			return QAbstractFileIconProvider::icon(param1);
		}

		QAbstractFileIconProvider::IconType param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QIcon* callback_return_value = vtbl->icon(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QIcon* virtualbase_icon(int param1) const {

		return new QIcon(QAbstractFileIconProvider::icon(static_cast<QAbstractFileIconProvider::IconType>(param1)));

	}

	// Subclass to allow providing a Go implementation
	virtual QIcon icon(const QFileInfo& param1) const override {
		if (vtbl->iconWithQFileInfo == 0) {
			return QAbstractFileIconProvider::icon(param1);
		}

		const QFileInfo& param1_ret = param1;
		// Cast returned reference into pointer
		QFileInfo* sigval1 = const_cast<QFileInfo*>(&param1_ret);

		QIcon* callback_return_value = vtbl->iconWithQFileInfo(vtbl, this, sigval1);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QIcon* virtualbase_iconWithQFileInfo(QFileInfo* param1) const {

		return new QIcon(QAbstractFileIconProvider::icon(*param1));

	}

	// Subclass to allow providing a Go implementation
	virtual QString type(const QFileInfo& param1) const override {
		if (vtbl->type == 0) {
			return QAbstractFileIconProvider::type(param1);
		}

		const QFileInfo& param1_ret = param1;
		// Cast returned reference into pointer
		QFileInfo* sigval1 = const_cast<QFileInfo*>(&param1_ret);

		struct miqt_string callback_return_value = vtbl->type(vtbl, this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);

		return callback_return_value_QString;
	}

	// Wrapper to allow calling protected method
	struct miqt_string virtualbase_type(QFileInfo* param1) const {

		QString _ret = QAbstractFileIconProvider::type(*param1);
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray _b = _ret.toUtf8();
		struct miqt_string _ms;
		_ms.len = _b.length();
		_ms.data = static_cast<char*>(malloc(_ms.len));
		memcpy(_ms.data, _b.data(), _ms.len);
		return _ms;

	}

	// Subclass to allow providing a Go implementation
	virtual void setOptions(QAbstractFileIconProvider::Options options) override {
		if (vtbl->setOptions == 0) {
			QAbstractFileIconProvider::setOptions(options);
			return;
		}

		QAbstractFileIconProvider::Options options_ret = options;
		int sigval1 = static_cast<int>(options_ret);

		vtbl->setOptions(vtbl, this, sigval1);

	}

	// Wrapper to allow calling protected method
	void virtualbase_setOptions(int options) {

		QAbstractFileIconProvider::setOptions(static_cast<QAbstractFileIconProvider::Options>(options));

	}

	// Subclass to allow providing a Go implementation
	virtual QAbstractFileIconProvider::Options options() const override {
		if (vtbl->options == 0) {
			return QAbstractFileIconProvider::options();
		}


		int callback_return_value = vtbl->options(vtbl, this);

		return static_cast<QAbstractFileIconProvider::Options>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	int virtualbase_options() const {

		QAbstractFileIconProvider::Options _ret = QAbstractFileIconProvider::options();
		return static_cast<int>(_ret);

	}

};

QAbstractFileIconProvider* QAbstractFileIconProvider_new(struct QAbstractFileIconProvider_VTable* vtbl) {
	return new MiqtVirtualQAbstractFileIconProvider(vtbl);
}

QIcon* QAbstractFileIconProvider_icon(const QAbstractFileIconProvider* self, int param1) {
	return new QIcon(self->icon(static_cast<QAbstractFileIconProvider::IconType>(param1)));
}

QIcon* QAbstractFileIconProvider_iconWithQFileInfo(const QAbstractFileIconProvider* self, QFileInfo* param1) {
	return new QIcon(self->icon(*param1));
}

struct miqt_string QAbstractFileIconProvider_type(const QAbstractFileIconProvider* self, QFileInfo* param1) {
	QString _ret = self->type(*param1);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractFileIconProvider_setOptions(QAbstractFileIconProvider* self, int options) {
	self->setOptions(static_cast<QAbstractFileIconProvider::Options>(options));
}

int QAbstractFileIconProvider_options(const QAbstractFileIconProvider* self) {
	QAbstractFileIconProvider::Options _ret = self->options();
	return static_cast<int>(_ret);
}

QIcon* QAbstractFileIconProvider_virtualbase_icon(const void* self, int param1) {
	return ( (const MiqtVirtualQAbstractFileIconProvider*)(self) )->virtualbase_icon(param1);
}

QIcon* QAbstractFileIconProvider_virtualbase_iconWithQFileInfo(const void* self, QFileInfo* param1) {
	return ( (const MiqtVirtualQAbstractFileIconProvider*)(self) )->virtualbase_iconWithQFileInfo(param1);
}

struct miqt_string QAbstractFileIconProvider_virtualbase_type(const void* self, QFileInfo* param1) {
	return ( (const MiqtVirtualQAbstractFileIconProvider*)(self) )->virtualbase_type(param1);
}

void QAbstractFileIconProvider_virtualbase_setOptions(void* self, int options) {
	( (MiqtVirtualQAbstractFileIconProvider*)(self) )->virtualbase_setOptions(options);
}

int QAbstractFileIconProvider_virtualbase_options(const void* self) {
	return ( (const MiqtVirtualQAbstractFileIconProvider*)(self) )->virtualbase_options();
}

void QAbstractFileIconProvider_delete(QAbstractFileIconProvider* self) {
	delete self;
}

