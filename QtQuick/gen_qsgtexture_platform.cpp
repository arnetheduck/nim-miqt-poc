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

#ifdef __cplusplus
} /* extern C */
#endif

class MiqtVirtualQNativeInterfaceQSGOpenGLTexture final : public QNativeInterface::QSGOpenGLTexture {
	struct QNativeInterface::QSGOpenGLTexture_VTable* vtbl;
public:

	MiqtVirtualQNativeInterfaceQSGOpenGLTexture(struct QNativeInterface::QSGOpenGLTexture_VTable* vtbl): QNativeInterface::QSGOpenGLTexture(), vtbl(vtbl) {};

private:
	virtual ~MiqtVirtualQNativeInterfaceQSGOpenGLTexture();

public:

	// Subclass to allow providing a Go implementation
	virtual GLuint nativeTexture() const override {
		if (vtbl->nativeTexture == 0) {
			return GLuint(); // Pure virtual, there is no base we can call
		}


		GLuint callback_return_value = vtbl->nativeTexture(vtbl, this);

		return callback_return_value;
	}

};

QNativeInterface__QSGOpenGLTexture* QNativeInterface__QSGOpenGLTexture_new(struct QNativeInterface::QSGOpenGLTexture_VTable* vtbl) {
	return new MiqtVirtualQNativeInterfaceQSGOpenGLTexture(vtbl);
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

class MiqtVirtualQNativeInterfaceQSGVulkanTexture final : public QNativeInterface::QSGVulkanTexture {
	struct QNativeInterface::QSGVulkanTexture_VTable* vtbl;
public:

	MiqtVirtualQNativeInterfaceQSGVulkanTexture(struct QNativeInterface::QSGVulkanTexture_VTable* vtbl): QNativeInterface::QSGVulkanTexture(), vtbl(vtbl) {};

private:
	virtual ~MiqtVirtualQNativeInterfaceQSGVulkanTexture();

public:

	// Subclass to allow providing a Go implementation
	virtual VkImage nativeImage() const override {
		if (vtbl->nativeImage == 0) {
			return VkImage(); // Pure virtual, there is no base we can call
		}


		VkImage callback_return_value = vtbl->nativeImage(vtbl, this);

		return callback_return_value;
	}

	// Subclass to allow providing a Go implementation
	virtual VkImageLayout nativeImageLayout() const override {
		if (vtbl->nativeImageLayout == 0) {
			return VkImageLayout(); // Pure virtual, there is no base we can call
		}


		VkImageLayout callback_return_value = vtbl->nativeImageLayout(vtbl, this);

		return callback_return_value;
	}

};

QNativeInterface__QSGVulkanTexture* QNativeInterface__QSGVulkanTexture_new(struct QNativeInterface::QSGVulkanTexture_VTable* vtbl) {
	return new MiqtVirtualQNativeInterfaceQSGVulkanTexture(vtbl);
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

