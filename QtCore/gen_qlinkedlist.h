#pragma once
#ifndef MIQT_QTCORE_GEN_QLINKEDLIST_H
#define MIQT_QTCORE_GEN_QLINKEDLIST_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QLinkedListData;
#else
typedef struct QLinkedListData QLinkedListData;
#endif

QLinkedListData* QLinkedListData_new();
void QLinkedListData_delete(QLinkedListData* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
