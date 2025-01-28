#pragma once
#ifndef MIQT_QT6_GEN_QGRAPHICSGRIDLAYOUT_H
#define MIQT_QT6_GEN_QGRAPHICSGRIDLAYOUT_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QEvent;
class QGraphicsGridLayout;
class QGraphicsLayout;
class QGraphicsLayoutItem;
class QRectF;
class QSizeF;
#else
typedef struct QEvent QEvent;
typedef struct QGraphicsGridLayout QGraphicsGridLayout;
typedef struct QGraphicsLayout QGraphicsLayout;
typedef struct QGraphicsLayoutItem QGraphicsLayoutItem;
typedef struct QRectF QRectF;
typedef struct QSizeF QSizeF;
#endif

struct QGraphicsGridLayout_VTable {
	void (*destructor)(struct QGraphicsGridLayout_VTable* vtbl, QGraphicsGridLayout* self);
	int (*count)(struct QGraphicsGridLayout_VTable* vtbl, const QGraphicsGridLayout* self);
	QGraphicsLayoutItem* (*itemAtWithIndex)(struct QGraphicsGridLayout_VTable* vtbl, const QGraphicsGridLayout* self, int index);
	void (*removeAt)(struct QGraphicsGridLayout_VTable* vtbl, QGraphicsGridLayout* self, int index);
	void (*invalidate)(struct QGraphicsGridLayout_VTable* vtbl, QGraphicsGridLayout* self);
	void (*setGeometry)(struct QGraphicsGridLayout_VTable* vtbl, QGraphicsGridLayout* self, QRectF* rect);
	QSizeF* (*sizeHint)(struct QGraphicsGridLayout_VTable* vtbl, const QGraphicsGridLayout* self, int which, QSizeF* constraint);
	void (*getContentsMargins)(struct QGraphicsGridLayout_VTable* vtbl, const QGraphicsGridLayout* self, double* left, double* top, double* right, double* bottom);
	void (*updateGeometry)(struct QGraphicsGridLayout_VTable* vtbl, QGraphicsGridLayout* self);
	void (*widgetEvent)(struct QGraphicsGridLayout_VTable* vtbl, QGraphicsGridLayout* self, QEvent* e);
	bool (*isEmpty)(struct QGraphicsGridLayout_VTable* vtbl, const QGraphicsGridLayout* self);
};
QGraphicsGridLayout* QGraphicsGridLayout_new(struct QGraphicsGridLayout_VTable* vtbl);
QGraphicsGridLayout* QGraphicsGridLayout_new2(struct QGraphicsGridLayout_VTable* vtbl, QGraphicsLayoutItem* parent);
void QGraphicsGridLayout_virtbase(QGraphicsGridLayout* src, QGraphicsLayout** outptr_QGraphicsLayout);
void QGraphicsGridLayout_addItem(QGraphicsGridLayout* self, QGraphicsLayoutItem* item, int row, int column, int rowSpan, int columnSpan);
void QGraphicsGridLayout_addItem2(QGraphicsGridLayout* self, QGraphicsLayoutItem* item, int row, int column);
void QGraphicsGridLayout_setHorizontalSpacing(QGraphicsGridLayout* self, double spacing);
double QGraphicsGridLayout_horizontalSpacing(const QGraphicsGridLayout* self);
void QGraphicsGridLayout_setVerticalSpacing(QGraphicsGridLayout* self, double spacing);
double QGraphicsGridLayout_verticalSpacing(const QGraphicsGridLayout* self);
void QGraphicsGridLayout_setSpacing(QGraphicsGridLayout* self, double spacing);
void QGraphicsGridLayout_setRowSpacing(QGraphicsGridLayout* self, int row, double spacing);
double QGraphicsGridLayout_rowSpacing(const QGraphicsGridLayout* self, int row);
void QGraphicsGridLayout_setColumnSpacing(QGraphicsGridLayout* self, int column, double spacing);
double QGraphicsGridLayout_columnSpacing(const QGraphicsGridLayout* self, int column);
void QGraphicsGridLayout_setRowStretchFactor(QGraphicsGridLayout* self, int row, int stretch);
int QGraphicsGridLayout_rowStretchFactor(const QGraphicsGridLayout* self, int row);
void QGraphicsGridLayout_setColumnStretchFactor(QGraphicsGridLayout* self, int column, int stretch);
int QGraphicsGridLayout_columnStretchFactor(const QGraphicsGridLayout* self, int column);
void QGraphicsGridLayout_setRowMinimumHeight(QGraphicsGridLayout* self, int row, double height);
double QGraphicsGridLayout_rowMinimumHeight(const QGraphicsGridLayout* self, int row);
void QGraphicsGridLayout_setRowPreferredHeight(QGraphicsGridLayout* self, int row, double height);
double QGraphicsGridLayout_rowPreferredHeight(const QGraphicsGridLayout* self, int row);
void QGraphicsGridLayout_setRowMaximumHeight(QGraphicsGridLayout* self, int row, double height);
double QGraphicsGridLayout_rowMaximumHeight(const QGraphicsGridLayout* self, int row);
void QGraphicsGridLayout_setRowFixedHeight(QGraphicsGridLayout* self, int row, double height);
void QGraphicsGridLayout_setColumnMinimumWidth(QGraphicsGridLayout* self, int column, double width);
double QGraphicsGridLayout_columnMinimumWidth(const QGraphicsGridLayout* self, int column);
void QGraphicsGridLayout_setColumnPreferredWidth(QGraphicsGridLayout* self, int column, double width);
double QGraphicsGridLayout_columnPreferredWidth(const QGraphicsGridLayout* self, int column);
void QGraphicsGridLayout_setColumnMaximumWidth(QGraphicsGridLayout* self, int column, double width);
double QGraphicsGridLayout_columnMaximumWidth(const QGraphicsGridLayout* self, int column);
void QGraphicsGridLayout_setColumnFixedWidth(QGraphicsGridLayout* self, int column, double width);
void QGraphicsGridLayout_setRowAlignment(QGraphicsGridLayout* self, int row, int alignment);
int QGraphicsGridLayout_rowAlignment(const QGraphicsGridLayout* self, int row);
void QGraphicsGridLayout_setColumnAlignment(QGraphicsGridLayout* self, int column, int alignment);
int QGraphicsGridLayout_columnAlignment(const QGraphicsGridLayout* self, int column);
void QGraphicsGridLayout_setAlignment(QGraphicsGridLayout* self, QGraphicsLayoutItem* item, int alignment);
int QGraphicsGridLayout_alignment(const QGraphicsGridLayout* self, QGraphicsLayoutItem* item);
int QGraphicsGridLayout_rowCount(const QGraphicsGridLayout* self);
int QGraphicsGridLayout_columnCount(const QGraphicsGridLayout* self);
QGraphicsLayoutItem* QGraphicsGridLayout_itemAt(const QGraphicsGridLayout* self, int row, int column);
int QGraphicsGridLayout_count(const QGraphicsGridLayout* self);
QGraphicsLayoutItem* QGraphicsGridLayout_itemAtWithIndex(const QGraphicsGridLayout* self, int index);
void QGraphicsGridLayout_removeAt(QGraphicsGridLayout* self, int index);
void QGraphicsGridLayout_removeItem(QGraphicsGridLayout* self, QGraphicsLayoutItem* item);
void QGraphicsGridLayout_invalidate(QGraphicsGridLayout* self);
void QGraphicsGridLayout_setGeometry(QGraphicsGridLayout* self, QRectF* rect);
QSizeF* QGraphicsGridLayout_sizeHint(const QGraphicsGridLayout* self, int which, QSizeF* constraint);
void QGraphicsGridLayout_addItem6(QGraphicsGridLayout* self, QGraphicsLayoutItem* item, int row, int column, int rowSpan, int columnSpan, int alignment);
void QGraphicsGridLayout_addItem4(QGraphicsGridLayout* self, QGraphicsLayoutItem* item, int row, int column, int alignment);
int QGraphicsGridLayout_virtualbase_count(const void* self);
QGraphicsLayoutItem* QGraphicsGridLayout_virtualbase_itemAtWithIndex(const void* self, int index);
void QGraphicsGridLayout_virtualbase_removeAt(void* self, int index);
void QGraphicsGridLayout_virtualbase_invalidate(void* self);
void QGraphicsGridLayout_virtualbase_setGeometry(void* self, QRectF* rect);
QSizeF* QGraphicsGridLayout_virtualbase_sizeHint(const void* self, int which, QSizeF* constraint);
void QGraphicsGridLayout_virtualbase_getContentsMargins(const void* self, double* left, double* top, double* right, double* bottom);
void QGraphicsGridLayout_virtualbase_updateGeometry(void* self);
void QGraphicsGridLayout_virtualbase_widgetEvent(void* self, QEvent* e);
bool QGraphicsGridLayout_virtualbase_isEmpty(const void* self);
void QGraphicsGridLayout_delete(QGraphicsGridLayout* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
