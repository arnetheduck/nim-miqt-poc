#pragma once
#ifndef MIQT_QTGUI_GEN_QVALIDATOR_H
#define MIQT_QTGUI_GEN_QVALIDATOR_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QChildEvent;
class QDoubleValidator;
class QEvent;
class QIntValidator;
class QLocale;
class QMetaMethod;
class QMetaObject;
class QObject;
class QRegularExpression;
class QRegularExpressionValidator;
class QTimerEvent;
class QValidator;
#else
typedef struct QChildEvent QChildEvent;
typedef struct QDoubleValidator QDoubleValidator;
typedef struct QEvent QEvent;
typedef struct QIntValidator QIntValidator;
typedef struct QLocale QLocale;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QRegularExpression QRegularExpression;
typedef struct QRegularExpressionValidator QRegularExpressionValidator;
typedef struct QTimerEvent QTimerEvent;
typedef struct QValidator QValidator;
#endif

QValidator* QValidator_new();
QValidator* QValidator_new2(QObject* parent);
void QValidator_virtbase(QValidator* src, QObject** outptr_QObject);
QMetaObject* QValidator_metaObject(const QValidator* self);
void* QValidator_metacast(QValidator* self, const char* param1);
int QValidator_metacall(QValidator* self, int param1, int param2, void** param3);
struct miqt_string QValidator_tr(const char* s);
void QValidator_setLocale(QValidator* self, QLocale* locale);
QLocale* QValidator_locale(const QValidator* self);
int QValidator_validate(const QValidator* self, struct miqt_string param1, int* param2);
void QValidator_fixup(const QValidator* self, struct miqt_string param1);
void QValidator_changed(QValidator* self);
void QValidator_connect_changed(QValidator* self, intptr_t slot);
struct miqt_string QValidator_tr2(const char* s, const char* c);
struct miqt_string QValidator_tr3(const char* s, const char* c, int n);
bool QValidator_override_virtual_metaObject(void* self, intptr_t slot);
QMetaObject* QValidator_virtualbase_metaObject(const void* self);
bool QValidator_override_virtual_metacast(void* self, intptr_t slot);
void* QValidator_virtualbase_metacast(void* self, const char* param1);
bool QValidator_override_virtual_metacall(void* self, intptr_t slot);
int QValidator_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QValidator_override_virtual_validate(void* self, intptr_t slot);
int QValidator_virtualbase_validate(const void* self, struct miqt_string param1, int* param2);
bool QValidator_override_virtual_fixup(void* self, intptr_t slot);
void QValidator_virtualbase_fixup(const void* self, struct miqt_string param1);
bool QValidator_override_virtual_event(void* self, intptr_t slot);
bool QValidator_virtualbase_event(void* self, QEvent* event);
bool QValidator_override_virtual_eventFilter(void* self, intptr_t slot);
bool QValidator_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QValidator_override_virtual_timerEvent(void* self, intptr_t slot);
void QValidator_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QValidator_override_virtual_childEvent(void* self, intptr_t slot);
void QValidator_virtualbase_childEvent(void* self, QChildEvent* event);
bool QValidator_override_virtual_customEvent(void* self, intptr_t slot);
void QValidator_virtualbase_customEvent(void* self, QEvent* event);
bool QValidator_override_virtual_connectNotify(void* self, intptr_t slot);
void QValidator_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QValidator_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QValidator_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QValidator_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QValidator_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QValidator_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QValidator_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QValidator_staticMetaObject();
void QValidator_delete(QValidator* self);

