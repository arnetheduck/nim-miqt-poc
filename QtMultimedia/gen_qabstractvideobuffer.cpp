#include <QAbstractPlanarVideoBuffer>
#include <QAbstractVideoBuffer>
#include <QVariant>
#include <qabstractvideobuffer.h>
#include "gen_qabstractvideobuffer.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQAbstractVideoBuffer final : public QAbstractVideoBuffer {
	struct QAbstractVideoBuffer_VTable* vtbl;
public:

	MiqtVirtualQAbstractVideoBuffer(struct QAbstractVideoBuffer_VTable* vtbl, QAbstractVideoBuffer::HandleType type): QAbstractVideoBuffer(type), vtbl(vtbl) {};

	virtual ~MiqtVirtualQAbstractVideoBuffer() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual void release() override {
		if (vtbl->release == 0) {
			QAbstractVideoBuffer::release();
			return;
		}


		vtbl->release(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_release() {

		QAbstractVideoBuffer::release();

	}

	// Subclass to allow providing a Go implementation
	virtual QAbstractVideoBuffer::MapMode mapMode() const override {
		if (vtbl->mapMode == 0) {
			return (QAbstractVideoBuffer::MapMode)(0); // Pure virtual, there is no base we can call
		}


		int callback_return_value = vtbl->mapMode(vtbl, this);

		return static_cast<QAbstractVideoBuffer::MapMode>(callback_return_value);
	}

	// Subclass to allow providing a Go implementation
	virtual uchar* map(QAbstractVideoBuffer::MapMode mode, int* numBytes, int* bytesPerLine) override {
		if (vtbl->map == 0) {
			return nullptr; // Pure virtual, there is no base we can call
		}

		QAbstractVideoBuffer::MapMode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);
		int* sigval2 = numBytes;
		int* sigval3 = bytesPerLine;

		unsigned char* callback_return_value = vtbl->map(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<uchar*>(callback_return_value);
	}

	// Subclass to allow providing a Go implementation
	virtual void unmap() override {
		if (vtbl->unmap == 0) {
			return; // Pure virtual, there is no base we can call
		}


		vtbl->unmap(vtbl, this);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant handle() const override {
		if (vtbl->handle == 0) {
			return QAbstractVideoBuffer::handle();
		}


		QVariant* callback_return_value = vtbl->handle(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_handle() const {

		return new QVariant(QAbstractVideoBuffer::handle());

	}

};

QAbstractVideoBuffer* QAbstractVideoBuffer_new(struct QAbstractVideoBuffer_VTable* vtbl, int type) {
	return new MiqtVirtualQAbstractVideoBuffer(vtbl, static_cast<QAbstractVideoBuffer::HandleType>(type));
}

void QAbstractVideoBuffer_release(QAbstractVideoBuffer* self) {
	self->release();
}

int QAbstractVideoBuffer_handleType(const QAbstractVideoBuffer* self) {
	QAbstractVideoBuffer::HandleType _ret = self->handleType();
	return static_cast<int>(_ret);
}

int QAbstractVideoBuffer_mapMode(const QAbstractVideoBuffer* self) {
	QAbstractVideoBuffer::MapMode _ret = self->mapMode();
	return static_cast<int>(_ret);
}

unsigned char* QAbstractVideoBuffer_map(QAbstractVideoBuffer* self, int mode, int* numBytes, int* bytesPerLine) {
	uchar* _ret = self->map(static_cast<QAbstractVideoBuffer::MapMode>(mode), static_cast<int*>(numBytes), static_cast<int*>(bytesPerLine));
	return static_cast<unsigned char*>(_ret);
}

void QAbstractVideoBuffer_unmap(QAbstractVideoBuffer* self) {
	self->unmap();
}

QVariant* QAbstractVideoBuffer_handle(const QAbstractVideoBuffer* self) {
	return new QVariant(self->handle());
}

void QAbstractVideoBuffer_virtualbase_release(void* self) {
	( (MiqtVirtualQAbstractVideoBuffer*)(self) )->virtualbase_release();
}

QVariant* QAbstractVideoBuffer_virtualbase_handle(const void* self) {
	return ( (const MiqtVirtualQAbstractVideoBuffer*)(self) )->virtualbase_handle();
}

void QAbstractVideoBuffer_delete(QAbstractVideoBuffer* self) {
	delete self;
}

class MiqtVirtualQAbstractPlanarVideoBuffer final : public QAbstractPlanarVideoBuffer {
	struct QAbstractPlanarVideoBuffer_VTable* vtbl;
public:

	MiqtVirtualQAbstractPlanarVideoBuffer(struct QAbstractPlanarVideoBuffer_VTable* vtbl, QAbstractVideoBuffer::HandleType type): QAbstractPlanarVideoBuffer(type), vtbl(vtbl) {};

	virtual ~MiqtVirtualQAbstractPlanarVideoBuffer() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual uchar* map(QAbstractVideoBuffer::MapMode mode, int* numBytes, int* bytesPerLine) override {
		if (vtbl->map == 0) {
			return QAbstractPlanarVideoBuffer::map(mode, numBytes, bytesPerLine);
		}

		QAbstractVideoBuffer::MapMode mode_ret = mode;
		int sigval1 = static_cast<int>(mode_ret);
		int* sigval2 = numBytes;
		int* sigval3 = bytesPerLine;

		unsigned char* callback_return_value = vtbl->map(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<uchar*>(callback_return_value);
	}

	// Wrapper to allow calling protected method
	unsigned char* virtualbase_map(int mode, int* numBytes, int* bytesPerLine) {

		uchar* _ret = QAbstractPlanarVideoBuffer::map(static_cast<QAbstractVideoBuffer::MapMode>(mode), static_cast<int*>(numBytes), static_cast<int*>(bytesPerLine));
		return static_cast<unsigned char*>(_ret);

	}

	// Subclass to allow providing a Go implementation
	virtual void release() override {
		if (vtbl->release == 0) {
			QAbstractPlanarVideoBuffer::release();
			return;
		}


		vtbl->release(vtbl, this);

	}

	// Wrapper to allow calling protected method
	void virtualbase_release() {

		QAbstractPlanarVideoBuffer::release();

	}

	// Subclass to allow providing a Go implementation
	virtual QAbstractVideoBuffer::MapMode mapMode() const override {
		if (vtbl->mapMode == 0) {
			return (QAbstractVideoBuffer::MapMode)(0); // Pure virtual, there is no base we can call
		}


		int callback_return_value = vtbl->mapMode(vtbl, this);

		return static_cast<QAbstractVideoBuffer::MapMode>(callback_return_value);
	}

	// Subclass to allow providing a Go implementation
	virtual void unmap() override {
		if (vtbl->unmap == 0) {
			return; // Pure virtual, there is no base we can call
		}


		vtbl->unmap(vtbl, this);

	}

	// Subclass to allow providing a Go implementation
	virtual QVariant handle() const override {
		if (vtbl->handle == 0) {
			return QAbstractPlanarVideoBuffer::handle();
		}


		QVariant* callback_return_value = vtbl->handle(vtbl, this);

		return *callback_return_value;
	}

	// Wrapper to allow calling protected method
	QVariant* virtualbase_handle() const {

		return new QVariant(QAbstractPlanarVideoBuffer::handle());

	}

};

QAbstractPlanarVideoBuffer* QAbstractPlanarVideoBuffer_new(struct QAbstractPlanarVideoBuffer_VTable* vtbl, int type) {
	return new MiqtVirtualQAbstractPlanarVideoBuffer(vtbl, static_cast<QAbstractVideoBuffer::HandleType>(type));
}

void QAbstractPlanarVideoBuffer_virtbase(QAbstractPlanarVideoBuffer* src, QAbstractVideoBuffer** outptr_QAbstractVideoBuffer) {
	*outptr_QAbstractVideoBuffer = static_cast<QAbstractVideoBuffer*>(src);
}

unsigned char* QAbstractPlanarVideoBuffer_map(QAbstractPlanarVideoBuffer* self, int mode, int* numBytes, int* bytesPerLine) {
	uchar* _ret = self->map(static_cast<QAbstractVideoBuffer::MapMode>(mode), static_cast<int*>(numBytes), static_cast<int*>(bytesPerLine));
	return static_cast<unsigned char*>(_ret);
}

unsigned char* QAbstractPlanarVideoBuffer_virtualbase_map(void* self, int mode, int* numBytes, int* bytesPerLine) {
	return ( (MiqtVirtualQAbstractPlanarVideoBuffer*)(self) )->virtualbase_map(mode, numBytes, bytesPerLine);
}

void QAbstractPlanarVideoBuffer_virtualbase_release(void* self) {
	( (MiqtVirtualQAbstractPlanarVideoBuffer*)(self) )->virtualbase_release();
}

QVariant* QAbstractPlanarVideoBuffer_virtualbase_handle(const void* self) {
	return ( (const MiqtVirtualQAbstractPlanarVideoBuffer*)(self) )->virtualbase_handle();
}

void QAbstractPlanarVideoBuffer_delete(QAbstractPlanarVideoBuffer* self) {
	delete self;
}

