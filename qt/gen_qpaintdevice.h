#pragma once
#ifndef MIQT_QT_GEN_QPAINTDEVICE_H
#define MIQT_QT_GEN_QPAINTDEVICE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QPaintDevice;
class QPaintEngine;
class QPainter;
class QPoint;
#else
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
#endif

int QPaintDevice_devType(const QPaintDevice* self);
bool QPaintDevice_paintingActive(const QPaintDevice* self);
QPaintEngine* QPaintDevice_paintEngine(const QPaintDevice* self);
int QPaintDevice_width(const QPaintDevice* self);
int QPaintDevice_height(const QPaintDevice* self);
int QPaintDevice_widthMM(const QPaintDevice* self);
int QPaintDevice_heightMM(const QPaintDevice* self);
int QPaintDevice_logicalDpiX(const QPaintDevice* self);
int QPaintDevice_logicalDpiY(const QPaintDevice* self);
int QPaintDevice_physicalDpiX(const QPaintDevice* self);
int QPaintDevice_physicalDpiY(const QPaintDevice* self);
int QPaintDevice_devicePixelRatio(const QPaintDevice* self);
double QPaintDevice_devicePixelRatioF(const QPaintDevice* self);
int QPaintDevice_colorCount(const QPaintDevice* self);
int QPaintDevice_depth(const QPaintDevice* self);
double QPaintDevice_devicePixelRatioFScale();
void QPaintDevice_delete(QPaintDevice* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