QIntValidator* QIntValidator_new();
QIntValidator* QIntValidator_new2(int bottom, int top);
QIntValidator* QIntValidator_new3(QObject* parent);
QIntValidator* QIntValidator_new4(int bottom, int top, QObject* parent);
void QIntValidator_virtbase(QIntValidator* src, QValidator** outptr_QValidator);
QMetaObject* QIntValidator_metaObject(const QIntValidator* self);
void* QIntValidator_metacast(QIntValidator* self, const char* param1);
int QIntValidator_metacall(QIntValidator* self, int param1, int param2, void** param3);
struct miqt_string QIntValidator_tr(const char* s);
int QIntValidator_validate(const QIntValidator* self, struct miqt_string param1, int* param2);
void QIntValidator_fixup(const QIntValidator* self, struct miqt_string input);
void QIntValidator_setBottom(QIntValidator* self, int bottom);
void QIntValidator_setTop(QIntValidator* self, int top);
void QIntValidator_setRange(QIntValidator* self, int bottom, int top);
int QIntValidator_bottom(const QIntValidator* self);
int QIntValidator_top(const QIntValidator* self);
void QIntValidator_bottomChanged(QIntValidator* self, int bottom);
void QIntValidator_connect_bottomChanged(QIntValidator* self, intptr_t slot);
void QIntValidator_topChanged(QIntValidator* self, int top);
void QIntValidator_connect_topChanged(QIntValidator* self, intptr_t slot);
struct miqt_string QIntValidator_tr2(const char* s, const char* c);
struct miqt_string QIntValidator_tr3(const char* s, const char* c, int n);
bool QIntValidator_override_virtual_metaObject(void* self, intptr_t slot);
QMetaObject* QIntValidator_virtualbase_metaObject(const void* self);
bool QIntValidator_override_virtual_metacast(void* self, intptr_t slot);
void* QIntValidator_virtualbase_metacast(void* self, const char* param1);
bool QIntValidator_override_virtual_metacall(void* self, intptr_t slot);
int QIntValidator_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QIntValidator_override_virtual_validate(void* self, intptr_t slot);
int QIntValidator_virtualbase_validate(const void* self, struct miqt_string param1, int* param2);
bool QIntValidator_override_virtual_fixup(void* self, intptr_t slot);
void QIntValidator_virtualbase_fixup(const void* self, struct miqt_string input);
bool QIntValidator_override_virtual_event(void* self, intptr_t slot);
bool QIntValidator_virtualbase_event(void* self, QEvent* event);
bool QIntValidator_override_virtual_eventFilter(void* self, intptr_t slot);
bool QIntValidator_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QIntValidator_override_virtual_timerEvent(void* self, intptr_t slot);
void QIntValidator_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QIntValidator_override_virtual_childEvent(void* self, intptr_t slot);
void QIntValidator_virtualbase_childEvent(void* self, QChildEvent* event);
bool QIntValidator_override_virtual_customEvent(void* self, intptr_t slot);
void QIntValidator_virtualbase_customEvent(void* self, QEvent* event);
bool QIntValidator_override_virtual_connectNotify(void* self, intptr_t slot);
void QIntValidator_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QIntValidator_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QIntValidator_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QIntValidator_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QIntValidator_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QIntValidator_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QIntValidator_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QIntValidator_staticMetaObject();
void QIntValidator_delete(QIntValidator* self);

QDoubleValidator* QDoubleValidator_new();
QDoubleValidator* QDoubleValidator_new2(double bottom, double top, int decimals);
QDoubleValidator* QDoubleValidator_new3(QObject* parent);
QDoubleValidator* QDoubleValidator_new4(double bottom, double top, int decimals, QObject* parent);
void QDoubleValidator_virtbase(QDoubleValidator* src, QValidator** outptr_QValidator);
QMetaObject* QDoubleValidator_metaObject(const QDoubleValidator* self);
void* QDoubleValidator_metacast(QDoubleValidator* self, const char* param1);
int QDoubleValidator_metacall(QDoubleValidator* self, int param1, int param2, void** param3);
struct miqt_string QDoubleValidator_tr(const char* s);
int QDoubleValidator_validate(const QDoubleValidator* self, struct miqt_string param1, int* param2);
void QDoubleValidator_fixup(const QDoubleValidator* self, struct miqt_string input);
void QDoubleValidator_setRange(QDoubleValidator* self, double bottom, double top, int decimals);
void QDoubleValidator_setRange2(QDoubleValidator* self, double bottom, double top);
void QDoubleValidator_setBottom(QDoubleValidator* self, double bottom);
void QDoubleValidator_setTop(QDoubleValidator* self, double top);
void QDoubleValidator_setDecimals(QDoubleValidator* self, int decimals);
void QDoubleValidator_setNotation(QDoubleValidator* self, int notation);
double QDoubleValidator_bottom(const QDoubleValidator* self);
double QDoubleValidator_top(const QDoubleValidator* self);
int QDoubleValidator_decimals(const QDoubleValidator* self);
int QDoubleValidator_notation(const QDoubleValidator* self);
void QDoubleValidator_bottomChanged(QDoubleValidator* self, double bottom);
void QDoubleValidator_connect_bottomChanged(QDoubleValidator* self, intptr_t slot);
void QDoubleValidator_topChanged(QDoubleValidator* self, double top);
void QDoubleValidator_connect_topChanged(QDoubleValidator* self, intptr_t slot);
void QDoubleValidator_decimalsChanged(QDoubleValidator* self, int decimals);
void QDoubleValidator_connect_decimalsChanged(QDoubleValidator* self, intptr_t slot);
void QDoubleValidator_notationChanged(QDoubleValidator* self, int notation);
void QDoubleValidator_connect_notationChanged(QDoubleValidator* self, intptr_t slot);
struct miqt_string QDoubleValidator_tr2(const char* s, const char* c);
struct miqt_string QDoubleValidator_tr3(const char* s, const char* c, int n);
bool QDoubleValidator_override_virtual_metaObject(void* self, intptr_t slot);
QMetaObject* QDoubleValidator_virtualbase_metaObject(const void* self);
bool QDoubleValidator_override_virtual_metacast(void* self, intptr_t slot);
void* QDoubleValidator_virtualbase_metacast(void* self, const char* param1);
bool QDoubleValidator_override_virtual_metacall(void* self, intptr_t slot);
int QDoubleValidator_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QDoubleValidator_override_virtual_validate(void* self, intptr_t slot);
int QDoubleValidator_virtualbase_validate(const void* self, struct miqt_string param1, int* param2);
bool QDoubleValidator_override_virtual_fixup(void* self, intptr_t slot);
void QDoubleValidator_virtualbase_fixup(const void* self, struct miqt_string input);
bool QDoubleValidator_override_virtual_event(void* self, intptr_t slot);
bool QDoubleValidator_virtualbase_event(void* self, QEvent* event);
bool QDoubleValidator_override_virtual_eventFilter(void* self, intptr_t slot);
bool QDoubleValidator_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QDoubleValidator_override_virtual_timerEvent(void* self, intptr_t slot);
void QDoubleValidator_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QDoubleValidator_override_virtual_childEvent(void* self, intptr_t slot);
void QDoubleValidator_virtualbase_childEvent(void* self, QChildEvent* event);
bool QDoubleValidator_override_virtual_customEvent(void* self, intptr_t slot);
void QDoubleValidator_virtualbase_customEvent(void* self, QEvent* event);
bool QDoubleValidator_override_virtual_connectNotify(void* self, intptr_t slot);
void QDoubleValidator_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QDoubleValidator_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QDoubleValidator_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QDoubleValidator_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QDoubleValidator_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QDoubleValidator_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QDoubleValidator_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QDoubleValidator_staticMetaObject();
void QDoubleValidator_delete(QDoubleValidator* self);

