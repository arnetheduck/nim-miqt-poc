#pragma once
#ifndef MIQT_QT_QUICK_GEN_QSGTEXTUREPROVIDER_H
#define MIQT_QT_QUICK_GEN_QSGTEXTUREPROVIDER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMetaObject;
class QObject;
class QSGTexture;
class QSGTextureProvider;
#else
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QSGTexture QSGTexture;
typedef struct QSGTextureProvider QSGTextureProvider;
#endif

void QSGTextureProvider_virtbase(QSGTextureProvider* src, QObject** outptr_QObject);
QMetaObject* QSGTextureProvider_metaObject(const QSGTextureProvider* self);
void* QSGTextureProvider_metacast(QSGTextureProvider* self, const char* param1);
int QSGTextureProvider_metacall(QSGTextureProvider* self, int param1, int param2, void** param3);
struct miqt_string QSGTextureProvider_tr(const char* s);
struct miqt_string QSGTextureProvider_trUtf8(const char* s);
QSGTexture* QSGTextureProvider_texture(const QSGTextureProvider* self);
void QSGTextureProvider_textureChanged(QSGTextureProvider* self);
void QSGTextureProvider_connect_textureChanged(QSGTextureProvider* self, intptr_t slot);
struct miqt_string QSGTextureProvider_tr2(const char* s, const char* c);
struct miqt_string QSGTextureProvider_tr3(const char* s, const char* c, int n);
struct miqt_string QSGTextureProvider_trUtf82(const char* s, const char* c);
struct miqt_string QSGTextureProvider_trUtf83(const char* s, const char* c, int n);
void QSGTextureProvider_delete(QSGTextureProvider* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
