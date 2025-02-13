#pragma once
#ifndef MIQT_QTQUICK_GEN_QSGTEXTURE_H
#define MIQT_QTQUICK_GEN_QSGTEXTURE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QRectF;
class QSGDynamicTexture;
class QSGTexture;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QSGTexture__NativeTexture)
typedef QSGTexture::NativeTexture QSGTexture__NativeTexture;
#else
class QSGTexture__NativeTexture;
#endif
class QSize;
class QTimerEvent;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRectF QRectF;
typedef struct QSGDynamicTexture QSGDynamicTexture;
typedef struct QSGTexture QSGTexture;
typedef struct QSGTexture__NativeTexture QSGTexture__NativeTexture;
typedef struct QSize QSize;
typedef struct QTimerEvent QTimerEvent;
#endif

struct QSGTexture_VTable {
	void (*destructor)(struct QSGTexture_VTable* vtbl, QSGTexture* self);
	QMetaObject* (*metaObject)(struct QSGTexture_VTable* vtbl, const QSGTexture* self);
	void* (*metacast)(struct QSGTexture_VTable* vtbl, QSGTexture* self, const char* param1);
	int (*metacall)(struct QSGTexture_VTable* vtbl, QSGTexture* self, int param1, int param2, void** param3);
	int (*textureId)(struct QSGTexture_VTable* vtbl, const QSGTexture* self);
	QSize* (*textureSize)(struct QSGTexture_VTable* vtbl, const QSGTexture* self);
	bool (*hasAlphaChannel)(struct QSGTexture_VTable* vtbl, const QSGTexture* self);
	bool (*hasMipmaps)(struct QSGTexture_VTable* vtbl, const QSGTexture* self);
	QRectF* (*normalizedTextureSubRect)(struct QSGTexture_VTable* vtbl, const QSGTexture* self);
	bool (*isAtlasTexture)(struct QSGTexture_VTable* vtbl, const QSGTexture* self);
	QSGTexture* (*removedFromAtlas)(struct QSGTexture_VTable* vtbl, const QSGTexture* self);
	void (*bind)(struct QSGTexture_VTable* vtbl, QSGTexture* self);
	bool (*event)(struct QSGTexture_VTable* vtbl, QSGTexture* self, QEvent* event);
	bool (*eventFilter)(struct QSGTexture_VTable* vtbl, QSGTexture* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QSGTexture_VTable* vtbl, QSGTexture* self, QTimerEvent* event);
	void (*childEvent)(struct QSGTexture_VTable* vtbl, QSGTexture* self, QChildEvent* event);
	void (*customEvent)(struct QSGTexture_VTable* vtbl, QSGTexture* self, QEvent* event);
	void (*connectNotify)(struct QSGTexture_VTable* vtbl, QSGTexture* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSGTexture_VTable* vtbl, QSGTexture* self, QMetaMethod* signal);
};
QSGTexture* QSGTexture_new(struct QSGTexture_VTable* vtbl);
void QSGTexture_virtbase(QSGTexture* src, QObject** outptr_QObject);
QMetaObject* QSGTexture_metaObject(const QSGTexture* self);
void* QSGTexture_metacast(QSGTexture* self, const char* param1);
int QSGTexture_metacall(QSGTexture* self, int param1, int param2, void** param3);
struct miqt_string QSGTexture_tr(const char* s);
struct miqt_string QSGTexture_trUtf8(const char* s);
int QSGTexture_textureId(const QSGTexture* self);
QSGTexture__NativeTexture* QSGTexture_nativeTexture(const QSGTexture* self);
QSize* QSGTexture_textureSize(const QSGTexture* self);
bool QSGTexture_hasAlphaChannel(const QSGTexture* self);
bool QSGTexture_hasMipmaps(const QSGTexture* self);
QRectF* QSGTexture_normalizedTextureSubRect(const QSGTexture* self);
bool QSGTexture_isAtlasTexture(const QSGTexture* self);
QSGTexture* QSGTexture_removedFromAtlas(const QSGTexture* self);
void QSGTexture_bind(QSGTexture* self);
void QSGTexture_updateBindOptions(QSGTexture* self);
void QSGTexture_setMipmapFiltering(QSGTexture* self, int filter);
int QSGTexture_mipmapFiltering(const QSGTexture* self);
void QSGTexture_setFiltering(QSGTexture* self, int filter);
int QSGTexture_filtering(const QSGTexture* self);
void QSGTexture_setAnisotropyLevel(QSGTexture* self, int level);
int QSGTexture_anisotropyLevel(const QSGTexture* self);
void QSGTexture_setHorizontalWrapMode(QSGTexture* self, int hwrap);
int QSGTexture_horizontalWrapMode(const QSGTexture* self);
void QSGTexture_setVerticalWrapMode(QSGTexture* self, int vwrap);
int QSGTexture_verticalWrapMode(const QSGTexture* self);
QRectF* QSGTexture_convertToNormalizedSourceRect(const QSGTexture* self, QRectF* rect);
int QSGTexture_comparisonKey(const QSGTexture* self);
struct miqt_string QSGTexture_tr2(const char* s, const char* c);
struct miqt_string QSGTexture_tr3(const char* s, const char* c, int n);
struct miqt_string QSGTexture_trUtf82(const char* s, const char* c);
struct miqt_string QSGTexture_trUtf83(const char* s, const char* c, int n);
void QSGTexture_updateBindOptions1(QSGTexture* self, bool force);
QMetaObject* QSGTexture_virtualbase_metaObject(const void* self);
void* QSGTexture_virtualbase_metacast(void* self, const char* param1);
int QSGTexture_virtualbase_metacall(void* self, int param1, int param2, void** param3);
int QSGTexture_virtualbase_textureId(const void* self);
QSize* QSGTexture_virtualbase_textureSize(const void* self);
bool QSGTexture_virtualbase_hasAlphaChannel(const void* self);
bool QSGTexture_virtualbase_hasMipmaps(const void* self);
QRectF* QSGTexture_virtualbase_normalizedTextureSubRect(const void* self);
bool QSGTexture_virtualbase_isAtlasTexture(const void* self);
QSGTexture* QSGTexture_virtualbase_removedFromAtlas(const void* self);
void QSGTexture_virtualbase_bind(void* self);
bool QSGTexture_virtualbase_event(void* self, QEvent* event);
bool QSGTexture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSGTexture_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSGTexture_virtualbase_childEvent(void* self, QChildEvent* event);
void QSGTexture_virtualbase_customEvent(void* self, QEvent* event);
void QSGTexture_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSGTexture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QSGTexture_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QSGTexture_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QSGTexture_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QSGTexture_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QSGTexture_staticMetaObject();
void QSGTexture_delete(QSGTexture* self);