QRegularExpressionValidator* QRegularExpressionValidator_new();
QRegularExpressionValidator* QRegularExpressionValidator_new2(QRegularExpression* re);
QRegularExpressionValidator* QRegularExpressionValidator_new3(QObject* parent);
QRegularExpressionValidator* QRegularExpressionValidator_new4(QRegularExpression* re, QObject* parent);
void QRegularExpressionValidator_virtbase(QRegularExpressionValidator* src, QValidator** outptr_QValidator);
QMetaObject* QRegularExpressionValidator_metaObject(const QRegularExpressionValidator* self);
void* QRegularExpressionValidator_metacast(QRegularExpressionValidator* self, const char* param1);
int QRegularExpressionValidator_metacall(QRegularExpressionValidator* self, int param1, int param2, void** param3);
struct miqt_string QRegularExpressionValidator_tr(const char* s);
int QRegularExpressionValidator_validate(const QRegularExpressionValidator* self, struct miqt_string input, int* pos);
QRegularExpression* QRegularExpressionValidator_regularExpression(const QRegularExpressionValidator* self);
void QRegularExpressionValidator_setRegularExpression(QRegularExpressionValidator* self, QRegularExpression* re);
void QRegularExpressionValidator_regularExpressionChanged(QRegularExpressionValidator* self, QRegularExpression* re);
void QRegularExpressionValidator_connect_regularExpressionChanged(QRegularExpressionValidator* self, intptr_t slot);
struct miqt_string QRegularExpressionValidator_tr2(const char* s, const char* c);
struct miqt_string QRegularExpressionValidator_tr3(const char* s, const char* c, int n);
bool QRegularExpressionValidator_override_virtual_metaObject(void* self, intptr_t slot);
QMetaObject* QRegularExpressionValidator_virtualbase_metaObject(const void* self);
bool QRegularExpressionValidator_override_virtual_metacast(void* self, intptr_t slot);
void* QRegularExpressionValidator_virtualbase_metacast(void* self, const char* param1);
bool QRegularExpressionValidator_override_virtual_metacall(void* self, intptr_t slot);
int QRegularExpressionValidator_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QRegularExpressionValidator_override_virtual_validate(void* self, intptr_t slot);
int QRegularExpressionValidator_virtualbase_validate(const void* self, struct miqt_string input, int* pos);
bool QRegularExpressionValidator_override_virtual_fixup(void* self, intptr_t slot);
void QRegularExpressionValidator_virtualbase_fixup(const void* self, struct miqt_string param1);
bool QRegularExpressionValidator_override_virtual_event(void* self, intptr_t slot);
bool QRegularExpressionValidator_virtualbase_event(void* self, QEvent* event);
bool QRegularExpressionValidator_override_virtual_eventFilter(void* self, intptr_t slot);
bool QRegularExpressionValidator_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QRegularExpressionValidator_override_virtual_timerEvent(void* self, intptr_t slot);
void QRegularExpressionValidator_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QRegularExpressionValidator_override_virtual_childEvent(void* self, intptr_t slot);
void QRegularExpressionValidator_virtualbase_childEvent(void* self, QChildEvent* event);
bool QRegularExpressionValidator_override_virtual_customEvent(void* self, intptr_t slot);
void QRegularExpressionValidator_virtualbase_customEvent(void* self, QEvent* event);
bool QRegularExpressionValidator_override_virtual_connectNotify(void* self, intptr_t slot);
void QRegularExpressionValidator_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QRegularExpressionValidator_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QRegularExpressionValidator_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QRegularExpressionValidator_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QRegularExpressionValidator_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QRegularExpressionValidator_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QRegularExpressionValidator_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
const QMetaObject* QRegularExpressionValidator_staticMetaObject();
void QRegularExpressionValidator_delete(QRegularExpressionValidator* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
