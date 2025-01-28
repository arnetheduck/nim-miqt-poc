#pragma once
#ifndef MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCIPRINTER_H
#define MIQT_QT_RESTRICTED_EXTRAS_QSCINTILLA6_GEN_QSCIPRINTER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QMarginsF;
class QPageLayout;
class QPageRanges;
class QPageSize;
class QPagedPaintDevice;
class QPaintDevice;
class QPaintEngine;
class QPainter;
class QPoint;
class QPrinter;
class QRect;
class QsciPrinter;
class QsciScintillaBase;
#else
typedef struct QMarginsF QMarginsF;
typedef struct QPageLayout QPageLayout;
typedef struct QPageRanges QPageRanges;
typedef struct QPageSize QPageSize;
typedef struct QPagedPaintDevice QPagedPaintDevice;
typedef struct QPaintDevice QPaintDevice;
typedef struct QPaintEngine QPaintEngine;
typedef struct QPainter QPainter;
typedef struct QPoint QPoint;
typedef struct QPrinter QPrinter;
typedef struct QRect QRect;
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
	bool (*newPage)(struct QsciPrinter_VTable* vtbl, QsciPrinter* self);
	QPaintEngine* (*paintEngine)(struct QsciPrinter_VTable* vtbl, const QsciPrinter* self);
	int (*metric)(struct QsciPrinter_VTable* vtbl, const QsciPrinter* self, int param1);
	bool (*setPageLayout)(struct QsciPrinter_VTable* vtbl, QsciPrinter* self, QPageLayout* pageLayout);
	bool (*setPageSize)(struct QsciPrinter_VTable* vtbl, QsciPrinter* self, QPageSize* pageSize);
	bool (*setPageOrientation)(struct QsciPrinter_VTable* vtbl, QsciPrinter* self, int orientation);
	bool (*setPageMargins)(struct QsciPrinter_VTable* vtbl, QsciPrinter* self, QMarginsF* margins, int units);
	void (*setPageRanges)(struct QsciPrinter_VTable* vtbl, QsciPrinter* self, QPageRanges* ranges);
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
bool QsciPrinter_virtualbase_newPage(void* self);
QPaintEngine* QsciPrinter_virtualbase_paintEngine(const void* self);
int QsciPrinter_virtualbase_metric(const void* self, int param1);
bool QsciPrinter_virtualbase_setPageLayout(void* self, QPageLayout* pageLayout);
bool QsciPrinter_virtualbase_setPageSize(void* self, QPageSize* pageSize);
bool QsciPrinter_virtualbase_setPageOrientation(void* self, int orientation);
bool QsciPrinter_virtualbase_setPageMargins(void* self, QMarginsF* margins, int units);
void QsciPrinter_virtualbase_setPageRanges(void* self, QPageRanges* ranges);
void QsciPrinter_virtualbase_initPainter(const void* self, QPainter* painter);
QPaintDevice* QsciPrinter_virtualbase_redirected(const void* self, QPoint* offset);
QPainter* QsciPrinter_virtualbase_sharedPainter(const void* self);
void QsciPrinter_delete(QsciPrinter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
