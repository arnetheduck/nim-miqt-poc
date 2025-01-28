#pragma once
#ifndef MIQT_QT6_GEN_QSORTFILTERPROXYMODEL_H
#define MIQT_QT6_GEN_QSORTFILTERPROXYMODEL_H

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
class QAbstractProxyModel;
class QChildEvent;
class QEvent;
class QItemSelection;
class QMetaMethod;
class QMetaObject;
class QMimeData;
class QModelIndex;
class QModelRoleDataSpan;
class QObject;
class QRegularExpression;
class QSize;
class QSortFilterProxyModel;
class QTimerEvent;
class QVariant;
#else
typedef struct QAbstractItemModel QAbstractItemModel;
typedef struct QAbstractProxyModel QAbstractProxyModel;
typedef struct QChildEvent QChildEvent;
typedef struct QEvent QEvent;
typedef struct QItemSelection QItemSelection;
typedef struct QMetaMethod QMetaMethod;
typedef struct QMetaObject QMetaObject;
typedef struct QMimeData QMimeData;
typedef struct QModelIndex QModelIndex;
typedef struct QModelRoleDataSpan QModelRoleDataSpan;
typedef struct QObject QObject;
typedef struct QRegularExpression QRegularExpression;
typedef struct QSize QSize;
typedef struct QSortFilterProxyModel QSortFilterProxyModel;
typedef struct QTimerEvent QTimerEvent;
typedef struct QVariant QVariant;
#endif

