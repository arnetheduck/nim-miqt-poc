#pragma once
#ifndef MIQT_QTQUICK_GEN_QSGTEXTURE_PLATFORM_H
#define MIQT_QTQUICK_GEN_QSGTEXTURE_PLATFORM_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QNativeInterface__QSGOpenGLTexture)
typedef QNativeInterface::QSGOpenGLTexture QNativeInterface__QSGOpenGLTexture;
#else
class QNativeInterface__QSGOpenGLTexture;
#endif
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QNativeInterface__QSGVulkanTexture)
typedef QNativeInterface::QSGVulkanTexture QNativeInterface__QSGVulkanTexture;
#else
class QNativeInterface__QSGVulkanTexture;
#endif
class QQuickWindow;
class QSGTexture;
class QSize;
#else
typedef struct QNativeInterface__QSGOpenGLTexture QNativeInterface__QSGOpenGLTexture;
typedef struct QNativeInterface__QSGVulkanTexture QNativeInterface__QSGVulkanTexture;
typedef struct QQuickWindow QQuickWindow;
typedef struct QSGTexture QSGTexture;
typedef struct QSize QSize;
#endif

struct QNativeInterface__QSGOpenGLTexture_VTable {
	void (*destructor)(struct QNativeInterface__QSGOpenGLTexture_VTable* vtbl, QNativeInterface__QSGOpenGLTexture* self);
	GLuint (*nativeTexture)(struct QNativeInterface__QSGOpenGLTexture_VTable* vtbl, const QNativeInterface__QSGOpenGLTexture* self);
};
QNativeInterface__QSGOpenGLTexture* QNativeInterface__QSGOpenGLTexture_new(struct QNativeInterface::QSGOpenGLTexture_VTable* vtbl);
GLuint QNativeInterface__QSGOpenGLTexture_nativeTexture(const QNativeInterface__QSGOpenGLTexture* self);
QSGTexture* QNativeInterface__QSGOpenGLTexture_fromNative(GLuint textureId, QQuickWindow* window, QSize* size);
QSGTexture* QNativeInterface__QSGOpenGLTexture_fromNativeExternalOES(GLuint textureId, QQuickWindow* window, QSize* size);
QSGTexture* QNativeInterface__QSGOpenGLTexture_fromNative4(GLuint textureId, QQuickWindow* window, QSize* size, int options);
QSGTexture* QNativeInterface__QSGOpenGLTexture_fromNativeExternalOES4(GLuint textureId, QQuickWindow* window, QSize* size, int options);
GLuint QNativeInterface__QSGOpenGLTexture_virtualbase_nativeTexture(const void* self);

struct QNativeInterface__QSGVulkanTexture_VTable {
	void (*destructor)(struct QNativeInterface__QSGVulkanTexture_VTable* vtbl, QNativeInterface__QSGVulkanTexture* self);
	VkImage (*nativeImage)(struct QNativeInterface__QSGVulkanTexture_VTable* vtbl, const QNativeInterface__QSGVulkanTexture* self);
	VkImageLayout (*nativeImageLayout)(struct QNativeInterface__QSGVulkanTexture_VTable* vtbl, const QNativeInterface__QSGVulkanTexture* self);
};
QNativeInterface__QSGVulkanTexture* QNativeInterface__QSGVulkanTexture_new(struct QNativeInterface::QSGVulkanTexture_VTable* vtbl);
VkImage QNativeInterface__QSGVulkanTexture_nativeImage(const QNativeInterface__QSGVulkanTexture* self);
VkImageLayout QNativeInterface__QSGVulkanTexture_nativeImageLayout(const QNativeInterface__QSGVulkanTexture* self);
QSGTexture* QNativeInterface__QSGVulkanTexture_fromNative(VkImage image, VkImageLayout layout, QQuickWindow* window, QSize* size);
QSGTexture* QNativeInterface__QSGVulkanTexture_fromNative5(VkImage image, VkImageLayout layout, QQuickWindow* window, QSize* size, int options);
VkImage QNativeInterface__QSGVulkanTexture_virtualbase_nativeImage(const void* self);
VkImageLayout QNativeInterface__QSGVulkanTexture_virtualbase_nativeImageLayout(const void* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
