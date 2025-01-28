#pragma once
#ifndef MIQT_QT6_GEN_QCOMPLETER_H
#define MIQT_QT6_GEN_QCOMPLETER_H

#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

#include "../libmiqt/libmiqt.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
class QAbstractItemModel;
class QAbstractItemView;
class QChildEvent;
class QCompleter;
class QEvent;
class QMetaMethod;
class QMetaObject;
class QModelIndex;
class QObject;
class QRect;
class QTimerEvent;
class QWidget;
#else
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QAbstractItemView QAbstractItemView;
typedef struct QChildEvent QChildEvent;
typedef struct QCompleter QCompleter;
typedef struct QEvent QEvent;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QModelIndex QModelIndex;
typedef struct QObject QObject;
typedef struct QRect QRect;
typedef struct QTimerEvent QTimerEvent;
typedef struct QWidget QWidget;
#endif

struct QCompleter_VTable {
	void (*destructor)(struct QCompleter_VTable* vtbl, QCompleter* self);
	QMetaObject* (*metaObject)(struct QCompleter_VTable* vtbl, const QCompleter* self);
	void* (*metacast)(struct QCompleter_VTable* vtbl, QCompleter* self, const char* param1);
	int (*metacall)(struct QCompleter_VTable* vtbl, QCompleter* self, int param1, int param2, void** param3);
	struct miqt_string (*pathFromIndex)(struct QCompleter_VTable* vtbl, const QCompleter* self, QModelIndex* index);
	struct miqt_array /* of struct miqt_string */  (*splitPath)(struct QCompleter_VTable* vtbl, const QCompleter* self, struct miqt_string path);
	bool (*eventFilter)(struct QCompleter_VTable* vtbl, QCompleter* self, QObject* o, QEvent* e);
	bool (*event)(struct QCompleter_VTable* vtbl, QCompleter* self, QEvent* param1);
	void (*timerEvent)(struct QCompleter_VTable* vtbl, QCompleter* self, QTimerEvent* event);
	void (*childEvent)(struct QCompleter_VTable* vtbl, QCompleter* self, QChildEvent* event);
	void (*customEvent)(struct QCompleter_VTable* vtbl, QCompleter* self, QEvent* event);
	void (*connectNotify)(struct QCompleter_VTable* vtbl, QCompleter* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QCompleter_VTable* vtbl, QCompleter* self, QMetaMethod* signal);
};
QCompleter* QCompleter_new(struct QCompleter_VTable* vtbl);
QCompleter* QCompleter_new2(struct QCompleter_VTable* vtbl, QAbstractItemModel* model);
QCompleter* QCompleter_new3(struct QCompleter_VTable* vtbl, struct miqt_array /* of struct miqt_string */  completions);
QCompleter* QCompleter_new4(struct QCompleter_VTable* vtbl, QObject* parent);
QCompleter* QCompleter_new5(struct QCompleter_VTable* vtbl, QAbstractItemModel* model, QObject* parent);
QCompleter* QCompleter_new6(struct QCompleter_VTable* vtbl, struct miqt_array /* of struct miqt_string */  completions, QObject* parent);
void QCompleter_virtbase(QCompleter* src, QObject** outptr_QObject);
QMetaObject* QCompleter_metaObject(const QCompleter* self);
void* QCompleter_metacast(QCompleter* self, const char* param1);
int QCompleter_metacall(QCompleter* self, int param1, int param2, void** param3);
struct miqt_string QCompleter_tr(const char* s);
void QCompleter_setWidget(QCompleter* self, QWidget* widget);
QWidget* QCompleter_widget(const QCompleter* self);
void QCompleter_setModel(QCompleter* self, QAbstractItemModel* c);
QAbstractItemModel* QCompleter_model(const QCompleter* self);
void QCompleter_setCompletionMode(QCompleter* self, int mode);
int QCompleter_completionMode(const QCompleter* self);
void QCompleter_setFilterMode(QCompleter* self, int filterMode);
int QCompleter_filterMode(const QCompleter* self);
QAbstractItemView* QCompleter_popup(const QCompleter* self);
void QCompleter_setPopup(QCompleter* self, QAbstractItemView* popup);
void QCompleter_setCaseSensitivity(QCompleter* self, int caseSensitivity);
int QCompleter_caseSensitivity(const QCompleter* self);
void QCompleter_setModelSorting(QCompleter* self, int sorting);
int QCompleter_modelSorting(const QCompleter* self);
void QCompleter_setCompletionColumn(QCompleter* self, int column);
int QCompleter_completionColumn(const QCompleter* self);
void QCompleter_setCompletionRole(QCompleter* self, int role);
int QCompleter_completionRole(const QCompleter* self);
bool QCompleter_wrapAround(const QCompleter* self);
int QCompleter_maxVisibleItems(const QCompleter* self);
void QCompleter_setMaxVisibleItems(QCompleter* self, int maxItems);
int QCompleter_completionCount(const QCompleter* self);
bool QCompleter_setCurrentRow(QCompleter* self, int row);
int QCompleter_currentRow(const QCompleter* self);
QModelIndex* QCompleter_currentIndex(const QCompleter* self);
struct miqt_string QCompleter_currentCompletion(const QCompleter* self);
QAbstractItemModel* QCompleter_completionModel(const QCompleter* self);
struct miqt_string QCompleter_completionPrefix(const QCompleter* self);
void QCompleter_setCompletionPrefix(QCompleter* self, struct miqt_string prefix);
void QCompleter_complete(QCompleter* self);
void QCompleter_setWrapAround(QCompleter* self, bool wrap);
struct miqt_string QCompleter_pathFromIndex(const QCompleter* self, QModelIndex* index);
struct miqt_array /* of struct miqt_string */  QCompleter_splitPath(const QCompleter* self, struct miqt_string path);
bool QCompleter_eventFilter(QCompleter* self, QObject* o, QEvent* e);
bool QCompleter_event(QCompleter* self, QEvent* param1);
void QCompleter_activated(QCompleter* self, struct miqt_string text);
void QCompleter_connect_activated(QCompleter* self, intptr_t slot);
void QCompleter_activatedWithIndex(QCompleter* self, QModelIndex* index);
void QCompleter_connect_activatedWithIndex(QCompleter* self, intptr_t slot);
void QCompleter_highlighted(QCompleter* self, struct miqt_string text);
void QCompleter_connect_highlighted(QCompleter* self, intptr_t slot);
void QCompleter_highlightedWithIndex(QCompleter* self, QModelIndex* index);
void QCompleter_connect_highlightedWithIndex(QCompleter* self, intptr_t slot);
struct miqt_string QCompleter_tr2(const char* s, const char* c);
struct miqt_string QCompleter_tr3(const char* s, const char* c, int n);
void QCompleter_complete1(QCompleter* self, QRect* rect);
QMetaObject* QCompleter_virtualbase_metaObject(const void* self);
void* QCompleter_virtualbase_metacast(void* self, const char* param1);
int QCompleter_virtualbase_metacall(void* self, int param1, int param2, void** param3);
struct miqt_string QCompleter_virtualbase_pathFromIndex(const void* self, QModelIndex* index);
struct miqt_array /* of struct miqt_string */  QCompleter_virtualbase_splitPath(const void* self, struct miqt_string path);
bool QCompleter_virtualbase_eventFilter(void* self, QObject* o, QEvent* e);
bool QCompleter_virtualbase_event(void* self, QEvent* param1);
void QCompleter_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QCompleter_virtualbase_childEvent(void* self, QChildEvent* event);
void QCompleter_virtualbase_customEvent(void* self, QEvent* event);
void QCompleter_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QCompleter_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QCompleter_staticMetaObject();
void QCompleter_delete(QCompleter* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
