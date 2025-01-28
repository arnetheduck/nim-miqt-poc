#pragma once
#ifndef MIQT_QT_GEN_QABSTRACTNATIVEEVENTFILTER_H
#define MIQT_QT_GEN_QABSTRACTNATIVEEVENTFILTER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractNativeEventFilter;
#else
typedef struct QAbstractNativeEventFilter QAbstractNativeEventFilter;
#endif

struct QAbstractNativeEventFilter_VTable {
	void (*destructor)(struct QAbstractNativeEventFilter_VTable* vtbl, QAbstractNativeEventFilter* self);
	bool (*nativeEventFilter)(struct QAbstractNativeEventFilter_VTable* vtbl, QAbstractNativeEventFilter* self, struct miqt_string eventType, void* message, long* result);
};
QAbstractNativeEventFilter* QAbstractNativeEventFilter_new(struct QAbstractNativeEventFilter_VTable* vtbl);
bool QAbstractNativeEventFilter_nativeEventFilter(QAbstractNativeEventFilter* self, struct miqt_string eventType, void* message, long* result);
bool QAbstractNativeEventFilter_virtualbase_nativeEventFilter(void* self, struct miqt_string eventType, void* message, long* result);
void QAbstractNativeEventFilter_delete(QAbstractNativeEventFilter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
