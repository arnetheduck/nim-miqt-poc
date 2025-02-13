#pragma once
#ifndef MIQT_QTWIDGETS_GEN_QWHATSTHIS_H
#define MIQT_QTWIDGETS_GEN_QWHATSTHIS_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QPoint;
class QWhatsThis;
class QWidget;
#else
typedef struct QPoint QPoint;
typedef struct QWhatsThis QWhatsThis;
typedef struct QWidget QWidget;
#endif

void QWhatsThis_enterWhatsThisMode();
bool QWhatsThis_inWhatsThisMode();
void QWhatsThis_leaveWhatsThisMode();
void QWhatsThis_showText(QPoint* pos, struct miqt_string text);
void QWhatsThis_hideText();
void QWhatsThis_showText3(QPoint* pos, struct miqt_string text, QWidget* w);
void QWhatsThis_delete(QWhatsThis* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