struct QSortFilterProxyModel_VTable {
	void (*destructor)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self);
	QMetaObject* (*metaObject)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self);
	void* (*metacast)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self, const char* param1);
	int (*metacall)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self, int param1, int param2, void** param3);
	void (*setSourceModel)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self, QAbstractItemModel* sourceModel);
	QModelIndex* (*mapToSource)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, QModelIndex* proxyIndex);
	QModelIndex* (*mapFromSource)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, QModelIndex* sourceIndex);
	QItemSelection* (*mapSelectionToSource)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, QItemSelection* proxySelection);
	QItemSelection* (*mapSelectionFromSource)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, QItemSelection* sourceSelection);
	bool (*filterAcceptsRow)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, int source_row, QModelIndex* source_parent);
	bool (*filterAcceptsColumn)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, int source_column, QModelIndex* source_parent);
	bool (*lessThan)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, QModelIndex* source_left, QModelIndex* source_right);
	QModelIndex* (*index)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, int row, int column, QModelIndex* parent);
	QModelIndex* (*parent)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, QModelIndex* child);
	QModelIndex* (*sibling)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, int row, int column, QModelIndex* idx);
	int (*rowCount)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, QModelIndex* parent);
	int (*columnCount)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, QModelIndex* parent);
	bool (*hasChildren)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, QModelIndex* parent);
	QVariant* (*data)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, QModelIndex* index, int role);
	bool (*setData)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self, QModelIndex* index, QVariant* value, int role);
	QVariant* (*headerData)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, int section, int orientation, int role);
	bool (*setHeaderData)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self, int section, int orientation, QVariant* value, int role);
	QMimeData* (*mimeData)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes);
	bool (*dropMimeData)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	bool (*insertRows)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self, int row, int count, QModelIndex* parent);
	bool (*insertColumns)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self, int column, int count, QModelIndex* parent);
	bool (*removeRows)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self, int row, int count, QModelIndex* parent);
	bool (*removeColumns)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self, int column, int count, QModelIndex* parent);
	void (*fetchMore)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self, QModelIndex* parent);
	bool (*canFetchMore)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, QModelIndex* parent);
	int (*flags)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, QModelIndex* index);
	QModelIndex* (*buddy)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, QModelIndex* index);
	struct miqt_array /* of QModelIndex* */  (*match)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
	QSize* (*span)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, QModelIndex* index);
	void (*sort)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self, int column, int order);
	struct miqt_array /* of struct miqt_string */  (*mimeTypes)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self);
	int (*supportedDropActions)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self);
	bool (*submit)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self);
	void (*revert)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self);
	struct miqt_map /* of int to QVariant* */  (*itemData)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, QModelIndex* index);
	bool (*setItemData)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
	bool (*clearItemData)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self, QModelIndex* index);
	bool (*canDropMimeData)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
	int (*supportedDragActions)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self);
	struct miqt_map /* of int to struct miqt_string */  (*roleNames)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self);
	bool (*moveRows)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
	bool (*moveColumns)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
	void (*multiData)(struct QSortFilterProxyModel_VTable* vtbl, const QSortFilterProxyModel* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
	void (*resetInternalData)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self);
	bool (*event)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self, QEvent* event);
	bool (*eventFilter)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self, QObject* watched, QEvent* event);
	void (*timerEvent)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self, QTimerEvent* event);
	void (*childEvent)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self, QChildEvent* event);
	void (*customEvent)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self, QEvent* event);
	void (*connectNotify)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self, QMetaMethod* signal);
	void (*disconnectNotify)(struct QSortFilterProxyModel_VTable* vtbl, QSortFilterProxyModel* self, QMetaMethod* signal);
};
QSortFilterProxyModel* QSortFilterProxyModel_new(struct QSortFilterProxyModel_VTable* vtbl);
QSortFilterProxyModel* QSortFilterProxyModel_new2(struct QSortFilterProxyModel_VTable* vtbl, QObject* parent);
void QSortFilterProxyModel_virtbase(QSortFilterProxyModel* src, QAbstractProxyModel** outptr_QAbstractProxyModel);
QMetaObject* QSortFilterProxyModel_metaObject(const QSortFilterProxyModel* self);
void* QSortFilterProxyModel_metacast(QSortFilterProxyModel* self, const char* param1);
int QSortFilterProxyModel_metacall(QSortFilterProxyModel* self, int param1, int param2, void** param3);
struct miqt_string QSortFilterProxyModel_tr(const char* s);
void QSortFilterProxyModel_setSourceModel(QSortFilterProxyModel* self, QAbstractItemModel* sourceModel);
QModelIndex* QSortFilterProxyModel_mapToSource(const QSortFilterProxyModel* self, QModelIndex* proxyIndex);
QModelIndex* QSortFilterProxyModel_mapFromSource(const QSortFilterProxyModel* self, QModelIndex* sourceIndex);
QItemSelection* QSortFilterProxyModel_mapSelectionToSource(const QSortFilterProxyModel* self, QItemSelection* proxySelection);
QItemSelection* QSortFilterProxyModel_mapSelectionFromSource(const QSortFilterProxyModel* self, QItemSelection* sourceSelection);
QRegularExpression* QSortFilterProxyModel_filterRegularExpression(const QSortFilterProxyModel* self);
int QSortFilterProxyModel_filterKeyColumn(const QSortFilterProxyModel* self);
void QSortFilterProxyModel_setFilterKeyColumn(QSortFilterProxyModel* self, int column);
int QSortFilterProxyModel_filterCaseSensitivity(const QSortFilterProxyModel* self);
void QSortFilterProxyModel_setFilterCaseSensitivity(QSortFilterProxyModel* self, int cs);
int QSortFilterProxyModel_sortCaseSensitivity(const QSortFilterProxyModel* self);
void QSortFilterProxyModel_setSortCaseSensitivity(QSortFilterProxyModel* self, int cs);
bool QSortFilterProxyModel_isSortLocaleAware(const QSortFilterProxyModel* self);
void QSortFilterProxyModel_setSortLocaleAware(QSortFilterProxyModel* self, bool on);
int QSortFilterProxyModel_sortColumn(const QSortFilterProxyModel* self);
int QSortFilterProxyModel_sortOrder(const QSortFilterProxyModel* self);
bool QSortFilterProxyModel_dynamicSortFilter(const QSortFilterProxyModel* self);
void QSortFilterProxyModel_setDynamicSortFilter(QSortFilterProxyModel* self, bool enable);
int QSortFilterProxyModel_sortRole(const QSortFilterProxyModel* self);
void QSortFilterProxyModel_setSortRole(QSortFilterProxyModel* self, int role);
int QSortFilterProxyModel_filterRole(const QSortFilterProxyModel* self);
void QSortFilterProxyModel_setFilterRole(QSortFilterProxyModel* self, int role);
bool QSortFilterProxyModel_isRecursiveFilteringEnabled(const QSortFilterProxyModel* self);
void QSortFilterProxyModel_setRecursiveFilteringEnabled(QSortFilterProxyModel* self, bool recursive);
bool QSortFilterProxyModel_autoAcceptChildRows(const QSortFilterProxyModel* self);
void QSortFilterProxyModel_setAutoAcceptChildRows(QSortFilterProxyModel* self, bool accept);
void QSortFilterProxyModel_setFilterRegularExpression(QSortFilterProxyModel* self, struct miqt_string pattern);
void QSortFilterProxyModel_setFilterRegularExpressionWithRegularExpression(QSortFilterProxyModel* self, QRegularExpression* regularExpression);
void QSortFilterProxyModel_setFilterWildcard(QSortFilterProxyModel* self, struct miqt_string pattern);
void QSortFilterProxyModel_setFilterFixedString(QSortFilterProxyModel* self, struct miqt_string pattern);
void QSortFilterProxyModel_invalidate(QSortFilterProxyModel* self);
bool QSortFilterProxyModel_filterAcceptsRow(const QSortFilterProxyModel* self, int source_row, QModelIndex* source_parent);
bool QSortFilterProxyModel_filterAcceptsColumn(const QSortFilterProxyModel* self, int source_column, QModelIndex* source_parent);
bool QSortFilterProxyModel_lessThan(const QSortFilterProxyModel* self, QModelIndex* source_left, QModelIndex* source_right);
QModelIndex* QSortFilterProxyModel_index(const QSortFilterProxyModel* self, int row, int column, QModelIndex* parent);
QModelIndex* QSortFilterProxyModel_parent(const QSortFilterProxyModel* self, QModelIndex* child);
QModelIndex* QSortFilterProxyModel_sibling(const QSortFilterProxyModel* self, int row, int column, QModelIndex* idx);
int QSortFilterProxyModel_rowCount(const QSortFilterProxyModel* self, QModelIndex* parent);
int QSortFilterProxyModel_columnCount(const QSortFilterProxyModel* self, QModelIndex* parent);
bool QSortFilterProxyModel_hasChildren(const QSortFilterProxyModel* self, QModelIndex* parent);
QVariant* QSortFilterProxyModel_data(const QSortFilterProxyModel* self, QModelIndex* index, int role);
bool QSortFilterProxyModel_setData(QSortFilterProxyModel* self, QModelIndex* index, QVariant* value, int role);
QVariant* QSortFilterProxyModel_headerData(const QSortFilterProxyModel* self, int section, int orientation, int role);
bool QSortFilterProxyModel_setHeaderData(QSortFilterProxyModel* self, int section, int orientation, QVariant* value, int role);
QMimeData* QSortFilterProxyModel_mimeData(const QSortFilterProxyModel* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QSortFilterProxyModel_dropMimeData(QSortFilterProxyModel* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
bool QSortFilterProxyModel_insertRows(QSortFilterProxyModel* self, int row, int count, QModelIndex* parent);
bool QSortFilterProxyModel_insertColumns(QSortFilterProxyModel* self, int column, int count, QModelIndex* parent);
bool QSortFilterProxyModel_removeRows(QSortFilterProxyModel* self, int row, int count, QModelIndex* parent);
bool QSortFilterProxyModel_removeColumns(QSortFilterProxyModel* self, int column, int count, QModelIndex* parent);
void QSortFilterProxyModel_fetchMore(QSortFilterProxyModel* self, QModelIndex* parent);
bool QSortFilterProxyModel_canFetchMore(const QSortFilterProxyModel* self, QModelIndex* parent);
int QSortFilterProxyModel_flags(const QSortFilterProxyModel* self, QModelIndex* index);
QModelIndex* QSortFilterProxyModel_buddy(const QSortFilterProxyModel* self, QModelIndex* index);
struct miqt_array /* of QModelIndex* */  QSortFilterProxyModel_match(const QSortFilterProxyModel* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QSize* QSortFilterProxyModel_span(const QSortFilterProxyModel* self, QModelIndex* index);
void QSortFilterProxyModel_sort(QSortFilterProxyModel* self, int column, int order);
struct miqt_array /* of struct miqt_string */  QSortFilterProxyModel_mimeTypes(const QSortFilterProxyModel* self);
int QSortFilterProxyModel_supportedDropActions(const QSortFilterProxyModel* self);
void QSortFilterProxyModel_dynamicSortFilterChanged(QSortFilterProxyModel* self, bool dynamicSortFilter);
void QSortFilterProxyModel_connect_dynamicSortFilterChanged(QSortFilterProxyModel* self, intptr_t slot);
void QSortFilterProxyModel_filterCaseSensitivityChanged(QSortFilterProxyModel* self, int filterCaseSensitivity);
void QSortFilterProxyModel_connect_filterCaseSensitivityChanged(QSortFilterProxyModel* self, intptr_t slot);
void QSortFilterProxyModel_sortCaseSensitivityChanged(QSortFilterProxyModel* self, int sortCaseSensitivity);
void QSortFilterProxyModel_connect_sortCaseSensitivityChanged(QSortFilterProxyModel* self, intptr_t slot);
void QSortFilterProxyModel_sortLocaleAwareChanged(QSortFilterProxyModel* self, bool sortLocaleAware);
void QSortFilterProxyModel_connect_sortLocaleAwareChanged(QSortFilterProxyModel* self, intptr_t slot);
void QSortFilterProxyModel_sortRoleChanged(QSortFilterProxyModel* self, int sortRole);
void QSortFilterProxyModel_connect_sortRoleChanged(QSortFilterProxyModel* self, intptr_t slot);
void QSortFilterProxyModel_filterRoleChanged(QSortFilterProxyModel* self, int filterRole);
void QSortFilterProxyModel_connect_filterRoleChanged(QSortFilterProxyModel* self, intptr_t slot);
void QSortFilterProxyModel_recursiveFilteringEnabledChanged(QSortFilterProxyModel* self, bool recursiveFilteringEnabled);
void QSortFilterProxyModel_connect_recursiveFilteringEnabledChanged(QSortFilterProxyModel* self, intptr_t slot);
void QSortFilterProxyModel_autoAcceptChildRowsChanged(QSortFilterProxyModel* self, bool autoAcceptChildRows);
void QSortFilterProxyModel_connect_autoAcceptChildRowsChanged(QSortFilterProxyModel* self, intptr_t slot);
struct miqt_string QSortFilterProxyModel_tr2(const char* s, const char* c);
struct miqt_string QSortFilterProxyModel_tr3(const char* s, const char* c, int n);
QMetaObject* QSortFilterProxyModel_virtualbase_metaObject(const void* self);
void* QSortFilterProxyModel_virtualbase_metacast(void* self, const char* param1);
int QSortFilterProxyModel_virtualbase_metacall(void* self, int param1, int param2, void** param3);
void QSortFilterProxyModel_virtualbase_setSourceModel(void* self, QAbstractItemModel* sourceModel);
QModelIndex* QSortFilterProxyModel_virtualbase_mapToSource(const void* self, QModelIndex* proxyIndex);
QModelIndex* QSortFilterProxyModel_virtualbase_mapFromSource(const void* self, QModelIndex* sourceIndex);
QItemSelection* QSortFilterProxyModel_virtualbase_mapSelectionToSource(const void* self, QItemSelection* proxySelection);
QItemSelection* QSortFilterProxyModel_virtualbase_mapSelectionFromSource(const void* self, QItemSelection* sourceSelection);
bool QSortFilterProxyModel_virtualbase_filterAcceptsRow(const void* self, int source_row, QModelIndex* source_parent);
bool QSortFilterProxyModel_virtualbase_filterAcceptsColumn(const void* self, int source_column, QModelIndex* source_parent);
bool QSortFilterProxyModel_virtualbase_lessThan(const void* self, QModelIndex* source_left, QModelIndex* source_right);
QModelIndex* QSortFilterProxyModel_virtualbase_index(const void* self, int row, int column, QModelIndex* parent);
QModelIndex* QSortFilterProxyModel_virtualbase_parent(const void* self, QModelIndex* child);
QModelIndex* QSortFilterProxyModel_virtualbase_sibling(const void* self, int row, int column, QModelIndex* idx);
int QSortFilterProxyModel_virtualbase_rowCount(const void* self, QModelIndex* parent);
int QSortFilterProxyModel_virtualbase_columnCount(const void* self, QModelIndex* parent);
bool QSortFilterProxyModel_virtualbase_hasChildren(const void* self, QModelIndex* parent);
QVariant* QSortFilterProxyModel_virtualbase_data(const void* self, QModelIndex* index, int role);
bool QSortFilterProxyModel_virtualbase_setData(void* self, QModelIndex* index, QVariant* value, int role);
QVariant* QSortFilterProxyModel_virtualbase_headerData(const void* self, int section, int orientation, int role);
bool QSortFilterProxyModel_virtualbase_setHeaderData(void* self, int section, int orientation, QVariant* value, int role);
QMimeData* QSortFilterProxyModel_virtualbase_mimeData(const void* self, struct miqt_array /* of QModelIndex* */  indexes);
bool QSortFilterProxyModel_virtualbase_dropMimeData(void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
bool QSortFilterProxyModel_virtualbase_insertRows(void* self, int row, int count, QModelIndex* parent);
bool QSortFilterProxyModel_virtualbase_insertColumns(void* self, int column, int count, QModelIndex* parent);
bool QSortFilterProxyModel_virtualbase_removeRows(void* self, int row, int count, QModelIndex* parent);
bool QSortFilterProxyModel_virtualbase_removeColumns(void* self, int column, int count, QModelIndex* parent);
void QSortFilterProxyModel_virtualbase_fetchMore(void* self, QModelIndex* parent);
bool QSortFilterProxyModel_virtualbase_canFetchMore(const void* self, QModelIndex* parent);
int QSortFilterProxyModel_virtualbase_flags(const void* self, QModelIndex* index);
QModelIndex* QSortFilterProxyModel_virtualbase_buddy(const void* self, QModelIndex* index);
struct miqt_array /* of QModelIndex* */  QSortFilterProxyModel_virtualbase_match(const void* self, QModelIndex* start, int role, QVariant* value, int hits, int flags);
QSize* QSortFilterProxyModel_virtualbase_span(const void* self, QModelIndex* index);
void QSortFilterProxyModel_virtualbase_sort(void* self, int column, int order);
struct miqt_array /* of struct miqt_string */  QSortFilterProxyModel_virtualbase_mimeTypes(const void* self);
int QSortFilterProxyModel_virtualbase_supportedDropActions(const void* self);
bool QSortFilterProxyModel_virtualbase_submit(void* self);
void QSortFilterProxyModel_virtualbase_revert(void* self);
struct miqt_map /* of int to QVariant* */  QSortFilterProxyModel_virtualbase_itemData(const void* self, QModelIndex* index);
bool QSortFilterProxyModel_virtualbase_setItemData(void* self, QModelIndex* index, struct miqt_map /* of int to QVariant* */  roles);
bool QSortFilterProxyModel_virtualbase_clearItemData(void* self, QModelIndex* index);
bool QSortFilterProxyModel_virtualbase_canDropMimeData(const void* self, QMimeData* data, int action, int row, int column, QModelIndex* parent);
int QSortFilterProxyModel_virtualbase_supportedDragActions(const void* self);
struct miqt_map /* of int to struct miqt_string */  QSortFilterProxyModel_virtualbase_roleNames(const void* self);
bool QSortFilterProxyModel_virtualbase_moveRows(void* self, QModelIndex* sourceParent, int sourceRow, int count, QModelIndex* destinationParent, int destinationChild);
bool QSortFilterProxyModel_virtualbase_moveColumns(void* self, QModelIndex* sourceParent, int sourceColumn, int count, QModelIndex* destinationParent, int destinationChild);
void QSortFilterProxyModel_virtualbase_multiData(const void* self, QModelIndex* index, QModelRoleDataSpan* roleDataSpan);
void QSortFilterProxyModel_virtualbase_resetInternalData(void* self);
bool QSortFilterProxyModel_virtualbase_event(void* self, QEvent* event);
bool QSortFilterProxyModel_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);
void QSortFilterProxyModel_virtualbase_timerEvent(void* self, QTimerEvent* event);
void QSortFilterProxyModel_virtualbase_childEvent(void* self, QChildEvent* event);
void QSortFilterProxyModel_virtualbase_customEvent(void* self, QEvent* event);
void QSortFilterProxyModel_virtualbase_connectNotify(void* self, QMetaMethod* signal);
void QSortFilterProxyModel_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);
const QMetaObject* QSortFilterProxyModel_staticMetaObject();
void QSortFilterProxyModel_delete(QSortFilterProxyModel* self);

#ifdef __cplusplus
} /* extern C */
#endif

#endif
