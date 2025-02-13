#define WORKAROUND_INNER_CLASS_DEFINITION_QNativeInterface__QSGOpenGLTexture
#define WORKAROUND_INNER_CLASS_DEFINITION_QNativeInterface__QSGVulkanTexture
#include <QQuickWindow>
#include <QSGTexture>
#include <QSize>
#include <qsgtexture_platform.h>
#include "gen_qsgtexture_platform.h"

#ifdef __cplusplus
extern "C" {
#endif

GLuint miqt_exec_callback_QNativeInterface__QSGOpenGLTexture_nativeTexture(const QNativeInterface__QSGOpenGLTexture*, intptr_t);
VkImage miqt_exec_callback_QNativeInterface__QSGVulkanTexture_nativeImage(const QNativeInterface__QSGVulkanTexture*, intptr_t);
VkImageLayout miqt_exec_callback_QNativeInterface__QSGVulkanTexture_nativeImageLayout(const QNativeInterface__QSGVulkanTexture*, intptr_t);
#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQNativeInterfaceQSGOpenGLTexture final : public QNativeInterface::QSGOpenGLTexture {
public:

	MiqtVirtualQNativeInterfaceQSGOpenGLTexture(): QNativeInterface::QSGOpenGLTexture() {};

private:
	virtual ~MiqtVirtualQNativeInterfaceQSGOpenGLTexture();

public:

	// cgo.Handle value for overwritten implementation
	intptr_t handle__nativeTexture = 0;

	// Subclass to allow providing a Go implementation
	virtual GLuint nativeTexture() const override {
		if (handle__nativeTexture == 0) {
			return GLuint(); // Pure virtual, there is no base we can call
		}
		

		GLuint callback_return_value = miqt_exec_callback_QNativeInterface__QSGOpenGLTexture_nativeTexture(this, handle__nativeTexture);

		return callback_return_value;
	}

};

QNativeInterface__QSGOpenGLTexture* QNativeInterface__QSGOpenGLTexture_new() {
	return new MiqtVirtualQNativeInterfaceQSGOpenGLTexture();
}

GLuint QNativeInterface__QSGOpenGLTexture_nativeTexture(const QNativeInterface__QSGOpenGLTexture* self) {
	return self->nativeTexture();
}

QSGTexture* QNativeInterface__QSGOpenGLTexture_fromNative(GLuint textureId, QQuickWindow* window, QSize* size) {
	return QNativeInterface::QSGOpenGLTexture::fromNative(textureId, window, *size);
}

QSGTexture* QNativeInterface__QSGOpenGLTexture_fromNativeExternalOES(GLuint textureId, QQuickWindow* window, QSize* size) {
	return QNativeInterface::QSGOpenGLTexture::fromNativeExternalOES(textureId, window, *size);
}

QSGTexture* QNativeInterface__QSGOpenGLTexture_fromNative4(GLuint textureId, QQuickWindow* window, QSize* size, int options) {
	return QNativeInterface::QSGOpenGLTexture::fromNative(textureId, window, *size, static_cast<QQuickWindow::CreateTextureOptions>(options));
}

QSGTexture* QNativeInterface__QSGOpenGLTexture_fromNativeExternalOES4(GLuint textureId, QQuickWindow* window, QSize* size, int options) {
	return QNativeInterface::QSGOpenGLTexture::fromNativeExternalOES(textureId, window, *size, static_cast<QQuickWindow::CreateTextureOptions>(options));
}

bool QNativeInterface__QSGOpenGLTexture_override_virtual_nativeTexture(void* self, intptr_t slot) {
	MiqtVirtualQNativeInterfaceQSGOpenGLTexture* self_cast = dynamic_cast<MiqtVirtualQNativeInterfaceQSGOpenGLTexture*>( (QNativeInterface__QSGOpenGLTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__nativeTexture = slot;
	return true;
}

class MiqtVirtualQNativeInterfaceQSGVulkanTexture final : public QNativeInterface::QSGVulkanTexture {
public:

	MiqtVirtualQNativeInterfaceQSGVulkanTexture(): QNativeInterface::QSGVulkanTexture() {};

private:
	virtual ~MiqtVirtualQNativeInterfaceQSGVulkanTexture();

public:

	// cgo.Handle value for overwritten implementation
	intptr_t handle__nativeImage = 0;

	// Subclass to allow providing a Go implementation
	virtual VkImage nativeImage() const override {
		if (handle__nativeImage == 0) {
			return VkImage(); // Pure virtual, there is no base we can call
		}
		

		VkImage callback_return_value = miqt_exec_callback_QNativeInterface__QSGVulkanTexture_nativeImage(this, handle__nativeImage);

		return callback_return_value;
	}

	// cgo.Handle value for overwritten implementation
	intptr_t handle__nativeImageLayout = 0;

	// Subclass to allow providing a Go implementation
	virtual VkImageLayout nativeImageLayout() const override {
		if (handle__nativeImageLayout == 0) {
			return VkImageLayout(); // Pure virtual, there is no base we can call
		}
		

		VkImageLayout callback_return_value = miqt_exec_callback_QNativeInterface__QSGVulkanTexture_nativeImageLayout(this, handle__nativeImageLayout);

		return callback_return_value;
	}

};

QNativeInterface__QSGVulkanTexture* QNativeInterface__QSGVulkanTexture_new() {
	return new MiqtVirtualQNativeInterfaceQSGVulkanTexture();
}

VkImage QNativeInterface__QSGVulkanTexture_nativeImage(const QNativeInterface__QSGVulkanTexture* self) {
	return self->nativeImage();
}

VkImageLayout QNativeInterface__QSGVulkanTexture_nativeImageLayout(const QNativeInterface__QSGVulkanTexture* self) {
	return self->nativeImageLayout();
}

QSGTexture* QNativeInterface__QSGVulkanTexture_fromNative(VkImage image, VkImageLayout layout, QQuickWindow* window, QSize* size) {
	return QNativeInterface::QSGVulkanTexture::fromNative(image, layout, window, *size);
}

QSGTexture* QNativeInterface__QSGVulkanTexture_fromNative5(VkImage image, VkImageLayout layout, QQuickWindow* window, QSize* size, int options) {
	return QNativeInterface::QSGVulkanTexture::fromNative(image, layout, window, *size, static_cast<QQuickWindow::CreateTextureOptions>(options));
}

bool QNativeInterface__QSGVulkanTexture_override_virtual_nativeImage(void* self, intptr_t slot) {
	MiqtVirtualQNativeInterfaceQSGVulkanTexture* self_cast = dynamic_cast<MiqtVirtualQNativeInterfaceQSGVulkanTexture*>( (QNativeInterface__QSGVulkanTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__nativeImage = slot;
	return true;
}

bool QNativeInterface__QSGVulkanTexture_override_virtual_nativeImageLayout(void* self, intptr_t slot) {
	MiqtVirtualQNativeInterfaceQSGVulkanTexture* self_cast = dynamic_cast<MiqtVirtualQNativeInterfaceQSGVulkanTexture*>( (QNativeInterface__QSGVulkanTexture*)(self) );
	if (self_cast == nullptr) {
		return false;
	}
	
	self_cast->handle__nativeImageLayout = slot;
	return true;
}

