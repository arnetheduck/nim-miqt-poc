#pragma once
#ifndef MIQT_QTCORE_GEN_QNAMESPACE_H
#define MIQT_QTCORE_GEN_QNAMESPACE_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QInternal;
#else
typedef struct QInternal QInternal;
#endif

bool QInternal_activateCallbacks(int param1, void** param2);
void QInternal_delete(QInternal* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
