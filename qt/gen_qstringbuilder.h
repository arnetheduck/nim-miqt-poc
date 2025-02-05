#pragma once
#ifndef MIQT_QT_GEN_QSTRINGBUILDER_H
#define MIQT_QT_GEN_QSTRINGBUILDER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractConcatenable;
class QChar;
#else
typedef struct QAbstractConcatenable QAbstractConcatenable;
typedef struct QChar QChar;
#endif

void QAbstractConcatenable_delete(QAbstractConcatenable* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
