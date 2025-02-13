#pragma once
#ifndef MIQT_QTGUI_GEN_QACTIONGROUP_H
#define MIQT_QTGUI_GEN_QACTIONGROUP_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QActionGroup;
class QChildEvent;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QObject;
class QTimerEvent;
#else
typedef struct QActionGroup QActionGroup;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QObject QObject;
typedef struct QTimerEvent QTimerEvent;
#endif

QActionGroup* QActionGroup_new(QObject* parent);
void QActionGroup_virtbase(QActionGroup* src, QObject** outptr_QObject);
QMetaObject* QActionGroup_metaObject(const QActionGroup* self);
void* QActionGroup_metacast(QActionGroup* self, const char* param1);
int QActionGroup_metacall(QActionGroup* self, int param1, int param2, void** param3);
struct miqt_string QActionGroup_tr(const char* s);
bool QActionGroup_isExclusive(const QActionGroup* self);
bool QActionGroup_isEnabled(const QActionGroup* self);
bool QActionGroup_isVisible(const QActionGroup* self);
int QActionGroup_exclusionPolicy(const QActionGroup* self);
void QActionGroup_setEnabled(QActionGroup* self, bool enabled);
void QActionGroup_setDisabled(QActionGroup* self, bool b);
void QActionGroup_setVisible(QActionGroup* self, bool visible);
void QActionGroup_setExclusive(QActionGroup* self, bool exclusive);
void QActionGroup_setExclusionPolicy(QActionGroup* self, int policy);
struct miqt_string QActionGroup_tr2(const char* s, const char* c);
struct miqt_string QActionGroup_tr3(const char* s, const char* c, int n);
bool QActionGroup_override_virtual_metacall(void* self, intptr_t slot);
int QActionGroup_virtualbase_metacall(void* self, int param1, int param2, void** param3);
bool QActionGroup_override_virtual_event(void* self, intptr_t slot);
bool QActionGroup_virtualbase_event(void* self, QEvent* event);
bool QActionGroup_override_virtual_eventFilter(void* self, intptr_t slot);
bool QActionGroup_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
bool QActionGroup_override_virtual_timerEvent(void* self, intptr_t slot);
void QActionGroup_virtualbase_timerEvent(void* self, QTimerEvent* event);
bool QActionGroup_override_virtual_childEvent(void* self, intptr_t slot);
void QActionGroup_virtualbase_childEvent(void* self, QChildEvent* event);
bool QActionGroup_override_virtual_customEvent(void* self, intptr_t slot);
void QActionGroup_virtualbase_customEvent(void* self, QEvent* event);
bool QActionGroup_override_virtual_connectNotify(void* self, intptr_t slot);
void QActionGroup_virtualbase_connectNotify(void* self, QMetaMethod* signal);
bool QActionGroup_override_virtual_disconnectNotify(void* self, intptr_t slot);
void QActionGroup_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
QObject* QActionGroup_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
int QActionGroup_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
int QActionGroup_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
bool QActionGroup_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
void QActionGroup_delete(QActionGroup* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
