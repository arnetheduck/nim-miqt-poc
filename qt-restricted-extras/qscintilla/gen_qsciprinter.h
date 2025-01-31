#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCIPRINTER_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA_GEN_QSCIPRINTER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QPagedPaintDevice;
#if defined(WORKAROUND_INNER_CLASS_DEFINITION_QPagedPaintDevice__Margins)
typedef QPagedPaintDevice::Margins QPagedPaintDevice__Margins;
#else
class QPagedPaintDevice__Margins;
#endif
class QPaintDevice;
class QPaintEngine;
class QPainter;
class QPoint;
class QPrinter;
class QRect;
class QSizeF;
class QsciPrinter;
class QsciScintillaBase;
#else
typedef struct QPagedPaintDevice QPagedPaintDevice;
typedef struct QPagedPaintDevice__Margins QPagedPaintDevice__Margins;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QPrinter QPrinter;
typedef struct QRect QRect;
typedef struct QSizeF QSizeF;
typedef struct QsciPrinter QsciPrinter;
typedef struct QsciScintillaBase QsciScintillaBase;
#endif

struct QsciPrinter_VTable {
	void (*destructor)(struct QsciPrinter_VTable* vtbl, QsciPrinter* self);
	void (*formatPage)(struct QsciPrinter_VTable* vtbl, QsciPrinter* self, QPainter* painter, bool drawing, QRect* area, int pagenr);
	void (*setMagnification)(struct QsciPrinter_VTable* vtbl, QsciPrinter* self, int magnification);
	int (*printRange)(struct QsciPrinter_VTable* vtbl, QsciPrinter* self, QsciScintillaBase* qsb, QPainter* painter, int from, int to);
	int (*printRange2)(struct QsciPrinter_VTable* vtbl, QsciPrinter* self, QsciScintillaBase* qsb, int from, int to);
	void (*setWrapMode)(struct QsciPrinter_VTable* vtbl, QsciPrinter* self, int wmode);
	int (*devType)(struct QsciPrinter_VTable* vtbl, const QsciPrinter* self);
	void (*setPageSize)(struct QsciPrinter_VTable* vtbl, QsciPrinter* self, int pageSize);
	void (*setPageSizeMM)(struct QsciPrinter_VTable* vtbl, QsciPrinter* self, QSizeF* size);
	bool (*newPage)(struct QsciPrinter_VTable* vtbl, QsciPrinter* self);
	QPaintEngine* (*paintEngine)(struct QsciPrinter_VTable* vtbl, const QsciPrinter* self);
	void (*setMargins)(struct QsciPrinter_VTable* vtbl, QsciPrinter* self, QPagedPaintDevice__Margins* m);
	int (*metric)(struct QsciPrinter_VTable* vtbl, const QsciPrinter* self, int param1);
	void (*initPainter)(struct QsciPrinter_VTable* vtbl, const QsciPrinter* self, QPainter* painter);
	QPaintDevice* (*redirected)(struct QsciPrinter_VTable* vtbl, const QsciPrinter* self, QPoint* offset);
	QPainter* (*sharedPainter)(struct QsciPrinter_VTable* vtbl, const QsciPrinter* self);
};
QsciPrinter* QsciPrinter_new(struct QsciPrinter_VTable* vtbl);
QsciPrinter* QsciPrinter_new2(struct QsciPrinter_VTable* vtbl, int mode);
void QsciPrinter_virtbase(QsciPrinter* src, QPrinter** outptr_QPrinter);
void QsciPrinter_formatPage(QsciPrinter* self, QPainter* painter, bool drawing, QRect* area, int pagenr);
int QsciPrinter_magnification(const QsciPrinter* self);
void QsciPrinter_setMagnification(QsciPrinter* self, int magnification);
int QsciPrinter_printRange(QsciPrinter* self, QsciScintillaBase* qsb, QPainter* painter, int from, int to);
int QsciPrinter_printRange2(QsciPrinter* self, QsciScintillaBase* qsb, int from, int to);
int QsciPrinter_wrapMode(const QsciPrinter* self);
void QsciPrinter_setWrapMode(QsciPrinter* self, int wmode);
void QsciPrinter_virtualbase_formatPage(void* self, QPainter* painter, bool drawing, QRect* area, int pagenr);
void QsciPrinter_virtualbase_setMagnification(void* self, int magnification);
int QsciPrinter_virtualbase_printRange(void* self, QsciScintillaBase* qsb, QPainter* painter, int from, int to);
int QsciPrinter_virtualbase_printRange2(void* self, QsciScintillaBase* qsb, int from, int to);
void QsciPrinter_virtualbase_setWrapMode(void* self, int wmode);
int QsciPrinter_virtualbase_devType(const void* self);
void QsciPrinter_virtualbase_setPageSize(void* self, int pageSize);
void QsciPrinter_virtualbase_setPageSizeMM(void* self, QSizeF* size);
bool QsciPrinter_virtualbase_newPage(void* self);
QPaintEngine* QsciPrinter_virtualbase_paintEngine(const void* self);
void QsciPrinter_virtualbase_setMargins(void* self, QPagedPaintDevice__Margins* m);
int QsciPrinter_virtualbase_metric(const void* self, int param1);
void QsciPrinter_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QsciPrinter_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QsciPrinter_virtualbase_sharedPainter(const void* self);
void QsciPrinter_protectedbase_setEngines(void* self, QPrintEngine* printEngine, QPaintEngine* paintEngine);
QPageLayout* QsciPrinter_protectedbase_devicePageLayout(const void* self);
void QsciPrinter_delete(QsciPrinter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