struct QSGDynamicTexture_VTable {
	void (*destructor)(struct QSGDynamicTexture_VTable* vtbl, QSGDynamicTexture* self);
	QMetaObject* (*metaObject)(struct QSGDynamicTexture_VTable* vtbl, const QSGDynamicTexture* self);
	void* (*metacast)(struct QSGDynamicTexture_VTable* vtbl, QSGDynamicTexture* self, const char* param1);
	int (*metacall)(struct QSGDynamicTexture_VTable* vtbl, QSGDynamicTexture* self, int param1, int param2, void** param3);
	bool (*updateTexture)(struct QSGDynamicTexture_VTable* vtbl, QSGDynamicTexture* self);
	int (*textureId)(struct QSGDynamicTexture_VTable* vtbl, const QSGDynamicTexture* self);
	QSize* (*textureSize)(struct QSGDynamicTexture_VTable* vtbl, const QSGDynamicTexture* self);
	bool (*hasAlphaChannel)(struct QSGDynamicTexture_VTable* vtbl, const QSGDynamicTexture* self);
	bool (*hasMipmaps)(struct QSGDynamicTexture_VTable* vtbl, const QSGDynamicTexture* self);
	QRectF* (*normalizedTextureSubRect)(struct QSGDynamicTexture_VTable* vtbl, const QSGDynamicTexture* self);
	bool (*isAtlasTexture)(struct QSGDynamicTexture_VTable* vtbl, const QSGDynamicTexture* self);
	QSGTexture* (*removedFromAtlas)(struct QSGDynamicTexture_VTable* vtbl, const QSGDynamicTexture* self);
	void (*bind)(struct QSGDynamicTexture_VTable* vtbl, QSGDynamicTexture* self);
	bool (*event)(struct QSGDynamicTexture_VTable* vtbl, QSGDynamicTexture* self, QEvent* event);
	bool (*eventFilter)(struct QSGDynamicTexture_VTable* vtbl, QSGDynamicTexture* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QSGDynamicTexture_VTable* vtbl, QSGDynamicTexture* self, QTimerEvent* event);
	void (*childEvent)(struct QSGDynamicTexture_VTable* vtbl, QSGDynamicTexture* self, QChildEvent* event);
	void (*customEvent)(struct QSGDynamicTexture_VTable* vtbl, QSGDynamicTexture* self, QEvent* event);
	void (*connectNotify)(struct QSGDynamicTexture_VTable* vtbl, QSGDynamicTexture* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSGDynamicTexture_VTable* vtbl, QSGDynamicTexture* self, QMetaMethod* signal);
};
QSGDynamicTexture* QSGDynamicTexture_new(struct QSGDynamicTexture_VTable* vtbl);
void QSGDynamicTexture_virtbase(QSGDynamicTexture* src, QSGTexture** outptr_QSGTexture);
QMetaObject* QSGDynamicTexture_metaObject(const QSGDynamicTexture* self);
void* QSGDynamicTexture_metacast(QSGDynamicTexture* self, const char* param1);
int QSGDynamicTexture_metacall(QSGDynamicTexture* self, int param1, int param2, void** param3);
struct miqt_string QSGDynamicTexture_tr(const char* s);
struct miqt_string QSGDynamicTexture_trUtf8(const char* s);
bool QSGDynamicTexture_updateTexture(QSGDynamicTexture* self);
struct miqt_string QSGDynamicTexture_tr2(const char* s, const char* c);
struct miqt_string QSGDynamicTexture_tr3(const char* s, const char* c, int n);
struct miqt_string QSGDynamicTexture_trUtf82(const char* s, const char* c);
struct miqt_string QSGDynamicTexture_trUtf83(const char* s, const char* c, int n);
QMetaObject* QSGDynamicTexture_virtualbase_metaObject(const void* self);
void* QSGDynamicTexture_virtualbase_metacast(void* self, const char* param1);
int QSGDynamicTexture_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QSGDynamicTexture_virtualbase_updateTexture(void* self);
int QSGDynamicTexture_virtualbase_textureId(const void* self);
QSize* QSGDynamicTexture_virtualbase_textureSize(const void* self);
bool QSGDynamicTexture_virtualbase_hasAlphaChannel(const void* self);
bool QSGDynamicTexture_virtualbase_hasMipmaps(const void* self);
QRectF* QSGDynamicTexture_virtualbase_normalizedTextureSubRect(const void* self);
bool QSGDynamicTexture_virtualbase_isAtlasTexture(const void* self);
QSGTexture* QSGDynamicTexture_virtualbase_removedFromAtlas(const void* self);
void QSGDynamicTexture_virtualbase_bind(void* self);
bool QSGDynamicTexture_virtualbase_event(void* self, QEvent* event);
bool QSGDynamicTexture_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSGDynamicTexture_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSGDynamicTexture_virtualbase_childEvent(void* self, QChildEvent* event);
void QSGDynamicTexture_virtualbase_customEvent(void* self, QEvent* event);
void QSGDynamicTexture_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSGDynamicTexture_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QSGDynamicTexture_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QSGDynamicTexture_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QSGDynamicTexture_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QSGDynamicTexture_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QSGDynamicTexture_staticMetaObject();
void QSGDynamicTexture_delete(QSGDynamicTexture* self);

void QSGTexture__NativeTexture_delete(QSGTexture__NativeTexture* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
