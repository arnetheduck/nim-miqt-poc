#pragma once
#ifndef MIQT_QTQUICK_GEN_QQUICKGRAPHICSCONFIGURATION_H
#define MIQT_QTQUICK_GEN_QQUICKGRAPHICSCONFIGURATION_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QQuickGraphicsConfiguration;
#else
typedef struct QQuickGraphicsConfiguration QQuickGraphicsConfiguration;
#endif

QQuickGraphicsConfiguration* QQuickGraphicsConfiguration_new();
QQuickGraphicsConfiguration* QQuickGraphicsConfiguration_new2(QQuickGraphicsConfiguration* other);
void QQuickGraphicsConfiguration_operatorAssign(QQuickGraphicsConfiguration* self, QQuickGraphicsConfiguration* other);
QByteArrayList QQuickGraphicsConfiguration_preferredInstanceExtensions();
void QQuickGraphicsConfiguration_setDeviceExtensions(QQuickGraphicsConfiguration* self, const QByteArrayList* extensions);
QByteArrayList QQuickGraphicsConfiguration_deviceExtensions(const QQuickGraphicsConfiguration* self);
void QQuickGraphicsConfiguration_setDepthBufferFor2D(QQuickGraphicsConfiguration* self, bool enable);
bool QQuickGraphicsConfiguration_isDepthBufferEnabledFor2D(const QQuickGraphicsConfiguration* self);
void QQuickGraphicsConfiguration_delete(QQuickGraphicsConfiguration* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
