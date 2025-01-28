#pragma once
#ifndef MIQT_QT6_GEN_QRUNNABLE_H
#define MIQT_QT6_GEN_QRUNNABLE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QRunnable;
#else
typedef struct QRunnable QRunnable;
#endif

struct QRunnable_VTable {
	void (*destructor)(struct QRunnable_VTable* vtbl, QRunnable* self);
	void (*run)(struct QRunnable_VTable* vtbl, QRunnable* self);
};
QRunnable* QRunnable_new(struct QRunnable_VTable* vtbl);
void QRunnable_run(QRunnable* self);
bool QRunnable_autoDelete(const QRunnable* self);
void QRunnable_setAutoDelete(QRunnable* self, bool autoDelete);
void QRunnable_virtualbase_run(void* self);
void QRunnable_delete(QRunnable* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
